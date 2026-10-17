-- Fatima Iqbal (Oral Pathology) empId 301 from PDC HRMS API.
UPDATE `faculty_profiles` SET `emp_id` = NULL WHERE `emp_id` = '301' AND `slug` <> 'fatima-iqbal';
UPDATE `faculty_profiles` SET `emp_id` = '301', `updated_at` = NOW()
WHERE `slug` = 'fatima-iqbal' AND (`emp_id` IS NULL OR TRIM(`emp_id`) = '');
