-- Restore department activity rows used by the public timeline.
INSERT INTO department_activities (department_id, title, date_label, body, sort_order, created_at, updated_at)
SELECT d.id, x.title, x.date_label, x.body, x.sort_order, NOW(), NOW()
FROM departments d
JOIN (
  SELECT 'Teaching Sessions' AS title, 'Ongoing 2026' AS date_label, 'Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.' AS body, 0 AS sort_order
  UNION ALL
  SELECT 'Case / Skill Discussions', 'Term 2026', 'Interactive discussions to strengthen clinical reasoning and applied knowledge.', 1
  UNION ALL
  SELECT 'Departmental Academic Activities', '2025–26', 'Departmental meetings, assessments, and academic development activities.', 2
) x
WHERE NOT EXISTS (
  SELECT 1 FROM department_activities a WHERE a.department_id = d.id
);
