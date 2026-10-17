-- Fill blank faculty emp_id from PMC+PDC HRMS APIs (DDS/PDC)
-- Nasir Bakhtiar / Munaza Khattak are on the PDC API; Abbas also linked from PMC.

UPDATE `faculty_profiles` SET `emp_id` = NULL WHERE `emp_id` = '1373' AND `slug` <> 'nasir-bakhtiar';
UPDATE `faculty_profiles` SET `emp_id` = '1373', `updated_at` = NOW()
WHERE `slug` = 'nasir-bakhtiar' AND (`emp_id` IS NULL OR TRIM(`emp_id`) = '');

UPDATE `faculty_profiles` SET `emp_id` = NULL WHERE `emp_id` = '890' AND `slug` <> 'munaza-khattak';
UPDATE `faculty_profiles` SET `emp_id` = '890', `updated_at` = NOW()
WHERE `slug` = 'munaza-khattak' AND (`emp_id` IS NULL OR TRIM(`emp_id`) = '');

UPDATE `faculty_profiles` SET `emp_id` = NULL WHERE `emp_id` = '840' AND `slug` <> 'muhammad-abbas';
UPDATE `faculty_profiles` SET `emp_id` = '840', `updated_at` = NOW()
WHERE `slug` = 'muhammad-abbas' AND (`emp_id` IS NULL OR TRIM(`emp_id`) = '');
