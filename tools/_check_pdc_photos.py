import json
from pathlib import Path

root = Path(r"d:\projects\php\www\dds")
pack = json.loads((root / "assets/data/faculty-profiles.json").read_text(encoding="utf-8"))
rows = json.loads((root / "tools/_missing_pdc.json").read_text(encoding="utf-8-sig")) if (root / "tools/_missing_pdc.json").is_file() else []
print("stale dump", len(rows))
for r in rows:
    print(" ", r["name"], r["department"])

print("\nPHOTO FIELD CHECK")
names = [
    "Ambereen Humayun", "Hina Hakim", "Sadaf Alam", "Munaza Khattak",
    "Maryam Tahir", "Saima Afridi", "Mahirah Iqbal", "Nida Gul Sepah",
    "Zudia Riaz", "Hina Rehman", "Farzeen Khan", "Sobia Kanwal", "Sana Arbab",
]
by_name = {p.get("name"): p for p in pack["profiles"].values()}
for n in names:
    rec = by_name.get(n)
    if not rec:
        # slug search
        rec = next((p for p in pack["profiles"].values() if n.lower() in (p.get("name") or "").lower()), None)
    photo = (rec or {}).get("photo") or ""
    fs = root / photo if photo else None
    print("%-22s photo=%-40s exists=%s" % (n, photo, fs.is_file() if fs else False))
