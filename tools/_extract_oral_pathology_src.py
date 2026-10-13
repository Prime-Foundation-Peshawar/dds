import json
import re
import zipfile
from pathlib import Path
from xml.etree import ElementTree as ET

W = "{http://schemas.openxmlformats.org/wordprocessingml/2006/main}"
files = [
    Path(r"d:\New folder\pdc\master File _ Oral Pathology-PDC-Faculty.docx"),
    Path(r"d:\New folder\pdc\Annexure-1-Abbas Saleem Khan Research Articles list.docx"),
    Path(r"d:\New folder\pdc\Annexure-2-Nasiha Motahir Published Research Articles list.docx"),
    Path(r"d:\New folder\pdc\Annexure-3-Fatima Iqbal Published Research Articles list.docx"),
    Path(r"d:\New folder\pdc\Annexure-4-Tehmina Naushin Published Research Articles list -.docx"),
    Path(r"d:\New folder\pdc\Annexure-5-Karishma Ali Articles List.docx"),
    Path(r"d:\New folder\pdc\Annexure-6- Anoshia Zahid Research Articles list.docx"),
]


def docx_lines(path: Path) -> list[str]:
    with zipfile.ZipFile(path) as z:
        xml = z.read("word/document.xml")
    root = ET.fromstring(xml)
    out = []
    for p in root.iter(f"{W}p"):
        runs = [t.text for t in p.iter(f"{W}t") if t.text]
        if runs:
            out.append("".join(runs).strip())
    return [x for x in out if x]


result = {"files": []}
for f in files:
    entry = {"path": str(f), "exists": f.exists(), "lines": [], "pub_count_guess": 0}
    if f.exists():
        lines = docx_lines(f)
        entry["lines"] = lines
        # rough publication-like lines
        entry["pub_count_guess"] = sum(
            1
            for ln in lines
            if re.search(r"\b(19|20)\d{2}\b", ln) and len(ln) > 40
        )
    result["files"].append(entry)

Path(r"D:\projects\php\www\dds\tools\_oral_pathology_src.json").write_text(
    json.dumps(result, indent=2, ensure_ascii=False), encoding="utf-8"
)

# Print useful summary of master file
master = next(x for x in result["files"] if "master File" in x["path"])
print("MASTER lines (filtered):")
for ln in master.get("lines", []):
    low = ln.lower()
    if any(
        k in low
        for k in [
            "name",
            "dr.",
            "prof",
            "hod",
            "bds",
            "fcps",
            "mphil",
            "qualification",
            "experience",
            "publication",
            "assistant",
            "associate",
            "lecturer",
            "abbas",
            "nasiha",
            "fatima",
            "tehmina",
            "karishma",
            "anoshia",
        ]
    ):
        print(" ", ln[:200])

print("\nANNEXURE pub-line guesses:")
for x in result["files"]:
    if "Annexure" in x["path"]:
        print(Path(x["path"]).name, "->", x["pub_count_guess"], "dated long lines; total lines", len(x["lines"]))
