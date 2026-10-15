import json
from pathlib import Path

d = json.loads(Path(r"d:\projects\php\www\dds\tools\_hrms_photos.json").read_text(encoding="utf-8-sig"))
print("=== ALL HRMS ===")
for e in d["employees"]:
    print("%6s | %-32s | %-24s | %s" % (e["empId"], e["empName"], e["desTitle"], e["depName"]))
print("=== ALL PROFILES ===")
for p in d["profiles"]:
    print("%-36s | %-32s | photo=%s | %s" % (p["slug"], p["name"], bool(p["photo"]), p["department"]))
