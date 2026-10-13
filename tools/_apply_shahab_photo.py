import json
from pathlib import Path

import cv2
import numpy as np

ROOT = Path(r"d:\projects\php\www\dds")
SRC = Path(
    r"C:\Users\bil_h\.cursor\projects\d-projects-php-www-riphahpsh\assets"
    r"\c__Users_bil_h_AppData_Roaming_Cursor_User_workspaceStorage_"
    r"5f854abcb82816355e41bed7ac4ba2b7_images_image-1eaab362-977f-4822-bb62-108b9b0ee0bc.png"
)
MODEL = ROOT / "tools" / "face_detection_yunet_2023mar.onnx"
DEST = ROOT / "assets" / "images" / "faculty" / "shahab-adil.jpg"
JSON_PATH = ROOT / "assets" / "data" / "faculty-profiles.json"


def crop_face(src: Path, dest: Path) -> None:
    data = np.fromfile(str(src), dtype=np.uint8)
    img = cv2.imdecode(data, cv2.IMREAD_COLOR)
    if img is None:
        raise SystemExit(f"cannot read {src}")
    h, w = img.shape[:2]
    det = cv2.FaceDetectorYN_create(str(MODEL), "", (w, h), 0.45, 0.3, 5000)
    det.setInputSize((w, h))
    _, faces = det.detect(img)
    cands = []
    if faces is not None:
        for f in faces:
            x, y, bw, bh, score = float(f[0]), float(f[1]), float(f[2]), float(f[3]), float(f[-1])
            if y + bh / 2 < h * 0.75:
                cands.append((score, x, y, bw, bh))
    if cands:
        _, x, y, bw, bh = max(cands)
        cx, cy = x + bw / 2, y + bh / 2
        side = max(bw, bh) * 1.85
        x0 = int(max(0, cx - side / 2))
        y0 = int(max(0, cy - side / 2))
        x1 = int(min(w, cx + side / 2))
        y1 = int(min(h, cy + side / 2))
        crop = img[y0:y1, x0:x1]
    else:
        side = min(w, h)
        x0 = (w - side) // 2
        y0 = 0
        crop = img[y0 : y0 + side, x0 : x0 + side]
    out = cv2.resize(crop, (800, 800), interpolation=cv2.INTER_CUBIC)
    dest.parent.mkdir(parents=True, exist_ok=True)
    cv2.imwrite(str(dest), out, [int(cv2.IMWRITE_JPEG_QUALITY), 88])
    print("wrote", dest, dest.stat().st_size)


def main() -> None:
    crop_face(SRC, DEST)
    pack = json.loads(JSON_PATH.read_text(encoding="utf-8"))
    rec = pack["profiles"].get("shahab-adil") or {
        "slug": "shahab-adil",
        "aliases": ["shahab-adil"],
        "name": "Shahab Adil",
        "department": "Orthodontics",
        "designation": "Professor",
        "hod": False,
        "qualifications": ["BDS", "FCPS"],
        "experience": [],
        "skills": [],
        "publications": [],
    }
    rec["photo"] = "assets/images/faculty/shahab-adil.jpg"
    rec["slug"] = "shahab-adil"
    rec["name"] = rec.get("name") or "Shahab Adil"
    rec["department"] = rec.get("department") or "Orthodontics"
    rec["designation"] = rec.get("designation") or "Professor"
    aliases = set(rec.get("aliases") or [])
    aliases.update(["shahab-adil", "shahab-adil-"])
    rec["aliases"] = sorted(a for a in aliases if a)
    pack["profiles"]["shahab-adil"] = rec
    pack.setdefault("index", {})["shahab-adil"] = "shahab-adil"
    JSON_PATH.write_text(json.dumps(pack, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print("profile ok")


if __name__ == "__main__":
    main()
