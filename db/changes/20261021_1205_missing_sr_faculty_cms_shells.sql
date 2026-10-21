-- Add missing SR+ CMS faculty shells (DDS)
-- Empty CV shells for ACP editing. Public site stays non-clickable until
-- education (qualifications) AND bio (experience/skills/publications) are filled.

-- Razia Aamir emp 1328
UPDATE `faculty_profiles`
SET `emp_id` = NULL
WHERE `emp_id` = '1328' AND `slug` <> 'razia-aamir';

INSERT INTO `faculty_profiles` (
  `slug`, `emp_id`, `name`, `department_slug`, `department_name`, `dept_override`,
  `designation`, `photo`, `is_hod`, `is_public`,
  `qualifications_json`, `experience_json`, `skills_json`, `publications_json`, `extra_json`,
  `created_at`, `updated_at`
) VALUES (
  'razia-aamir', '1328', 'Razia Aamir', 'pathology', 'Pathology', 0,
  'Senior Lecturer', NULL, 0, 1,
  '[]', '[]', '[]', '[]', '{}',
  NOW(), NOW()
)
ON DUPLICATE KEY UPDATE
  `emp_id` = VALUES(`emp_id`),
  `name` = VALUES(`name`),
  `department_slug` = VALUES(`department_slug`),
  `department_name` = VALUES(`department_name`),
  `designation` = VALUES(`designation`),
  `is_public` = VALUES(`is_public`),
  `updated_at` = NOW();
