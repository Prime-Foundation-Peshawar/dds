import json
import re
import zipfile
from pathlib import Path
from xml.etree import ElementTree as ET

base = Path(r"d:\New folder\pdc\Facilities required to be uploaded on website")
W = "{http://schemas.openxmlformats.org/wordprocessingml/2006/main}"

depts = [
    "Prosthodontics",
    "Science of Dental Materials",
    "Community & Preventive Dentistry",
    "DDE",
    "Oral & Maxillofacial Surgery",
    "Oral Biology",
    "Oral Medicine",
    "Paediatric Dentistry",
    "Periodontology",
]


def docx_lines(path: Path) -> list[str]:
    with zipfile.ZipFile(path) as z:
        xml = z.read("word/document.xml")
    root = ET.fromstring(xml)
    text = []
    for p in root.iter(f"{W}p"):
        runs = []
        for t in p.iter(f"{W}t"):
            if t.text:
                runs.append(t.text)
        if runs:
            text.append("".join(runs).strip())
    return [ln for ln in text if ln]


def clean_name(s: str) -> str:
    s = re.sub(r"\s+", " ", s).strip(" ._,;:-")
    s = re.sub(r"\b(PUBLICATIONS|Research Publications|list of articles|Departmental Data)\b", "", s, flags=re.I)
    return s.strip(" ._,;:-")


out = {}
for d in depts:
    folder = base / d
    entry = {"files": [], "guessed_names": set(), "docs": []}
    if not folder.exists():
        out[d] = {"files": [], "guessed_names": [], "docs": [], "error": "folder missing"}
        continue
    for f in folder.rglob("*"):
        if not f.is_file():
            continue
        if f.name.startswith("~$") or f.suffix.lower() in {".zip", ".pdf", ".doc"}:
            # still record file; pdf/doc not parsed here
            entry["files"].append(str(f.relative_to(base)))
            fn = f.stem
            for m in re.finditer(
                r"(?:CV\s+)?(?:Prof\.?\s*)?(?:Dr\.?\s*)([A-Za-z][A-Za-z\.\'\-]+(?:\s+[A-Za-z][A-Za-z\.\'\-]+){0,4})",
                fn,
                re.I,
            ):
                n = clean_name(m.group(1))
                if 2 <= len(n.split()) <= 5 and not re.search(r"Department|Template|archive|Data|Facilities", n, re.I):
                    entry["guessed_names"].add(n)
            continue

        rel = str(f.relative_to(base))
        entry["files"].append(rel)
        if f.suffix.lower() != ".docx":
            continue
        try:
            lines = docx_lines(f)
        except Exception as e:
            entry["docs"].append({"file": rel, "error": str(e)})
            continue
        entry["docs"].append({"file": rel, "lines": lines[:120]})
        for ln in lines:
            m = re.search(r"Name\s*[:\-]\s*(?:Prof\.?\s*)?(?:Dr\.?\s*)?(.+)$", ln, re.I)
            if m:
                n = clean_name(m.group(1))
                if n:
                    entry["guessed_names"].add(n)
            m = re.search(
                r"(?:Prof\.?\s*)?Dr\.?\s+([A-Z][A-Za-z\.\'\-]+(?:\s+[A-Z][A-Za-z\.\'\-]+){1,4})",
                ln,
            )
            if m and len(m.group(1).split()) <= 5:
                entry["guessed_names"].add(clean_name(m.group(1)))
    out[d] = {
        "files": entry["files"],
        "guessed_names": sorted(entry["guessed_names"]),
        "docs": entry["docs"],
    }

dest = Path(r"D:\projects\php\www\dds\tools\_src_faculty_extract.json")
dest.write_text(json.dumps(out, indent=2, ensure_ascii=False), encoding="utf-8")
print("wrote", dest)
for d, v in out.items():
    print(f"{d}: {v['guessed_names']}")
