#!/usr/bin/env python3
"""
Department-wise faculty profile completion report (master / production data).

Person "done" = full profile Completed
  (qualifications + experience or publications; photo optional; skills ignored).

Department status:
  Completed — ALL faculty profiles received and complete
  Partial   — SOME faculty are complete (at least one, but not all)
  Pending   — NONE of the faculty are complete
"""

from __future__ import annotations

import json
import subprocess
import sys
from collections import OrderedDict
from datetime import datetime
from pathlib import Path

from openpyxl import Workbook
from openpyxl.styles import Alignment, Border, Font, PatternFill, Side
from openpyxl.utils import get_column_letter

ROOT = Path(__file__).resolve().parents[1]
OUT_DIR = ROOT / "output" / "xlsx"
PHP_DUMP = ROOT / "tools" / "faculty_profile_status_dump.php"


def run_php_dump() -> dict:
    proc = subprocess.run(
        ["php", str(PHP_DUMP)],
        cwd=str(ROOT),
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        check=False,
    )
    if proc.returncode != 0:
        raise RuntimeError(proc.stderr or proc.stdout or "PHP dump failed")
    return json.loads(proc.stdout)


def dept_status(completed: int, partial: int, pending: int, total: int) -> str:
    """Department rollup: done = person Completed only."""
    if total <= 0 or completed <= 0:
        return "Pending"
    if completed >= total:
        return "Completed"
    return "Partial"


def missing_content_fields(row: dict) -> list[str]:
    """Required content gaps (photo optional; skills not used)."""
    missing: list[str] = []
    if not row.get("qualifications"):
        missing.append("qualifications")
    # Completed needs experience or publications
    if not row.get("experience") and not row.get("publications"):
        if not row.get("experience"):
            missing.append("experience")
        if not row.get("publications"):
            missing.append("publications")
    return missing


def person_problems(row: dict) -> list[str]:
    """Human-readable issues for Comments."""
    problems = [f"missing {f}" for f in missing_content_fields(row)]
    if not row.get("has_photo"):
        problems.append("missing photo (optional)")
    return problems


def person_comment(row: dict) -> str:
    probs = person_problems(row)
    if not probs:
        return ""
    return "\n".join(f"• {p}" for p in probs)


def _format_name_list(items: list[tuple[str, list[str]]]) -> str:
    """items = [(name, [issue, ...]), ...]"""
    lines = []
    for name, issues in items:
        if issues:
            issue_txt = ", ".join(issues)
            lines.append(f"  • {name} — {issue_txt}")
        else:
            lines.append(f"  • {name}")
    return "\n".join(lines)


def dept_comments(members: list[dict]) -> str:
    """Department Comments: pending/partial gaps and missing photos."""
    sections: list[str] = []

    pending_items: list[tuple[str, list[str]]] = []
    for m in sorted(members, key=lambda x: x.get("name") or ""):
        if m.get("status") != "Pending":
            continue
        content = missing_content_fields(m)
        pending_items.append((m["name"], content))
    if pending_items:
        sections.append("PENDING (not received)\n" + _format_name_list(pending_items))

    # Partial = something was received, but still missing quals and/or experience/publications
    partial_items: list[tuple[str, list[str]]] = []
    for m in sorted(members, key=lambda x: x.get("name") or ""):
        if m.get("status") != "Partial":
            continue
        content = missing_content_fields(m)
        partial_items.append((m["name"], content if content else ["incomplete profile"]))
    if partial_items:
        sections.append(
            "PARTIAL (received but incomplete)\n" + _format_name_list(partial_items)
        )

    no_photo = sorted(m["name"] for m in members if not m.get("has_photo"))
    if no_photo:
        photo_lines = "\n".join(f"  • {name}" for name in no_photo)
        sections.append("MISSING PHOTO (optional)\n" + photo_lines)

    return "\n\n".join(sections)


def person_comments(row: dict) -> str:
    """Problem / gap notes for Comments column."""
    notes: list[str] = []
    status = row.get("status") or "Pending"
    has_photo = bool(row.get("has_photo"))
    n_qual = int(row.get("qualifications") or 0)
    n_exp = int(row.get("experience") or 0)
    n_pubs = int(row.get("publications") or 0)
    n_skills = int(row.get("skills") or 0)
    has_body = n_exp > 0 or n_pubs > 0 or n_skills > 0

    if status == "Pending":
        notes.append("No usable CV pack entry (problem case)")
        if n_qual == 0 and n_exp == 0 and n_pubs == 0 and n_skills == 0:
            notes.append("Missing qualifications, experience, publications, and skills")
    elif status == "Partial":
        notes.append("Profile incomplete (problem case)")
        if n_qual == 0:
            notes.append("Missing qualifications")
        if not has_body:
            notes.append("Missing experience / publications / skills")

    if not has_photo:
        notes.append("Missing photo")

    if status == "Completed" and not notes:
        return ""
    return "; ".join(notes)


def style_header(cell, fill: str):
    cell.font = Font(bold=True, color="FFFFFF")
    cell.fill = PatternFill("solid", fgColor=fill)
    cell.alignment = Alignment(horizontal="center", vertical="center", wrap_text=True)


def autosize(ws, max_width: int = 40):
    for col in ws.columns:
        letter = get_column_letter(col[0].column)
        width = 10
        for cell in col:
            val = "" if cell.value is None else str(cell.value)
            width = min(max(width, len(val) + 2), max_width)
        ws.column_dimensions[letter].width = width


STATUS_FILL = {
    "Completed": PatternFill("solid", fgColor="C6EFCE"),
    "Partial": PatternFill("solid", fgColor="FFEB9C"),
    "Pending": PatternFill("solid", fgColor="FFC7CE"),
}
STATUS_FONT = {
    "Completed": Font(color="006100"),
    "Partial": Font(color="9C5700"),
    "Pending": Font(color="9C0006"),
}


def apply_status(cell, status: str):
    cell.value = status
    cell.fill = STATUS_FILL.get(status, PatternFill())
    cell.font = STATUS_FONT.get(status, Font())
    cell.alignment = Alignment(horizontal="center")


def build_workbook(data: dict) -> Workbook:
    faculty = data["faculty"]
    order = data["departments_order"]

    by_dept: OrderedDict[str, dict] = OrderedDict()
    for d in order:
        key = d["name"]
        by_dept[key] = {
            "group": d["group"],
            "slug": d["slug"],
            "name": key,
            "completed": 0,
            "partial": 0,
            "pending": 0,
            "total": 0,
            "members": [],
        }

    for row in faculty:
        name = row["department"]
        if name not in by_dept:
            by_dept[name] = {
                "group": row.get("group") or "Other",
                "slug": row.get("department_slug") or "",
                "name": name,
                "completed": 0,
                "partial": 0,
                "pending": 0,
                "total": 0,
                "members": [],
            }
        bucket = by_dept[name]
        bucket["total"] += 1
        status = row["status"]
        if status == "Completed":
            bucket["completed"] += 1
        elif status == "Partial":
            bucket["partial"] += 1
        else:
            bucket["pending"] += 1
        bucket["members"].append(row)

    wb = Workbook()

    # --- Summary ---
    ws = wb.active
    ws.title = "Department Summary"
    headers = [
        "Group",
        "Department",
        "Total Faculty",
        "Completed",
        "Partial",
        "Pending",
        "% Completed",
        "Department Status",
        "Comments",
    ]
    for col, h in enumerate(headers, 1):
        style_header(ws.cell(1, col, h), "1F4E79")
    ws.row_dimensions[1].height = 30
    ws.freeze_panes = "A2"
    ws.auto_filter.ref = f"A1:I{1 + len(by_dept)}"

    thin = Border(
        left=Side(style="thin", color="D9D9D9"),
        right=Side(style="thin", color="D9D9D9"),
        top=Side(style="thin", color="D9D9D9"),
        bottom=Side(style="thin", color="D9D9D9"),
    )

    r = 2
    totals = {"total": 0, "completed": 0, "partial": 0, "pending": 0}
    for dept in by_dept.values():
        total = dept["total"]
        completed = dept["completed"]
        partial = dept["partial"]
        pending = dept["pending"]
        pct_done = (completed / total) if total else 0.0
        status = dept_status(completed, partial, pending, total)
        comments = dept_comments(dept["members"])

        vals = [
            dept["group"],
            dept["name"],
            total,
            completed,
            partial,
            pending,
            pct_done,
            status,
            comments,
        ]
        for c, v in enumerate(vals, 1):
            cell = ws.cell(r, c, v)
            cell.border = thin
            cell.alignment = Alignment(vertical="top", wrap_text=(c == 9))
        apply_status(ws.cell(r, 8), status)
        for c in (3, 4, 5, 6):
            ws.cell(r, c).alignment = Alignment(horizontal="center", vertical="top")
        ws.cell(r, 7).number_format = "0.0%"
        ws.cell(r, 7).alignment = Alignment(horizontal="center", vertical="top")
        if comments:
            # Fit wrapped comment sections
            lines = comments.count("\n") + 1
            ws.row_dimensions[r].height = min(220, max(30, 14 * lines + 8))

        totals["total"] += total
        totals["completed"] += completed
        totals["partial"] += partial
        totals["pending"] += pending
        r += 1

    # Totals row
    ws.cell(r, 1, "TOTAL").font = Font(bold=True)
    ws.cell(r, 2, "All departments").font = Font(bold=True)
    ws.cell(r, 3, totals["total"]).font = Font(bold=True)
    ws.cell(r, 4, totals["completed"]).font = Font(bold=True)
    ws.cell(r, 5, totals["partial"]).font = Font(bold=True)
    ws.cell(r, 6, totals["pending"]).font = Font(bold=True)
    t = totals["total"] or 1
    ws.cell(r, 7, totals["completed"] / t).number_format = "0.0%"
    apply_status(
        ws.cell(r, 8),
        dept_status(totals["completed"], totals["partial"], totals["pending"], totals["total"]),
    )
    all_members = [m for d in by_dept.values() for m in d["members"]]
    total_pending_n = sum(1 for m in all_members if m.get("status") == "Pending")
    total_partial_n = sum(1 for m in all_members if m.get("status") == "Partial")
    total_no_photo = sum(1 for m in all_members if not m.get("has_photo"))
    total_comment_lines = []
    if total_pending_n:
        total_comment_lines.append(
            f"PENDING (not received): {total_pending_n} faculty — see department Comments / Faculty Detail"
        )
    if total_partial_n:
        total_comment_lines.append(
            f"PARTIAL (received but incomplete): {total_partial_n} faculty"
        )
    if total_no_photo:
        total_comment_lines.append(f"MISSING PHOTO (optional): {total_no_photo} faculty")
    ws.cell(r, 9, "\n".join(total_comment_lines))
    ws.cell(r, 9).alignment = Alignment(wrap_text=True, vertical="top")
    ws.row_dimensions[r].height = 48
    for c in range(1, 10):
        ws.cell(r, c).fill = PatternFill("solid", fgColor="D6DCE4")
        ws.cell(r, c).border = thin
    autosize(ws)
    ws.column_dimensions["I"].width = 72

    # --- Faculty detail ---
    wd = wb.create_sheet("Faculty Detail")
    dheaders = [
        "Group",
        "Department",
        "Name",
        "Designation",
        "PM&DC",
        "Status",
        "Photo",
        "Qualifications",
        "Experience",
        "Publications",
        "Profile slug",
        "Profile URL",
        "Comments",
    ]
    for col, h in enumerate(dheaders, 1):
        style_header(wd.cell(1, col, h), "833C0C")
    wd.freeze_panes = "A2"
    wd.auto_filter.ref = f"A1:M{1 + max(len(faculty), 1)}"

    rr = 2
    for dept in by_dept.values():
        for row in sorted(dept["members"], key=lambda x: (x["status"] != "Pending", x["status"] != "Partial", x["name"])):
            url = f"https://dds.riphahpsh.edu.pk/faculty-profile?n={row['profile_slug']}"
            comment = person_comment(row)
            vals = [
                dept["group"],
                dept["name"],
                row["name"],
                row["designation"],
                row["pmdc"],
                row["status"],
                "Yes" if row["has_photo"] else "No",
                row["qualifications"],
                row["experience"],
                row["publications"],
                row["profile_slug"],
                url,
                comment,
            ]
            for c, v in enumerate(vals, 1):
                cell = wd.cell(rr, c, v)
                cell.border = thin
                if c == 13:
                    cell.alignment = Alignment(wrap_text=True, vertical="top")
            apply_status(wd.cell(rr, 6), row["status"])
            rr += 1
    autosize(wd, 45)
    wd.column_dimensions["M"].width = 45

    # --- Legend ---
    wl = wb.create_sheet("Criteria")
    wl["A1"] = "Faculty profile status report"
    wl["A1"].font = Font(bold=True, size=14, color="1F4E79")
    wl["A3"] = "Generated"
    wl["B3"] = data.get("generated_at", "")
    wl["A4"] = "Branch"
    wl["B4"] = data.get("branch", "")
    wl["A5"] = "Commit"
    wl["B5"] = data.get("commit", "")
    wl["A6"] = "Source"
    wl["B6"] = data.get("source", "")

    wl["A8"] = "Person status"
    wl["A8"].font = Font(bold=True)
    wl["A9"] = "Completed"
    wl["B9"] = data["criteria"]["Completed"]
    apply_status(wl["A9"], "Completed")
    wl["A10"] = "Partial"
    wl["B10"] = data["criteria"]["Partial"]
    apply_status(wl["A10"], "Partial")
    wl["A11"] = "Pending"
    wl["B11"] = data["criteria"]["Pending"]
    apply_status(wl["A11"], "Pending")

    wl["A13"] = "Department status"
    wl["A13"].font = Font(bold=True)
    wl["A14"] = "Completed"
    wl["B14"] = "ALL faculty profiles are complete"
    apply_status(wl["A14"], "Completed")
    wl["A15"] = "Partial"
    wl["B15"] = "SOME faculty profiles are complete (at least one, but not all)"
    apply_status(wl["A15"], "Partial")
    wl["A16"] = "Pending"
    wl["B16"] = "NONE of the faculty profiles are complete"
    apply_status(wl["A16"], "Pending")

    wl["A18"] = "Notes"
    wl["A18"].font = Font(bold=True)
    wl["A19"] = (
        "Based on the live public directory (HRMS campus 2 + CV-only extras). "
        "Administration and lecturers excluded. Skills are not used. "
        "Partial = profile content was received but is still missing qualifications and/or experience/publications."
    )
    wl.merge_cells("A19:F21")
    wl["A19"].alignment = Alignment(wrap_text=True, vertical="top")
    autosize(wl, 80)

    return wb


def main() -> int:
    print("Collecting faculty/directory data via PHP…")
    data = run_php_dump()
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M")
    out = OUT_DIR / f"DDS_Faculty_Profile_Status_by_Department_{stamp}.xlsx"
    wb = build_workbook(data)
    wb.save(out)
    print(f"Wrote {out}")
    latest = OUT_DIR / "DDS_Faculty_Profile_Status_by_Department_Latest.xlsx"
    try:
        wb.save(latest)
        print(f"Wrote {latest}")
    except PermissionError:
        print(f"Skipped {latest.name} (file open/locked) — use the timestamped file above.")
    # quick console summary
    faculty = data["faculty"]
    from collections import Counter

    c = Counter(r["status"] for r in faculty)
    print(f"Faculty: {len(faculty)} | Completed={c['Completed']} Partial={c['Partial']} Pending={c['Pending']}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
