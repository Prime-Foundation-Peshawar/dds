"""Apply HR drive photographs onto DDS faculty profiles (name or empId)."""
from __future__ import annotations

import json
import re
import zipfile
from pathlib import Path

import cv2
import numpy as np

ROOT = Path(r"d:\projects\php\www\dds")
ZIP_PATH = Path(r"d:\New folder\drive-download-20261010T061857Z-1-001.zip")
MODEL = ROOT / "tools" / "face_detection_yunet_2023mar.onnx"
JSON_PATH = ROOT / "assets" / "data" / "faculty-profiles.json"
HRMS_PATH = ROOT / "tools" / "_hrms_photos.json"
PHOTO_DIR = ROOT / "assets" / "images" / "faculty"

# Ambiguous first-name leftovers after empId matching.
FILENAME_SLUG = {
    "dr hina 1508": "hina-tariq",
}


def slugify(name: str) -> str:
    n = name.strip()
    n = re.sub(
        r"^(associate professor|assistant professor|senior registrar|senior lecturer|"
        r"assoc\.?\s*prof\.?|asst\.?\s*prof\.?|sr\.?\s*registrar|sr\.?\s*lecturer|"
        r"professor|prof\.?|dr\.?)\s+",
        "",
        n,
        flags=re.I,
    )
    n = re.sub(r"[^a-z0-9]+", "-", n.lower())
    return n.strip("-")


def slugs_match(a: str, b: str) -> bool:
    if not a or not b:
        return False
    if a == b:
        return True
    ta = [t for t in a.split("-") if t]
    tb = [t for t in b.split("-") if t]
    if not ta or not tb:
        return False
    fa, fb, la, lb = ta[0], tb[0], ta[-1], tb[-1]
    first_ok = fa == fb or (
        len(fa) >= 4 and len(fb) >= 4 and (fa.startswith(fb) or fb.startswith(fa))
    )
    last_ok = (
        la == lb
        or la.startswith(lb)
        or lb.startswith(la)
        or (len(la) >= 4 and len(lb) >= 4 and la[:4] == lb[:4])
    )
    return first_ok and last_ok


def parse_zip_name(filename: str) -> tuple[str, str | None, str]:
    stem = Path(filename).stem
    raw = re.sub(r"\s+", " ", stem).strip()
    key = raw.lower()
    cleaned = re.sub(r"^drn?\s+", "", raw, flags=re.I).strip()
    m = re.search(r"^(.*?)\s+(\d+)$", cleaned)
    if m:
        return m.group(1).strip(), m.group(2), key
    return cleaned, None, key


def face_crop_800(jpeg: bytes, dest: Path) -> str:
    img = cv2.imdecode(np.frombuffer(jpeg, np.uint8), cv2.IMREAD_COLOR)
    if img is None:
        raise SystemExit(f"cannot decode {dest.name}")
    h, w = img.shape[:2]
    faces = None
    if MODEL.is_file():
        det = cv2.FaceDetectorYN_create(str(MODEL), "", (w, h), 0.45, 0.3, 5000)
        det.setInputSize((w, h))
        _, faces = det.detect(img)
    if faces is not None and len(faces):
        best = max(faces, key=lambda f: float(f[2]) * float(f[3]))
        x, y, bw, bh = [float(v) for v in best[:4]]
        cx, cy = x + bw / 2, y + bh / 2
        side = max(bw, bh) * 1.85
        x0 = int(max(0, cx - side / 2))
        y0 = int(max(0, cy - side / 2))
        x1 = int(min(w, cx + side / 2))
        y1 = int(min(h, cy + side / 2))
        crop = img[y0:y1, x0:x1]
        how = "face"
    else:
        side = min(w, h)
        x0 = (w - side) // 2
        y0 = max(0, int(h * 0.08))
        if y0 + side > h:
            y0 = h - side
        crop = img[y0 : y0 + side, x0 : x0 + side]
        how = "center"
    out = cv2.resize(crop, (800, 800), interpolation=cv2.INTER_CUBIC)
    dest.parent.mkdir(parents=True, exist_ok=True)
    cv2.imwrite(str(dest), out, [int(cv2.IMWRITE_JPEG_QUALITY), 88])
    return how


def lookup_profile(profiles: dict, index: dict, slug: str) -> tuple[str, dict] | None:
    if not slug:
        return None
    canon = index.get(slug, slug)
    rec = profiles.get(canon)
    if isinstance(rec, dict):
        return canon, rec
    for key, rec in profiles.items():
        keys = [str(rec.get("slug") or key)] + list(rec.get("aliases") or [])
        keys.append(slugify(str(rec.get("name") or "")))
        for k in keys:
            if slugs_match(slug, str(k)):
                return key, rec
    return None


def unique_first_map(profiles: dict) -> dict[str, str]:
    buckets: dict[str, list[str]] = {}
    for key, rec in profiles.items():
        first = slugify(str(rec.get("name") or key)).split("-")[0]
        buckets.setdefault(first, []).append(key)
    return {first: keys[0] for first, keys in buckets.items() if len(keys) == 1}


def add_index(index: dict, rec: dict) -> None:
    canon = rec["slug"]
    index[canon] = canon
    for alias in rec.get("aliases") or []:
        if alias:
            index[alias] = canon
    name_slug = slugify(str(rec.get("name") or ""))
    if name_slug:
        index[name_slug] = canon


def main() -> None:
    pack = json.loads(JSON_PATH.read_text(encoding="utf-8"))
    profiles = pack["profiles"]
    index = pack.setdefault("index", {})
    hrms = json.loads(HRMS_PATH.read_text(encoding="utf-8-sig"))
    by_id = {str(e["empId"]): e for e in hrms["employees"]}
    first_only = unique_first_map(profiles)

    applied = []
    unmatched = []

    with zipfile.ZipFile(ZIP_PATH) as zf:
        for info in zf.infolist():
            if info.is_dir() or not info.filename.lower().endswith((".jpg", ".jpeg", ".png")):
                continue
            label = Path(info.filename).name
            name_part, emp_id, key = parse_zip_name(label)
            name_slug = slugify(name_part)
            rec_pair = None
            via = ""

            mapped = FILENAME_SLUG.get(key)
            if mapped:
                rec_pair = lookup_profile(profiles, index, mapped)
                via = "filename-map"

            if rec_pair is None and emp_id and emp_id in by_id:
                emp = by_id[emp_id]
                rec_pair = lookup_profile(profiles, index, emp["slug"]) or lookup_profile(
                    profiles, index, slugify(emp["empName"])
                )
                via = "empId"
                if rec_pair is None:
                    slug = emp["slug"] or slugify(emp["empName"])
                    rec = {
                        "slug": slug,
                        "aliases": [slug],
                        "name": emp["empName"],
                        "department": emp["depName"],
                        "designation": emp["desTitle"],
                        "hod": False,
                        "photo": "",
                        "qualifications": [],
                        "experience": [],
                        "skills": [],
                        "publications": [],
                    }
                    profiles[slug] = rec
                    add_index(index, rec)
                    rec_pair = (slug, rec)
                    via = "empId-new"

            if rec_pair is None and name_slug:
                rec_pair = lookup_profile(profiles, index, name_slug)
                via = "name"

            # Only use a unique first name when the zip label has no surname.
            # "Amna Khan" must not overwrite "Amna Umer".
            if rec_pair is None and name_slug and "-" not in name_slug:
                first = name_slug.split("-")[0]
                if first in first_only:
                    rec_pair = lookup_profile(profiles, index, first_only[first])
                    via = "unique-first"

            if rec_pair is None:
                unmatched.append((label, name_part, emp_id))
                print("UNMATCHED", label)
                continue

            canon, rec = rec_pair
            existing = str(rec.get("photo") or "").strip()
            if existing and existing.lower().endswith((".jpg", ".jpeg")):
                rel = existing.replace("\\", "/")
            else:
                rel = f"assets/images/faculty/{canon}.jpg"
            dest = ROOT / rel
            how = face_crop_800(zf.read(info.filename), dest)
            rec["photo"] = rel.replace("\\", "/")
            rec["slug"] = rec.get("slug") or canon
            aliases = set(rec.get("aliases") or [])
            aliases.add(canon)
            aliases.add(slugify(str(rec.get("name") or "")))
            rec["aliases"] = sorted(aliases)
            add_index(index, rec)
            profiles[canon] = rec
            applied.append((label, canon, rec.get("name"), emp_id, via, how, dest.stat().st_size))
            print("OK", via, how, label, "->", rec.get("name"), rel, dest.stat().st_size)

    note = " HR staff photographs (drive zip 10 Oct 2026) matched by empId/name."
    src = pack.get("source") or ""
    if "drive zip 10 Oct 2026" not in src:
        pack["source"] = src + note
    JSON_PATH.write_text(json.dumps(pack, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print("applied", len(applied), "unmatched", len(unmatched), "json", JSON_PATH.stat().st_size)
    if unmatched:
        print("UNMATCHED DETAIL")
        for row in unmatched:
            print(" ", row)


if __name__ == "__main__":
    main()
