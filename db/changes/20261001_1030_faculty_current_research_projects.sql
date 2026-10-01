ALTER TABLE `faculty_profile_submissions`
  ADD COLUMN `current_research_projects` JSON NULL AFTER `research_preferences`;

ALTER TABLE `faculty_profiles`
  ADD COLUMN `current_research_projects` JSON NULL AFTER `research_preferences`;
