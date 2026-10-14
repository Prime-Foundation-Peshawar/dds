-- Exported from writable/dds.db at 2026-10-14T05:26:01+00:00
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `department_activities`;
CREATE TABLE `department_activities` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `department_id` BIGINT NOT NULL,
  `title` VARCHAR(191) NOT NULL,
  `date_label` VARCHAR(191) NULL,
  `body` TEXT NULL,
  `sort_order` BIGINT NOT NULL DEFAULT 0,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `department_activities` (`id`,`department_id`,`title`,`date_label`,`body`,`sort_order`,`created_at`,`updated_at`) VALUES
(1,1,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(2,1,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(3,1,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(4,2,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(5,2,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(6,2,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(7,3,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(8,3,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(9,3,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(10,4,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(11,4,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(12,4,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(13,5,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(14,5,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(15,5,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(16,6,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(17,6,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(18,6,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(19,7,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(20,7,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(21,7,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(22,8,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(23,8,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(24,8,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(25,9,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(26,9,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(27,9,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(28,10,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(29,10,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(30,10,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(31,11,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(32,11,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(33,11,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(34,12,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(35,12,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(36,12,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(37,13,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(38,13,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(39,13,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(40,14,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(41,14,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(42,14,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(43,15,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(44,15,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(45,15,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(46,16,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(47,16,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(48,16,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(49,17,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(50,17,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(51,17,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(52,18,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(53,18,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(54,18,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(55,19,'Teaching Sessions','Ongoing 2026','Scheduled lectures, tutorials, and practical or clinical sessions for BDS students.',0,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(56,19,'Case / Skill Discussions','Term 2026','Interactive discussions to strengthen clinical reasoning and applied knowledge.',1,'2026-10-13 17:20:46','2026-10-13 17:20:46'),
(57,19,'Departmental Academic Activities','2025â€“26','Departmental meetings, assessments, and academic development activities.',2,'2026-10-13 17:20:46','2026-10-13 17:20:46');
-- department_activities: 57 rows

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` VARCHAR(191) NOT NULL,
  `name` VARCHAR(191) NOT NULL,
  `icon` VARCHAR(191) NULL,
  `group_name` VARCHAR(191) NOT NULL DEFAULT 'Other',
  `hod` VARCHAR(191) NULL,
  `intro_json` TEXT NULL,
  `faculty_seed_json` TEXT NULL,
  `hidden` TINYINT(1) NOT NULL DEFAULT 0,
  `oric_id` BIGINT NULL,
  `content_updated_at` DATETIME NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `departments` (`id`,`slug`,`name`,`icon`,`group_name`,`hod`,`intro_json`,`faculty_seed_json`,`hidden`,`oric_id`,`content_updated_at`,`created_at`,`updated_at`) VALUES
(1,'oral-pathology','Oral Pathology','bi-virus','Basic','Professor Dr. Abbas Saleem Khan','["The Department of Oral Pathology at Peshawar Dental College supports BDS education through structured teaching in oral pathology and diagnostic sciences for BDS students.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Abbas Saleem Khan","qualification":"BDS, M.Phil, PhD","reg":"5840-D"},{"name":"Professor Dr. Nasiha Motahir","qualification":"BDS, M.Phil, PhD","reg":"2661-D"},{"name":"Associate Professor Dr. Fatima Iqbal","qualification":"BDS, M.Phil, PhD","reg":"8536-D"},{"name":"Associate Professor Dr. Tehmina Naushin Ur Razaq","qualification":"BDS, M.Phil","reg":"2596-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(2,'sciences-of-dental-material','Sciences of Dental Materials','bi-droplet','Basic','Professor Dr. Amjad Hanif','["The Department of Sciences of Dental Materials at Peshawar Dental College supports BDS education through structured teaching in properties and clinical use of dental materials.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Amjad Hanif","qualification":"BDS, M.Phil, PhD","reg":"2931-D"},{"name":"Assistant Professor Dr. Hina Rehman","qualification":"BDS, M.Phil","reg":"4816-D"},{"name":"Assistant Professor Dr. Zudia Riaz","qualification":"BDS, M.Phil","reg":"13830-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(3,'oral-biology','Oral Biology','bi-eyedropper','Basic','Professor Dr. Dila Baz Khan','["The Department of Oral Biology at Peshawar Dental College supports BDS education through structured teaching in oral anatomy, histology, and developmental biology.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Dila Baz Khan","qualification":"BDS, M.Phil","reg":"1503-D"},{"name":"Professor Dr. Munawar Aziz Khattak","qualification":"BDS, M.Phil","reg":"10204-D"},{"name":"Associate Professor Dr. Sana Arbab","qualification":"BDS, MPhil (Oral Biology), CHPE, PGD","reg":"9289-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(4,'community-preventive-dentistry','Community & Preventive Dentistry','bi-people-fill','Basic','Professor Dr. Farzeen Khan','["The Department of Community & Preventive Dentistry at Peshawar Dental College supports BDS education through structured teaching in community oral health and preventive dentistry.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Farzeen Khan","qualification":"BDS, MPH, MSc (Community Dentistry)","reg":"8461-D"},{"name":"Associate Professor Dr. Aamir Hameed","qualification":"BDS, MPH","reg":"4721-D"},{"name":"Associate Professor Dr. Zia Ul Ain Sabiha","qualification":"BDS, MPH","reg":"3049-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(5,'dental-education','Dental Education','bi-mortarboard-fill','Basic','Assistant Professor Dr. Mushyyada Durrani','["The Department of Dental Education at Peshawar Dental College supports BDS education through structured teaching in health professions education and faculty development.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Assistant Professor Dr. Mushyyada Durrani","qualification":"BDS, MHPE","reg":"21002-D"},{"name":"Senior Lecturer Fatima Abdul Qayyum","qualification":"BDS, MHPE","reg":"3010-D"},{"name":"Lecturer Khadija Bibi","qualification":"BDS, MHPE","reg":"7323-D"},{"name":"Lecturer Hafsa","qualification":"BDS, MHPE","reg":"18600-D"}]',1,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(6,'anatomy','Anatomy','bi-body-text','Basic','Associate Professor Dr. Ambereen Humayun','["The Department of Anatomy at Peshawar Dental College supports BDS education through structured teaching in human anatomy foundational to dental practice.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Associate Professor Dr. Ambereen Humayun","qualification":"BDS, M. Phil Anatomy, CHPE","reg":"10558-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(7,'physiology','Physiology','bi-activity','Basic','Professor Dr. Munaza Khattak','["The Department of Physiology at Peshawar Dental College supports BDS education through structured teaching in human physiology relevant to oral and systemic health.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Munaza Khattak","qualification":"BDS, MPH, M.Phil, PhD","reg":"2394-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(8,'biochemistry','Biochemistry','bi-moisture','Basic','Assistant Professor Dr. Hina Hakim','["The Department of Biochemistry at Peshawar Dental College supports BDS education through structured teaching in biochemical principles underpinning oral and systemic disease.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Assistant Professor Dr. Hina Hakim","qualification":"BDS, M.Phil., CHR, CHPE, PGD, HQ&RM","reg":"18806-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(9,'pathology','Pathology','bi-eyedropper','Basic','Professor Dr. Sadaf Alam','["The Department of Pathology at Peshawar Dental College supports BDS education through structured teaching in general pathology for dental undergraduates.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Sadaf Alam","qualification":"MBBS, M. Phil, FCPS - II","reg":"12281-N"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(10,'pharmacology','Pharmacology','bi-capsule-pill','Basic','Assistant Professor Dr. Amna Umer','["The Department of Pharmacology at Peshawar Dental College supports BDS education through structured teaching in pharmacology and therapeutics for dental practice.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Assistant Professor Dr. Amna Umer","qualification":"BDS, M.Phil Pharmacology","reg":"18628-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(11,'periodontology','Periodontology','bi-heart-pulse','Clinical','Professor Dr. Kawish Syed','["The Department of Periodontology at Peshawar Dental College supports BDS education through structured teaching in prevention and treatment of periodontal diseases.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Kawish Syed","qualification":"BDS, MCPS, M. Perio (Edinburgh), MFD-RCSI","reg":"10393-D"},{"name":"Associate Professor Dr. Mahirah Iqbal","qualification":"BDS, DCP (Perio)","reg":"7069-D"},{"name":"Associate Professor Dr. Zeeshan Danish","qualification":"BDS, MCPS","reg":"10192-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(12,'orthodontics','Orthodontics','bi-intersect','Clinical','Professor Dr. Zafar Ul Islam','["The Department of Orthodontics at Peshawar Dental College supports BDS education through structured teaching in diagnosis and management of malocclusion.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Zafar Ul Islam","qualification":"BDS, FCPS","reg":"8108-D"},{"name":"Professor Dr. Shahab Adil","qualification":"BDS, FCPS","reg":"5068-D"},{"name":"Associate Professor Dr. Hasan Ali Raza","qualification":"BDS, FCPS, CHPE","reg":"10371-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(13,'prosthodontics','Prosthodontics','bi-gem','Clinical','Professor Dr. Muhammad Raza','["The Department of Prosthodontics at Peshawar Dental College supports BDS education through structured teaching in replacement of missing teeth and oral structures.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Muhammad Raza","qualification":"BDS, FCPS","reg":"4330-D"},{"name":"Professor Dr. Muhammad Sartaj Khan","qualification":"BDS, FCPS","reg":"3657-D"},{"name":"Assistant Professor Dr. Saima Afridi","qualification":"BDS, FCPS","reg":"8638-D"},{"name":"Senior Registrar Dr. Maryam Tahir","qualification":"BDS, FCPS","reg":"10293-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(14,'operative-dentistry','Operative Dentistry','bi-tools','Clinical','Professor Dr. Iftikhar Akbar','["The Department of Operative Dentistry at Peshawar Dental College supports BDS education through structured teaching in restorative dentistry and endodontics.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Iftikhar Akbar","qualification":"BDS, FCPS, MFDSRCPSG, CHPE","reg":"5711-D"},{"name":"Associate Professor Dr. Muhammad Zain","qualification":"BDS, FCPS, CHPE","reg":"10087-D"},{"name":"Senior Registrar Dr. Nida Gul Sepah","qualification":"BDS, FCPS, CHPE","reg":"19074-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(15,'oral-maxillofacial-surgery','Oral & Maxillofacial Surgery','bi-scissors','Clinical','Professor Dr. Syed Amjad Shah','["The Department of Oral & Maxillofacial Surgery at Peshawar Dental College supports BDS education through structured teaching in surgical management of oral and maxillofacial conditions.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Syed Amjad Shah","qualification":"BDS, FCPS","reg":"2180-D"},{"name":"Professor Dr. Muhammad Ishfaq","qualification":"BDS, FCPS, CHPE","reg":"6374-D"},{"name":"Associate Professor Dr. Nadia Ashraf","qualification":"BDS, FCPS(OMFS), CHPE","reg":"6951-D"},{"name":"Senior Registrar Dr. Riaz Khan","qualification":"BDS, FCPS","reg":"10332-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(16,'paediatric-dentistry','Paediatric Dentistry','bi-emoji-smile','Clinical','Professor Dr. Hasham Khan','["The Department of Paediatric Dentistry at Peshawar Dental College supports BDS education through structured teaching in oral health care for children and adolescents.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Hasham Khan","qualification":"BDS, MSc. (Paedodontics), MHPE","reg":"1494-D"},{"name":"Assistant Professor Dr. Humaira Hayat Awan","qualification":"BDS, DCD (Paedodontics)","reg":"9654-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(17,'oral-medicine','Oral Medicine','bi-clipboard2-pulse','Clinical','Professor Dr. Muhammad Younas','["The Department of Oral Medicine at Peshawar Dental College supports BDS education through structured teaching in diagnosis and non-surgical management of oral disease.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Professor Dr. Muhammad Younas","qualification":"BDS, FCPS (Oral & Maxillofacial Surgery)","reg":"7246-D"},{"name":"Assistant Professor Dr. Sobia Kanwal","qualification":"BDS, FCPS (Oral & Maxillofacial Surgery)","reg":"9420-D"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(18,'medicine','General Medicine','bi-heart-pulse-fill','Clinical','Associate Professor Dr. Muhammad Abbas','["The Department of General Medicine at Peshawar Dental College supports BDS education through structured teaching in general medicine relevant to dental patients.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Associate Professor Dr. Muhammad Abbas","qualification":"MBBS, FCPS (MEDICINE)","reg":"14848-N"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46'),
(19,'surgery','General Surgery','bi-bandaid','Clinical','Assistant Professor Dr. Nasir Bakhtiar','["The Department of General Surgery at Peshawar Dental College supports BDS education through structured teaching in general surgery principles for BDS training.","Faculty combine classroom teaching, laboratory or clinical exposure, and assessment aligned with PM&DC requirements and community oral health needs."]','[{"name":"Assistant Professor Dr. Nasir Bakhtiar","qualification":"MBBS (Gold Medalist), FCPS General Surgery, Fellowship Laparoscopic Surgery (GLR), CHPE, CHR, AI in Health Care","reg":"17304-N"}]',0,NULL,'2026-08-09','2026-10-13 17:20:46','2026-10-13 17:20:46');
-- departments: 19 rows

DROP TABLE IF EXISTS `event_media`;
CREATE TABLE `event_media` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_id` BIGINT NOT NULL,
  `path` VARCHAR(191) NOT NULL,
  `caption` VARCHAR(191) NULL,
  `sort_order` BIGINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- event_media: 0 rows

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` VARCHAR(191) NOT NULL,
  `title` VARCHAR(191) NOT NULL,
  `excerpt` TEXT NULL,
  `body_html` TEXT NULL,
  `category` VARCHAR(191) NULL,
  `cover_image` VARCHAR(191) NULL,
  `event_date` TEXT NULL,
  `location` VARCHAR(191) NULL,
  `status` VARCHAR(191) NOT NULL DEFAULT 'published',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `body_text` TEXT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `events` (`id`,`slug`,`title`,`excerpt`,`body_html`,`category`,`cover_image`,`event_date`,`location`,`status`,`created_at`,`updated_at`,`body_text`) VALUES
(9,'bds-admissions-open-2026-27','BDS Admissions Open 2026-27','Apply by 09 Nov 2026. Provisional Merit List: 10 November 2026.','<p>Applications are open for <strong>BDS Session 2026-27</strong> at Peshawar Dental College.</p><ul><li><strong>Apply by:</strong> 09 November 2026</li><li><strong>Provisional Merit List:</strong> 10 November 2026</li></ul><p class="adm-cta-row" style="display:flex;flex-wrap:wrap;gap:10px;margin-top:1.25rem;"><a href="https://caspr.kmu.edu.pk/" target="_blank" rel="noopener" class="btn-pmc btn-pmc-primary"><i class="bi bi-send"></i> Apply Now</a><a href="assets/images/news/kmu-mbbs-bds-admissions.jpeg" target="_blank" rel="noopener" class="btn-pmc btn-pmc-outline"><i class="bi bi-download"></i> Advertisement</a></p>','Admissions','assets/images/news/kmu-mbbs-bds-admissions.jpeg','2026-11-09','Peshawar Dental College — Admissions','published','2026-10-13 19:00:52','2026-10-13 19:00:52','Applications are open for BDS Session 2026-27 at Peshawar Dental College. Apply by 09 November 2026. Provisional Merit List: 10 November 2026. Apply at https://caspr.kmu.edu.pk/'),
(10,'convocation-2026','Convocation 2026','Last date for registration is October 27, 2026.','<p><strong>Convocation 2026</strong> registration is open for graduating students of Peshawar Dental College.</p><p><strong>Last date for registration:</strong> 27 October 2026.</p><p>Please complete registration before the deadline. Further schedule and venue details will be shared by the college administration.</p><p class="adm-cta-row" style="display:flex;flex-wrap:wrap;gap:10px;margin-top:1.25rem;"><a href="https://convocation.riphahpsh.edu.pk/" target="_blank" rel="noopener" class="btn-pmc btn-pmc-primary"><i class="bi bi-send"></i> Register Now</a><a href="assets/images/news/convocation2026.jpeg" target="_blank" rel="noopener" class="btn-pmc btn-pmc-outline"><i class="bi bi-download"></i> Advertisement</a></p>','Convocation','assets/images/news/convocation2026.jpeg','2026-10-27','Peshawar Dental College','published','2026-10-13 19:00:52','2026-10-13 19:00:52','Convocation 2026 registration is open. Last date for registration: 27 October 2026. Register at https://convocation.riphahpsh.edu.pk/');
-- events: 2 rows

DROP TABLE IF EXISTS `faculty_profile_aliases`;
CREATE TABLE `faculty_profile_aliases` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `profile_id` BIGINT NOT NULL,
  `alias` VARCHAR(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `faculty_profile_aliases` (`id`,`profile_id`,`alias`) VALUES
(1,1,'abbas-saleem-khan'),
(2,2,'nasiha-bashir'),
(3,2,'nasiha-motahir'),
(4,3,'fatima-iqbal'),
(5,4,'tehmina-nausheen'),
(6,4,'tehmina-naushin'),
(7,4,'tehmina-naushin-ur-razaq'),
(8,4,'tehmina-noushin'),
(9,5,'anoshia-zahid'),
(10,6,'karishma-ali'),
(11,7,'farzeen-khan'),
(12,8,'aamir-hameed'),
(13,9,'farah-shah'),
(14,10,'areeba-faheem'),
(15,11,'mushyyada-durrani'),
(16,12,'amjad-shah'),
(17,12,'syed-amjad-shah'),
(18,13,'dila-baz-khan'),
(19,14,'munawar-aziz-khattak'),
(20,15,'muhammad-younas'),
(21,16,'sobia-kanwal'),
(22,17,'shagufata-naz'),
(23,17,'shagufta-naz'),
(24,18,'manzar-iqbal'),
(25,18,'manzar-qbal'),
(26,19,'hasham-khan'),
(27,20,'humaira-hayat'),
(28,20,'humaira-hayat-awan'),
(29,21,'zarghuna-niaz'),
(30,22,'maryam-rashid'),
(31,23,'kawish-syed'),
(32,23,'professor-kawish-syed'),
(33,24,'mahira-iqbal'),
(34,24,'mahirah-iqbal'),
(35,25,'zeeshan-danish'),
(36,26,'abeera-hamid'),
(37,26,'abira-hamid'),
(38,27,'mubah-safdar'),
(39,28,'hina-tariq'),
(40,29,'muhammad-raza'),
(41,30,'muhammad-sartaj'),
(42,30,'muhammad-sartaj-khan'),
(43,31,'saima-afridi'),
(44,32,'maryam-tahir'),
(45,33,'samia-manzar'),
(46,34,'shazia-raif'),
(47,35,'ejaz-ur-rehman'),
(48,36,'amjad-hanif'),
(49,37,'hina-rehman'),
(50,38,'zudia-riaz'),
(51,39,'mah-rukh'),
(52,40,'munaza-khattak'),
(53,41,'hina-hakim'),
(54,42,'amna-umar'),
(55,42,'amna-umer'),
(56,43,'nadia-ashraf'),
(57,44,'muhammad-ishfaq'),
(58,45,'zafar-ul-islam'),
(59,45,'zafar-islam'),
(60,46,'sana-arbab'),
(61,47,'iftikhar-akbar'),
(62,48,'hasan-ali-raza'),
(63,48,'hassan-ali-raza'),
(64,49,'muhammad-zain'),
(65,50,'nida-gul'),
(66,50,'nida-gul-sepah'),
(67,50,'nida-sepah'),
(68,51,'mohammad-abbas'),
(69,51,'muhammad-abbas'),
(70,52,'ambereen-humayun'),
(71,52,'ambereen'),
(72,52,'ambreen-humayun'),
(73,53,'sadaf-alam'),
(74,54,'nasir-bakhtiar'),
(75,54,'nasir-bakhtyar'),
(76,55,'riaz-khan'),
(77,56,'shahab-adil'),
(78,56,'shahab-adil-');
-- faculty_profile_aliases: 78 rows

DROP TABLE IF EXISTS `faculty_profiles`;
CREATE TABLE `faculty_profiles` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` VARCHAR(191) NOT NULL,
  `name` VARCHAR(191) NOT NULL,
  `department_slug` VARCHAR(191) NULL,
  `department_name` VARCHAR(191) NULL,
  `designation` VARCHAR(191) NULL,
  `photo` VARCHAR(191) NULL,
  `is_hod` TINYINT(1) NOT NULL DEFAULT 0,
  `is_public` TINYINT(1) NOT NULL DEFAULT 1,
  `qualifications_json` TEXT NULL,
  `experience_json` TEXT NULL,
  `skills_json` TEXT NULL,
  `publications_json` TEXT NULL,
  `extra_json` TEXT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `emp_id` VARCHAR(191) NULL,
  `dept_override` BIGINT DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `faculty_profiles` (`id`,`slug`,`name`,`department_slug`,`department_name`,`designation`,`photo`,`is_hod`,`is_public`,`qualifications_json`,`experience_json`,`skills_json`,`publications_json`,`extra_json`,`created_at`,`updated_at`,`emp_id`,`dept_override`) VALUES
(1,'abbas-saleem-khan','Abbas Saleem Khan',NULL,'Oral Pathology','Professor','assets/images/faculty/abbas-saleem-khan.jpg',1,1,'["BDS","MPhil","PhD","CHPE","PGD"]','["12 Years"]','[]','["Association Between Tobacco Use And Histopathological Severity Of Oral Leukoplakia: A Cross-Sectional Study. Abdus Saboor, Sadaf Shakoor, Ilyas Rahman, Abbas Saleem Khan, Abdul Wali Khan, Mehwish Waris, Maria Ilyas, & Shahzad Ahmad. (2026). International Journal of Pharmacy Research & Technology ( IJPRT), 16(1), 4491–4497.","Immunohistochemical expression of CD133 in oral squamous cell carcinoma, oral potentially malignant disorders, and normal oral mucosa. CME Journal Geriatric Medicine.Imad Ali IA, Abdus Saboor AS, Maria Ilyas MI, Mehwish Waris MW, Sadaf Faheem SF, Abbas Saleem Khan ASK, Ilyas Rahman IR, Shahzad Ahmad SA. 2026 Jun;18(6):390-403.","Determination of the role of serum alpha 1 anti-trypsin protein levelsin oral squamous cell carcinoma Patients and in healthy snuff users and non-users. Faizan Tariq, Fatima Iqbal, Tehmina Nausheen, Hayatullah Khan, Ambreen Gul, Abbas Saleem Khan6.International Journal of Pathology (Int J Pathol) OctDec2025, Vol. 23. No. 4.p-263-70.","Clinicopathological features of oral potentially malignant disorders among tobacco users and non users. Khan, Abbas Saleem 1; Ahmad, Shahzad; Khan, Zafar Ali; Nisar, Muhammad; Shafiq, Fiza; Naushin, Tehmina; Iqbal, Fatima; Bashir, Nasiha; Issrani, Rakhi; Prabhu, Namdeo. National Journal of Maxillofacial Surgery. 16(3): 568-575, Sep-Dec 2025.","Immunoreactivity of MMP-9 in tissue samples of oral potentially malignant disorders and normal oral mucosa. Shafiq, F., Aneela Bashir, Alamgir, Mehreen Malik, Gillani, S. M. ., Asfand Khan, & Khan, A. S 7. Journal of Khyber College of Dentistry, 2025.15(02), 32–39.","Comparative Study on Histochemical Expression of CD34 in Different Variants of Ameloblastoma. Nasiha Bashir , Maria Obaid , Fatima Iqbal , Hoor Maryam , Tehmina Naushin and Abbas Saleem Khan 6. Pakistan Journal of Health Sciences (PJHS). 2025; 6(01):80-86.","Oral Leukoplakia: An Overview of Histopathological Spectrum Focusing On WHO Grading System and Binary System of Oral Epithelial Dysplasia. Tehmina Naushin , Zafar Iqbal , Abbas Saleem Khan 3 , Uzma Mehmood , Tanveer Khan , Sidra Mahmood , Mahmood Ul Hassan , Momina Mahmood and Tayyab Ul Hassan. Pakistan Journal of Health Sciences (PJHS). 2025;6(01):348-352.","Immunohistochemical Expression of GLUT-4 in Oral Squamous Cell Carcinoma, Oral Potentially Malignant Disorders and Normal Oral Mucosa . Aamna Javed, Abbas Saleem Khan 2, Sara Ziaullah, Nasiha Bashir, Tehmina Nausheen, Laiba Fayyaz. African Journal of Biological Sciences. 2024,6(16);708-24. (Corresponding authorship)","Expression of CD34 in Ameloblastoma and Odontogenic keratocyst. Maria Hanif, Nasiha Bashir, Tehmina Noushin, Mehreen Malik, Aysha Khitab, Abbas Saleem Khan. Journal of Khyber College of Dentistry (JKCD). 2024, Vol. 14, No. 3;51-55.","The predictive power between il28b gene variants (rs12979860 and rs8099917) and the response of hepatitis C virus in patients on sofosbuvir and daclatasvir. Mohsina Haq, Jawad Ahmed, Ihsan Ullah, Hala Rajab, Sami Siraj, Najeeb ul Haq, Abbas Saleem Khan 7. Journal of Population Therapeutics & Clinical Pharmacology. 2024, Vol.31 No. 06 ; 3519-3528.","Association of IL28B rs12979860 and rs8099917 Gene Polymorphisms with Response to Combination Therapy of Sofosbuvir and Daclatasvir in HCV-Infected Patients from the Khyber Pakhtunkhwa Population. Mohsina Haq, Jawad Ahmed, Ihsan Ullah, Najeeb ul Haq, Arbab Muhammad Kashif Khan5, Abbas Saleem Khan Kurdish Studies . June 2024 , Volume: 12, No: 3:416 – 420.","Association of Podoplanin expression to histopathological grades of oral epithelial dysplasia and oral squamous cell carcinoma. Journal of Pakistan Medical Association (JPMA) .Hina shabir, Sofia Durrani, Fatima Tariq, Samreena Mohammad, Abbas Saleem Khan 5. 2024 ;74:852-856.","Serum vitamin D levels of Oral squamous cell carcinoma patients of KPK. Sana Ahmad, Abbas Saleem Khan 2, Syed Muhammad Awais, Muhammad Raza , Syed Omer Farooq. Advances in Basic Medical Science (ABMS).2023;7(2)56-59.","Clinicopathological Features of Oral Leukoplakia Among Snuff Users and Non-Users: An Analytical Study. Tehmina Naushin, Abbas Saleem Khan 2, Sadaf Alam, Nasiha Motahir, Fatima Iqbal, Hoor Maryam Younas, Sidra Mahmood and Uzma Mahmood. Pakistan Journal of health sciences.2023 , Vol. 4 Issue. 6;182-186.","Serum E-Cadherin levels in various clinical variants of Oral potentially pre-malignant disorders. Abdus saboor, Muhammad Mumtaz Khan, Badshah Afsar, Abbas Saleem Khan 4. Khyber Medical University Journal. 2023, 15(3); 167-70.","Histopathological assessment of Oral leukoplakia among snuff users and non- users. Naushin T, Khan AS ,Ishfaq M, Bashir N, Iqbal F, Hassan M. Journal of Medical Sciences .2023,31(1), 72–75.","Description of clinicopathological characteristics of oral potentially malignant disorders with special focus on two histopathologic grading systems and subepithelial inflammatory infiltrate. Journal of Cancer Research and Therapeutics.Khan, Abbas Saleem1,Khan, Zafar Ali, Nisar Muhammad , Saeed, Saleha, Maryam, Hoor, Haq, Mohsina, Naushin, Tehmina, Issrani, Rakhi. 2023 19:S724-30.(Corresponding authorship).","Comparison of PDL-1 in Oral squamous cell carcinoma and premalignant lesions of Oral cavity. Saleha Saeed , Fozia Rauf, Fatima Iqbal , Abbas Saleem Khan 4, Amara Hayat Khan , Rabia Alamgeer. Asian Pacific Journal of Cancer Prevention. 2022 Dec; 23 (12): 4039–4045.","Incidence of Dengue fever, serotypes, clinical features, and laboratory markers: a case study of 2019 outbreak at district Shangla, KP, Pakistan.Rehman AU, Anwar F, Tayyab M, Haq I, Haq M, Ahmed A, Haq H, Khan AS 8. African Health Sciences. 2022 Mar; 22 (1):521-531.","Clinical Features and Associated Comorbidities In 200 Cases Of COVID-19 In Peshawar, Pakistan. Ihteshamul Haq , Mohsina Haq , Momina Haq , Seher Obaid , Susan Kakakhel , Mohammad Abbas , Abbas Saleem Khan 6 , Naumana Rhman , Ghazala Zarin Afridi , Fazli Zahir , Fatima Syed , Naveed Iqbal , Shahzad Shoukat , Faheem Anwar. Natural Volatiles & Essential. Oils Journal. 2022; 9( 1): 766-775.","A Expression of Survivin in oral malignancy and premalignancy: expression of Survivin in oral malignancy and premalignancy. Maryam, H., Nasir, S. ., Khan, M. M., Saleem , A 4., Bashir, N. ., Iqbal, F., & Nausheen, T. Journal of Medical Sciences. 2022, 30( 1), 14–17.","Immunohistochemical Expression of E-Cadherin in Normal Oral Mucosa, Precancerous Lesions and Oral Squamous Cell Carcinoma. Aneela Bashir, Abbas Saleem Khan 2, Sajjad Ahmed, Fiza Shafiq, Hoor Maryam Younas. International journal of pathology. 2021 Vol.19,No.3,135-142.","Molecular Identification and Seroprevalence of SARS-CoV2 IgG antibody among Health Care Workers in Peshawar Pakistan. Mohsina Haq, Ihteshamul Haq, Fazli zahir, Abbas Saleem Khan 4, Shabir Ahmad, Tanveer Tara, Muhammad Naveed Akhtar, Kamran Shah,Hina Ali, Bahar Ali, Seema zubair, Zeeshan Ahmad, Said Munir, Abdul Samad. Annals of Romanian Society for Cell Biology. 2021, Vol. 25, Issue 7; 1846 – 1855.","Serum p53 antibodies detection in oral squamous cell carcinoma, oral potentially malignant disorders and healthy individuals – a multicentre study. Abbas Saleem Khan1 , Sajjad Ahmad, Zahoor Ullah, Mohsina Haq, Muhammad Umar Farooq, Muslim Khan. Journal Pakistan Medical Association (JPMA). 2021, Vol.71, No.10, 2364-2368. (Corresponding authorship)","Predictive value of p53 protein expression and serum p53 antibodies in oral potentially malignant disorders: Relative to Oral squamous cell carcinoma. Abbas S. Khan 1, Sajjad Ahmad, Zahoor Ullah, Naveed Sadiq, Mohsina Haq, Ahmareen K. Sheikh. Journal of Taibah University Medical Science.2021 17(3) 415-423.(Corresponding authorship)","Immunohistochemical expression of p53 in oral squamous cell carcinoma, oral epithelial precursor lesions and normal oral mucosa. Khan, A. S 1, Ahmad, S, Iqbal, F, Saboor, A, Nisar, M, Naushin, T, Khalid Sheikh, A, Haq, M, Ahmad, T,& Rehman, B. Journal of Medical Sciences. 2021 October ;29(4):255-260. (Corresponding authorship)","Association of Serum Soluble E-Cadherin Levels with Oral Potentially Malignant Disorders in Tobacco Users and Non-Users. Saboor A, Muhammad K, Rehman I, Khan AS 4, Khan MM. Journal of Saidu Medical College, Swat. 2021;11(3):156-61.","Immunoexpression of Matrix Metalloproteinase-9 in Histopathological tissue samples of oral Squamous Cell Carcinoma.Shafiq F, Khan AS 2, Ahmad S, Khan MA, Bajwa SJ, Hussain TA. Pakistan Journal of Medical and Health Sciences. 2021, Vol. 15, No.10; 2666-69.","Clinical Utility of MMP-9 Expression in Oral Malignant and Premalignant Lesions. Shafiq F, Khan AS 2, Bashir A, Tariq F, Maryum H, Ahmad S. International Journal of Pathology. 2021, 19(2):64-70.","Predictive value of serum p53 antibodies in oral squamous cell carcinoma. Khan AS 1, Ahmad S, Ullah Z, Haq M, Usman MK, ur Rehman A. International Journal of Pathology. 2021,19(1):32-7. (Corresponding authorship).","Epidemiological characteristics and genetic diversity of clinically isolated dengue vector in Khyber Pakhtunkhwa, Pakistan. Zahir, Fazli, Ihteshamul Haq, Mohsina Haq, Abbas Saleem Khan 5, Wasifa Naushad, Hala Rajab, Muhammad Fahim, Sohail Ahmad, and Iqbal Munir. Clinical Epidemiology and Global Health. 12 (2021) 100863.","Estimation of Serum vitamin C levels in Oral Squamous cell carcinoma patients. Journal Khyber College of Dentistry (JKCD). Nisar M, Younas M, Ahmad S, Khan AS 4, Khan MM. 2020 ,10(04):13-17.","Determination of Ki-67 expression in oral leukoplakia in snuff users and non-users in Khyber Pakhtunkhwa province of Pakistan. The Professional Medical Journal. Naushin T, Khan MM, Ahmed S, Iqbal F, Bashir N, Khan AS 7. 2020 Apr 10;27(04):682-7.","Cytomorphological spectrum of pleomorphic adenoma in association with clinical parameters. Iqbal F, Bashir N, Saleem A 3, Khan MM, Naushin T, Alam S. The Professional Medical Journal. 2019, 10;26(10):1630-4.","Comparison of GLUT-1 expression in oral squamous cell carcinoma with normal mucosa. Usman K, Alam S, Salman F, Khan MM, Khattak M, Saleem A 6, Khan ZA. Pakistan Journal of Pathology. 2019 Aug 23;30(2):52-56.","Clinico-pathological features of oral squamous cell carcinoma among tobacco users and non-tobacco users. Ahmad S, Khan AS 2, Nisar M, Farooq SU, Awais SM, Ahmad M, Ahmad S, Farooq MU, Khattak MR, Ansari SR. Journal of Khyber College of Dentistry (JKCD). Dec 2018 ,8(4):8-14. (Corresponding authorship).","Association Between Oral Squamous Cell Carcinoma and Serum Vitamin E in Snuff Users and Non Snuff Users in Khyber Pakhtunkhwa Province of Pakistan. Khan AS 1, Ahmad S, Khattak MR, Khan MM. Journal of Khyber College of Dentisrty (JKCD). Dec 2017 ,7(3):9-15. (Corresponding authorship).","Infection control in dentistry - Knowledge and practices regarding barrier techniques ,post exposure management and prophylaxis. Abbas Saleem K 1, Rahim AU, Tanweer Hussain B, Muhammad Ali C, Zafar M. Pakistan Oral and Dental Journal ( PODJ). December 2009, Vol 29 No.2 ;235-240. (Corresponding authorship)","A study of tooth loss pattern and treatment in partially dentate patients. Shah SN, Bangash TH, Saleem A 3. Pakistan Oral & Dental Journal (PODJ). Dec 2007, 27(2);267- 270.","Vaccination status against Hepatitis B in doctors and final year clinical students working in Khyber college of dentistry and Sardar Begum Dental College Peshawar. Abbas Saleem K 1, Muhammad Ali C, Shahzad Ali S, Umar K, Muhammad Khalid U, Haq NU. Pakistan Oral and Dental Journal (PODJ). 2006, Vol 26 No.22; 255-260. (Corresponding authorship).","Hepatitis in dental practice- a study conducted on 1498 patients. Umar, Khitab; Abbas Saleem, Khan 2; Shahzad Ali, Shah; Najeeb, Ul Haq. Pakistan Oral and Dental Journal (PODJ). 2005, Vol 25 No.1;25-28. (Corresponding authorship)","Causes of dental extractions among 2000 patients- a study conducted at oral and maxillofacial surgical unit, Khyber college of dentistry ,Peshawar Pakistan. Shazad Ali Shah, Umar Khitab, Muhammad Ali Chughtai, AIi, Abbas Saleem Khan 4. Pakistan Oral & Dental Journal (PODJ). 2004,Vol 24 No.2; 209-212."]','{"aliases":["abbas-saleem-khan"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','349',0),
(2,'nasiha-bashir','Nasiha Motahir',NULL,'Oral Pathology','Professor','assets/images/faculty/nasiha-bashir.jpg',0,1,'["BDS","MPhil","PhD","CHPE"]','["30 years (24 years teaching +6 years private clinical practice)"]','[]','["Naushin T, Ahmed S, Saleem A, Bashir N, Khan T, Mahmood U, Mahmood S, Mahmood M. INVESTIGATING THE STATUS OF SINGLE NUCLEOTIDE POLYMORPHISM RS 2235373 IN IRF 6 GENE IN NON SYNDROMIC CLEFT LIP AND PALATE. Genetics and Molecular Research. 2026 Jul 15.","Iqbal F, Bashir N, Maryam H, Ahmad S. Histopathological spectrum of oral squamous cell carcinoma in Naswar users: correlation with duration, age and site. J Pak Med Assoc. 2026;76(3):387-391. doi:10.51253\/jpma.12430.","Bashir N, Ahmad S, Iqbal F, Fayyaz L, Naushin T. Stage-specific analysis of targeted microRNAs in oral squamous cell carcinoma and their association with the use of naswar. Journal of Oral Science. 2026;68(2):59–65. doi:10.2334\/josnusd.25-0294.","Khan AS, Ahmad S, Khan ZA, Nisar M, Shafiq F, Naushin T, Iqbal F, Bashir N, Issrani R, Prabhu N. Clinicopathological features of oral potentially malignant disorders among tobacco users and nonusers. National Journal of Maxillofacial Surgery. 2025;16(3):568–575. doi:10.4103\/njms.njms_204_23.","Bashir N, Obaid M, Iqbal F, Maryam H, Naushin T, Khan AS. Comparative Study on Histochemical Expression of CD34 in Different Variants of Ameloblastoma: CD34 Expression in Ameloblastoma Variants. Pakistan Journal of Health Sciences. 2025 Jan 31:80-6.","Khan AS, Ahmad S, Khan ZA, Nisar M, Shafiq F, Naushin T, Iqbal F, Bashir N, Issrani R, Prabhu N. Clinic opathological features of oral potentially malignant disorders among tobacco users and nonusers. National Journal of Maxillofacial Surgery. 2025 Dec 25;16(3):568.","Naushin T, Khan AS, Alam S, Motahir N, Iqbal F, Maryam HY, Mahmood S, Mahmood U. Clinicopathological features of oral leukoplakia among snuff users and non-users: an analytical study. Pakistan Journal of Health Sciences. doi:10.54393\/pjhs. v4i06.845.","Hanif M, Bashir N, Noushin T, Malik M, Khitab A, Khan AS. EXPRESSION OF CD34 IN AMELOBLASTOMA AND ODONTOGENIC KERATOCYST. JOURNAL OF KHYBER COLLEGE OF DENTISTRY. 2024 Sep 30;14(03):51-5.","J Aamna, Khan As, Ziaullah S, Bashir N, Naushin T, Fayyaz L. Immunohistochemical Expression of GLUT-4 in Oral Squamous Cell Carcinoma, Oral Potentially Malignant Disorders and Normal Oral Mucosa . Journal of biological Sciences. 2024,6(16);708-24.","Naushin T, Khan AS, Ishfaq M, Bashir N, Iqbal F, Hassan M. Histopathological assessment of oral leukoplakia among snuff users and non-users. Journal of Medical Sciences Peshawar. 2023;31(1):14. doi:10.52764\/jms.23.31.1.14.","Maryam H, Nasir S, Khan MM, Saleem A, Bashir N, Iqbal F, Nausheen T. Expression of survivin in oral malignancy and premalignancy. Journal of Medical Sciences. 2022;30(1):3. doi:10.52764\/jms.22.30.1.3.","Awan MI, Khurshid A, Akhtar O, Nasir S, Ziaullah S, Bashir N. SOX10 EXPRESSION IN SELECTIVE MALIGNANT SALIVARY GLAND TUMORS OF INTERCALATED AND EXCRETORY DUCTAL ORIGIN. Pakistan Journal of Pathology. 2022 Jun 30;33(2):48-52.","Iqbal F, Saeed S, Bashir N, Khattak SM, Naushin T, Sulaiman M. Histopathological typing and topographic distribution of head and neck lesions: an eight-year retrospective study. Journal of Rawalpindi Medical College. 2021;25(3):339–344. doi:10.37939\/jrmc. v25i3.1546.","Naushin T, Khan MM, Ahmed S, Hassan M, Iqbal F, Bashir N, Khan AS. Determination of Ki-67 expression in oral leukoplakia in snuff users and non-users in Khyber Pakhtunkhwa province of Pakistan. The Professional Medical Journal. 2020;27(4). doi:10.29309\/TPMJ\/2020.27.04.3124.","Bashir N, Iqbal F, Ahmad S, Motahir ST, Mohammad S, Naushin T. Estrogen receptor alpha signaling in salivary gland tumors: lessons learned from breast carcinoma. International Journal of Pathology. 2020;18(3).","Iqbal F, Bashir N, Saleem A, Khan MM, Naushin T, Alam S. Cytomorphological spectrum of pleomorphic adenoma in association with clinical parameters. The Professional Medical Journal. 2019;26(10). doi:10.29309\/TPMJ\/2019.26.10.2786.","Mohammad S, Khan M, Salahuddin S, Bashir N, Shakeel S. A SPECTRUM OF ORAL MUCOCELES: HISTOPATHOLOGY AND MANAGEMENT. Pakistan Oral & Dental Journal Vol 39, No. 2 (April-June 2019)","Iqbal F, Bashir N, Khan MM, Ahmad S, Sharif N. CD10 expression in ameloblastoma variants. Pakistan Oral & Dental Journal. 2018;38(2).","Bashir N, Iqbal F, Khan MM, Sharif N. Estrogen receptor alpha expression in salivary gland tumors. Pakistan Oral & Dental Journal. 2018;38(2)."]','{"aliases":["nasiha-bashir","nasiha-motahir"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','391',0),
(3,'fatima-iqbal','Fatima Iqbal',NULL,'Oral Pathology','Associate Professor','assets/images/faculty/fatima-iqbal.jpg',0,1,'["BDS","MPhil (Oral Pathology)","PhD (Oral Pathology)"]','[{"kind":"role","title":"Associate Professor, General & Oral Pathology","dates":"Aug 2022 – Present","detail":"Peshawar Dental College, Riphah International University, Peshawar Campus"},{"kind":"role","title":"Assistant Professor, General & Oral Pathology","dates":"Apr 2017 – Jul 2022","detail":"Peshawar Dental College"},{"kind":"role","title":"Lecturer, General Pathology","dates":"Jan 2010 – Mar 2017","detail":"Peshawar Medical College"}]','["General & Oral Pathology","Immunohistochemistry (IHC)","Fine Needle Aspiration Cytology","Histopathology & Microscopy","Oncology Research","Next-Generation Sequencing","Statistical Analysis (SPSS)","Digital Image Analysis","Scientific & Medical Writing","Postgraduate Supervision","Curriculum Design","Journal Peer Review"]','["Bashir N, Ahmad S, Iqbal F, Fayyaz L, Naushin T. Stage-specific analysis of targeted microRNAs in oral squamous cell carcinoma and their association with the use of naswar. Journal of Oral Science. 2026;68(2):59–65. doi:10.2334\/josnusd.25-0294.","Iqbal F, Ahmad S, Maryam H, Amin H. Evidence of mutations in tumour suppressor genes among oral cancer in Naswar, smokeless tobacco users. Acta Odontologica Scandinavica. 2025;84:43778. doi:10.2340\/aos.v84.43778.","Khan AS, Ahmad S, Khan ZA, Nisar M, Shafiq F, Naushin T, Iqbal F, Bashir N, Issrani R, Prabhu N. Clinicopathological features of oral potentially malignant disorders among tobacco users and nonusers. National Journal of Maxillofacial Surgery. 2025;16(3):568–575. doi:10.4103\/njms.njms_204_23.","Tariq F, Iqbal F, Nausheen T, Khan H, Gul A, Khan AS. Determination of the role of serum alpha 1 anti-trypsin protein levels in oral squamous cell carcinoma patients and in healthy snuff users and non-users. International Journal of Pathology. 2025;23(4):1028. doi:10.59736\/IJP.23.04.1028.","Khan HU, Iqbal F, Masood B, Ullah A. Epidemiological analysis of benign and malignant salivary gland tumors in Peshawar: a retrospective study from tertiary care hospitals (2020–2024). International Journal of Pathology. 2025;23(2):950. doi:10.59736\/IJP.23.02.950.","Bashir N, Obaid M, Iqbal F, Maryam H, Naushin T, Khan AS. Comparative study on histochemical expression of CD34 in different variants of ameloblastoma. Pakistan Journal of Health Sciences. 2025;6(1):2246. doi:10.54393\/pjhs.v6i1.2246.","Iqbal F, Bashir N. An insight into the histopathology of oral potentially malignant disorders and malignant neoplasms of head and neck. Journal of the Pakistan Medical Association. doi:10.47391\/JPMA.20155.","Aamir R, Rauf F, Iqbal F, Yousuf S, Rehman A, Sheikh AK, Muhammad S. Immunohistochemical expression of epidermal growth factor receptor (EGFR) in oral squamous cell carcinoma and oral potentially malignant disorders. Applied Immunohistochemistry & Molecular Morphology. 2024;32(3):157–162. doi:10.1097\/PAI.0000000000001185.","Naushin T, Khan AS, Alam S, Motahir N, Iqbal F, Maryam HY, Mahmood S, Mahmood U. Clinicopathological features of oral leukoplakia among snuff users and non-users: an analytical study. Pakistan Journal of Health Sciences. doi:10.54393\/pjhs.v4i06.845.","Naushin T, Khan AS, Ishfaq M, Bashir N, Iqbal F, Hassan M. Histopathological assessment of oral leukoplakia among snuff users and non-users. Journal of Medical Sciences Peshawar. 2023;31(1):14. doi:10.52764\/jms.23.31.1.14.","Saeed S, Rauf F, Iqbal F, Khan AS, Khan AH, Alamgeer R. Comparison of PD-L1 expression in oral squamous cell carcinoma and premalignant lesions of oral cavity. Asian Pacific Journal of Cancer Prevention. 2022;23(12):4039–4045. doi:10.31557\/APJCP.2022.23.12.4039.","Maryam H, Nasir S, Khan MM, Saleem A, Bashir N, Iqbal F, Nausheen T. Expression of survivin in oral malignancy and premalignancy. Journal of Medical Sciences. 2022;30(1):3. doi:10.52764\/jms.22.30.1.3.","Khan AS, Ahmad S, Iqbal F, Saboor A, Nisar M, Naushin T, Sheikh AK, Haq M, Ahmad T, Rehman B. Immunohistochemical expression of p53 in oral squamous cell carcinoma, oral epithelial precursor lesions, and normal oral mucosa. Journal of Medical Sciences. 2021;29(4):9. doi:10.52764\/jms.21.29.4.9.","Maryam H, Nasir S, Basheer A, Iqbal F, Shafiq F, Awan AH. Role of survivin as a diagnostic tool for oral squamous cell carcinoma. International Journal of Pathology. 2021;19(3).","Ghani S, Rauf F, Rehman A, Irfan M, Iqbal F, Jamal Y. Detection of Epstein-Barr virus antigen in oral squamous cell carcinoma by immunohistochemistry in patients from Khyber Pakhtunkhwa province of Pakistan. The Professional Medical Journal. 2021;28(12). doi:10.29309\/TPMJ\/2021.28.12.6379.","Iqbal F, Saeed S, Bashir N, Khattak SM, Naushin T, Sulaiman M. Histopathological typing and topographic distribution of head and neck lesions: an eight-year retrospective study. Journal of Rawalpindi Medical College. 2021;25(3):339–344. doi:10.37939\/jrmc.v25i3.1546.","Naushin T, Khan MM, Ahmed S, Hassan M, Iqbal F, Bashir N, Khan AS. Determination of Ki-67 expression in oral leukoplakia in snuff users and non-users in Khyber Pakhtunkhwa province of Pakistan. The Professional Medical Journal. 2020;27(4). doi:10.29309\/TPMJ\/2020.27.04.3124.","Bashir N, Iqbal F, Ahmad S, Motahir ST, Mohammad S, Naushin T. Estrogen receptor alpha signaling in salivary gland tumors: lessons learned from breast carcinoma. International Journal of Pathology. 2020;18(3).","Iqbal F, Bashir N, Saleem A, Khan MM, Naushin T, Alam S. Cytomorphological spectrum of pleomorphic adenoma in association with clinical parameters. The Professional Medical Journal. 2019;26(10). doi:10.29309\/TPMJ\/2019.26.10.2786.","Iqbal F, Bashir N, Khan MM, Ahmad S, Sharif N. CD10 expression in ameloblastoma variants. Pakistan Oral & Dental Journal. 2018;38(2).","Bashir N, Iqbal F, Khan MM, Sharif N. Estrogen receptor alpha expression in salivary gland tumors. Pakistan Oral & Dental Journal. 2018;38(2)."]','{"aliases":["fatima-iqbal"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(4,'tehmina-nausheen','Tehmina Naushin Ur Razaq',NULL,'Oral Pathology','Associate Professor','assets/images/faculty/tehmina-nausheen.jpg',0,1,'["BDS","MPhil","CHPE","PGD"]','["29 years, 1996-2009","13 years (Alkhidmat Hospital Peshawar), 2011-2026","16 years (Peshawar Dental College and Hospital)"]','[]','["Naushin T, Ahmed S, Khan SA, Bashir N, Khan T, Mahmood U, Mahmood S, Mahmood M. (2026). INVESTIGATING THE STATUS OF SINGLE NUCLEOTIDE POLYMORPHISM RS 2235373 IN IRF 6 GENE IN NON SYNDROMIC CLEFT LIP AND PALATE. .Genetics and Molecular Research DOI: https:\/\/doi.org\/10.4238\/b88ekk86","Naushin T, Ahmed S, Mahmood S, Khan T, MahmoodU. (2024). ASSOCIATION OF VARIANT IN INTERFERON REGULATORY FACTOR 6 IN CLEFT LIP AND PALATE CASES AND MATERNAL BLOOD GROUPS. Journal of Population Therapeutics and Clinical Pharmacology, 31(6), 3822-3826. https:\/\/doi.org\/10.69980\/e1krv821","Bashir N, Ahmad S, Iqbal F, Fayyaz L, Naushin T. Stage-specific analysis of targeted microRNAs in oral squamous cell carcinoma and their association with the use of naswar. Journal of Oral Science. 2026;68(2):59–65. doi:10.2334\/josnusd.25-0294.","Khan AS, Ahmad S, Khan ZA, Nisar M, Shafiq F, Naushin T, Iqbal F, Bashir N, Issrani R, Prabhu N. Clinicopathological features of oral potentially malignant disorders among tobacco users and nonusers. National Journal of Maxillofacial Surgery. 2025;16(3):568–575. doi:10.4103\/njms.njms_204_23.","Tariq F, Iqbal F, Nausheen T, Khan H, Gul A, Khan AS. Determination of the role of serum alpha 1 anti-trypsin protein levels in oral squamous cell carcinoma patients and in healthy snuff users and non-users. International Journal of Pathology. 2025;23(4):1028. doi:10.59736\/IJP.23.04.1028.","Dr. Syeda Munazza Gillani, Dr. Saif Ullah, Dr. Muhammad Arsalan Raffat, Dr. Tehmina Naushin, Dr. Zainab Akbar, & Dr. Akif Mahmud. (2025). PREVALENCE AND CLINICAL PRESENTATION OF ORAL POTENTIALLY MALIGNANT DISORDERS (OPMDS) IN PATIENTS REFERRED FOR SURGICAL BIOPSY. Journal of Population Therapeutics and Clinical Pharmacology, 32(5), 1587-1592. https:\/\/doi.org\/10.53555\/a324xw91","Bashir N, Obaid M, Iqbal F, Maryam H, Naushin T, Khan AS. Comparative study on histochemical expression of CD34 in different variants of ameloblastoma. Pakistan Journal of Health Sciences. 2025;6(1):2246. doi:10.54393\/pjhs. v6i1.2246.","Naushin, T, Khan, A. S, Alam. S, Motahir, N., Fatima Iqbal, Younas, H. M.., Mahmood, S, & Mahmood, U. (2023). Clinicopathological Features of Oral Leukoplakia Among Snuff Users and Non-Users: An Analytical Study: Clinicopathological Features of Oral Leukoplakia. Pakistan Journal of Health Sciences, 4(06), 182–186. https:\/\/doi.org\/10.54393\/pjhs.v4i06.845","Alamgir, MS Azhar, Javed A, Naushin T, Ikram S, Raffat MA. (2025) Prevalence of Stress-Related Oral Lesions and Their Association with Academic Stress Among Dental Students: A Multi-Stage Study. Journal of Rehman College of Dentistry.","Hanif M., Nasiha Bashir, Noushin, T, Malik, M, Khitab, A., & Saleem Khan, A. (2024). EXPRESSION OF CD34 IN AMELOBLASTOMA AND ODONTOGENIC KERATOCYST. JOURNAL OF KHYBER COLLEGE OF DENTISTRY, 14(03), 51–55. https:\/\/doi.org\/10.33279\/jkcd.v14i03.71 DOI: https:\/\/doi.org\/10.52442\/jrcd.v7i1","Zaman R , Nazish, Saif Ullah Nasir Z Mahmud A, Naushin T . (2025). ADMINISTRATION OF PREOPERATIVE SUBMUCOSAL DEXAMETHASONE IN THIRD MOLAR SURGERY: A PROGRESSION TOWARDS ENHANCING QUALITY OF LIFE. Journal of Population Therapeutics and Clinical Pharmacology, 32(7), 2037-2042. https:\/\/doi.org\/10.53555\/ybhm6f47","Khan AS, Khan ZA, Nisar M, Saeed S, Maryam H, Haq M, et al. Description of clinicopathological characteristics of oral potentially malignant disorders with special focus on two histopathologic grading systems and subepithelial inflammatory infiltrate. J Can Res Ther 2023;19: S724-30.","Khan, A. S., Ahmad, S., Iqbal, F., Saboor, A, Nisar, M., Naushin, T., … Rehman, B. (2022). A IMMUNOHISTOCHEMICAL EXPRESSION OF P53 IN ORAL SQUAMOUS CELL CARCINOMA, ORAL EPITHELIAL PRECURSOR LESIONS, AND NORMAL ORAL MUCOSA. Journal of Medical Sciences, 29(04), 255~260. https:\/\/doi.org\/10.52764\/jms.21.29.4.9","Khan B, Kulsoom J, Sharif A, Shafiq F, Raffat MA, Naushin T. (2025). ASSOCIATION BETWEEN SALIVARY CYTOKINES AND HISTOPATHOLOGICAL GRADES OF ORAL EPITHELIAL DYSPLASIA. Journal of Population Therapeutics and Clinical Pharmacology, 32(7), 2083-2087. https:\/\/doi.org\/10.53555\/rsnzy008","Naushin, T., Khan, A. S., Ishfaq, M., Bashir, N., Iqbal, F., & Hassan, M. ul. (2023). HISTOPATHOLOGICAL ASSESSMENT OF ORAL LEUKOPLAKIA AMONG SNUFF USERS AND NON-USERS. Journal of Medical Sciences, 31(01), 72–75. https:\/\/doi.org\/10.52764\/jms.23.31.1.14","Naushin, T., Iqbal, Z., Khan, A. S., Mehmood, U., Khan, T., Mahmood, S., Hassan, M. U., Mahmood, M., & Hassan, T. U. (2025). Oral Leukoplakia: An Overview of Histopathological Spectrum Focusing On WHO Grading System and Binary System of Oral Epithelial Dysplasia: Oral Leukoplakia: Histopathological Spectrum Focusing On Oral Epithelial Dysplasia. Pakistan Journal of Health Sciences, 6(1), 356–360. https:\/\/doi.org\/10.54393\/pjhs.v6i1.2438","Naushin T, Khan MM, Ahmed S, Mahmood-ul-Hassan, Iqbal F, Bashir N, Khan AS. Determination of Ki-67 expression in oral leukoplakia in snuff users and non-users in Khyber Pakhtunkhwa province of Pakistan. Professional Med J 2020; 27(4):682-687. DOI: 10.29309\/TPMJ\/2020.27.04.3124","Iqbal F, Saeed S, Bashir N, Khattak SM, Naushin T, Sulaiman M. Histopathological typing and topographic distribution of head and neck lesions: an eight-year retrospective study. Journal of Rawalpindi Medical College. 2021;25(3):339–344. doi:10.37939\/jrmc. v25i3.1546.","Iqbal F, Bashir N, Saleem A, Khan MM, Naushin T, Alam S. Cytomorphological spectrum of pleomorphic adenoma in association with clinical parameters. The Professional Medical Journal. 2019;26(10). doi:10.29309\/TPMJ\/2019.26.10.2786.","Bashir N, Iqbal F, Ahmad S, Motahir ST, Mohammad S, Naushin T. Estrogen receptor alpha signaling in salivary gland tumors: lessons learned from breast carcinoma. International Journal of Pathology. 2020;18(3).","Malik M. Salivary Gland Tumors-10 years’ experience at Peshawar Medical College. Int J Pathol [Internet]. 2023 Jul. 31 [cited 2026 Aug. 25];:75. Available from: https:\/\/jpathology.com\/index.php\/OJS\/article\/view\/837","Sarfaraz Khan, Z, Muhammad, A, Ataullah, M, Saba Shah, S. G., Naushin, T, Mir, H., Naeem, N, Ahmad, Z., Abbas Bangash, S., & Ullah, I. (2022). Anatomical Sites OF Superficial Basal Cell Cancers Demonstrate Higher Rates of Mixed Histology: Anatomical Sites of Superficial Basal Cell Cancers. Pakistan BioMedical Journal, 5(5), 44–48. https:\/\/doi.org\/10.54393\/pbmj.v5i5.451","Maryam, H., Nasir, S, Khan, M. M., Saleem, A., Bashir, N.., Iqbal, F., & Nausheen, T. . (2022). EXPRESSION OF SURVIVIN IN ORAL MALIGNANCY AND PREMALIGNANCY. Journal of Medical Sciences, 30(01), 14–17. https:\/\/doi.org\/10.52764\/jms.22.30.1.3"]','{"aliases":["tehmina-nausheen","tehmina-naushin","tehmina-naushin-ur-razaq","tehmina-noushin"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','496',0),
(5,'anoshia-zahid','Anoshia Zahid',NULL,'Oral Pathology','Senior Lecturer','assets/images/faculty/anoshia-zahid.jpg',0,1,'["BDS","MPhil","CHPE"]','["20 months"]','["Gold medalist in Mphil (Oral Pathology)","Principal author of the Book (published)","Title “Diseases of Salivary Glands”","ISBN 978-627-94976-0-4"]','["Association of Calcium and Vitamin D Supplementation with Dental Fluorosis among Adults in Peshawar, Pakistan","Zahid A, Maryam B, Zahid R, Syed AA, Khan M, Khan MS. Association of Calcium and Vitamin D Supplementation with Dental Fluorosis among Adults in Peshawar, Pakistan. J Islamabad Med Dental Coll. 2025; 14(3): 279-283. DOI: https:\/\/doi.org\/10.35787\/jimdc.v14i3.1410","Comparison of Antibiotic Susceptibility test on Nutrient Agar and Mueller Hinton’s agar","Zahid, A. ., Aleem , B. ., & Khan, M. (2025). Comparison of Antibiotic Susceptibility test on Nutrient Agar and Mueller Hinton’s agar. BMC Journal of Medical Sciences, 6(2), 53–57. https:\/\/doi.org\/10.70905\/bmcj.06.02.053"]','{"aliases":["anoshia-zahid"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(6,'karishma-ali','Karishma Ali',NULL,'Oral Pathology','Senior Lecturer','',0,1,'["BDS","MPhil","MHPE","CHR"]','["5 years"]','[]','["Immunohistochemical (IHC) Expression of p16 in Various Grades of Oral Squamous Cell Carcinoma (OSCC) with Snuff Use in Tertiary Care Hospitals of Peshawar. Pakistan Journal of Health Sciences (1stposition).Year of publication: 2022. Approved by Pakistan Medical and Dental Council and HEC","Salivary MicrobiomeDysbiosis is associated with Non-Smoking Male Lung Cancer and correlated with Immunocytochemistry Markers. Pakistan Journal of Chest Medicine(6th position).Year of publication: 2022. Approved by Pakistan Medical and Dental Council and HEC","Expression of P16 in Various Grades of Oral Squamous Cell Carcinoma of Tertiary Care Hospitals of Peshawar. Pakistan Journal of Medical and Health Sciences (1st position).Year of publication: 2022. Approved by Pakistan Medical Council and HEC","Expression of CD3 Levels of Tumor Infiltrating Lymphocytes (TILs) in Various Grades of Oral Squamous Cell Carcinoma of Tertiary Care Hospitals of Peshawar.. Pakistan Journal of Medical and Health Sciences Correspondence Author).Year of publication: 2022. Approved by Pakistan Medical Council and HEC","Immuno-histochemical Expression of Cyclin D1 in Oral Squamous Cell Carcinoma, Oral Potentially Malignant Disorders, and Normal Oral Mucosa (6th position).. Pakistan Biomedical Journal Year of publication: 7th July 2022. Approved by Pakistan Medical Council and HEC","FREQUENCY AND RISK FACTORS OF MULTI-DRUG RESISTANT TUBERCULOSIS IN KHYBER PAKHTUNKHWA, PAKISTAN: A RETROSPECTIVE STUDY.. Rehman Journal of Health Sciences (5th position).Year of publication: 2022. Approved by Pakistan Medical Council and HEC","The situation of Coronavirus in Pakistan Regarding Diagnosis, Lab Facilities, Medical Equipment, and Isolation Wards in Hospitals. Pakistan Biomedical Journal (6th position). Year of publication: 2022. Approved by Pakistan Medical Council and HEC","Comparing the Frequency of Cardiovascular Autonomic Neuropathy in Diabetic Cirrhotic with Non-Diabetic Cirrhotic Patients. Pakistan Biomedical Journal (6th position). Year of publication: 2022. Approved by Pakistan Medical Council and HEC","Diagnosis, Prevention, and Plasma Therapy as a Treatment of COVID-19 and Comparison with Pakistan. American Journal of Clinical Microbiology and Antimicrobials (3rd position). Year of publication: 2021. Approved by Pakistan Medical Council and HEC","Third Molar Surgery: Risk Factors and Complications after Removal of Third Molars.. Pakistan Journal of Medical and Health Sciences (6th position). Year of publication: 2021. Approved by Pakistan Medical Council and HEC","Perceptions of Artificial Intelligence in Medical Education: A Cross-Sectional Study Among Students and Faculty at HBS Medical and Dental College, IslamabadPakistan. Journal of Health Sciences (4th position). Year of publication: 2025. Approved by Pakistan Medical and Dental Council"]','{"aliases":["karishma-ali"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(7,'farzeen-khan','Farzeen Khan',NULL,'Community & Preventive Dentistry','Professor','assets/images/faculty/farzeen-khan.jpg',1,1,'["MSc Community Dentistry","MPH","BDS","CHPE","PGD Diet & Nutrition"]','["Professor, Peshawar Dental College: 30-10-2024 to date;","Associate Professor: 13-06-2024 to 29-10-2024;","Assistant Professor: 01-06-2014 to 12-06-2024;","Senior Lecturer: 15-10-2013 to 31-05-2014;","Lecturer: 13-10-2011 to 14-10-2013."]','["Community and preventive dentistry","public health","Health professions education","Research supervision","SPSS (Basics)","Dental public health outreach","Diet and Nutrition"]','["Khan F, Ayub A, Kibria Z. Knowledge, Attitude and practice about oral health among general population of Peshawar. J Dow Uni Health Sci. 2013;7(3):117-121.","Haq M, Khan F, Haq M. Awareness level of Hepatitis B in rural areas of Charsadda. KJMS. 2016;9(3):363-365.","Khan F, Malik FR, Sabiha ZUA, Ali A, Saba T, Zai HH, Ghazala K, Qayyum H, Komal A, Arif G, Arif Y. Association of maternal BMI with newborn birth weight and maternal height with baby crown heel length. Gomal J Med Sci. 2017;15:115-119.","Rehman AU, Khan F, Ali K, Naz S, Hussain S, Alam S. Salivary Microbiome Dysbiosis is associated with Non-Smoking Male Lung Cancer and correlated with Immunocytochemistry Markers. Pak J Chest Med. 2021;27(04):288-294.","Yousaf M, Khan A, Shah F, Kiramat S, Ud Din I, Khan F. Impact of Covid-19 Pandemic on Psychological Behaviour of Dental Health Care Workers in Peshawar. PJHS. 2022;3(07):113-117.","Jehan OH, Khan F, Jehan AM. Assessment of oral health behavior, knowledge, and practice among medical and dental undergraduate students of Peshawar Medical and Dental College, Pakistan. Biomedica. 2024;40(1):26-31. https:\/\/doi.org\/10.24911\/BioMedica\/5-1146","Khan F, Umar J, Lodhi K. Investigating the Role of Organizational Support in Enhancing Work-Life Balance: A Cross-Sectional Analysis among Female Dentists in Urban Clinics. Diagnosis. 2024;11(1):745-753.","Khan F, Khan SK, Khan AI, Shah F, Khan A, Yousaf M. The Effect of Dietary Habits and Oral Hygiene on Caries Among Children Aged 2-12 Years Visiting Peshawar Dental Hospital, Peshawar, Pakistan. JPTCP. 2024;31(1):551-558.","Zia A, Ali Z, Khan F, Imran R, Zubair F, Sajjad M, Ishfaq H. Comparing the Impact of Workload on the Mental Health of House Officers at Public and Private Hospitals of Peshawar. PJHS. 2024;5(4):61-66. http:\/\/doi.org\/10.54393\/pjhs.v5io4.1382","Khan F, Raza A, Ali M, Zahid N, Tahir H, Lodhi K. Exploring the Role of Community Dentistry in Reducing Disparities in Access to Oral Healthcare Services. Health Aff. 2024;11(3):100-107.","Shah F, Khan F, Khan SK, Bibi K, Faheem A, Arbab KN. Periodontal Health and Its Association with Age and Trimester in Pregnant Women Visiting Hospitals of Prime Foundation. PJHS. 2024;5(05):132-137. https:\/\/doi.org\/10.54393\/pjhs.v5i05.1496","Raza A, Khan F, Ali M, Rehman M, Mahmood A, Saleem B. Meta-analysis investigating the influence of loading protocols on mandibular implant success and patient satisfaction. Bioanalysis. 2024;16(5):420-428.","Sabiha ZA, Khan F, Ayesha, Rahat H, Khan S, Khan R, Ali Khan M, Saeed R. The effect of smartphone addiction on academic performance, perceived stress, and satisfaction with life. JPTCP. 2024;31(6):1660-1669. doi:10.53555\/jptcp.v31i6.6741","Khan F, Dar AM, Raza H, Raza M, Ali M, Ali M. Evaluating stress levels among dental and medical students: a comparative analysis of contributing factors and coping mechanisms. Diagnosis. 2024;11(3):959-966.","Bibi K, Khan F, Dar AM, Raza H, Raza M, Ali M. Brain drain of house officers and associated factors at public sector hospitals of Peshawar. Diagnosis. 2024;11(3):967-991.","Khan F, Shah F, Khan SK, Bibi K, Khattak M. The influence of dietary patterns and oral hygiene on dental caries and DMFT index among children aged 2-12 years attending Peshawar Dental Hospital, Peshawar, Pakistan. Bioanalysis. 2024;16(6):477-488.","Khan H, Sher SA, Hanif MI, Zemawal NA, Ahmad A, Khan F, Daftani MH. Prevalence, proportions, and identities of antibiotic-resistant bacteria in the oral microflora of healthy children. Cureus. 2024;16(8):e67277.","Tariq F, Khan F, Khanzada M, Bibi K, Jamal S, Rahim A, Afridi AJ, Imran M. A cross-sectional study on the interest of dental students in basic sciences and clinical electives. JPTCP. 2024;31(9):2345-2353.","Deeba F, Taj I, Khan F, et al. Assessment of Oral Health Status and its Relationship with Daily Performances, Body Mass Index and Eating Habits in Orphanage Facility of District Peshawar. PSZMC. 2024;38(3):220-225.","Shahid T, Mariym S, Khattak M, Wadud S, Khan F, Haq M. Evaluation of Altered Oral Changes in Covid-19 PCR Positive Cases - A Cross Sectional Study. J Saidu Med Coll Swat. 2024;14(4):290-295. https:\/\/doi.org\/10.52206\/jsmc.2024.14.4.956","Malik FR, Khan F. Patients'' and students'' perspectives on bedside teaching: A descriptive study. Pak J Med Sci. 2024;40(10):2384-2389. https:\/\/doi.org\/10.12669\/pjms.40.10.8743"]','{"aliases":["farzeen-khan"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','572',0),
(8,'aamir-hameed','Aamir Hameed',NULL,'Community & Preventive Dentistry','Associate Professor','assets/images/faculty/aamir-hameed.jpg',0,1,'["CHPE","MHR","MPH","BDS"]','["Associate Professor: Sep 2025 to till date Assistant Professor: Oct 2015 to Sep 2025 Senior Lecturer: Nov 2012 to Sep 2015 Lecturer: Oct 2008 – Sept 2011.","Visiting Faculty at Institute of Management & Sciences Hayatabad, Peshawar, KPK Pakistan: Jan 2014-2016","Community Dentist, Consumer Director, Health & Hygiene program P&G: June 2004- Dec 2004"]','["Community and preventive dentistry","public health","Health professions education","Research supervision","SPSS (Basics)","Dental public health outreach, Communication skills"]','["Dentists’ perception and practices regarding primary prevention of dental caries:Proceeding S.Z.P.G.M.I. Vol: 29(1): pp. 5-9, 2015","Oral hygiene practices among dental students of Peshawar city a Comparative study 2019. JKCD. Vol. 9, No 3.","Prevalence of dental caries among school going children (12 – 15 years) of Peshawar city(JKCD)","Prosthetic Status & Needs in Patients Visiting Dental Teaching Hospitals of Peshawar. TheProfessional Medical Journal. 175-Jinnah Colony, Faisalabad. Ph: 041-2617122-24). 5. A Comparative study of oral health in preclinical and clinical years of undergraduate dental","students of Peshawar by using DMFT index\". The Professional Medical Journal175-Jinnah Colony, Faisalabad. Ph: 041-2617122-24).","Frequency of malocclusion in government high school going children aged 13-17 in Peshawar.(JKCD)","Frequency of Dental Attrition and Common Oro-Dental Factors","Determination of minimum inhibitory and fungicidal concentration of potash alum against clinical isolates of candida albicans (JPDA vol.29, issue 4, 2020","Assessing risk factors, patterns, and knowledge of preventive measures in traumatic dental injuries among school children Pakistan journal of health sciences","Lahore 2024","Assessment of various tooth brushing techniques and its association with dental plaque Pakistan journal of health sciences Lahore 2024","Prevalence of fixed partial denture complications: a cross sectional study Pakistan journal of health sciences Lahore 2024","Role of teachers in providing oral health education to school children JKCD","Comparing oral health habits and dental floss use among medical and dental students in a public university in Pakistan Journal of Population Therapeutics & Clinical Pharmacology","Knowledge, Attitude and Practices Regarding Professional Indemnity Insurance among Dental Professionals in Teaching Institutes of Peshawar. J Liaquat Uni Med Health Sci. August 08, 2025","Effects of Microwave and Light Emitting Diode as Disinfection Methods on ColorStability of Polymethyl Methacrylate and Polyamide Denture Base Resins. J Postgrad Med Inst 2024;38(4):305-12.","Evaluating the Impact of Site of Oral Cancer on Quality of Life of Patients. PJHS VOL. 6 Issue. 01 Jan 2025"]','{"aliases":["aamir-hameed"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','672',0),
(9,'farah-shah','Farah Shah',NULL,'Community & Preventive Dentistry','Senior Lecturer','assets/images/faculty/farah-shah.jpg',0,1,'["MSc Community Dentistry","BDS","CHP"]','["Senior Lecturer:30-09-2023 till date"]','["Community and preventive dentistry, Health professions education","Research supervision","SPSS (Basics)","Dental public health outreach Communication skills"]','["Periodontal Health and Its Association with Age and Trimester in Pregnant Women Visiting Hospitals of Prime Foundation.","(In Pakistan Journal of Health Sciences. Ref PJHS VOL. 5 Issue. 5 May 2024). [2024]","Comparing Oral Health Habits And Dental Floss Use Among Medical And Dental Students In A Public University In Pakistan.","(In Journal of Population Therapeutics & Clinical Pharmacology. Ref Vol.31 No. 09 (2024) JPTCP (3332-3339)) [2022]","Impact of Covid-19 Pandemic on Psychological behavior of Dental Health care workers in Peshawar Pakistan Journal of health sciences. Ref PJHS\/2022\/vol 03\/ 07)","Knowledge and practices regarding oral health and hygiene and its correlation with periodontal health in pregnant women, visiting hospitals of prime foundation: Cross-sectional study. (In International Journal of Health Sciences,7(S1), 536–549.)","The effect of dietary habits and oral hygiene on caries among children aged 2-12 years visiting Peshawar Dental Hospital, Peshawar, Pakistan.","(In Journal of Population Therapeutics & Clinical Pharmacology, Ref Vol.31 No.1 (2024): JPTCP (551-558))","The influence of dietary patterns and oral hygiene on dental caries and DMFT index among children aged 2-12 years attending Peshawar Dental Hospital, Peshawar, Pakistan.","(In Journal of Bioanalysis ISSN:1757-6199 VOLUME 16, ISSUE 6 page 477-488)."]','{"aliases":["farah-shah"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(10,'areeba-faheem','Areeba Faheem',NULL,'Community & Preventive Dentistry','Lecturer','assets/images/faculty/areeba-faheem.jpg',0,1,'["MPhil Community Dentistry (in progress)","BDS"]','["Lecturer, Oral and Maxillofacial Surgery: 1-1-2018","Lecturer, Community and Preventive Dentistry: 1-04-2026 till date"]','["Minor Oral Surgery,","Dental public health outreach, SPSS (Basics)","Scientific Writing, Public Health"]','["Periodontal Health and Its Association with Age and Trimester in Pregnant Women Visiting Hospitals of Prime Foundation.","(In Pakistan Journal of Health Sciences. Ref PJHS VOL. 5 Issue. 5 May 2024). [2024]"]','{"aliases":["areeba-faheem"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(11,'mushyyada-durrani','Mushyyada Durrani',NULL,'Dental Education','Assistant Professor','assets/images/faculty/mushyyada-durrani.jpg',1,1,'["BDS","CHPE","MHPE"]','["8 years"]','[" Curriculum Design & Development"," Assessment & Evaluation in Medical Education"]','["Durrani M, Khan IA, Alam A, Akbar Z, Gul K, Durrani M. Scoping review of the impacts of covid-19 on assessment format in medical and dental institutes. Journal of Medical Sciences. 2022 Apr 1;30(01):47-52.","Khan IA, Alam A, Durrani M, Iqbal N, Akhtar A, Gul R. Perceptions of postgraduate students about patient safety as part of the curriculum at undergraduate and postgraduate level. Journal of Medical Sciences. 2022 Jun 29;30(02):145-50.","Durrani M, Abubakar M, Khan F, Durrani M, Shafiq M. Comparison of growth indices in breast-fed and formula-fed infants and their correlation with zinc status. Journal of Rehman Medical Institute. 2020 Jul 10;6(2):12-6.","Akbar, Z., Gul, K., Nasir, F., Hameed, W., Durrani, M., & Ullah, H. (2023). Evaluation of Students’ Perception of E-Learning Education Atmosphere (EEAM) in a Private Dental College in Pakistan. Pakistan Armed Forces Medical Journal, 73(6), 1648–1653. https:\/\/doi.org\/10.51253\/pafmj.v73i6.8173","Mahmood A, Durrani M, Khan NA, Naqvi SSQ, Saiqa Saleem, Khan AJ. UNDERSTANDING THE ROLE OF CERTIFICATION IN MEDICAL EDUCATION: PERSPECTIVES OF EDUCATORS. J Khyber Coll Dent [Internet]. 2023 Dec. 31 [cited 2024 Apr. 3];13(04):31-5. Available from: https:\/\/journalofkcd.com\/kcd\/article\/view\/461 3","Khan NA, Raza L, Sawal SH, Khan AJ, Durrani M, Mahmood A. ASSESSING THE PRESCRIPTION PRACTICES: A FOCUS FOR MEDICAL EDUCATION AND PATIENT SAFETY ENHANCEMENT. KJMS. 2024 Jan;17(1):35.","Dr Marina Khan, Dr Khurram Naushad, Dr Maidha Jadoon, Dr Uzma Siddique, Dr Fatima Aman, Dr Mushyyada Durrani. AN OBSERVER TOOL TO ENHANCE LEARNING OF MEDICAL STUDENTS DURING SIMULATION TRAINING OF CARDIOPULMONARY RESUSCITATION: A RANDOMIZED CONTROLLED TRIAL. J Popl Ther Clin Pharmacol [Internet]. 2024 Jun. 29 [cited 2024 Jul. 16];31(6):2552-8. Available from: https:\/\/www.jptcp.com\/index.php\/jptcp\/article\/view\/6974","Naushad K, Azam A, Siddique U, Durrani M, Shoaib M, Haris S. Core Components Framework for Assessing the Implementation of Competency-Based Medical Education. doi: 10.48047\/AFJBS.6.14.2024.8517-8521","Dr Uzma Siddique, Dr Zara Jameel, Dr Fazeelat Hajra Karim, Dr Shazia Zeb, Dr Zainab Abdullah, Dr Mushyyada Durrani. Educational Strategies in Curriculum Development: The Spices Model https:\/\/doi.org\/10.48047\/AFJBS.6.14.2024.1305413060","Fahimuddin, Khan NA, Khan MM, Kayani H, Shah SA, Durrani M, et al. INSIGHTS AND PERSPECTIVES: EXPLORING THE TRAINEE EXPERIENCES IN MAXILLOFACIAL POSTGRADUATE TRAINING. KJMS","Fahimuddin, Khan NA, Khan M, Kayani H, Durrani M, Zakariya M. EXPLORING THE RESEARCH JOURNEY: BARRIERS AND FACILITATORS FOR POSTGRADUATE MAXILLOFACIAL TRAINEES. Khyber Journal of Medical Sciences. 2025;17(4):338-43. https:\/\/doi.org\/10.70520\/kjms.v17i4.622","Jadoon M, Naushad K, Aman F, Khan Y, Durrani M, Ali S. Virtual Patients for Communication Skills Training: A Mixed Methods Evaluation. Cureus. 2025 Aug 26;17(8)."]','{"aliases":["mushyyada-durrani"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1775',0),
(12,'amjad-shah','Syed Amjad Shah',NULL,'Oral & Maxillofacial Surgery','Professor','assets/images/faculty/amjad-shah.jpg',1,1,'["BDS","FCPS","MFDSRCPS","CHPE","FICS","FDSRCPS","FDSRCS"]','["1993-2001: Dental Surgeon in rural health service and at PGMI \/ Government Lady Reading Hospital, Peshawar","2004-2009: Consultant Oral Surgeon and Assistant Professor, PGMI \/ Government Lady Reading Hospital, Peshawar","2009-2010: Assistant Professor & Head, Department of Oral & Maxillofacial Surgery, KUST Institute of Medical Sciences","2010-2015: Assistant\/Associate Professor, Vice Principal & Head, Peshawar Dental College","January 2016-June 2025: Professor, Vice-Principal & Head, Peshawar Dental College","July 2025-present: Professor & Head, Peshawar Dental College"]','["Oral & maxillofacial surgery","facial trauma","odontogenic and maxillofacial infections","trigeminal neuralgia","impacted third-molar surgery","postgraduate teaching, assessment and research supervision"]','["Rozi Afsar, Tahir U. Khan, Muhammad Ishfaq, Sana Wazir, Syed A. Shah. Effect of dexamethasone using two doses to evaluate postoperative trismus in the patients after impacted mandibular third molar extraction. Eur J Oral Maxillofac Surg. 2019;3(3):55-58.","Shah SA, Bangash ZQ, Khan T, Yunas M, Raza M, et al. The pattern of maxillofacial trauma and its management. J Dent Oral Disord Ther. 2016;4(4):1-6. doi:10.15226\/jdodt.2016.00165.","Shah SA, Khan T, Raza M, Afsar R, Syed Fahim S, et al. Risk factors for life-threatening complications associated with maxillofacial space infections: a clinical study. J Dent Oral Disord Ther. 2016;4(2):1-5. doi:10.15226\/jdodt.2016.00154.","Khan T, Shah SA, Wahid A, Waraich RA, ZA, Khan MM. Peripheral nerve injury in maxillofacial trauma. J Head Neck Physicians Surg. 2015;3:6-17.","Shah SA, Khan MN, Shah SF, Ghafoor A, Khattak A. Is peripheral alcohol injection of value in the treatment of trigeminal neuralgia? An analysis of 100 cases. Int J Oral Maxillofac Surg. 2011;40:388-392. doi:10.1016\/j.ijom.2010.11.010.","Dil F, Alam MS, Shah SA. The variability of mandibular third molar teeth development and its application for age estimation in the Peshawar population. J Khyber Coll Dent. 2018;8(1):63-67.","Khan MN, Shah SA, Malik Z, Ahmed A, Asim MA. Pattern of facial gunshot and blast injuries amongst law-enforcing forces. Pak Armed Forces Med J. 2016;66(4):515-519.","Wahid A, Shah SA, Katpar S, Raza M. Interruption of warfarin before dental surgery. Pak Oral Dent J. 2016;36(1):22-25.","Katpar S, Khan M, Shah SA, Rajput F, Channar K. Maxillofacial trauma spectrum at Civil Hospital Karachi: a report from the largest tertiary-care public-sector teaching hospital in Sindh Province. J Khyber Coll Dent. 2015;5(2):7-11.","Shah SA, Shah SF, Wahid A, Tahirullah, Bangash ZQ, Bangash H. Oral lichen planus: different trends in treatment. J Med Sci. 2014;22(3):137-142.","Wahid A, Shah SA, Katpar S. Lingual nerve damage during third molar surgery. Pak Oral Dent J. 2013;33(3):436-438.","Kundi I, Dil F, Shah SA, Bashir U. Applicability of Tanaka and Johnston mixed dentition analysis in a contemporary Pakistani population. Pak Oral Dent J. 2012;32(2):253-259.","Abdul Qadus, Qayyum Z, Katpar S, Shah SA, Salam A. Prevalence of dry socket related to gender and site. Pak Oral Dent J. 2012;32(1):20-22.","Qayyum Z, Shah SA, Khan S, Pasha F. Hazards of pressure pack. Pak Oral Dent J. 2011;31(2):258-259.","Shah SA, Khattak A, Shah FA, Khan Z. The role of peripheral neurectomies in the treatment of trigeminal neuralgia in modern practice. Pak Oral Dent J. 2008;28(2):237-240.","Shah SA, Murad N, Salaar A, Iqbal N. Analysis of pain distribution and nerve involvement. Pak Oral Dent J. 2008;28(1):37-41.","Shah SA, Shah AA, Salam A. Midfacial fractures: different trends in management. Pak Oral Dent J. 2007;27(2):183-186.","Shah SA, Shah AA, Salam A. Pattern and management of mandibular fractures: a study conducted on 264 patients. Pak Oral Dent J. 2007;27(1):103-106.","Shah SA, Shah AA, Salam A. Maxillofacial fractures: analysis of demographic distribution in 320 patients. Pak Oral Dent J. 2006;26(2):235-238.","Khan AQ, Asmatullah, Shah SA, Qayyum Z. Myofascial pain dysfunction syndrome in NWFP: a study conducted on 100 patients. Pak Oral Dent J. 2004;24(2):223-225."]','{"aliases":["amjad-shah","syed-amjad-shah"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','335',0),
(13,'dila-baz-khan','Dila Baz Khan',NULL,'Oral Biology','Professor','assets/images/faculty/dila-baz-khan.jpg',1,1,'["BDS","MCPS (FAMILY DENTISTRY)","M.Phil (ORAL BIOLOGY)"]','["36 YEARS"]','[]','["Frequency of bicuspid and tricuspid form of mandibular second premolar at Khyber college of dentistry Peshawar. J.Med.Sci 2013;21(3):118-20.","An evaluation of malocclusion in rural and urban school children of district Peshawar. JKCD 2014;4(2):10-13.","Pattern and etiology of maxillofacial injury at teaching hospital at Kohat. KJMS 2013;6(1):149-51.","Effects of seat belts use on severity of maxillofacial injuries in Khyber Pakhtunkhwa sample. PODJ 2013;33(3):439-41.","Prevalence of cusp of Carabelli in permanent teeth in a group from Khyber Pakhtunkhwa, Pakistan. PODJ 2011;31(2):409-11.","Pattern of traumatic dentoalveolar injuries. J.Med.Sci 2011,19(1):21-3.","Prevalence pattern of dental caries in permanent teeth among school children of Peshawar city. KJMS 2011;3(2):53-5.","Dental ailments among low and high socioeconomic status school children aged 11-12 years. PODJ 2011;31(2):388-91.","Age, gender distribution and etiology of dentoalveolar fractures. PODJ. 2010;30(2):303-6.","Variation of cusps and roots of upper wisdom tooth in patients visiting khyber college of dentistry. J KCD. 2021 Sep 30;11(03):37-40.","Morphological characteristics of cusps and occlusal features of maxillary second molars; cross-sectional study in khyber college of dentistry, Peshawar. J KCD. 2019 Sep 30;9(03):69-73.","Age prediction model from third molar teeth development in the Peshawar population. A cross-sectional study. Journal of Khyber College of Dentistry. 2020 Mar 31;10(01):7-11.","Prevalence of maxillary peg-shaped lateral incisors and its association with dental anomalies in medical and dental students of Mardan, Pakistan. Journal of Khyber College of Dentistry. 2018 Jun 30;8(02):28-31."]','{"aliases":["dila-baz-khan"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1536',0),
(14,'munawar-aziz-khattak','Munawar Aziz Khattak',NULL,'Oral Biology','Professor','assets/images/faculty/munawar-aziz-khattak.jpg',0,1,'["BDS","M.Phil (ORAL BIOLOGY)","PGD","CHPE"]','["15"]','[]','["Humayun A, Khattak MA, Khan AM, Ara N, Khan F, Wazir NU. Estimation of the frequency of second mesiobuccal root canal in maxillary first permanent molar teeth in subjects visiting teaching dental hospitals of Peshawar. Prof Med J. 2020 Oct 10;27(10):2203-9.","Jamil Y, ur Rehman AZ, Alam S, Salam S, Irshad M, Khattak MA. Assessment of variations in the location of mental foramen by means of cone beam compute d tomography. Isra Med J. 2020 Oct 1;12(4).","Ijaz F, Khattak MA, Ahmad N, Arbab S, Shah SA, Abbas I. Frequency of Developmentally Malformed Permanent Maxillary Lateral Incisors in Patients Visiting the Three Teaching Dental Hospitals Of Peshawar. J Ayub Med Coll Abbottabad. 2021 Apr 1;33(2).","Arbab S, Khattak MA, Shah SA. Frequency of cusp of Carabelli in maxillary permanent first molars and its association with dental caries in patients visiting Peshawar Dental Hospital, Peshawar. Prof Med J. 2021 Aug 10;28(08):1101-6.","Khattak MA, Arbab S, Shah SA. Frequency of number of roots and root canals of maxillary first premolar teeth. Prof Med J. 2021 Sep 30;28(10):1513-8.","Younas M, Irshad M, Nisar M, Khattak MA, Rashid M, Akhter QJ. Frequency of oral lichen planus in Hepatitis-C virus patients visiting Peshawar Dental College. J Khyber Coll Dent. 2020 Dec 31;10(04):18-23.","Younas M, Khattak MA, Khan IA, Rehman AZ, Alam MS, Masood G, Irshad M. Association of low vitamin B12 in trigeminal neuralgia patients visiting Peshawar Dental College. J Rehman Coll Dent. 2021 Jul 9;2(1).","Khattak I, Khattak MA, Khattak YJ, Arbab S, Rashid M, Shah SA. Use of tooth clearing technique to determine root and canal morphology of permanent mandibular third molars in population of Peshawar: An in vitro cross-sectional study. Khyber Med Univ J. 2021 Dec 31;13(4):216-21.","Rashid M, Safdar S, Khattak MA, Arbab S, Shah SA, Khattak I. Gender as a Variable Influencing the Mesiodistal width of Permanent Maxillary Anterior Teeth: An Analysis using AutoCAD Software. J Pak Dent Assoc. 2022 Apr 1;31(2):70-5.","Arbab S, Khattak MA, Khattak I, Rashid M. The Frequency of Unilateral and Bilateral Distribution of Cusp of Carabelli in Maxillary Permanent First Molars in Patients Visiting Peshawar Dental Hospital, Peshawar. Med Forum. 2022;33(2):165-8.","Khattak MA, Ijaz F, Ahmad N, Arbab S, Khattak I, Khattak YJ. Root canal configuration of maxillary first premolar teeth in a subpopulation of Peshawar using tooth cross-sectioning method; An in vitro study. J Ayub Med Coll Abbottabad. 2022 Jun 24;34(3 Suppl 1):627-31.","Younas M, Khattak YJ, Arbab S, Khattak MA, Khattak I, Rashid M. Frequency and grading of supernumerary cusps in permanent human teeth of patients visiting the teaching hospitals of Peshawar Dental College and Khyber College of Dentistry, Peshawar. J Khyber Coll Dent. 2022 Sep 30;12(03):59-65.","Arbab S, Khattak MA, Khattak I, Jamil Y, Ijaz F, Hamayun A. Evaluation of the Occlusal Contact between the Opposing Teeth and the Cusp of Carabelli in Maxillary Permanent First Molars in Patients Visiting Peshawar Dental College. J Islamabad Med Dent Coll. 2023 Apr 19;12(1):17-22.","Sattar A, Imran N, Ishfaq M, Arbab S, Khattak MA, Khattak I. Anatomical Variation in the Location of Mandibular Foramen with Age Using Cone Beam Computed Tomography. Med Forum. 2024 Jan 30;35(1):18-22.","Imran N, Sattar A, Khattak I, Arbab S, Aziz M, Shah SA. Assessment of the Labial Alveolar Bone Thickness Overlying Maxillary Anterior Teeth in Different Age Groups, Genders, and Sides of the Arch: A Cone Beam Computed Tomographic Study. Med Forum. 2024 Jan 30;35(1):42-6.","Manan H, Sattar A, Khattak MA, Hassan D, Khan B, Rashid M. The Effect of Gender on the Linear and Volumetric Changes of Maxillary Permanent Canine Teeth on the Cone Beam Computed Tomography. Med Forum. 2024 Oct;35(10):102-5.","Khattak I, Khattak YJ, Sattar A, Shaheryar A, Arbab S, Khattak MA. Use of tooth clearing technique to determine root and canal morphology of permanent maxillary third molars in a population of Peshawar: An in vitro cross-sectional study. Med Forum. 2024 Dec;35(12):128-32.","Sattar A, Ishfaq M, Khattak I, Shaheryar A, Khattak MA, Arbab S. Anatomical Variation in the Position of Mandibular Foramen with Side of the Arch using Cone Beam Computed Tomography. Med Forum. 2024 Dec;35(12):50-3.","Khan B, Khattak MA, Arbab S, Khattak I. Examining the root and root trunk''s vertical dimensions in extracted permanent maxillary first molar in patients visiting Peshawar Dental Hospital, Peshawar. Khyber Med Univ J. 2025 Dec 31;17(4):472-77."]','{"aliases":["munawar-aziz-khattak"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','606',0),
(15,'muhammad-younas','Muhammad Younas',NULL,'Oral Medicine','Professor','assets/images/faculty/muhammad-younas.jpg',1,1,'["BDS","FCPS","CHPE","PGD","Diploma Implant"]','["13 YEARS"]','["MASTER IN ARTROCENTESIS, BOTOX ALCOHO INJECTION ,BASAL BONE IMPLANT,"]','["Frequency of dental attrition and common oriental factor to it. JKCD December 2019 Vol 9 no 4. 1stauthor","Determination of minimum inhibitory and fungicidal concentration of potash alum against clinical isolates of Candida Albicans. Journal of Pakistan dental association Vol 29 No 4 Oct 2020. 2ndauthor","Predisposing factor for the infection of mandibular third molar. PODJ volumeno 33, no 2 2013. 2ndauthor","Serious post extraction complaint. PODJ. Volume number 34.no 3. 2014. 4thauthor","Pattern of oral maxillofacial trauma, and its management. Journal of dentistry, oral disorder and therapy 4(2). 2016 .4thauthor","In vitro antifungal activity against Candida Albicans on acrylic resin. Journal of Pakistan armed forces. Vol 75 issue 5 2020.","Comparison of the Mean Reduction in Trismus Postoperatively After Use of 4mg and 8mg Intravenous Dexamethasone Pre Operatively, Following Impacted Mandibular Third Molar Surgery. (Sent for publication in process) 2ndAuthor .JKCD.","Frequency of oral lichen planus in HCV patients. author. Vol 10 (4) .2020, JKCD.1st Author","Estimation Vit C in Squamous cell carcinoma patient. Vol 10(4).2020.JKCD.2nauthor","A Study of low VIT-B 12 in trigeminal neuralgia patients visiting Peshawar Dental College. JRCD. vol1(1).2021.1st author","Assessment of knowledge attitude and practice of postgraduate trainee and general dental practioner regarding temporomandibular joint disorder. .JRCD. Vol 1(1).2021. 1st author","Comparison of the mean reduction in trismus postoperatively after use of 4mg and 8mg intravenous dexamethasone preoperatively. Following Impacted Third Molar Surgery. JKCD, Sep 2021.Vol.11.No 3. 2nd Author","An Association between Type 2 Diabetes Mellitus and Clinical Periodontal Parameter Pocket Depth. J KCD. Vol. 12 Issue-2, 2022. 6th author","Frequency of cleft lip and palate in individuals born to consanguineous parents. jrcd","Early detection of PMD through vital staining in tobacco user. VOL. 38 NO. 2 | Journal of Postgraduate Medical Institute","Frequency and grading of supernumerary cusps in permanent human teeth of patients visiting the teaching hospitals of Peshawar Dental College and Khyber College of Dentistry, Peshawar. JKCD. Vol 12. Issue 3,2022.5th author","Pattern of Temporomandibular Disorders (TMD) among patient visiting Peshawar dental college. JRCD Volume 3, 2022. First author","Frequency of Paediatric Oral and Maxillofacial tumours; A retrospective study. JRCD. Volume 3, 2022. Fourth author","Comparison of carbamazepine alone and in combination with baclofen in trigeminal neuralgia. International Journal of Health Sciences, 6(S7), 49113–121.","Pattern of Temporomandibular Disorders (TMD) among patient visiting Peshawar dental college. JRCD Volume 3, 2022. F"]','{"aliases":["muhammad-younas"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','556',0),
(16,'sobia-kanwal','Sobia Kanwal',NULL,'Oral Medicine','Assistant Professor','assets/images/faculty/sobia-kanwal.jpg',0,1,'["BDS","FCPS","MOMSRCS Ed","CHPE","CHR"]','["ONE YEAR"]','["NON SURGICAL MANAGEMENT OF ORAL DISEASE"]','[]','{"aliases":["sobia-kanwal"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1806',0),
(17,'shagufata-naz','Shagufta Naz',NULL,'Oral Medicine','Lecturer','',0,1,'["BDS"]','["ONE YEAR"]','[]','[]','{"aliases":["shagufata-naz","shagufta-naz"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(18,'manzar-qbal','Manzar Iqbal',NULL,'Oral Medicine','Lecturer','assets/images/faculty/manzar-qbal.jpg',0,1,'["BDS","MPH"]','["ONE YEAR"]','[]','[]','{"aliases":["manzar-iqbal","manzar-qbal"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(19,'hasham-khan','Hasham Khan',NULL,'Paediatric Dentistry','Professor','assets/images/faculty/hasham-khan.jpg',1,1,'["BDS (Pesh)","M.Sc(London)","MHPE (KMU)"]','["38 Years"]','["Special interest in dealing with medically compromised children & traumatic injuries to the teeth"]','["Khan H. Prevalence of Fracture of Permanent incisor teeth in children in Peshawar. Pak Oral Dent J 2003, 23:153-6.","Khan H. Comparison of Clinical and Photographic methods of assessment of enamel defects (Opacities). Pak Oral Dent J 2004, 24:77-82.","Khan FH; Khan H. Fluorosis in Kheshki area, District Nowshera. Pak Oral Dent J 2004, 24:213-8.","Khan H. Dental Caries--Preventive concepts of Dentists in Peshawar. Pak Oral Dent J 2005, 25:87-92.","Khan H. Evaluation of two different indices using photographic method of assessment of enamel defects (Opacities). J Postgrad Med Inst 2005, 19:149-56.","Khan H. Awareness of parents about dental diseases and their prevention in children. Pak Oral Dent J 2009, 29: 93-8.","Rehman K; Khan H. Frequency of class II type carious lesions in first permanent molars and their association with pulp. Pak Oral Dent J 2009, 29: 119-22.","Kamran M; Qiam F; Khan H. Evaluation of age, gender and parental factors affecting child behaviour in the dental surgery. JKCD 2011; 1 (2): 82-6.","Kanwal F; Jamil Y; Khan H. Effect of parental anxiety on child behaviour in the dental surgery. JKCD 2012; 2 (2): 74-7.","Ahmad S; Khan H; Khan M; Maryam W. Prevalence and patterns of Early Childhood Caries among school children in Peshawar. JKCD 2015; 6 (1): 36-9.","Farid S; Ali K; Khan H; Khan M. Frequency of Etiologic Factors in early childhood Caries. JKCD 2016; 7 (1): 30-5.","Saeed F, Qadeem F, Khan H. An evaluation of parental wish for presence\/absence during child dental treatment: A cross sectional study. JKCD 2019; 9 (1): 4-6.","Khan N, Khan H, Baloch MR, Abbasi SA. Time of Emergence of Permanent Teeth of the Children of Peshawar, Pakistan. JPDA 2019; 28 (4): 154-61.","Khan H, Khan N, Baloch MR, Abbasi SA. Effect of diet on eruption times for permanent teeth of children in Peshawar. PODJ 2020; 40 (1): 24-30.","Khan N, Abbasi SA, Khan H, Baloch MR, Chohan AN. Effect of dietary pattern on the emergence of permanent teeth of the children of Larkana, Pakistan. Ibnosina J Med Biomed Sc. 2022; 14 (1): 28-34.","Khan N, Abbasi SA, Khan H, Baloch MR, Chohan AN. Time of emergence of permanent teeth of the children of Larkana, Pakistan. Pak Orthodontics J 2022; 14 (1): 21-31.","Khan N, Baloch MR, Khan H, Chohan AN, Abbasi SA. Time of emergence of permanent teeth of children of Quetta, Pakistan. Ann Abbasi Shaheed Hospital & KMDC 2023; 28 (3): 149-159.","Khan N, Baloch MR, Khan H, Chohan AN, Abbasi SA. Effect of diet patterns on time of emergence of permanent teeth of children of Quetta, Pakistan. Khyber Med Univ J, 2023; 15(2): 4-90.","Khan H, Mahboob U, Ahmad T. Diagnostic Errors: Association with level of expertise, effect of time taken to reach the diagnosis and utilization of differential diagnosis checklists among postgraduate trainees. Pak J Med Sci. 2022 Nov-Dec; 38 (8): 2188-2194.","Khan H. Preventive & Minimal Invasive Dentistry in Pakistan. Letter to the Editor. JOPDAK 1997; 08: 67.","Khan H. Changing Concepts in Cariology: forty years on. Letter to the Editor. Dental Update 2013; 40: 853."]','{"aliases":["hasham-khan"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1843',0),
(20,'humaira-hayat','Humaira Hayat Awan',NULL,'Paediatric Dentistry','Assistant Professor','assets/images/faculty/humaira-hayat.jpg',0,1,'["BDS (Pesh)","DCD (KMU)","MHPE (KMU)"]','["15 Years"]','[]','[]','{"aliases":["humaira-hayat","humaira-hayat-awan"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1030',0),
(21,'zarghuna-niaz','Zarghuna Niaz',NULL,'Paediatric Dentistry','Lecturer','',0,1,'["BDS"]','["04 Years"]','[]','[]','{"aliases":["zarghuna-niaz"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(22,'maryam-rashid','Maryam Rashid',NULL,'Paediatric Dentistry','Lecturer','',0,1,'["BDS"]','["01 Year"]','[]','[]','{"aliases":["maryam-rashid"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(23,'kawish-syed','Kawish Syed',NULL,'Periodontology','Professor','assets/images/faculty/kawish-syed.jpg',1,1,'["BDS","MCPS (Periodontology)","MFD RCSI","F Perio RCSEd","CHPE KMU"]','["Professor\/Head Department Of Periodontology, Peshawar Dental College, Riphah International University, Peshawar Campus, Pakistan. July 9, 2026 – Till date.","Professor Department of Periodontology, Peshawar Dental College, Riphah International University, Peshawar Campus, Pakistan. Feb 2026 – July 8, 2026","Associate Professor & Head Department Of Periodontology, Gandhara University, Peshawar, Pakistan. Feb 2022 – July 2025","Assistant Professor & Head Department Of Periodontology, Gandhara University, Peshawar, Pakistan. Dec 2014 – Feb 2022"]','["Special Interest In Health Care Research; 21 Publications In National And International Journals with a cumulative Impact Factor Of 14.4; h- index5, i10- index , 122 Citations","Supervisor for M.sc Periodontology programme Sardar Begum Dental college Gandhara University, Peshawar 2015-2025","Member of IRB Sardar Begum Dental College, Gandhara University Peshawar 2016-2025","Member of infection prevention and control committee, Sardar Begum Dental College Gandhara University, Peshawar 2018-2020","Reviewer for journals PODJ, JKCD","Attended workshops on Education Planning And Evaluation, Research Methodology And Biomedical Writing, Assessment Of Competence And Supervisory Skills mediated by Who Collaborating Center For Research In Health Professional Education CPSP","Conducted Career Counselling session July 14 2026 at Peshawar Dental College"]','["Comparison of gingival phenotype among adult male naswar users, cigarette smokers and non-tobacco users: a cross-sectional study, Scientific Reports, 2026","Exploring the relationship between climate-related exposures and oral health outcomes in Pakistan: A community-based cross-sectional study, Plos Global Public Health, 2026","Artificial intelligence-powered dentistry: Probing the potential, challenges, and ethicality of artificial intelligence in dentistry, Digital health, 2024","Maintenance of Dental Hygiene in Various Brushing Practices Among Orthodontic Patients with Multi-Bracket Fixed Appliances, FUJD, 2024","Comparative Efficacy Of Chlorhexidine And Sodium Bicarbonate Dentifrices In Plaque And Gingival Inflammation Reduction: A Randomized Controlled Trial, JKCD, 2023.","Frequency of White Spot Lesions after Fixed Appliance Therapy in A Tertiary Care Hospital Of Peshawar, HMDJ, 2023.","Use of personal protective equipment (PPES) by dental health care workers during covid-19 pandemic in khyber pakhtunkhwa. Podj, 2023.","Comparison of plaque removal efficacy of modified bass technique and charter’s technique in orthodontic patients. PJMHS, 2023","Comparison of severity of periodontal clinical parameters among naswar\/snuff users: Cross sectional study. PLoS ONE, 2022.","Prevelance of SARS-COV-2 Antibodies in dental health care providers. PJMHS, 2022.","Determination of most frequent emergencies in patients with fixed and removable orthodontic appliances at tertiary care dental hospital. JGMDS, 2022.","Plaque removal efficacy of dental floss compare to water jet following single use. PJMHS, 2021.","Correlation of mandibular incisors proclination and gingival recession in orthodontic patients. POJ, 2021.","Assessing relationship between lip prints, finger prints and different blood groups within the population of Karachi. PJMHS, 2021.","Comparison of posterior tooth angulation in patients with normal bite and deep bite malocclusion. POJ, 2021.","Radiographic assessment of the prevalence of maxillary canine impaction according to sector method- A cross sectional study. POJ, 2021.","Stress level Assessment in Orthodontic Patient Receiving Treatment from three months: A Qausi experimental study. PJMHS, 2019.","Root Resorption 4 months after initiation of fixed orthodontic appliance therapy. PODJ, 2018.","Comparison of Inter Premolar, Molar Widths and Arch Depth among different Malocclusions. PODJ, 2016.","Comparison of the gonial angle measurements on Lateral Cephalogram and both hemispheres of Orthopantomogram. POJ, 2015.","Dental Phobia among Orthodontic Patients of Peshawar. PODJ, 2015."]','{"aliases":["kawish-syed","professor-kawish-syed"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','2023',0),
(24,'mahirah-iqbal','Mahirah Iqbal',NULL,'Periodontology','Associate Professor','assets/images/faculty/mahirah-iqbal.jpg',0,1,'["BDS","DCD Periodontology","CHPE","C- Periodontal Aesthetic Surgery","C-Implant","C-Orthodontics"]','["Years"]','[]','["EFFECTS OF NON-SURGICAL PERIODONTAL THERAPY ON GLYCEMIC LEVEL IN TYPE-2 DIABETIC PATIENTS Journal of Khyber College of Dentistry, Dec2017, Vol.7, No.3","PERIODONTAL HEALTH AWARENESS AMONG PREGNANT WOMEN REGARDING BIDIRECTIONAL RELATIONSHIP BETWEEN GINGIVAL INFLAMMATION AND ADVERSE PREGNANCY OUTCOME. Journal of Khyber College of Dentistry, March 2020, Vol.10, No.1","PRESENCE OF RISK FACTORS FOR TEMPOROMANDIBULAR DISORDER, SYMPTOMS, IN PRIVATE CLINIC PATIENTS AT PESHAWAR. Journal of Khyber College of Dentistry, December 2020, Vol. 10, No.4","FACTORS AFFECTING DENTAL IMPLANT FAILURE IN PATIENTS REPORTING TO PERIODONTOLOGY DEPARTMENT OF KHYBER COLLEGE OF DENTISTRY PESHAWAR PAKISTAN. International Archives of BioMedical and Clinical Research, Oct-Dec 2021, Vol. 4, Issue 4.","RATE AND FACTORS ASSOCIATED WITH DENTINE HYPERSENSITIVITY AMONG PAKISTANI PATIENTS: A CROSS SECTIONAL STUDY. Pakistan Biomedical Journal, June 2022, Vol.5, Issue. 6.","INADEQUATE FIXED PROSTHESIS DESIGN AFFECTING THE PERIODONTAL HEALTH. Pakistan Journal of Health Sciences, Dec 2022, Vol.3, Issue.7.","PRACTITIONERS’ PERSPECTIVE TOWARDS ASSOCIATION BETWEEN PERIODONTAL DISEASE AND SYSTEMIC ILNESS. Medical Forum. Dec 2022, Vol.33, No.12.","KNOWLEDGE AND PERCEPTION OF DENTAL PRACTITIONERS TOWARDS DENTAL IMPLANT TREATMENT IN ROUTINE DENTAL PRACTICE. Medical Forum Jan 2023, Vol.34, No.1.","KNOWLEDGE, ATTITUDE & PRACTICE OF GENERAL DENTIST, REGARDING PERIODONTAL DISEASE DIAGNOSIS, TREATMENT PROTOCOL & PERIODONTAL SPECIALIST REFERRAL. Medical Forum Jan 2023, Vol.34, No.1.","COMPARATIVE EVALUATION OF PERIODONTAL PARAMETERS AND MICROBIOLOGICAL PROFILE IN SMOKERS AND NON-SMOKERS. J Gandhara Med Dent Sci. 2025;12(1):20-23.doi: 10.37762\/jgmds. 12-1.622","EVALUATE THE EFFECTIVENESS OF SCALING AND ROOT PLANNING WITH AND WITHOUT ADJUNCTIVE ANTIBIOTICS IN PESHAWAR. Journal of Population Therapeutics. & Clinical Pharmacology Vol. 31 No. 11 (2024).","THE EFFECTIVENESS OF PERIODONTAL TREATMENT IN REDUCING TOOTH LOSS: A COHORT STUDY. J Gandhara Med Dent Sci. 2025;13(1):95-100.","ASSESSMENT OF KNOWLEDGE AND CLINICAL PRACTICES REGARDING PERIODONTAL HEALTH IN CHILDREN AMONG UNDERGRADUATE DENTAL STUDENTS. Journal of Population Therapeutics & Clinical Pharmacology Vol. 32 No.06 (2025)","PREVALENCE AND CONTRIBUTING FACTORS OF GINGIVAL HYPERPLASIA IN ORTHODONTIC PATIENTS. J Gandhara Med Dent Sci. 2025;12(2):73-77.","SALIVARY BIOMARKERS AND PERIODONTAL DISEASE: SOCIOECONOMIC DISPARITIES IN ORAL HEALTH STATUS IN ABBOTTABAD. Journal of Shifa Tameer-e-Milat Uni Vol8.Iss2.","COMPAATIVE CLINICAL EFFECTIVENESS OF 0.2% CHLORHEXIDINE, OCIMUM SANCTUM & EUCALYPOL MOUTHWASHES IN THE MANAGEMENT OF GINGIVITIS. accepted for publication by J Khyber Coll Dent Sep 2026","COMPARISON OF CORONALLY ADVANCED FLAP WITH AND WITHOUT CONNECTIVE TISSUE GRAFT IN MILLER CLASS 1 GINGIVAL RECESSION. Asian J. Med. Res. Health Sci., June 2026 – 4 (2)","ASSOCIATION BETWEEN GLYCEMIC STATUS & SEVERITY OF CHRONIC PERIODONTITIS AMONG ADULTS (In Process)","AI-ENHANCED CBCT BASED ANATOMICAL MAPPING FOR PRECISION BIOMATERIAL SELECTION IN DENTAL IMPLANT SUCCESS. CME J Ger Med., Vol. 18, Issue 6, June 2026"]','{"aliases":["mahira-iqbal","mahirah-iqbal"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','844',0),
(25,'zeeshan-danish','Zeeshan Danish',NULL,'Periodontology','Associate Professor','assets/images/faculty/zeeshan-danish.jpg',0,1,'["BDS","MCPS"]','["Jan 2017 – Till date (9 years, 6 months)"]','["Skillful in performing Non-Surgical periodontal therapy as well as Implant placement surgeries, Guided Bone Regenerations and Soft Tissue surgeries"]','["EFFECT OF NON-SURGICAL PERIODONTAL THERAPY ON GLYCEMIC LEVEL IN TYPE 2 DIABETICS PATIENTS.","MOTIVATION AND SOCIOECONOMIC STATUS AS A FACTOR FOR NOT RESTORING EXISTING EDENTULOUS SPACES IN PARTIALLY DENTATE PATIENTS REPORTING FOR DENTAL EXTRACTION.","FREQUENCY OF GINGIVAL RECESSION AND ITS SEVERITY: A CROSS SECTIONAL STUDY AMONG PATIENTS VISITING PERIODONTICS DEPARTMENT, KHYBER COLLEGE OF DENTISTRY, PESHAWAR.","CHRONIC PERIODONTITIS AND ADVERSE PREGNANCY OUTCOMES: A QUESTIONNAIRE SURVEY REGARDING GYNECOLOGISTS KNOWLEDGE ATTITUDE AND PRACTICE BEHAVIOUR IN TERTIARY CARE HOPSITALS OF PESHAWAR.","POST-ORTHODONTIC PERIODONTAL SURGERY IN THE MANAGEMENT OF EXCESSIVE GINGIVAL DISPLAY. A REVIEW AND CASE REPORTS.","FREQUENCY OF GINGIVITIS AMONG PATIENTS VISITING SARDAR BEGUM DENTAL COLLEGE (SBDC) AND HOSPITAL PESHAWAR.","Validity and Reliability of Periodontal Parameters Measurements.","Practitioners Perspective towards Association Between Periodontal Disease and Systemic Illness.","Knowledge and Perception of Dental Practitioners towards Dental Implant Treatment in Routine Dental Practice.","Comparative Evaluation of Periodontal Parameters and Microbiological Profile in Smokers and Non-Smokers.","PREVALENCE AND CONTRIBUTING FACTORS OF GINGIVAL HYPERPLASIA IN ORTHODONTIC PATIENTS.","Effectiveness of Periodontal Treatment in preventing Periodontal Loss, A cohort study."]','{"aliases":["zeeshan-danish"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1485',0),
(26,'abira-hamid','Abeera Hamid',NULL,'Periodontology','Senior Lecturer','assets/images/faculty/abira-hamid.jpg',0,1,'["BDS","MCPS (Periodontology)"]','["House Job - Sardar Begum Dental College – 2011","Family Dentistry - Khyber College of Dentistry – August 2012 to December 2012","Periodontology - Khyber College of Dentistry – January 2013 to December 2014","Oral Medicine - Peshawar Dental College - September 2022 to August 14, 2023","Periodontology - Peshawar Dental College - August 16, 2023 till date"]','["Workshop on Masterclass In Implantology by institute of continuing education at Rehman College of Dentistry by Prof. Dr. Tariq Ali Khan on January 28th, 2023","Workshop on Soft Tissue Management Around Implant at Rehman College of Dentistry on February 17th, 2024","Workshop on CBCT Interpretation & Dental Implant Treatment Planning (Hands On) at Rehman College of Dentistry on January 11th, 2025"]','["The effectiveness of periodontal treatment in reducing tooth loss: a cohort study”","Zeeshan Danish, Abira Hamid, Mahira Iqbal, Taif Ahmad, Hina Tariq Tariq, Wajeeha Urooj. Vol. 13 No. 1 (2026): JGMDS (Jan- March 2026)","“Prevalence and Contributing Factors of Gingival Hyperplasia in Orthodontic Patients”","Zeeshan Danish, Abira Hamid, Mahira Iqbal, Taif Ahmad, Hina Tariq Tariq, Hafiza Tayyaba Muqarrab.","Vol. 12 No. 2 (2025): JGMDS (April- June 2025)","“THE RELATIONSHIP BETWEEN PERIODONTAL DISEASE AND SYSTEMIC HEALTH: A STUDY IN PESHAWAR”","Dr Palwasha Afridi, Dr Abira Hamid, Dr Madiha Riasat, Dr Hussam Muhammad Ashfaq, Syed Midhat Batool, Dr Fahmeed Akhtar Vol. 32 No. 3 (2025): JPTCP (583-585)","“KNOWLEDGE & ATTITUDE OF GENERAL DENTIST, REGARDING PERIODONTAL DISEASE DIAGNOSIS, TREATMENT PROTOCOL AND PERIODONTAL SPECIALIST REFERRAL”","Mahirah Iqbal, Hussam Muhammad Ashfaq, Muhammad Ifham Khan Jadoon, Muhammad Jamil, Azeem Khan, Abira Hamid","J Khyber Coll Dent, Sep 2024, Vol. 14, No. 3","COMPARATIVE EVALUATION OF PERIODONTAL PARAMETERS AND MICROBIOLOGICAL PROFILE IN SMOKERS AND NON-SMOKERS","Zeeshan Danish, Mahirah Iqbal, Irfan Salim, Taif Ahmad, Abira Hamid, Hina Tariq Vol. 12 No. 4 (2025): JGMDS (October - December 2025)"]','{"aliases":["abeera-hamid","abira-hamid"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(27,'mubah-safdar','Mubah Safdar',NULL,'Periodontology','Lecturer','assets/images/faculty/mubah-safdar.jpg',0,1,'["BDS"]','["Employer: Peshawar Dental College. Designation: Lecturer Periodontology (18th August 2025 till date)","Employer: Lady Reading Hospital, MTI, Peshawar. Designation: Trainee Registrar Oral & maxillofacial surgery (16th August 2017 to 15th August 2019)","Employer: Sardar Begum Dental Hospital. Designation: MDS Resident Oral & maxillofacial surgery (June 2012 to May 2016)","ROTATIONAL TMO ENT Unit LRH 01.07.2015 to 31.08.2015","ROTATIONAL TMO Surgical “D” Unit LRH 01.09.2015 to 31.10.2015","ROTATIONAL TMO Anaesthesia Unit LRH 01.11.2015 to 31.12.2015"]','[]','["Odontogenic Myxoma in the maxilla: A report of a rare case","Correlation between histopathological features and clinical presentation of oral squamous cell carcinoma"]','{"aliases":["mubah-safdar"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(28,'hina-tariq','Hina Tariq',NULL,'Periodontology','Lecturer','assets/images/faculty/hina-tariq.jpg',0,1,'["BDS"]','["6 years"]','[]','[]','{"aliases":["hina-tariq"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(29,'muhammad-raza','Muhammad Raza',NULL,'Prosthodontics','Professor','',1,1,'["BDS","FCPS"]','["25 years"]','[]','["Concepts technique & materials used for complete denture impressions by dental house officer. Journal of Pakistan dental association Jan - Mar 2008;17(1):5-11.","Dentists experiences, practices & understanding of some design statements regarding mandibular Kennedy class-I removable partial dentures. Journal of Pakistan dental association Apr - Jun 2008;17(2):70-8.","Facial fractures in children. Pak oral &dental journal, June 2010,30(1):68-71","Patterns of facial fractures in children. Pak oral &dental journal, Dec 2011,31(2):263-265","Comparison of mineral trioxide aggregate (MTA) and zinc free amalgam as retrograde filling materials in the surgical endodontics. Pak Oral &Dental Journal, June 2014,34(2):352-354","Complications and their severity in patients of conventional metal ceramic fixed dental prosthesis: a clinical study. Pak Oral &Dental Journal, Mar 2015,35(1):155-158","Interruption of warfarin before dental surgery. Pak Oral & Dental Journal ,January-march 2016,36(1):22-25","Risk factors \" for life threatening complications associated with maxillofacial space infections: a clinical study. Journal of dentistry, oral disorders & therapy, June 2016,4(2):1-5","Association of patient related factors with new complete denture satisfaction- A study Pakistan Oral & Dental Journal, 2016; 36(3) :498-502","The pattern of maxillofacial trauma & its management. Journal of dentistry, oral disorders & therapy Dec 2016,4(4):1-6","Evaluation of crown and bridge treatment: patients perspective. International journal of medical research professional, Jan 2017,3(1):101-103","Effect of cobalt chromium alloy re use in dentistry on its castability value. Journal of Ayub Medical College, Abbottabad, 2017,29(2):270-274","Diagnostic accuracy of clinico-radiological and histological examination in chronic peri-apical pathologies. Pak Oral & Dental Journal June 2017,37(2):238-241","Radiographic technical quality of root canal fillings performed by undergraduate dental students. Pak Oral & Dental Journal June 2017, 37(2):355-360","Occlusal Splint Therapy In The Treatment of Myofacial Pain Dysfunction Syndrome (MPDs). Pak Oral & Dental Journal, April- June 2018,38(2): 274-277","Association Of Lateral Excursive Contacts Schemes With Demographic Characteristics and Static Occlusal Relation. Pak Oral & Dental Journal, April-June,2019, 39(2): 222-226","Prosthetic Status and Needs in Patients Visiting Dental Teaching Hospitals of Peshawar. The Professional Medical Journal. 2019; 26(11):1835-1843.","A comparative in- vitro study on weight change of conventional glass ionomer, resin modified glass ionomer cement and composite resin. JKCD 2019; 9(4):72-78","Comparison of the Coronal Marginal Micro leakage Of Tooth Colored Restorative Materials. The Professional Medical Journal.2020;27(1):11-15","Occlusal plane evaluation in dentate patients for complete denture prosthodontic practice. A clinical study. Journal of Ayub Medical College, Abbottabad . 2020;32(1):54-57","Comparison of flexural strength of Zinc nanoparticles reinforced resin with conventional heat cure acrylic resin. Pak Oral Dent J 2020; 40(1):51-54","A Comparative study of oral health in preclinical and clinical years of undergraduate dental students of Peshawar by using DMFT index. Professional Med J 2020; 27(7):1340-1345.","Risk factors for temporomandibular disorders symptoms in private clinics patients at Peshawar. J Khyber Coll Dentistry 2020; 10(4):60-66","Comparison of iatrogenic proximal surface damage during abutment preparation by different group of Practitioners. Pak Oral Dent J 2021; 41(2):106-110","Antibacterial Efficacy of Silver Nanoparticles Impregnated Calcium Hydroxide: An in Vitro Study. Journal of Pakistan dental association 2022;31(1):1-4","Practitioner''s Perspective of Personal Protection against COVID-19 during Prosthodontics Rehabilitation. Pakistan BioMedical Journal, 2022; 5(7).","Evaluation of Palatal Rugae in Patients for Maxillary Dental Prostheses. Pakistan Journal of Health Sciences,2022; 3(05).","Frequency of Various Grades of Failure and Their Number of Units Involved in Non Maintained Metal Ceramic Fixed Dental Prosthesis. Pakistan Journal of Health Sciences,2022; 3(05).","Evaluation of Patient Satisfaction with Fixed Prosthodontic Therapy Visiting Prosthodontic Department of a Teaching Dental Hospital. Pakistan Journal of Health Sciences,2022; 3(06).","Assessment of Supraeruption of Teeth Affecting Prosthodontic Rehabilitation in Different Segments of Opposing Arch. Pakistan Journal of Health Sciences,2022; 3(04).","Fabrication and Optimization of Essential-Oil-Loaded Nanoemulsion Using Box–Behnken Design against Staphylococos aureus and Staphylococos epidermidis Isolated from Oral Cavity. Pharmaceutics 2022, 14, 1640","Effects of Microwave and Light Emitting Diode as Disinfection Methods on the Dimensional Stability of Polymethyl Methacrylate and Polyamide Denture Base Resin. JIIMC 2022 ; 17, 4:274-9","Antifungal effect of silver nano particles coating on denture base specimens made of acrylic resin. J Pak Dent Assoc 2022;31(2):59-64.","Knowledge and Perception of Dental Practitioners Towards Dental Implant Treatment in Routine Dental Practice. Med Forum 2023;34(1): 91-95","Determination of Preferences and Practices of Fixed Prosthodontics Treatment Modalities by Dental Practitioners. Med Forum 2023;34(2):30-34."]','{"aliases":["muhammad-raza"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','594',0),
(30,'muhammad-sartaj-khan','Muhammad Sartaj Khan',NULL,'Prosthodontics','Professor','assets/images/faculty/muhammad-sartaj-khan.jpg',0,1,'["BDS","FCPS"]','["26 Years"]','[]','["Dentists knowledge attitude and practice for preparing a sound maxillary premolar for a fixed dental prosthesis, Journal Postgraduate Medical Institute, Vol 23(3), 2009, Mohammad Sartaj Khan, Fazal Ghani","A review of classification systems for cleft lip and palate patients- i. Morphological classifications, Journal of Khyber College of Dentistry, Vol 1(2) June, 2011, Syed Nasir Shah, Mariya Khalid, Mohammad Sartaj Khan","A review of classification systems for cleft lip and palate patients’ ii. Embryological classifications, Journal of Khyber College of Dentistry, Vol 2(2) June,2012, Syed Nasir Shah, Mariya Khalid, Mohammad Sartaj Khan","The effect of salivation status and denture wearing on oral candidal activity of the patient, Pakistan Oral Dental Journal, Vol 33(1) April, 2013, Muhammad Ali Chughtai, Amjid Naseer, Mohammad Sartaj Khan","Association of patient related factors with new complete dentures satisfaction — a study, Pakistan Oral Dental Journal, Vol 36(3) July-September 2016, Fahimullah, Mohammad Raza, Mohammad Sartaj Khan, Sadia Ikram","Elephant tusk dentine: a scanning electron Microscopy study, Pakistan Oral Dental Journal, Vol 33(1) April, 2013, Amjid Naseer, Muhammad Ali Chughtai, Tahir Ali Khan, Mohammad Sartaj Khan","Evaluation of crown and bridge treatment: patients perspective. International Journal of Medical Research Professional. Vol 3(1) 2017. Muhammad Sartaj Khan, Muhammad Raza, Azhar Iqbal, Muhammad Ali Chughtai","Its castability value, Journal of Ayub Medical College, Vol 29(2) 2017, Mehreen Imran, Muhammad Raza, Muhammad Sartaj Khan, Yousaf Hayat","The factors responsible for the failure of direct composite restoration in patients reported to College of Dentistry, Al Jouf University. International Medical Journal. Vol 24(6) December 2017. Azhar Iqbal, Muhamamd Sartaj Khan, Ansar Maqsood, Santosh Patil, Rayan Okla Alswulim, Mohamme Khurshid Alam","A survey on patient satisfaction following dental implant therapy in college of Dentistry- Al Jouf University. International Medical Journal. Vol 25(5) Oct 2018. Vinod Bandela, Azhar Iqbal, Fahimullah, Muhmmad Sartaj Khan, Hussam ML Aruaily, Majid AA Alenazy","Biometric analysis of palatal rugae in northern region of Saudi Arabia. International Journal of Innovative Sciences and Research technology. Vol 3, (4)April 2018. Farahnaz Muddebihal, Muhammad Sartaj Khan, Mohammad Anwarulhaque Chand, Salman AlShariri, Abdullah Almajhad, Metab Albalawe","Bite force evaluation in complete denture wearer with different denture base materials: A randomized controlled clinical trial. Journal of International Society of Preventive and Community Dentistry. Vol 8, (5)Sep-Oct 2018. Mostafa Alfayyad, Hussam HT Alruwaili, Muhammad Sartaj Khan, Muhammad Nadeem Baig","Risk factors associated with cervical caries in patients reported to college of Dentistry, Al Jouf University. International Medical Journal (Japan). Vol 25(2) April 2018. Azhar Iqbal, Muhammad Sartaj Khan, Santosh Patel, Ansar Maqsood, Karim Alonazy, Abdullah H Albedaiwi","Association of lateral excursive contacts schemes with demographic characteristics and static occlusal relation. Pakistan Oral and Dental Journal. Vol 39(2) April-June 2019. Nuzhat Ayub, Muhammad Raza, Mohammad Sartaj Khan","Risk factors of Temporomandibular Disorders symptoms in Private Clinics Patients at Peshawar. Journal of Khyber College of Dentistry. Vol 10(4) December 2020. Nuzhat Ayub, Mohammad Sartaj Khan, Muhammad Raza","Association of pathological activity of oral candida and denture wearing habit in denture wearers. Journal of Postgraduate Institute JPMI. Vol 27(1) 2013. Mohammad Ali Chughtai, Amjid Naseer, Fazal Ghani, Mohammad Sartaj Khan","Comparison of Iatrogenic Proximal Surface Damage During Abutment Preparation By Different Groups Of Practitioner. Pakistan Oral and Dental Journal. Vol 41(2) 2021. Mohammad Sartaj khan, Nuzhat Ayub","Practitioners Perspective of Personal Protection against COID during Prosthodontics Rehabilitation Pakistan Biomedical Journal Vol5(7) 2022 Hassan Khan, Mohammad Sartaj Khan","Assessment of Supraeruption of Teeth Affecting Prosthodontic Rehabilitation in Different Segments of Opposing Arch Pakistan Journal of Health Sciences Vol 3(4) 2022 Mohammad Sartaj Khan, Mohammad Raza","Evaluation of Palatal Rugae in Patients for Maxillary Dental Prostheses Pakistan Journal of Health Sciences Vol 3(5) Oct;22 Mohammad Sartaj Khan","Frequency of Various Grades of Failure and their Number of Units Involved in Non-maintained Metal Ceramic Fixed Partial Denture Pakistan Journal of Health Sciences Vol 3(5) Oct;22 Mohammad Sartaj Khan","Evaluation of Patient Satisfaction with Fixed Prosthodontics Therapy Visiting Prosthodontics Department of a Teaching Dental Hospital Pakistan Journal of Health Sciences Vol 3(6) November 22 Mohammad Sartaj Khan","Correlation of Interalar Width and Maxillary Intercanine Width in Dentate Subjects of Gandhara University Peshawar Journal of Khyber College of Dentistry Vol 12(3) September 2022 Muhammad Sartaj Khan","Inadequate Fixed Prosthesis Design Affecting the Periodontal Health Pakistan Journal of Health Sciences Vol 3(7), December 2022 Mohammad Sartaj Khan, Mahirah Iqbal","Knowledge and Perception of Dental Practitioners towards Dental Implant Treatment in Routine Dental Practice, Medical Forum, January 2023 Vol 34(1, Mohammad Sartaj Khan","Determination of Preferences and Practices of Fixed Prosthodontics Treatment Modalities by Dental Practitioners, Medical Forum, February 2023, Vol 34(2), Mohammad Sartaj Khan","Determination of aetiology for delaying replacement of teeth in partially edentulous arches Prosthodontically, Medical Forum, September, 2023, Vol 34(9), Muhammad Sartaj Khan","Crowns and Bridges Failure: Reasons and Type of Disassembly, Journal of Saidu Medical College, Swat, 2024;14(3):214-217, Muhammad Sartaj Khan","Fixed Partial Denture Failure: Types of Failure in Non-Maintained Metal Ceramic Fixed Dental Prosthesis in the Different Location of Arches. Journal of Saidu Medical College, Swat, 2024;14(3):144-147, Muhammad Sartaj Khan","Determining the Dental Hygiene of removable prostheses from patient perspective, Life & Science, 2025, Vol. 6(1), Muhammad Sartaj Khan"]','{"aliases":["muhammad-sartaj","muhammad-sartaj-khan"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1167',0),
(31,'saima-afridi','Saima Afridi',NULL,'Prosthodontics','Assistant Professor','',0,1,'["BDS","FCPS"]','["5 Years"]','[]','["Saima, Khan AU, Khan MS, Raza M, Zubair N, Manzar S, et al Fixed partial denture failure: Types of failure in non- maintained metal-ceramic fixed dental prostheses in the different locations of arches J Saidu Med Coll Swat. 2024;14(3):144-147. DOI: https:\/\/doi.org\/10.52206\/jsmc.2024.14.3.916","Saima, Khan MS, Raza M. Determining the dental hygiene of removable prostheses from the patient''s perspective Life andScience.2025;6(1): 76- 80.doi:http:\/\/doi.org\/10.37185\/LnS.1.1.638.","Afridi, S. ., Khan, S. ., Raza, M. ., Khan, A. ., Khan, H. ., & Zubair, N. . (2022). Frequency of Various Grades of Failure and Their Number of Units Involved in Non Maintained Metal Ceramic Fixed Dental Prosthesis: Non Maintained Metal Ceramic Fixed Dental Prosthesis. Pakistan Journal of Health Sciences, 3(05). https:\/\/doi.org\/10.54393\/pjhs.v3i05.205.","Khan,M.S..,Raza,M..,Khan,H..,Zubair,N..,Ur Rahman, E. ., & Afridi, S. . (2022). Assessment of Supraeruption of Teeth Affecting Prosthodontics Rehabilitation in Different Segments of Opposing Arch: Assessment of supraeruption of teeth. Pakistan Journal of Health Sciences, 3(04). https:\/\/doi.org\/10.54393\/pjhs.v3i04.131.","Sartaj khan, M. ., Raza, M. ., Tahir, M. ., Afridi, S. ., & Manzar, S. . (2022). Practitioner''s Perspective of Personal Protection Against COVID-19 During Prosthodontics Rehabilitation: Personal Protection against COVID-19 during Prosthodontics Rehabilitation. Pakistan BioMedical Journal, 5(7). https:\/\/doi.org\/10.54393\/pbmj.v5i7.601.","Wisal G, Shakir S, Saboor A, Saima, Nawaz S, and Kumari C. Frequency and patterns of inappropriate maxillary incisor abutment preparation for metal-ceramic retainers in fixed dental prostheses: A cross-sectional study J Saidu Med Coll. 2025;15(4):516–521"]','{"aliases":["saima-afridi"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1486',0),
(32,'maryam-tahir','Maryam Tahir',NULL,'Prosthodontics','Senior Registrar','',0,1,'["BDS","FCPS"]','["16 Years"]','[]','["Risk factors for temporomandibular disorders symptoms in private clinics patients at Peshawar.","Evaluation of palatal rugae in patients for maxillary dental prosthesis.","Association of lateral excursive contacts schemes with demographic characteristics and static occlusal relation.","Practitioners perspective of personal protection against COVID-19 during prosthodontics rehabilitation"]','{"aliases":["maryam-tahir"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1121',0),
(33,'samia-manzar','Samia Manzar',NULL,'Prosthodontics','Junior Registrar','assets/images/faculty/samia-manzar.jpg',0,1,'["BDS"]','["18 years"]','[]','["Khan, M. S., Raza, M., Tahir, M., & Manzar, S. (2022). Evaluation of palatal rugae in patients for maxillary dental prostheses. Pakistan Journal of Health Sciences, 3(5). https:\/\/doi.org\/10.54393\/pjhs.v3i05.240","Khan, H., Khan, M. S., Raza, M., Tahir, M., Afridi, S., & Manzar, S. (2022). Practitioner’s perspective of personal protection against COVID-19 during prosthodontics rehabilitation. Pakistan BioMedical Journal, 5(7), 206–211. https:\/\/doi.org\/10.54393\/pbmj.v5i7.601","Saima, Khan, A. U., Khan, M. S., Raza, M., Zubair, N., Manzar, S., & Khan, H. (2024). Fixed partial denture failure: Types of failure in non maintained metal ceramic fixed dental prosthesis in the different location of arches. Journal of Saidu Medical College, 14(3), 144–147. https:\/\/doi.org\/10.52206\/jsmc.2024.14.3.916","Shakir, S., Rafique, J., Manzar, S., Ajmal, T., & Usmani, A. (2024). Comparative study of patient satisfaction with implant-retained vs. conventional overdentures. Journal of Population Therapeutics and Clinical Pharmacology, 31(11), 2346–2352. https:\/\/doi.org\/10.53555\/qyrd5152"]','{"aliases":["samia-manzar"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(34,'shazia-raif','Shazia Raif',NULL,'Prosthodontics','Lecturer','',0,1,'["BDS"]','["6 Years"]','[]','[]','{"aliases":["shazia-raif"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(35,'ejaz-ur-rehman','Ejaz ur Rehman',NULL,'Prosthodontics','Lecturer','',0,1,'["BDS"]','["5 Years"]','[]','[]','{"aliases":["ejaz-ur-rehman"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(36,'amjad-hanif','Amjad Hanif',NULL,'Sciences of Dental Materials','Professor','assets/images/faculty/amjad-hanif.jpg',1,1,'["BDS","MSc","PhD"]','["Fifteen years teaching experience"]','[]','["Synthesis and characterization of antimicrobial polymer containing silver nanoparticles, (2012) Pakistan Oral & Dental Journal, 32(3)","Impression techniques and materials used for fabrication of complete denture. a survey. (2014) Pakistan Oral and Dental Journal, 34(1).","The oral hygiene practices of Pakistanis in Riyadh Saudi Arabia. (2013) Pakistan Oral & Dental Journal, 33.","Effect on hardness of reused cast cobalt chrome alloy using flame centrifuge casting method. (2019) Pakistan Oral & Dental Journal, 39(4).","Comparison of endodontic sealers in terms of their sealing ability (2015) Pakistan Oral & Dental Journal, 35(1).","Hanif, A. (2020). Fracture Toughness of Resin Based Composites, Impregnated with Silver Nanoparticles and Bioactive Glass. JPDA, 29(04), 180.","Hanif, A., & Ghani, F. (2020). Mechanical properties of an experimental resin based composite containing silver nanoparticles and bioactive glass. Pakistan Journal of Medical Sciences, 36(4), 776.","Hanif, A. (2020). Diametral tensile and compressive strength of resin based composite containing bioactive glasses and silver nanoparticles. Pakistan Oral & Dental Journal, 40(4), 260-265.","Effect of immersion and incorporation of polyvinyl chloride on the flexural strength and hardness of polymethyl methacrylate denture base resin. Journal of Khyber Medical University","Akram S, Fahimullah, Ayub N, Hanif A, (2022). A comparative study of the flexural strength of maxillary denture bases made in conventional and high impact heat cure acrylic resin. Khyber Medical University Journal 14 (1).","Antibacterial efficacy of silver nanoparticles impregnated calcium hydroxide: An in vitro study. Journal of Pakistan Dental Association, 31(1), 1-4","Khan AH, Hanif A, Ilyas S, Khattak SH, Hanan A, Hussain S, Ullah I. Effect of PH and Powder to Liquid Ratio on the Solubility of a Conventional Glass Ionomer Luting Cement. Pakistan Journal of Medical & Health Sciences. 2022 Aug 22;16(06):786-.","Rehman H, Raza M, Hanif A, Effect of microwave and light emitting diode as disinfection method on the dimensional stability of polymethylmethacrylate and polyamide denture base resins. JIIMC 2022. 17(4)","Effect of pouring time on dimensional changes in irreversible hydrocolloid impression material after treatment with disinfectant PODJ, 2022.12(4)","Assessment of polymerization shrinkage in resin based composite impregnated with cellulose nanocrystals. PODJ, 2022, 42(4)"]','{"aliases":["amjad-hanif"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','660',0),
(37,'hina-rehman','Hina Rehman',NULL,'Sciences of Dental Materials','Assistant Professor','assets/images/faculty/hina-rehman.jpg',0,1,'["BDS","MPhil"]','["Eight years teaching experience"]','[]','["Effects of Microwave and Light Emitting Diode as Disinfection Methods on the Color Stability of Polymethyl Methacrylate and Polyamide Denture Base Resins: Disinfection Effects …","H Rehman, M Raza, A Hanif, Z Riaz, M Imran, A Hameed","Journal of Postgraduate Medical Institute 38 (4)","ASSESSMENT OF POLYMERIZATION SHRINKAGE IN RESIN BASED COMPOSITE IMPREGNATED WITH VARIOUS CONCENTRATION OF CELLULOSE NANOCRYSTALS","FK Bangash, A Hanif, M Imran, H Rehman","Pakistan Oral & Dental Journal 42 (4), 209-214","In Vitro Assessment of Antifungal Property of Azadirachta Indica (Neem) Modified Heat-Cured Polymethyl Methacrylate Resin Denture Base Material After Water Storage","N Saeed, M Imran, S Khan, H Rehman, I Khan, K Khan","Annals of Punjab Medical College 18 (4), 289-294","Synthesis, Characterization, and Biological Evaluation of Zinc and Boron Oxide-Modified Bioactive Glass for Dental Applications","M Imran, S Khalid, H Rehman, M Ejaz, BZ Babar, A Khan, N Muhammad, ...","Journal of Saidu Medical College Swat 14 (3), 176-186","EFFECT OF POURING TIME ON DIMENSIONAL CHANGES IN IRREVERSIBLE HYDROCOLLOID IMPRESSION MATERIAL AFTER TREATMENT WITH DISINFECTANT","A Hanif, M Imran, H Rehman, Z Riaz, M Muhammad, Z ur Rehman","Journal of Khyber College of Dentistry 12 (04), 68-73","COMPARISON OF IMPACT STRENGTH OF MICROCRYSTALLINE CELLULOSE REINFORCED DENTURE BASE ACRYLIC RESIN WITH AND WITHOUT THERMOCYCLING. (2025). Frontier in Medical and Health Research, 3(7), 1215-1231. https:\/\/fmhr.net\/index.php\/fmhr\/article\/view\/1221","Effects of Disinfection Methods on Dimensions of Base Resins ORIGINALARTICLE Effects of Microwave and Light Emitting Diode as Disinfection Methods on the Dimensional Stability of Polymethyl Methacrylate and Polyamide Denture Base Resin","Hina Rehman , Muhammad Raza , Amjad Hanif , Mehreen Imran , Zia-Ur Rehman Khalil , Salman Khan , Nida Saeed ,Zudia Riaz JIIMC 2022 Vol. 17, No.4","Impact of Number of Exposed Carious Lesions as Reason for Pain or Tooth Extraction on Quality of Life of Children Aged 7-16 Years Attending Tertiary Care Hospitals in Peshawar.","IHTESHAM-UD-DIN, A. K., IFTIKHAR, A., YOUSAF, M., KHAN, O. N., & REHMAN, H. (2021). https:\/\/pjmhsonline.com\/pjmhs\/issue\/view\/11"]','{"aliases":["hina-rehman"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1340',0),
(38,'zudia-riaz','Zudia Riaz',NULL,'Sciences of Dental Materials','Assistant Professor','assets/images/faculty/zudia-riaz.jpg',0,1,'["BDS","MPhil"]','["Five years teaching experience in department of dentalmaterials"]','[]','["Antibacterial efficacy of silver nanoparticles impregnated calcium hydroxide.2022.jan 1:31(1)","Antifungal effect of silver nanoparticles coating on denture base specimens made of acrylic resin.","Radiographic location of mental foramen in dentate adults visiting dental hospitals of peshawar . JPDA. 2022.Jan.1: 31(1)","Comparative study of the flexural strength of maxillary denture bases made in conventional and high impact heat cure acrylic resin. Khyber Medical University Journal. 2022 Mar 31;14(1):38-41.","Effects of Microwave and Light Emitting Diode as Disinfection Methods on the Dimensional Stability of Polymethyl Methacrylate and Polyamide Denture Base Resin: Effects of Disinfection Methods on Dimensions of Base Resins. Journal of Islamic International Medical College (JIIMC). 2022 Dec 30;17(4):274-9.","Effect of pouring time on dimensional changes in irreversible hydrocolloid impression material after treatment with disinfectant. Journal of Khyber College of Dentistry. 2022 Dec 31;12(04):68-73.","Development and characterization of novel dental composites using locally sourced materials in Pakistan. Cureus. 2024 Nov 23;16(11).","Effects of Microwave and Light Emitting Diode as Disinfection Methods on the Color Stability of Polymethyl Methacrylate and Polyamide Denture Base Resins: Disinfection Effects on Color of Dentures. Journal of Postgraduate Medical Institute. 2024 Dec 31;38(4).","Analysing the efficacy of mineral trioxide aggregate versus dentine as direct pulp capping agents in permanent teeth with severe carious lesions","The impact of common drinks on composite resins'' mechanical properties. Journal of Shifa Tameer-e-Millat University. 2025 Oct 24;8(1):22-6.","Effect of different surface treatments on the shear bond strength of zirconia based crowns cemented with self adhesive resin cements: an experimental study conducted in tertiary care dental institutes of Pakistan.","Comparative evaluation of the mechanical properties and fluoride release of conventional glass ionomer cement and bulk fill composites in permanent posterior restorations in a Pakistani population.","The effect of bioactive restorative materials on oral microbiome and gingival health: a cross-sectional study. journal of khyber college of dentistry. 2026 Jun 30;16(02):8-12."]','{"aliases":["zudia-riaz"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1251',0),
(39,'mah-rukh','Mah Rukh',NULL,'Sciences of Dental Materials','Lecturer','',0,1,'["BDS","MPhil. Scholar"]','["Four Years Teaching Experience in department of dental materials"]','[]','["Role of Nanoparticles as a Diagnostic and Therapeutic Tool in Oral Cancer: A Systematic Review.(2025) Oct,3:6(3)","Effects of Microwave and Light Emitting Diode as Disinfection Methods on the Color Stability of Polymethyl Methacrylate and Polyamide Denture Base Resins.2024,Dec, 31:38(4)","Effect of pouring time on dimensional changes in irreversible hydrocolloid impression material after treatment with disinfectant.(2022) Dec 31: 12(4)"]','{"aliases":["mah-rukh"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(40,'munaza-khattak','Munaza Khattak',NULL,'Physiology','Professor','',1,1,'["BDS ( Mar-1988 - Sep-1992) Khyber College of Dentistry, Peshawar","Master of Public Health ( Aug-2008 - Jul-2010) Peshawar University","M.Phil Physiology 2012- 2014 KMU","PhD (Physiology) 2026 KMU"]','["Professor Physiology Department Peshawar Medical College, Warsak Road 2024 till date"]','[]','["Usman R, Khan F, Khattak M, ul Abideen Z. Correlation of vitamin D with hypertension in patients with cardiometabolic syndrome. Journal of Postgraduate Medical Institute. 2017 Aug 10;31(3).","Javaid A, Zafar S, Khattak M, Khan F, Wadud S. Effects of administration of Taraxacum officinale extract on renal parameters in cisplatin induced nephrotoxicity in albino mice. Khyber Medical University Journal. 2019 Sep 30;11(3):156-9.","Orakzai SA, Khattak M, Muhammad P, Khan A, et al. Comparative sero-analysis between copper levels and the risk of acute myocardial infarction in District Nowshera. Pakistan Journal of Health Sciences. 2024.","Mariyum S, Iqbal A, Obaid S, Khattak M, Mariyum K, et al. Glycated hemoglobin level and clinical parameters of periodontal disease in type 2 diabetes mellitus. Advances in Basic Medical Sciences. 2021.","Shahid T, Mariyum S, Khattak M, Wadud S, Khan F, et al. Evaluation of altered oral changes in COVID-19 PCR positive cases: a cross sectional study. Journal of Saidu Medical College. 2024.","Khalid M, Khattak M, Tariq M, Haq M, Mufti MZ, Malik SN. Osteoporosis in adult thalassemia major patients presenting at a tertiary care hospital. Journal of Rehman Medical Institute. 2024 Oct 7;10(3):16-20.","Wazir NU, Hussain S, Salman F, Haq M, Khattak M, Wadud S. Vitamin E shields against alcoholic toxicity by safeguarding hepatic parenchymal morphology and lowering blood ALT levels. Journal of Ayub Medical College Abbottabad. 2024 Jun 30;36(2):331-5.","Khan M, Orakzai SA, Khan A, Khattak M, Khan Y, et al. Blood trace element (zinc) estimation in patients of viral hepatitis C, liver cirrhosis and hepatocellular carcinoma in tertiary care hospitals of Peshawar. Journal of Peoples University of Medical & Health Sciences. 2024;14(1):70-76. https:\/\/doi.org\/10.46536\/jpumhs\/2024\/14.01.497","Sadiq N, Ara C, Wadud S, Khattak M, et al. A longitudinal study of biochemical variables in women at risk of pre-eclampsia and role of serotonin. Journal of Population Therapeutics and Clinical Pharmacology. 31(6):2123-2129.","Khattak M, Farooq M, Kazmi SKS, Saeed M, Sheikh MU, Shuaib M. Correlation between chest radiographic findings, sputum bacterial load, and treatment outcomes in extensively drug-resistant tuberculosis patients. Pakistan Journal of Chest Medicine. 28(3):371-377.","Haq I, Obaid S, Yasmin RS, Khattak M, Javaid A, et al. Pharmaceutical and medicinal applications of Panax ginseng and ginsenosides and their therapeutic role in different disease. 2022.","Mariyum S, Saleem N, Iqbal A, Iqbal S, Khattak M, Obaid S. A comparison between type-2 diabetics and non-diabetics in terms of papillary bleeding index (PBI). Journal of Gandhara Medical and Dental Science. 2022;9(1):28-32. https:\/\/doi.org\/10.37762\/jgmds.9-1.198","Muhammad A, Haq M, Khattak M, Khan BB, Ahmed A, Haq M, Haq H, et al. Association of SARS-CoV-2 and ABO blood types: a systematic review. Annals of RSCB. 26(1):444-463.","Zabihullah SA, Khan A, Khattak M, Zabihullah SAO, Ahmed S. Frequency of H. pylori in liver cirrhosis patients with overt hepatic encephalopathy: a cross-sectional study. Pakistan Journal of Medical & Health Sciences. 16(11):745-745.","Rehman F, Gul H, Khattak M, Arif S, Idrees U, Khan SJ. Impact of asthma on perinatal outcomes: risks and management strategies in pregnant women. Pakistan Journal of Chest Medicine. 27(3):203-208.","Khan A, Khattak M, Saleem K, Khan SA, Khan MA. Prevalence of different diseases based on histopathological features in biopsies from diseased patients in Malakand division, Khyber Pakhtunkhwa. Journal of Medical Sciences. 2021;29(01).","Usman R, Khattak M, Haq M, Khattak M, Parveen T, Basharat T. Correlation of Vitamin D with obesity parameters in patients of cardiometabolic syndrome. Advances in Basic Medical Sciences. 2020 Jul 24;4(1).","Haq NU, Haq M, Salman F, Haq M, Khattak M, Usman R, Khan AMK. Prevalence of Vitamin D deficiency in patients of chronic hepatitis C. The Professional Medical Journal. 2020;27(01):35-39.","Khan SA, Shah W, Khan MA, Khan MJ, Ali Shah. Significance of endoscopy\/colonoscopy versus microscopy in patients with chronic diarrhea. Journal of Medical Sciences. 2014;22(3):132-136.","Khattak M, Habib SH, Irfan M. Effect of a non-energy restricted ketogenic diet on cognition in sedentary healthy young adults. Physiology International. 2026 Jan 20:2060-25."]','{"aliases":["munaza-khattak"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','890',0),
(41,'hina-hakim','Hina Hakim',NULL,'Biochemistry','Assistant professor','',1,1,'["BDS","M.Phil.","CHR","CHPE","PGD","HQ&RM"]','["Assistant professor Biochemistry department 01.08.2022 till date Peshawar medical college and dental college"]','[]','["Diagnosis of Malaria Gametocytes Using MP ICT Vs PCR in Infected Patients: A Cross-Sectional Study of Asymptomatic Relatives","Glycated Albumin''s Clinical Effectiveness in the Diagnosis of Diabetes","Association of Zinc Concentration in Seminal Plasma and Blood with Several Parameters of Semen in Infertile Males","Association between Vitamin D and serum ferritin levels in anemic women of child bearing age in Malakand KPK","Effect of cholecalciferol recommended daily allowances on vitamin d status and fabroblast growth factor- 23, in Acute burn patients","AN ASSOCIATION BETWEEN TYPE 2 DIABETES MELLITUS AND A CLINICAL PERIODONTAL PARAMETER: POCKET DEPTH","A comparison of the effects of hydrochlorothiazide and captopril on glucose and lipid metabolism in patients with hypertension.","Effects of Vitamin D on Respiratory Function and Immune Status for Patients with Chronic Obstructive Pulmonary Disease (COPD): A Systematic Review","Frequency of undiagnosed Chronic Obstructive Pulmonary Disease amongst Coronary Artery Disease patients: A single centre study"]','{"aliases":["hina-hakim"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1552',0),
(42,'amna-umer','Amna Umer',NULL,'Pharmacology','Assistant Professor','assets/images/faculty/amna-umer.jpg',1,1,'["BDS","M.Phil Pharmacology"]','["Feb 10, 2018 Till Date"]','[]','["Comparative Analysis of the Effectiveness of the Conventional Treatment versus Ibuprofen and Omega-3 fatty acids in the Management of Patients with Temporomandibular Joint Disorders. Journal name: African journal of biological sciences","Histological and Molecular Findings in Liger Biopsies from Cirrhotic Patients with Heptocellular Carcinoma. Journal name: international neurourology journal","Comparative efficacy of carbamazepine alone versus carbamazepine plus baclofen in patients with trigeminal neuralgia: A cross-sectional study"]','{"aliases":["amna-umar","amna-umer"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1142',0),
(43,'nadia-ashraf','Nadia Ashraf',NULL,'Oral & Maxillofacial Surgery','Associate Professor','assets/images/faculty/nadia-ashraf.jpeg',0,1,'["BDS","FCPS(OMFS)","CHPE"]','["Associate Professor Oral and Maxillofacial Surgery From 1st December 2025-till date"]','[]','["Effects of Temporomandibular Joint Dysfunction Syndrome on the quality of life- a cross- sectional study. J Saidu Medical College Swat November 2024, Vol 14, No. 4 (Co-author)","Causes of removal of impacted mandibular third molar in patients visiting Peshawar Dental College and Hospital, Peshawar. PODJ September 2024, Vol 44, No. 3 (Co-author)","Levels of inflammatory blood parameters following third molar surgery in patients visiting an Oral and Maxillofacial Surgery Department. PODJ September 2024, Vol 44, No. 3 (Co-author)","Frequency of mandibular condylar fracture in children presenting to Hayatabad Medical Complex Peshawar: a cross sectional study. JKCD June 2024, vol 14, No. 2 ( Co-author)","The frequency of accessory mental foramen using cone beam computed tomographic images. Med forum June 2024, Vol 35, No.6 (Co-author)","Screening of tobacco users for potentially malignant disorders using toluidine blue staining. JPMI April 2024, Vol 38, No. 2 (Principal author)","Pattern of motorcycle related maxillofacial injuries in patients presenting to a tertiary care hospital in Pakistan: a cross sectional study. JKCD March 2022, Vol 12, No. 1( Principal author)","Comparison of the mean reduction in trismus postoperatively after use of 4mg and 8mg intravenous dexamethasone preoperatively, following impacted mandibular third molar surgery. JKCD September 2021, Vol 11, No. 3. (Co-author).","Prevalence of medically compromised conditions in patients requiring dental treatment. J Med Sci, July 2016, Vol 24, No.3 (Principal author).","The prevalence of common oral complications of diabetes mellitus. KJMS January- April 2015, Vol 8, No. 1(Co-author).","Pattern of mandibular fractures resulting from fall. Pakistan Oral and Dental Journal, June 2014, Vol 34, No.2  (Principal author)","Mandibular third molar - a risk factor for angle fracture. JKCD December 2013, Vol 4, No.1.  (Principal author)","Loss of consciousness in mandibular fractures, an audit of 254 patients. Pakistan Oral and Dental Journal, June 2011, Vol 31, No.1 (Co-author).","Cancrum oris- a descriptive case series on 13 patients. JKCD, December 2010, Vol.1,No.1 (Co-author)"]','{"aliases":["nadia-ashraf"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1083',0),
(44,'muhammad-ishfaq','Muhammad Ishfaq',NULL,'Oral & Maxillofacial Surgery','Professor','assets/images/faculty/muhammad-ishfaq.jpg',0,1,'["BDS","FCPS","CHPE"]','["14 years"]','[]','["Etiology and pattern of impacted mandibular third molars — a study. Sana Wazir, Muslim Khan, Muhammad Ashfaq, Saima Manzoor","Comparison of pain and mouth opening in primary versus secondary closure after surgical removal of impacted mandibular third molar. Muhammad Aamir, Tahir Ullah khan, Muhammad Masood khan, Muhammad Ishfaq, Mohammad Farooq, Hanif Ullah","Incidence of dry socket after removal of impacted mandibular third molar and its relation to surgical difficulty, Tariq Sardar, Naveed Sadiq, Muhammad Ishfaq, Gulrukh Sheikh","Agenesis, position, class and angulation of impacted mandibular third molar teeth in 21 – 25 years old subjects visiting dental teaching hospital in Peshawar. Mahvash Zeb, Muhammad Ishfaq, Sana Arbab, Asma Ali Khattak, Imran Khattak, Asif Rehman","Comparison of two dosages of submucosal dexamethasone to control postoperative trismus after surgical extraction of mandibular impacted third molar. Tariq Mehmood, Zafar Ali khan, Tahir Ullah Khan, Muhammad Farooq, Muhammad Ishfaq, Rozi Afsar","Screening of tobacco users for potentially malignant disorders using toluidine blue staining. Nadia Ashraf, Muhammad Younus, Muhammad Ishfaq, Syed Amjad Shah, Bushra Mehboob, Muhammad Sulaiman","Effect of dexamethasone using two doses to evaluate postoperative trismus in the patients after impacted mandibular third molar extraction. Rozi Afsar, Tahir u. Khan, Muhammad Ishfaq, Sana Wazir, Syed a. Shah, Muhammad Farooq","CLINICAL PRESENTATION AND MANAGEMENT OF NASO-LABIAL CYSTS CASE SERIES MUSLIM KHAN, BDS (LUMHS), FCPS (ORAL AND MAXILLOFACIAL SURGERY), SANA WAZIR, BDS (RESIDENT ORAL AND MAXILLOFACIAL SURGERY), MUHAMMAD ISHFAQ, BDS, FCPS (ORAL AND MAXILLOFACIAL SURGERY), BUSHRA MEHBOOB, BDS & ASFAND ALI KHAN, BDS","Presenting Features and Factors Leading to Extraction of Root Canal Treated Teeth. Laima Shahid, Tahir Ullah Khan, Basheer Rahman, Muhammad Ishfaq, Saima Rahat, Waseem Abbas","The Frequency of Accessary Mental Foramen Using Cone Beam Computed Tomographic Images Asma Sattar, Muhammad Ishfaq, Naheed Imran, Bushra Mehboob, Nadia Ashraf and Fatima Abdul Qaiyum"]','{"aliases":["muhammad-ishfaq"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','671',0),
(45,'zafar-ul-islam','Zafar Ul Islam',NULL,'Orthodontics','Professor','',1,1,'["BDS","FCPS"]','["Professor of orthodontics at Peshawar dental college from February 1st 2025 to date","HEAD OF ORTHODONTIC DEPARTMENT at Peshawar dental college from February 20, 2025 to date"]','[]','["Dentoalveolar Heights In Skeletal Class I Normodivergent Facial Patterns. Zafar-Ul-Islam, Shaikh A, Fida M. J Coll Physicians Surg Pak. 2012 Jan;22(1):5-9","Plaque Index In Multi-Bracket Fixed Appliances. Zafar-Ul-Islam, Shaikh A, Fida M. J Coll Physicians Surg Pak. 2014 Nov;24(11):791-5.","Dentoalveolar Heights in Vertical and Sagittal Facial Patterns. Zafar Ul Islam, Shaikh A, Fida M. J Coll Physician Surg Pak 2016  Vol.26 (9): 753-757.","Oral hygiene in children, adolescent and adult orthodontic pateints with multi bracket fixed appliances. Zafar ul Islam, Adil S, Kareem K. Pakistan Oral & Dental Journal. 2020 40(4):210-213.","Orthodontics Pain and Patients’ Quality of Life: Patient Experience and Provider Assesments. Sanam Tauheed, Erum Behroze, Zafar Islam, Shoaib Khan, Saima Akram, Attiya Shaikh and Mubassar Fida. JAMMR 2020 32(6):47-54.","The correlation of overbite with skeletal, dental and soft tissues characteristics. Zafar ul Islam, Attiya Shaikh, & Mubassar Fida. Pakistan Oral & Dental Journal, 2020 40(3), 149-154.","Radiographic assessment of the prevalence of maxillary canine impaction according to sector method- A cross sectional study. Ishfaq M, Sikandar H, Islam ZU, Syed K, Nisar S, Adil S.  POJ 2021:13(1)7-11.","Determination of Most Frequent Emergencies in Patients with Fixed and Removable Orthodontic Appliances at Tertiary Care Dental Hospital. Shah S, Syed K, Ul islam Z & Adil, S. Journal of Gandhara Medical and Dental Science, 2022;9(1), 69–74.","Macro, mini and micro-esthetics: An evaluation of orthodontically treated patients. Tauheed S, Islam ZU, khan, EB, Raza HA, Adil, S. POJ 2022;13(2):81–89.","Correlation of dental and skeletal maturity using Dimirgian and cervical vertebral maturation indices in orthodontic patients. Shahab A, Islam ZU, Kulsoom K, Hassan AR, Sanam T, Sohaib H. Journal of Gandhara Medical and Dental Science. 2022;9(4)20-4.","Correlation of anb, wits appraisal and Mcnamara analysis with mandibular corpus length in class I, II and III adult patients visiting tertiary care hospital. Salma Bibi, Shahab Adil, Zafar Ul Islam, Hassan Ali Raza, Sadar Ilham, & Naila Sunmbal. Pakistan Oral & Dental Journal. 2023;42(4):180-3.","Use of personal protective equipment (ppes) by dental health care workers during covid-19 pandemic in khyber pakhtunkhwa. Ahmad, F., Adil, S., Islam, Z. ul, Syed, K., Raza, H. A., & Subhan, F. Pakistan Oral & Dental Journal. 2023;43(2):74-79.","The relationship of maxillary incisor eruption and upper lip length with the incisor stomion. Zafar ul Islam, Shahab Adil, Tania Arshad, Sanam Naveed, Sohaib Hassan, & Hassan Ali Raza. Pakistan Orthodontic Journal. 2023;15(1), 38–42.","Frequency of natal, neonatal and early infancy teeth in patients with cleft lip and palate in khyber pakhtunkhwa, pakistan sana naz, shahab adil, zafar ul islam, hasan ali raza, farrukh ahmad, sadaf ilham. Pak Oral Dent J 2023; 43(3):119-123.","Frequency of different palatal rugae patterns in mixed dentition patients. Fazli Subhan , Shahab Adil, Zafar Ul Islam, Hassan Ali Raza, Farrukh Ahmad. J Postgrad Med Inst 2023;37(4):291-96.","The position of hyoid bone on lateral cephalographs in various vertical facial patterns. Ghazala , Shahab Adil, Zafar Ul Islam, Gulalai Jan, Sana Riaz, Lalina Taj. J Postgrad Med Inst 2023;37(4):269-73.","Maintenance of Dental Hygiene in Various Brushing Practices Among Orthodontic Patients with Multi-Bracket Fixed Appliances. Zafar Ul Islam1, Kawish Syed2, Hassan Ali Raza 3, Sanam Naveed 4, Sohaib Hassan 5, Shahab Adil. Found Univ J Dent. 2024;4(1):25-30.","Frequency of white spot lesions after Fixed appliance therapy in a tertiary care Hospital of peshawar. Gulalai Jan, Zafar ul Islam, Kawish Syed, Hasan Ali Raza, Shahab Adil. HMDJ. 2023; 03(01): 16-20.","Comparison of Intercanine and Intermolar Widths in Dental Malocclusions Based Upon Angle Classification at Tertiary Care Hospital. Sadaf Ilham, Shahab Adil, Zafar ul Islam, Salma Bibi, Sana Naz, Gulalai Jan. POJ 2023:15(Suppl) 80-84.","Evaluation Of Nose Morphology In Different Skeletal Patterns In Patients Reporting To Tertiary Care Hospital At Peshawar, Pakistan: A Cross-Sectional Study. Ghazala, Adil S, Ul Islam Z, Jan G, Subhan F, Naz S.  J Postgrad Med Inst [Internet]. 2024 Sep. 30 [cited 2024 Nov. 14];38(3).","Evaluation of arch width variations among skeletal vertical patterns. Taj L, Adil S, Islam ZU, Raza HA, Naz S, Ghazala.. Pak Oral Dent J, 2024; 44(4):23-27.","Perception of the midline deviations in smile esthetics by layperson. Asim I, Adil S, Islam Z, Raza HA, Ghazala, Naz S. Pak Oral Dent J, 2024; 44(4):34-38."]','{"aliases":["zafar-ul-islam","zafar-islam"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','730',0),
(46,'sana-arbab','Sana Arbab',NULL,'Oral Biology','Associate Professor','assets/images/faculty/sana-arbab.jpg',0,1,'["BDS","MPhil (Oral Biology)","CHPE","PGD"]','["2010 till date"]','[]','["Association of age to the linear and volumetric changes of maxillary permanent canine’s assessment through cone beam computed tomography: across-sectional observational study","Anatomical variation in the position of mandibular foramen with side of the arch using cone beam computed tomography","Use of tooth clearing technique to determine root and canal morphology of permanent mandibular third molars in population of Peshawar: an in vitro cross-sectional study","Assessment of the labial alveolar bone thickness overlying maxillary anterior teeth in different age groups, genders, and sides of the arch: a cone beam computed tomographic study | medical forum monthly","Anatomical variation in the location of mandibular foramen with age using cone beam computed tomography | medical forum monthly","Frequency of number of roots and root canals of maxillary first premolar teeth. | The Professional Medical Journal","Frequency of developmentally malformed permanent maxillary lateral incisors in patients visiting the three teaching dental hospitals of Peshawar | journal of Ayub Medical College Abbottabad","Gender as a variable influencing the mesiodistal width of permanent maxillary anterior teeth an analysis using AutoCAD software","Use  of tooth clearing technique to determine root and canal morphology of permanent mandibular third molars in population of Peshawar an in vitro cross-sectional study","Agenesis position class and angulation of impacted mandibular third molar teeth in 21 – 25  years old subjects visiting dental teaching hospital in Peshawar","Evaluation of the occlusal contact between  the opposing teeth and the cusp of carabelli in maxillary permanent first molars in patients visiting Peshawar Dental College","Root canal configuration of maxillary first premolar teeth in a subpopulation of Peshawar using tooth cross-sectioning method an invitro study","Frequency and grading of supernumerary cusps in permanent human teeth of patients visiting the teaching hospitals of Peshawar Dental College and Khyber College of Dentistry Peshawar","The frequency of unilateral and bilateral distribution of cusp of carabelli in maxillary permanent first molars in patients visiting Peshawar Dental Hospital Peshawar","Frequency of cusp of carabelli in maxillary permanent first molars and its association with dental caries in patients visiting Peshawar dental hospital Peshawar","The association between gender with the shape of mandibular condyle in young adults of Peshawar"]','{"aliases":["sana-arbab"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','888',0),
(47,'iftikhar-akbar','Iftikhar Akbar',NULL,'Operative Dentistry','Professor','',1,1,'["BDS","FCPS","MFDSRCPSG","CHPE"]','["Professor\/Head Department Of Operative Dentistry & Endodontics Peshawar Dental College, Riphah International University, Peshawar Campus, Pakistan."]','["Advanced Clinical Skills in Operative Dentistry & Endodontics"]','["Misri khan, Iftikhar Akbar, Khalid Rehman. Effect of Propylactic Amoxicillin on endodontic flare-up in teeth with Asymptomatic, necrotic pulps and periradicular pathosis. (Pakistan oral and Dental Journal vol.30, No.2 December 2010).","Beenish Qureshi, Bader Munir, Iftikhar Akbar. A Comparison of Thermafil and Lateral condensation techniques in obturation of root canal systems.  (Pakistan Oral and Dental Journal Vol; 32 No.3 December 2012).","Khalid Rehman, Iftikhar Akbar, Qazi Javed. Role of antibiotics in control of post-endodontic pain: Cases of symptomatic irreversible pulpitis and periapical periodontitis: A randomized control clinical trial. JKCD December 2012, vol, 3 No.1.","Azhar Iqbal, Iftikhar Akbar, Mahmoud K Al-Omiri. An in vivo study to determine the Effect of pre-flaring on the working length determination in curved mesial canals of mandibular Molars (Journal of contemporary dental practice 2013; 14 (2):163-167.","Iftikhar Akbar, Azhar Iqbal, Mahmoud K Al-Omiri. Flare-up rate in molars with peri-apical radiolucency in one visit versus two visits endodontic treatment (J Contemp Dent Pract 2013; 14 (2): 414-418.)","Azhar Iqbal, Iftikhar Akbar, Beenish Qureshi, Mohd G. Sghaireen, Mahmoud K. AL-Omiri. A Survey of Standard Protocols for Endodontic Treatment in North of KSA. ISRN Dentistry Volume 2014, Article ID 865780","Iftikhar Akbar. Knowledge, Attitudes and Practice of restoring endodontically treated teeth by dentists in northern Saudi Arabia. (Int J Health Sci (Qassim Univeristy, Saudi Arabia). 2015 Jan; 9 (1): 41–49).","Iftikhar Akbar. Knowledge and Attitudes of General Dental Practitioners towards Posterior Composite Restorations in Northern Saudi Arabia (Journal of Clinical and Diagnostic Reseach (2015 Feb; 9(2): ZC61–ZC64)","Iftikhar Akbar. Efficacy of Prophylactic use of Antibiotics to Avoid Flare up During Root Canal Treatment of Nonvital Teeth: A Randomized Clinical Trial.  (J Clin Diagn Res. 2015 Mar; 9 (3): ZC 08-11)","Iftikhar Akbar. Radiographic study of the problems and failures of endodontic treatment. Int J Health Sci (Qassim Univeristy, Saudi Arabia). 2015 Apr; 9(2):111-8","Iftikhar Akbar, Nadeem Baig.  Incidence of dental caries and associated risk factors in patients attending college of dentistry, Aljouf University (December 2015 Pakistan Oral and Dental Journal)","Iftikhar Akbar, Fayyaz Alam, Muhammad Raza. Radiographic technical quality of root canal fillings performed by undergraduate dental students ( PODJ Vol.37, No.2 (April-June 2017)","Iftikhar Akbar, Fayyaz Alam, Beenish qureshi, Mohammad Abulhamid Almayouf. The attitude of undergraduate dental students towards the use of rubber dam. PODJ Vol.37, No. 4 (October- December 2017)","Iftikhar Akbar, Junaid Islam, Abdul Majid, Rizwan Qureshi. Prevalence of second mesiobuccal canal in maxillary second molars on the basis of clinical and radiographic parameters. J Ayub Med Coll Abbottabad 2023; 35(4):579–82","Iftikhar Akbar, Rizwan Qureshi, Saifa Rashad, Margalara Noor. Prevalence of Dens Invaginatus in Maxillary Lateral Incisors in Patients Visiting Peshawar Dental College and Hospital.  Found Univ J Dent. 2024; 4(1): 42-46.","Iftikhar Akbar, Asmat Ullah, Asma Hassan and Asma Begum. Frequency of Dental Caries and Associated Factors among Patients Attending the Peshawar Dental College and Hospital: A Hospital-Based Cross-Sectional Study. Med Forum 2024; 35(5):8-12.","17. Iftikhar Akbar, Huma Kamal, Ashfaq Azeem. Comparison of Dentin Hypersensitivity Management of Exposed root surfaces by Dentin bonding agent and thinly applied Glass ionomer cement: A Clinical Trial. J Ayub Med Coll Abbottabad 2024; 36(3): 531-6.","Iftikhar Akbar, Abdul Majeed, Junaid Islam, Rizwan Qureshi. Comparison of post-operative pain with and without apical patency technique in asymptomatic necrotic teeth: A Randomized control trial. Khyber Med Univ J 2025; 17 (1): 13-8.","Junaid Islam, Iftikhar Akbar, Mehr Un Nisa, Itrat Batool, Nasir Amin, Wahaj Anees. Frquency of Canals in permanent maxillary second molars on the basis of clinical and radiographic parameters. The Research of Medical Science Review 2025; 3(1): 1244-51.","Iftikhar Akbar, Muhammad Bader Munir, Asmat Ullah, Itrat Batool, Fayaz Alam, Hassan Jan. Comparison of Postoperative Pain following endodontic treatment of  symptomatic apical periodontitis with and without the buccal infiltration of methylprednisolone. JKCD. 2025; 15(4): 1-6","Saifa Rashad, Iftikhar Akbar, Marghalara Noor, Shah Zaman, Syed Shahbaz Ali Shah. Prevalence of Two Roots Canals in Mandibular Incisors in Patients Visiting a Dental College (Using Magnification 3.5x) Biol. Clin. Sci. Res. J.  2025; 6(4): 2316.","Iftikhar Akbar, Sobia Awais. Comparison of the Clinical Effectiveness of Self-etch adhesive and Fluoride varnish in Reducing Dentin Hypersensitivity in Patients with Gingival Recession: A Randomized Clinical Trial.  J Saidu Med Coll 2026, 16 (1)."]','{"aliases":["iftikhar-akbar"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','350',0),
(48,'hasan-ali-raza','Hasan Ali Raza',NULL,'Orthodontics','Associate Professor','',0,1,'["BDS","FCPS","CHPE"]','["2017-2026"]','[]','["Evaluation of the Nasolabial Angle of Khyber Pakhtunkhwa Sample. PODJ 2014 March. Hasan Ali Raza, Ghulam Rasool, Wasim Ijaz, Aneela Nousheen.","Correlation between skeletal maturation and dental calcification stages – A Study. POJ 2018. Hasan Ali Raza, Wasim Ijaz, Ali Ayub, Ghulam Rasool.","A Descriptive cross sectional survey of inherently missing permanent dentition in patients having Cleft Lip & Palate.  JKCD 2020 March. Wasim Ijaz, Hasan Ali Raza, Syed Suleman Shah, Ghulam Rasool, Nabbiya Noor, Asifa Zubair.","Frequency of bracket breakage and bond failure in patients undergoing fixed Orthodontic treatment at Khyber College of Dentistry, Peshawar. PODJ 2013 August. Ghulam Rasool, Hasan Ali Raza, Farhana Afzal, Wasim Ijaz, Syed Suleman Shah","Pattern of third molar agenesis in an Orthodontic patient population with different skeletal malocclusions. PODJ 2015 December. Farhana Afzal, Hasan Ali Raza, Summiya Bashir, Sana Afzal, Ghulam Rasool.","Correlation between mandibular base length and dental crowding in patients with Class II malocclusions – A Study. POJ 2015. Wasim Ijaz, Hasan Ali Raza, Ghulam Rasool, Syed Suleman Shah.","Maintenance of dental hygiene in various brushing practices  Among orthodontic patients. FUJD 2024 January Zafar ul Islam, Kawish Syed, Hasan Ali Raza, Sanam Naveed, Sohaib Hassan, Shahab Adil","Frequency of agenesis and shape anomaly of maxillary lateral incisor in patients with canine impaction. JKCD 2018 September. Syed Raiq Shah, Bushra Amin, Hasan Ali Raza.","The Perception of Smile Arc and Buccal Corridor in Medical and Dental Undergraduate Students of Peshawar, Pakistan: A Descriptive Cross Sectional Study. Life and Science 2025 June. Sana Naz, Shahab Adil, Zafar ul Islam, Hasan Ali Raza, Summiya Khan, Wajiha Ahmad","Correlation of ANB, Witts appraisal and McNamara analysis with Mandibular corpus length in Class I, II & III adult patients visiting a tertiary care hospital. PODJ 2022 December. Salma Bibi, Shahab Adil, Zafar ul Islam, Hasan Ali Raza, Sadaf Ilham, Naila Sumbal","Correlation of dental and skeletal maturity using Demirjian and CVM indices in Orthodontic patients. JGMDS 2022 December. Shahab Adil, Zafar ul Islam, Kulsoom Karim, Hasan Ali Raza, Sanam Tauheed, Sohaib Hassan","Assessment of lower anterior face height in local Khyber Pakhtunkhwa population. POJ 2011. Ghulam Rasool, Wasim Ijaz, Ali Ayub, Hasan Ali Raza, Haleema Gul","Frequency of white spot lesions after fixed appliance therapy in a tertiary care hospital of Peshawar. HMDJ 2023 June. Gulalai Jan, Zafar ul Islam, Kawish Syed, Hasan Ali Raza, Shahab Adil","Frequency of Natal, Neonatal and early infancy teeth in patients with Cleft lip and palate in Khyber Pakhtunkhwa, Pakistan. PODJ 2023 September. Sana Naz, Shahab Adil, Zafar ul Islam, Hasan Ali Raza, Farrukh Ahmad, Sadaf Ilham","Frequency of different palatal rugae patterns in mixed dentition patients. JPMI 2023 November. Fazli Subhan, Shahab Adil, Zafar ul Islam, Hasan Ali Raza, Farrukh Ahmad","Use of Personal Protective Equipment by healthcare workers during Covid 19 pandemic in Khyber Pakhtunkhwa. PODJ 2023 June.  Farrukh Ahmad, Shahab Adil, Zafar ul Islam, Kawish Syed, Hasan Ali  Raza, Fazli Subhan","Macro, Mini & Microesthetics: An evaluation of Orthodontically treated patients. POJ 2021. Sanam Tauheed, Zafar ul Islam, Erum Behroz Khan, Sohaib Hassan, Hasan Ali Raza, Shahab Adil","Orthodontic treatment and patients’ expectations. POJ 2012. Ghulam Rasool, Aneela Nousheen, Nayab Hassan, Summiya Bashir, Hasan Ali Raza.","The relationship of Maxillary incisor eruption and upper lip length with the incisor stomion. POJ 2023. Zafar ul Islam, Shahab Adil, Tania Arshad, Sanam Naveed, Sohaib, Hassan, Hasan Ali Raza","Use of IOTN in determining Orthodontic treatment needs in Peshawar adolescents. JKCD 2019 December. Sajid Ali, Ghulam Rasool, Seema Abid, Ahsan Mahmood Shah, Faizan ul Hassan, Hasan Ali Raza","A cross sectional study among patients visiting Periodontics Department, Khyber College of Dentistry, Peshawar. PODJ 2019 March. Zeeshan Danish, Farid Ullah, M Nasir Shah, Safia Rehmat, Faiza Abdul Hakam, Hasan Ali Raza."]','{"aliases":["hasan-ali-raza","hassan-ali-raza"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1484',0),
(49,'muhammad-zain','Muhammad Zain',NULL,'Operative Dentistry','Associate Professor','',0,1,'["BDS","FCPS","CHPE"]','["Associate Professor Nov 2024 till date"]','["Advanced Clinical Skills in Operative Dentistry & Endodontics"]','["Zain M, Khattak SR, Shah SA, Sikandar H, Khattak Y. Comparison of effectiveness of 4% articaine buccal infiltration versus inferior alveolar nerve block in symptomatic mandibular 1st molar tooth. J Postgrad Med Inst 2015; 29(3): 176-80","Zain M, Khattak SR, Sikandar H, Shah SA, Fayyaz. Comparison of anesthetic efficacy of 4% articaine buccal infiltration versus 2% lidocaine inferior alveolar nerve block in symptomatic mandibular 1st molar teeth. JCPSP2016, Vol. 26(1):4-8","Shah FA, Jan UI, Ali A, Afridi UR, Zain M, Haider S. Comparison of anesthetic Efficacy of inferior alveolar nerve block and vazirani-akinosi technique in patients with irreversible pulpitis. Pak Oral Dent J 2019;39(3):301-303","Jan IU, Shah FA, Ali A, Zain M, Afridi RU, Khan AM, Ali F. Efficacy of form acresol and mineral trioxide aggregate pulpotomy among primary molars. A randomized control trial. Pak Oral Dent J 2019; 39(3):289-92","Afridi RU, Shah SA, Jan IU, Shah FA, Zain M, Ali F. Comparison of anesthetic efficacy of conventional inferior alveolar nerve block and gow gates technique inpatients with symptomatic irreversible pulpitis. A randomized control trial. JKCD 2019; 9(2)1-7","Khan TA, Hussam, Rehmat S, Iqbal S, Qureshi A, Zain M, Khan SZ. Periodontal health awareness among pregnant women regarding bidirectional relationship between gingival inflammation and adverse pregnancy outcomes. JKCD March 2020, 10(1) 126- 132.","Zain M, Qureshi A, Kamal H, Zia O, Rashid S. The effect of dental flourosis on the electric pulp tester response and probe placement site. EJHS, Vol.7, Issue 4, pp 1-8, 2022.","R Safia, Khan TA, Hussam, Zain M, Jadoon IFK, Farhan F, Khan SZ. Literacy among type 2diabetes mellitus from chronic periodontitis. JKCD June 2020, 10(2)","Hussam, Khan TA, Zara B, Zain M, Qureshi A, Khan SZ. Evaluation of patient’s expectations before and periodontal after nonsurgical treatment. JKCD June 2020,10(2)","Qureshi A, Zain M, Hussam, Jadoon IK, Qureshi R, AslamN. Frequency and associated factors of pulp stones among patients presenting to Ayub dental teaching hospital Abbottabad. JKCD, June 2021, 11 (2) 72-76.","Qureshi A, Zain M, Shah SI, Qureshi R, Majeed A, Islam J. The antibiotic prescription trend endodontic of dentists for treatment from a region Pakistan. An online survey. AJHMN.  Vol.7, Issue 8, pp 1-15, 2022."]','{"aliases":["muhammad-zain"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','550',0),
(50,'nida-gul-sepah','Nida Gul Sepah',NULL,'Operative Dentistry','Senior Registrar','assets/images/faculty/nida-gul-sepah.jpg',0,1,'["BDS","FCPS","CHPE"]','["Senior Registrar 1 Year 7 Months"]','[]','["COMPARISON OF THE MEAN POST OPERATIVE PAIN AFTER MANUAL AND ROTARY INSTRUMENTATION FOR ROOT CANAL TREATMENT OF SINGLE ROOTED TEETH WITH IRREVERSIBLE PULPITIS. Vol. 36 No. 4 (Suppl 1) (2024): JOURNAL OF AYUB MEDICAL COLLEGE ABBOTTABAD","PARAFUNCTIONAL HABITS AMONG UNDERGRADUATE CLINICAL STUDENTS AND HOUSE OFFICERS AT KHYBER COLLEGE OF DENTISTRY Vol. 6 No. 02 (2016): JOURNAL OF KHYBER COLLEGE OF DENTISTRY","Comparing the Effectiveness of Mineral Trioxide Aggregate and Biodentine as Direct Pulp Capping Agents in Permanent Teeth with Deep Carious Lesion Vol 13 issue 8 (2024) Frontiers in health informatics journal.","PATIENT’S PERCEPTION ON CROSS-INFECTION CONTROL IN DENTAL PRACTICE Vol. 7 No. 02 (2017): Journal of Khyber College of Dentistry"]','{"aliases":["nida-gul","nida-gul-sepah","nida-sepah"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1947',0),
(51,'muhammad-abbas','Muhammad Abbas',NULL,'General Medicine','Associate Professor','assets/images/faculty/muhammad-abbas.jpg',1,1,'["MBBS","FCPS (MEDICINE)"]','["NOVEMBER 2016 TILL DATE"]','[]','["pyrazinamide Induced hyperuricemia in  the induction phase of Antituberculosis Therapy. Noor Muhammad, Saima Mehboob, Muhammad Abbas. Pakistan Journal of medical and Health Sciences. 2021","Multidrug Resistance if Ecoli isolated from clinical isolated in District Peshawar KP Pakistan. Ihteshamul Haq, Mohsina Haq, Muhammad Farooq, Amber Javed, Shafaq Zafar,  Ashfaq Ahmed, Muhammad Kashif Khan, Muhammad Abbas, Bakht Biland Khan, Momina Haq. Pakistan Journal of medical and Health Sciences. 2022. DOI: https:\/\/doi.org\/10.53350\/pjmhs22161830","pharmaceutical and medicinal application of Panax ginseng and Ginsensides and their therapeutic role in different disease. Intehsamul Haq, seher Obaid, Rubina Salma Ysmeen, Munazza Khattak, Amber Javaid, Muhammad Abbas, Mohsina Haq, Faheem Anwar. Natural Volatiles and Essesntilesoiles. 2022. Nat. Volatiles & Essent. Oils, 2022; 9(1): 745-765","Clinical Features and Associated Comorbidities in 200 cases of COVId-19 in Peshawar Pakistan. Ihteshamul Haq, Mohsina Haq, Momina Haq, Seher Obaid, Susan Kakakhel, Muhammad Abbas. Natural Volatiles and Essesntilesoiles. 2022. Nat. Volatiles & Essent. Oils, 2022; 9(1): 766-775","Frequency of Thrombocytopenia in patients with chronic liver disease in tertiary care hospital. Muhammad Abbas, Jahan Sardar, Muhammad Asim, Radha Khan, Samiullah Khan, Ghulam Jaffar. Pakistan Journal of medical and Health Sciences. 2022. DOI: https:\/\/doi.org\/10.53350\/pjmhs22161739","Glycemic control among type 2 DM patients: a large sample hospital based study. Shabina Safullah, Muhammad Abbas, Noor Muhammad, Akhtar Zarin. Medical Forum. 2020. Med Forum 2020;31(11): 107-110","Bacteriological Profile and antibiogrm of urinary tract infection at microbiology laboratory of a private teaching Hospital. Mohsina Haq, Sardar, Momina Haq, Muhammad, Arbab Muhammad Kashif Khan, Muhammad Abbas, Shahzaman Khan. Journal of Saidu Medical College. 2019. DOI: https:\/\/doi.org\/10.52206\/jsmc.2019.9.2.%25p","Relationshio between various indications and endoscopic findings in patients presenting to tertiary care hospitals in peshawar. Saima Mehboob, Noor Muhammad, Mohammad Abbas, Saleem Shah. Medico research chronicles. 2020. DOI No. 10.26838\/MEDRECH.2020.7.5.443","Incidence of SARSCoV2 reinfection in antinucleocapsid IgGpositivehealthcare workers: a prospective cohort study. Saima Mehboob, Asif Rehman, Mohsina Haq, Hala Rajab, Momina Haq, Hala Haq, Jawad Ahmad,Sajjad Ahmad, Mohammed Abbas, Saeed Anwar, Najib Ul Haq. Irish Journal of Medical Science (1971 -) (2023) 192:915–918. 2022. https:\/\/doi.org\/10.1007\/s11845-022-02997-w","Hyperuricemia in Acute Coronary Syndrome Patients in Tertiary Care Hospital. Shabina Shafiullah, Muhammad Abbas, Muhammad Abdur Rauf, Syed Tahir Shah, Muhammad Saleem Awan, Muhammad Ziyad. Advances in Basic Medical Sciences. 2024. https:\/\/doi.org\/10.35845\/abms.2024.1.345","Association Of Anxiety And Depressive Symptoms With Hypothyroidism. Dr. Ali Sebtain, Dr. Usman Akbar, Dr. Muhammad Abbas, Dr. Ambreen Gul, Dr Khalid Shehzad, Dr Muhammad Kamran Khan. Journal of Population Therapeutics & Clinical Pharmacology. 2024. DOI: 10.53555\/jptcp.v31i4.5463","Gastrointestinal Efficacy Of Omeprazole In Patients With Gastroesophageal Reflux Disease. Dr Mian Shah Yousaf1, Dr Noman Khan, Dr Wajid Iqbal, Dr. Arbab Muhammad Kashif Khan, Dr Masood Muhammad Karim, Dr Muhammad Abbas. Journal of Population Therapeutics & Clinical Pharmacology. 2024. DOI: 10.53555\/jptcp.v31i2.4592","Evidence of Mycobacterial Disease in Chronic Obstructive Pulmonary Disease Patients, the importance of Histological Assessment. NighatAra , Zahid Sarfaraz Khan , ShaistaAlam , Mohsina Haq , Muhammad Abbas , Salman Khan. Pakistan Journal of Chest Medicine. 2022","Frequency Of Raised Total Serum Ig E, Sputum Eosinophilia And Blood Eosinophil Count In Patients With SeverePersistent Asthma. Dr MianMufarih Shah, Dr Muhammad Abbas, Dr Momina Haq, Dr Sumira Abbas, Dr Munaz aKhattak, Dr Farhan Abbas Baloch. Journal of Population Therapeutics & Clinical Pharmacology. 2024. DOI: 10.53555\/jptcp.v31i6.6828","Cardiovascular Effects of Splenomegaly and Splenectomy in Beta-Thalassemia Major. Sumira Abbas , Haris Ali Khan , Wajeeha Rehman , Mian Mufarih Shah , Muhammad Mustafa , Muhammad Abbas. Cureus 16(11): e74186. 2024. DOI:10.7759\/cureus.74186","The Prevalence Of Diabetes Mellitus And Its Associated Symptoms In The Elderly Population Of University Campus Peshawar. Muhammad Abbas, Faiza Nadeem, Sofia Irshad, Humma Shafiq, Muhammad Alam Khan, Muhammad Wasif. Pakistan Medical Students Research Journal. 2023. https:\/\/www.pmsrj.com\/index.php\/pmsrj\/article\/view\/39","Prevalence of Low Serum Vit B12 and Associated Factors in Gastric Motility and Type 2 Diabetic Patients on Met-Formin Therapy. Dr Danyal Khattak, Dr Muhammad Fawad, Dr Muhammad Abdul Quddus, Dr Rukhsana Munawar, Dr Muhammad Razaq, Dr Muhammad Abbas. African Journal of Biological sciences. 2024. doi:10.48047\/AFJBS.6.16.2024.4336-4343","Frequency of Acute Kidney Injury among Women Presenting with Pre-Eclampsia. Hamid Ullah, Sumaira, Muhammad Shaukat, Muhammad Abbas, Humaira Aman, Saboor Ahmed Kakar. Pakistan journal of Medical & Health Sciences. 2024. https:\/\/doi.org\/10.53350\/pjmhs020231712394","Assessment of LGR5 Expression in Colonic Biopsies of Patients with Chronic Diarrhea of Unknown Origin. Rahid Gull , Sumbal Mansoor , Muhammad Abbas , Fouzia Jehangir , Naheed Akhtar , Farhan Abbas Baloch. Pakistan Journal of Medicine and Dentistry. 2025. https:\/\/doi.org\/10.36283\/ziun-pjmd14-4\/010","DIABETIC NEPHROPATHY: SPECTRUM AND CLINICAL OUTCOMES IMPACT OF GLYCEMIC CONTROL ON PROGRESSION TO ESRD. European Journal of Clinical Pharmacology. 2025. DOI:10.61336\/ejcp\/25-01-388","Hypertension Management in ICU: Exploring the Role of Blood Pressure Control in Renal Protection. European Journal of Clinical Pharmacology. 25. DOI:10.61336\/ejcp\/25-12-546","Assessment of Renal Replacement Therapy Modalities In Critically Ill Patients Comparative Outcomes In ICU Settings. European Journal of Clinical Pharmacology. 2026. DOI:10.61336\/ejcp\/25-11-681","Role Of SGLT2 Inhibitors in Slowing Progression of Chronic Kidney Disease Beyond Diabetes. European Journal of Clinical Pharmacology. 2026. DOI:10.61336\/ejcp\/25-12-494"]','{"aliases":["mohammad-abbas","muhammad-abbas"]}','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(52,'ambereen-humayun','Ambereen Humayun',NULL,'Anatomy','Associate Professor','',1,1,'["BDS","M. Phil Anatomy","CHPE"]','["1st OCT 2025...till date  Associate Professor Peshawar Dental College, Anatomy Deptt."]','[]','["Protective role of vitamin E in doxorubicin induced toxicity in rat testes'''' (A Histomorphometric Study) Farooq Khan, Nighat Ara, Shamila Hafizi, Nomanullah Wazir, Fahadullah and Ambereen Humayun Medical Forum Vol.30, No.7 July 2019","Frequency of Palatogingival Groove in maxillary incisors\". Aamir Mehmood Khan, Shahzad Ali, Fayyaz Alam, Asmat Ullah, Ambereen Humayun, Sundas Nisar. PODJ Vol 39 No.1(2019): Jan-Mar 2019. p. 82-84.","The preventive role of vitamin E against Imatinib-Induced toxicity on liver of albino rats'''' (A Histomorphometric Study) Nighat Ara, Farooq Khan, Noman Ullah Wazir, Fahad Ullah, Ambereen Humayun, Riffat Shameem Medical Forum Vol.30, No.8 August 2019, p. 112-116","Clinicopathological Analysis of Pre-Operative Diagnosis and Histopathological diagnosis in Hysterectomy Specimens in Females Undergoing Abdominal Hysterectomy- A three years'' experience. Shahnaz Parveen, Sadia Zahid, Naila Nasr Malik, Rukhsana Karim, Syeda Asma Safdar, Ambereen Humayun. JKCD Vol 09, No. 3 September 2019. p. 91-97.","Histomorphometric study revealing protective role of vitamin C in doxorubicin induced toxicity in rat testes'''' Farooq Khan, Nighat Ara, Shahabuddin, Noman Ullah, Ahmad Nabi, Ambereen Humayun Khyber J. of Med.Science Vol.13, No.1 Jan-April 2020, p. 82-94.","Estimation of the frequency of 2nd mesiobuccal root canal in maxillary first permanent molar teeth in subjects visiting teaching dental hospitals of peshawar. Ambereen Humayun, Munawar Aziz Khattak, Aamir Mehmood Khan, Nighat Ara, Farooq Khan, Noman Ullah Wazir Professional Med.Jurnoul Vol.27, No.10, 2020, p. 2203-09.","Counter effects of Vitamin E against outcomes of Alcohol toxicity in Pancreatic acini: Histpmorphometric study Noman Ullah Wazir, Jehanzeb Khan, Zilli Huma, Farooq Khan, Nighat Ara, Ambereen Humayun PJMHS Vol.15, No.1 ,Nov. 2021, p. 87-90.","Collagen deposition Reduction by vitamin E in alcoholic liver injury. Noman Ullah Wazir, Farooq Khan, Nighat Ara, Ambereen Humayun, Nadeem Ullah Wazir, Saima Mumtaz PJMHS Vol.16, No.3 March 2022, p. 85-87.","Association Between Kinematic Center And Anatomy, The Function Of Temporomandibular Joint. Zahid Sarfaraz, Syeda Gulrukh saba, Ambereen Humayun, Zakirullah Khan, Waqas Ali, Maira Iqbal. PJMHS Vol 16,No. 06 Jun 2022. p. 806-809.","Assessment of root anatomy and variations of third mandibular molars in the population of Peshawar using CBCT. Asma Amir, Imran Qureshi, Ambereen Humayun, Farooq Khan, Imran Khattak, Yusra Jamil Khattak. PJMHS Vol.18, No.9 September 2022, Page. 85-87.","Evaluation of the Occlusal Contact Between the Opposing Teeth & the Cusp of Carabelli in Maxillary Permanent First Molars in Patients visiting Peshawar Dental College.\" Sana Arbab, Munawwar Aziz Khattak, Imran Khattak, Yusra Jamil, Faiza Ijaz, Ambereen Humayun. JIMDC Vol 12, No.1(2023): Jan-Mar 2023. p. 17-21.","Enucleation with or without Adjuvant Therapy versus Marsupialization with or without Secondary Enucleation in the treatment of Keratocystic Odontogenic Tumors. Ambereen Humayun, Sobia Tariq, Mohammad Umar, Noor-ul- Wahab, Atif Iqbal Butt, Sufyan Ammar. Ann PIMS Vol 20, No. SUPPL-1 (2024): Jul-Sept 2024 p. 565-570.","Influence of Vitamin E on Pancreatic Acinar Cell Morphology and Serum Amylase Concentrations in Alcohol-Induced Pancreatic Toxicity.\" Noman Ullah Wazir, Farzana Salman, Shamaila Wadud, Ambereen Humayun, Asma Amir, Momina Haq JAMC Vol 36, No. 03 (2024): Jul-Sept 2024. p. 625-629.","Pirfenidone: An Encouraging Therapeutic Approach for Enhancing Lateral Spinothalamic Tract Function After Spinal Cord Compression Injury. Noman Ullah Wazir1, Ambereen Humayun2, Irum Javaid3, Asma Amir4, Nayyab Khattak5, Ayesha Iftikhar6. Journal of Rawalpindi Medical College. Vol 28, No. 2 (2024): p. 309-314.","Efficacy Of Formalin Fixation in Detecting GFAP And MAP2 In the Spinal Cord Via Immunofluorescence and Immunohistochemistry. Noman Ullah Wazir, Mushtaq Ahmad, Ambereen Humayun, Khalid Shehzad, Mohammad Saleh Faisal, Naseer Ahmed. J MED SCI Jul-Sept 2025; Vol 33 No. (3): p. 155-157"]','{"aliases":["ambereen-humayun","ambereen","ambreen-humayun"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','665',0),
(53,'sadaf-alam','Sadaf Alam',NULL,'Pathology','Professor','',1,1,'["FCPS - II","M. Phil","MBBS"]','["Professor Pathology Peshawar Medical College, Peshawar 6-june2024"]','[]','["Role of benign ovarian cysts in the development of adenomyosis. Saudi Medical Journal. 2016. Sadaf Alam1, SajjadAhmad, Muhammad M. Khan,Sabeen Nasir, Naveed Sharif,SaraZiaullah, Ahmareen Khalid,Fozia Rauf","Detection of H. Pylori in gastric biopsies: a cost effective method for developing countries. The Professional Medical Journal. 2019. Hina Khan, Sadaf Alam2, Shahnawaz Khan, Mumtaz Khan, Fozia Rauf","Comparison Of Glut1 Expression In Oral Squamous Cell Carcinoma With Normal Mucosa. Pakistan Journal of Pathology. 2019. Khalid Usman, Sadaf Alam2, Farzana Salman, Muhammad Mumtaz Khan, MunazzaKhattak, Abbas Saleem, Zafar Ali Khan","Comparison of image findings with histopathological diagnosis on ultrasound guided percutaneous liver biopsy in relation to hepatocellular ca. Khyber Medical University Journal. 2018. Abdul Majid , Muhammad Mumtaz Khan , Abdul Aziz Zia , Sadaf Alam4","Role of Thyroid Dysfunction In Infertile Women With Menstrual Disturbances. Gomal Journal of MedicalSciences. 2016. SabeenNasir,Muhammad Mumtaz Khan,SajjadAhmed,Sadaf Alam4,Sara Ziaullah","Inter observer variability in interpretation of endometrial biopsies in infertile women. The Professional Medical Journal. 2018. SabeenNasir,Muhammad Mumtaz Khan, Naveed Sharif, Sadaf Alam4, Sara Ziaullah, SajjadAhmad","Epstein Barr virus LMP-1 positivity in Hodgkin lymphoma subtypes in Khyber Pakhtunkhwa Province of Pakistan. Gomal Journal of Medical Sciences. 2017. Sara Ziaullah, SajjadAhmad, Muhammad Mumtaz Khan, Sadaf Alam4,Sabeen Nasir, Naveed Sharif","Effect of age on prognosis in different molecular subtypes of female breast carcinoma. Gomal Journal of Medical Sciences. 2015. Naveed Sharif, SajjadAhmed, Muhammad MumtazKhan, Ahmareen Khalid, SadafAlam5, Sara Ziaullah Ziaullah, Sabeen Nasir,Fouzia Rauf","Morphological Spectrum of Endometrial Biopsies In Infertile Women. Gomal  Journalof Medical Sciences. 2016. SabeenNasir,Muhammad Mumtaz Khan,SajjadAhmed,SaraZiaullah,Sadaf Alam5","Cytomorphological spectrum of pleomorphic adenoma in association with clinical parameters. The Professional Medical Journal. 2019. Fatima Iqbal,NasihaBashir,Abbas Saleem , Muhammad Mumtaz Khan, TehminaNaushin ,Sadaf Alam6","Morphological spectrum of endometrium with thyroid hormone profile in infertile female population of Khyber Pakhtunkhwa province of Pakistan. Pakistan Journal of Medical sciences(PJMS). 2020. Sabeen Nasir , Sara Ziaullah , Sadaf Alam3 , Muhammad Mumtaz Khan","Comparison of special stains (Giemsa stain and Modified Toluidine Blue stain) with immunohistochemistry as gold standard for the detection of H. pylori in gastric biopsies. Arab Journal of Gastroenterology. 2021. Hina khan, Fozia Rauf, Noor Muhammad,Mehwish Javed, Sadaf Alam5,Sabeen Nasir","Immunohistochemical expression levels of Cyclin E1 in three histologic grades of oral squamous cell carcinoma. Pakistan Journal of Pathology. 2022. Arooj khurshid, Sabeen Nasir, Sadaf Alam3,Madiha Insha,Rabia Alamgir,Natasha Kamran","Expression of P16 in Various Grades of Oral Squamous Cell Carcinoma of Tertiary Care Hospitals of Peshawar. Pakistan Journal of Medical and health Sciences. 2022. Karishma Ali ,Sadaf Alam2, Muhammad Mumtaz Khan, Natasha kamran, Sara Zia ,Shabana Bkhtiar, Sikandar Ali, Fatima Ali ,Iirfan Ullah","Expression of CD3 Levels of Tumor Infiltrating Lymphocytes (TILs) in Various Grades of Oral Squamous Cell Carcinoma of Tertiary Care Hospitals of Peshawar. Pakistan Journal of Medical and health Sciences. 2022. Natasha Kamran, Sadaf Alam2, Sabeen Nasir, Karishma Ali, Shabana Bakhtiar, Arooj Khurshid, Irfan Ullah","Evaluation of Carica Papaya leaf extract on Megakaryocytes count: An Animal Model. Khyber Journal Of Medical Sciences. 2022. Shahida Batool,Shafaq Zafar,Sadaf Alam3,Shahid Farid,Ayesha Iftikhar, Mohsin Ali","Association  of  Vascular  Endothelial  Growth  Factor  (VEGF)  in  Salivary Gland Tumors. Pakistan journal of medical and health sciences (P J M H S). 2023. Muhammad Zubair Jabbar1, Muhammad Mumtaz Khan2, Sahibzadi Fatima Tariq3, Sadaf Alam4, Kanwal Nazir Arbab5, Abdullah Ahmad Khan6, Nauman Khalid7, Laima Abdullah8, Rabia Jabbar","Comparison Of Immunohistochemical Expression Of Epidermal Growth Factor Receptor In Benign And Malignant Salivary Gland Tumors. Advances in basic medical sciences(ABMS). 2022. Aysha Khitab 1, Sadaf Alam1, Sabeen Nasir1, Imad Ali1, Maria Hanif 1, Mehreen Malik1","Clinicopathological Features of Oral Leukoplakia Among Snuff Users and Non-Users: An Analytical Study. Pakistan journal of Health sciences. 2023. Tehmina Naushin,Abbas Saleem Khan,Sadaf Alam,Nasiha Motahir ,Fatima Iqbal, Hoor Maryam Younas ,Sidra Mehmood, Uzma Mehmood","Mucin-2 Expression in Primary and Recurrent Cases of Pleomorphic Adenoma in Tertiary Care Hospitals of Peshawar. Pakistan journal of medicine and dentistry(PJMD). 2024. Samar Ashfaq1, Sadaf Alam1, Mumtaz Muhammad Khan1, Sabeen Nasir1","Immunohistochemical (IHC) expression of P16 in various grades of oral squamous cell carcinoma (OSCC)with snuff use in tertiary care hospitals of peshawar. Pakistan journal of Health sciences. 2024. Karishma Ali,Sadaf Alam,Natasha Kamran,Sabeen Nasir,Razia Aamir,Sarah Yoususf","comparison of immunohistochemical expression of insulin like growth factor 1 receptor (igf-1r) in benign and malignant salivary gland tumors. Journal of Khyber college of Dentistry. 2024. Mehreen Malik1, Sadaf Alam2, Sara Ziaullah2, Maria Hanif3, Noor Jahanzeb3, Ayesha Khitab3"]','{"aliases":["sadaf-alam"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','274',0),
(54,'nasir-bakhtiar','Nasir Bakhtiar',NULL,'General Surgery','Assistant Professor','assets/images/faculty/nasir-bakhtiar.jpg',1,1,'["MBBS (Gold Medalist)","FCPS General Surgery","Fellowship Laparoscopic Surgery (GLR)","CHPE, CHR, AI in Health Care"]','["NOVEMBER 2016 TILL DATE"]','["General & Laparoscopic Surgery","Pancreaticobiliary Surgery"]','["POLY-PROPHYLENE MESH OR ULTRA PRO MESH IS BETTER? IN TERMS OF EFFECTIVENESS AND POST-OPERATIVE COMPLICATIONS. A RANDOMIZED CONTROL STUDY. Muhammad Yunas Khan, Nasir Bakhtiar, Shafi Ullah, Mehwish Asad, Shandana Gul, Qutbi Alam Jan","Safety and Feasibility of Laparoscopic Cholecystectomy in Acute Cholecystitis Mohammad Tayeb1, Fozia Rauf2 and Nasir Bakhtiar3","Comparative Analysis of Intravenous Ceftriaxone and Ciprofloxacin for the Treatment of Bacterial Peritonitis in Liver Cirrhosis. ARBAB MUHAMMAD KASHIF KHAN1, MOHSINA HAQ2, RAHMAN SHAH3, SAIFULLAH KHAN KHALIL4, NASIR BAKHTIAR5, FAHD MASUD6, HIKMAT ULLAH7, QUDRAT ULLAH KHAN8, AMIR ULLAH KHAN","Causes and Management of Blunt Liver Trauma in a Tertiary Care Hospital in Peshawar. Asad Ullah Khan1, Kamran Ahmad2, Abeer Jehanzeb Khan3, Nasir Bakhtiar1, Ahmad Arsalan Tahir1, Muhammad Haris4*, Muhammad Jehangir Khan5, Sobia Haris6 and Farah Deeba","Role of Minimally Invasive Surgery (Laparsocopic Surgery) in the Management of Acute Abdomen. NASIR BAKHTIAR1, MUHAMMAD TAYYEB2, AHMAD ARSALAN TAHIR3, TUFAIL AHMAD4, MUHAMMAD ISHFAQ5, ASAD ULLAH KHAN6","Socioeconomic, Laboratory and Associated Factors in Patients Suffering From Acute Appendicitis. AHMAD ARSALAN TAHIR1, ANWAR ALI2, MOHAMMAD USMAN3, NASIR BAKHTIAR4, IBRAHIM5, ASAD ULLAH KHAN","COMPARISON OF POSTOPERATIVE PAIN IN DESARDA VS LICHTENSTEIN MESH REPAIR IN THE TREATMENT OF INGUINAL HERNIAS. Kaleem Ullah1, Shahidullah Ahmad2, Sheikh Muhammad Ibqar Azeem2, Waleed Mahboob2, Sahibzada Salma Rahman2, Nasir Bakhtiar3","A COMPARATIVE STUDY BETWEEN CLOSED AND OPEN HEMORRHOIDECTOMY IN TERMS OF SURGICAL SITE INFECTION. Nadir Farid1, Imtiaz Ali Langah2 , Mudassar Jabeen3 , Furqan Ullah Butt4 , Ahmad Arsalan Tahir5 , Nasir Bakhtiar6 , Javeria Aabid7 , Saad Suleman8, Muhammad Rashid Waheed9*","SINGLE INCISION LAPAROSCOPIC SURGERY IN CHOLECYSTECTOMY: CURRENT TRENDS AND CHALLENGES. Nadir Farid1, Khurram Shehzad2 , Muhammad Hassaan Amjad3 , Imtiaz Ali Langah4 , Nasir Bakhtiar5 , Ahmad Arsalan Tahir6 , Muhammad Rashid Waheed7*","Outcomes of Lateral Pancreaticojejunostomy in Patients with Chronic Pancreatitis Nasir Bakhtiar, Muhammad Tayyeb, Ambareen Subhan, Ahmad Arsalan Tahir","CLINICAL OUTCOMES OF COMPRESSION ALONG WITH ULTRASOUND GUIDED FOAM SCLEROTHERAPY IN THE MANAGEMENT OF VENOUS ULCERS: A PROSPECTIVE STUDY AT TERTIARY CARE HOSPITAL, PESHAWAR. Shafi Ullah1, Ahmad Arsalan Tahir2, Muhammad Ishfaq3, Nasir Bakhtiar4, Ambareen Subhan5, Muhammad Farooq6.","Comparison of the Outcomes of On-Lay and Sub-Lay Mesh Repair in Patients with Ventral Abdominal Wall Hernias. Ahmad Arsalan Tahir1*, Ambareen Subhan1, Nasir Bakhtiar1, Muhammad Ishfaq1, Muhammad Farooq1 and Muhammad Tayyeb","DEEP VENOUS THROMBOSIS PROPHYLAXIS, STANDARDS AND PRACTICES Nasir Bakhtiar1, Muhammad Tayyab2, Shafi Ullah3, Ambareen Subhan4, Sheikh Muhammad Ibqar Azeem5, Ahmad Arsalan Tahir","Association of Glycated Hemoglobin Level and Postoperative Complications in General Surgical Procedures. Nadir Farid1, Muhammad Rizwan Anwar2, Muhammad Tariq Nazir3, Nasir Bakhtiar4, Muharram Ali5, Muhammad Afzal6, Shahzada Amir Ahmed Babar","Intraoperative Use of Methylene Blue for Sentinel Lymph Node Detection in Breast Cancer Surgery: A Prospective Study. Muhammad Abid Aziz 1*, Nasir Bakhtiar2, Nasir Naseem Akhtar3, Muhammad Ali Naper4, Fazli Akbar5, Mohammad Basil Rizvi"]','{"aliases":["nasir-bakhtiar","nasir-bakhtyar"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1373',0),
(55,'riaz-khan','Riaz Khan',NULL,'Oral & Maxillofacial Surgery','Senior Registrar','assets/images/faculty/riaz-khan.jpg',0,1,'["BDS","FCPS"]','["17 Months"]','["Specialized in Implants Surgery; Maxillofacial Trauma and Pathology, Minor Oral Surgical Procedure, Facial Aesthetics."]','["Pattern and common risk factors of Maxillofacial fractures in adults (Vol 10 : No 03 JKCD September 2020","Lingual nerve injury in mandibular third molar extraction “a comparison of two surgical techniques” published in Pak J.Sarrg 2021:37(2):119-122 Journal of the Khyber college of Dentistry","Post graduate research and medical libraries “ an analytical study  of library of post graduate medical institute Peshawar","Patterns of oral and maxillofacial surgeries in pediatrics patients “retrospective study”","The outcome of Two Drivers Irrigation Needles on Post-Operative Pain after PULPECTOMY in Permanent Dentition published in Annual of R.S.C.B; ISSN: 1583-6258, Vol 25, Issue 6, 2021, Pages 12873-12881.","Role of Interleukin-34together with Receptor Activator of Nuclear Factor kB ligand an Osteoprotegrin levels in Periodontal Disease:","The Association of Indications of Third Molar Coronectomy and Surgical Removal with Pell & Gregory and Winter Classification","Comparative Effectiveness of Topical Triamcinolone in Orabase in Treating Recurrent Aphthous Stomatitis: A Comparative Study Between Diabetic and Non-Diabetic Patients"]','{"aliases":["riaz-khan"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','1948',0),
(56,'shahab-adil','Shahab Adil',NULL,'Orthodontics','Professor','assets/images/faculty/shahab-adil.jpg',0,1,'["BDS","FCPS"]','[]','[]','[]','{"aliases":["shahab-adil","shahab-adil-"]}','2026-10-13 17:20:46','2026-10-13 17:20:46','775',0);
-- faculty_profiles: 56 rows

DROP TABLE IF EXISTS `gallery_albums`;
CREATE TABLE `gallery_albums` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` VARCHAR(191) NOT NULL,
  `title` VARCHAR(191) NOT NULL,
  `icon` VARCHAR(191) NULL,
  `sort_order` BIGINT NOT NULL DEFAULT 0,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `gallery_albums` (`id`,`slug`,`title`,`icon`,`sort_order`,`created_at`,`updated_at`) VALUES
(1,'campus','PDC Campus & Buildings','bi-buildings',0,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(2,'facilities','Campus Facilities','bi-house-heart',1,'2026-10-13 18:23:25','2026-10-13 18:23:25');
-- gallery_albums: 2 rows

DROP TABLE IF EXISTS `gallery_items`;
CREATE TABLE `gallery_items` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `album_id` BIGINT NOT NULL,
  `image_path` VARCHAR(191) NOT NULL,
  `title` VARCHAR(191) NULL,
  `caption` VARCHAR(191) NULL,
  `span` VARCHAR(191) NULL,
  `sort_order` BIGINT NOT NULL DEFAULT 0,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `gallery_items` (`id`,`album_id`,`image_path`,`title`,`caption`,`span`,`sort_order`,`created_at`,`updated_at`) VALUES
(1,1,'assets/images/campus/pdc1.jpeg','Peshawar Dental College','Main academic building on Warsak Road','span-2',0,'2026-10-13 18:23:25','2026-10-13 19:15:08'),
(2,1,'assets/images/campus/pdc2.jpeg','Academic Block','Teaching and learning spaces',NULL,1,'2026-10-13 18:23:25','2026-10-13 19:15:08'),
(3,1,'assets/images/campus/pdc3.jpeg','Classroom','Teaching and learning spaces',NULL,2,'2026-10-13 18:23:25','2026-10-13 19:15:08'),
(4,1,'assets/images/campus/pdc5.jpeg','Sills Lab','Teaching and learning spaces',NULL,3,'2026-10-13 18:23:25','2026-10-13 19:15:08'),
(5,1,'assets/images/campus/pdc10.jpeg','Campus Courtyard','Open spaces around the dental college',NULL,4,'2026-10-13 18:23:25','2026-10-13 19:15:08'),
(6,1,'assets/images/campus/pdc11.jpeg','Campus Approach','Entrance and approach to PDC',NULL,5,'2026-10-13 18:23:25','2026-10-13 19:15:08'),
(7,1,'assets/images/campus/pdc12.jpeg','Building Detail','Architectural view of the college',NULL,6,'2026-10-13 18:23:25','2026-10-13 19:15:08'),
(8,2,'assets/images/pdc/library.JPG','Library & LRC','Learning resource centre for dental students','span-2',0,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(9,2,'assets/images/pdc/library1.png','Library & LRC','Learning resource centre for dental students',NULL,1,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(10,2,'assets/images/campus/library2.jpeg','Library & LRC','Learning resource centre for dental students',NULL,2,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(11,2,'assets/images/campus/library3.jpeg','Library & LRC','Learning resource centre for dental students',NULL,3,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(12,2,'assets/images/campus/girls-hostel.png','Hostel','On-campus accommodation',NULL,4,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(13,2,'assets/images/campus/hostel1.png','Hostel','On-campus accommodation',NULL,5,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(14,2,'assets/images/campus/hostel2.png','Hostel','On-campus accommodation',NULL,6,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(15,2,'assets/images/campus/hostel3.png','Hostel','On-campus accommodation',NULL,7,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(16,2,'assets/images/campus/hostel4.png','Hostel','On-campus accommodation',NULL,8,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(17,2,'assets/images/campus/hostel5.png','Hostel','On-campus accommodation',NULL,9,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(18,2,'assets/images/campus/hostel6.png','Hostel','On-campus accommodation',NULL,10,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(19,2,'assets/images/campus/gym-pmc.png','Sports & Gym','Fitness and recreation facilities',NULL,11,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(20,2,'assets/images/pdc/cafe.png','Cafeteria','Student cafeteria and dining',NULL,12,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(21,2,'assets/images/pdc/masjid.png','Masjid','Campus mosque',NULL,13,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(22,2,'assets/images/campus/pdc-transport.png','Transport','College transport services',NULL,14,'2026-10-13 18:23:25','2026-10-13 18:23:25'),
(23,2,'assets/images/pdc/daycare.png','Day Care','Day care facility on campus',NULL,15,'2026-10-13 18:23:25','2026-10-13 18:23:25');
-- gallery_items: 23 rows

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` VARCHAR(191) NOT NULL,
  `class` VARCHAR(191) NOT NULL,
  `group` VARCHAR(191) NOT NULL,
  `namespace` VARCHAR(191) NOT NULL,
  `time` BIGINT NOT NULL,
  `batch` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `migrations` (`id`,`version`,`class`,`group`,`namespace`,`time`,`batch`) VALUES
(1,'2026-10-13-143000','App\Database\Migrations\CreateDmsSchema','default','App',1791912045,1),
(2,'2026-10-13-153000','App\Database\Migrations\AddCmsBodyFields','default','App',1791912045,1),
(3,'2026-10-13-154500','App\Database\Migrations\AddNewsExpiresAt','default','App',1791912045,1),
(4,'2026-10-13-160000','App\Database\Migrations\AddFacultyEmpId','default','App',1791912045,1),
(5,'2026-10-13-161500','App\Database\Migrations\AddFacultyDeptOverride','default','App',1791912045,1),
(6,'2026-10-13-180000','App\Database\Migrations\CreateGalleryTables','default','App',1791915804,2);
-- migrations: 6 rows

DROP TABLE IF EXISTS `news_media`;
CREATE TABLE `news_media` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_id` BIGINT NOT NULL,
  `path` VARCHAR(191) NOT NULL,
  `caption` VARCHAR(191) NULL,
  `sort_order` BIGINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- news_media: 0 rows

DROP TABLE IF EXISTS `news_posts`;
CREATE TABLE `news_posts` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` VARCHAR(191) NOT NULL,
  `title` VARCHAR(191) NOT NULL,
  `excerpt` TEXT NULL,
  `body_html` TEXT NULL,
  `category` VARCHAR(191) NULL,
  `cover_image` VARCHAR(191) NULL,
  `published_at` DATETIME NULL,
  `status` VARCHAR(191) NOT NULL DEFAULT 'published',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `body_text` TEXT NULL,
  `expires_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `news_posts` (`id`,`slug`,`title`,`excerpt`,`body_html`,`category`,`cover_image`,`published_at`,`status`,`created_at`,`updated_at`,`body_text`,`expires_at`) VALUES
(1,'bds-admissions-open-2026-27','BDS Admissions Open 2026-27','Apply by 09 Nov 2026 Provisional Merit List: 10 November 2026.','<p>Apply by 09 Nov 2026</p>
<p>Apply by 09 Nov 2026 Provisional Merit List: 10 November 2026.</p>','Admissions','assets/images/news/kmu-mbbs-bds-admissions.jpeg','2026-10-13 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','Apply by 09 Nov 2026

Apply by 09 Nov 2026 Provisional Merit List: 10 November 2026.','2026-11-09 23:59:59'),
(2,'convocation-2026','Convocation 2026','Last Date for Registration is October 27, 2026','<p>Last Date for Registration is October 27, 2026</p>','Convocation','assets/images/news/convocation2026.jpeg','2026-10-13 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','Last Date for Registration is October 27, 2026','2026-10-27 23:59:59'),
(3,'mbbs-admissions-applications-closed','MBBS Admissions — Applications Closed','Applications for MBBS Session 2025–26 are closed. See Admissions for next-cycle guidance.','<p>Applications for MBBS Session 2025–26 are closed. See Admissions for next-cycle guidance.</p>','Admissions',NULL,'2025-06-15 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','Applications for MBBS Session 2025–26 are closed. See Admissions for next-cycle guidance.','2025-06-15 23:59:59'),
(4,'pmc-retains-1-ranking-among-private-medical-colleges-in-kp','PMC Retains #1 Ranking Among Private Medical Colleges in KP','Following the latest PM&DC inspection, PMC secured the highest score among all private medical colleges in KP with over 80%.','<p>Following the latest PM&amp;DC inspection, PMC secured the highest score among all private medical colleges in KP with over 80%.</p>','Achievement',NULL,'2025-05-15 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','Following the latest PM&DC inspection, PMC secured the highest score among all private medical colleges in KP with over 80%.',NULL),
(5,'umr-society-annual-medical-research-conference-2025','UMR Society Annual Medical Research Conference 2025','The PMC Undergraduate Medical Research Society organised its annual conference showcasing student projects.','<p>The PMC Undergraduate Medical Research Society organised its annual conference showcasing student projects.</p>','Research',NULL,'2025-04-22 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','The PMC Undergraduate Medical Research Society organised its annual conference showcasing student projects.','2025-05-22 23:59:59'),
(6,'international-medical-education-symposium-2025-pmc-hosts-delegates','International Medical Education Symposium 2025 — PMC Hosts Delegates','PMC hosted an international symposium on modern medical education, attended by 200+ delegates.','<p>PMC hosted an international symposium on modern medical education, attended by 200+ delegates.</p>','Conference',NULL,'2025-02-18 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','PMC hosted an international symposium on modern medical education, attended by 200+ delegates.','2025-03-20 23:59:59'),
(7,'annual-sports-gala-2025-pmc-sports-society','Annual Sports Gala 2025 — PMC Sports Society','A week-long celebration of sportsmanship and team spirit featuring cricket, football, and more.','<p>A week-long celebration of sportsmanship and team spirit featuring cricket, football, and more.</p>','Society',NULL,'2025-03-10 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','A week-long celebration of sportsmanship and team spirit featuring cricket, football, and more.','2025-04-09 23:59:59'),
(8,'sws-blood-donation-drive-winter-2025-exceeds-target','SWS Blood Donation Drive — Winter 2025 Exceeds Target','The Social Welfare Society conducted a successful blood donation drive with over 150 units collected.','<p>The Social Welfare Society conducted a successful blood donation drive with over 150 units collected.</p>','Society',NULL,'2025-01-28 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','The Social Welfare Society conducted a successful blood donation drive with over 150 units collected.','2025-02-27 23:59:59'),
(9,'annual-convocation-2024-90-doctors-graduate-from-pmc','Annual Convocation 2024 — 90+ Doctors Graduate from PMC','PMC celebrated another cohort at the Annual Convocation 2024 with degrees conferred to over 90 new MBBS graduates.','<p>PMC celebrated another cohort at the Annual Convocation 2024 with degrees conferred to over 90 new MBBS graduates.</p>','General',NULL,'2024-12-05 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','PMC celebrated another cohort at the Annual Convocation 2024 with degrees conferred to over 90 new MBBS graduates.','2025-01-04 23:59:59'),
(10,'pmc-scholarship-policy-updated-for-session-2024-25','PMC Scholarship Policy Updated for Session 2024–25','The updated scholarship policy for MBBS Session 2024–25 has been announced.','<p>The updated scholarship policy for MBBS Session 2024–25 has been announced.</p>','Admissions',NULL,'2024-10-01 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','The updated scholarship policy for MBBS Session 2024–25 has been announced.','2025-06-30 23:59:59'),
(11,'pmc-faculty-research-published-in-international-peer-reviewed-journals','PMC Faculty Research Published in International Peer-Reviewed Journals','Multiple PMC faculty members have had research papers published in internationally peer-reviewed medical journals.','<p>Multiple PMC faculty members have had research papers published in internationally peer-reviewed medical journals.</p>','Research',NULL,'2024-08-14 10:00:00','published','2026-10-13 17:20:46','2026-10-13 17:20:46','Multiple PMC faculty members have had research papers published in internationally peer-reviewed medical journals.',NULL);
-- news_posts: 11 rows

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` VARCHAR(191) NOT NULL,
  `title` VARCHAR(191) NOT NULL,
  `label` VARCHAR(191) NULL,
  `section` VARCHAR(191) NULL,
  `description` TEXT NULL,
  `view_key` VARCHAR(191) NULL,
  `body_html` TEXT NULL,
  `seo_json` TEXT NULL,
  `status` VARCHAR(191) NOT NULL DEFAULT 'published',
  `priority` TEXT NOT NULL DEFAULT 0.5,
  `changefreq` VARCHAR(191) NOT NULL DEFAULT 'monthly',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `body_text` TEXT NULL,
  `use_cms` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `pages` (`id`,`slug`,`title`,`label`,`section`,`description`,`view_key`,`body_html`,`seo_json`,`status`,`priority`,`changefreq`,`created_at`,`updated_at`,`body_text`,`use_cms`) VALUES
(1,'home','Peshawar Dental College | PDC — BDS in Peshawar','Home','College','PDC Peshawar: a leading dental college for girls in Peshawar. PM&DC BDS, Peshawar Dental Hospital, KMU admissions, Warsak Road.','home',NULL,'{"label":"Home","section":"College","title":"Peshawar Dental College | PDC — BDS in Peshawar","description":"PDC Peshawar: a leading dental college for girls in Peshawar. PM&DC BDS, Peshawar Dental Hospital, KMU admissions, Warsak Road.","priority":"1.0","changefreq":"weekly"}','published',1,'weekly','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(2,'pdc','PDC Peshawar | BDS & Peshawar Dental Hospital','Peshawar Dental College','College','BDS in Peshawar at PDC — female dental college with Peshawar Dental Hospital, PM&DC/HEC recognition, and clinical training since 2010.','pdc','<!-- PAGE HERO -->
<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <div class="row align-items-center g-4">
      <div class="col-lg-8">
        <span class="page-hero-eyebrow">Department of Dental Sciences</span>
        <h1>Peshawar Dental College</h1>
        <div class="breadcrumb-pmc">
          <a href="/">Home</a>
          <span class="sep"><i class="bi bi-chevron-right"></i></span>
          <a href="/about">About</a>
          <span class="sep"><i class="bi bi-chevron-right"></i></span>
          <span class="current">Peshawar Dental College</span>
        </div>
      </div>
      <div class="col-lg-4 d-flex justify-content-lg-end justify-content-start">
        <div class="pmc-hero-logo">
          <img src="/assets/images/logo/pdc.png" alt="Peshawar Dental College logo" />
        </div>
      </div>
    </div>
  </div>
</div>

<!-- MAIN CONTENT -->
<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content">

          <!-- Intro — college scope (department overview lives on about.php) -->
          <div class="about-intro fu">
            <span class="sec-eyebrow">College Profile</span>
            <h2 class="sec-title" style="font-size:1.75rem;">Peshawar Dental College</h2>
            <p class="about-lead">
              The undergraduate dental college of the <strong>Department of Dental Sciences</strong> — a <strong>female-only</strong> BDS programme with ethics-centred teaching and hospital-based clinical training. Peshawar Dental College is a leading dental college in Peshawar and a recognised BDS college in Pakistan — PM&amp;DC and HEC recognized since 2010, with its own Peshawar Dental Hospital.
            </p>
            <p>
              Established in <strong>2010</strong> and recognized by the Federal Ministry of Health, <strong>PM&amp;DC</strong>, and <strong>HEC</strong>, PDC prepares dentists who are professionally competent, research-minded, and attentive to community oral health needs.
            </p>
            <p>
              More than <strong>450 graduates</strong> have qualified from the College. The principal focus is undergraduate education, with facilities also supporting postgraduate learners of university and CPSP programmes. An integrated modular BDS system has been in place since session <strong>2019–2020</strong>, with Undergraduate Medical Research (UMR) as a regular component.
            </p>
            <p>
              For department overview and campus location, see <a href="/about"><strong>Introduction</strong></a>. Values are on <a href="/vision-mission"><strong>Vision &amp; Mission</strong></a>.
            </p>
          </div>

          <!-- Quick facts -->
          <div class="about-facts fu fu-delay-1">
            <div class="about-fact">
              <i class="bi bi-patch-check-fill"></i>
              <div>
                <strong>PM&amp;DC · HEC</strong>
                <span>Recognised college</span>
              </div>
            </div>
            <div class="about-fact">
              <i class="bi bi-mortarboard-fill"></i>
              <div>
                <strong>BDS Programme</strong>
                <span>Four-year undergraduate</span>
              </div>
            </div>
            <div class="about-fact">
              <i class="bi bi-gender-female"></i>
              <div>
                <strong>Female Students</strong>
                <span>Dedicated college intake</span>
              </div>
            </div>
            <div class="about-fact">
              <i class="bi bi-people-fill"></i>
              <div>
                <strong>500+ Graduates</strong>
                <span>Serving KP &amp; beyond</span>
              </div>
            </div>
          </div>

          <!-- Programme highlights -->
          <div class="about-block fu" id="programme">
            <div class="about-block-head">
              <h3>BDS Programme Highlights</h3>
              <p>What shapes teaching and learning at Peshawar Dental College.</p>
            </div>
            <div class="about-attr-grid">
              <div class="about-attr"><i class="bi bi-check2-circle"></i><span>Four-year BDS with integrated modular system (from 2019–20)</span></div>
              <div class="about-attr"><i class="bi bi-check2-circle"></i><span>Professional knowledge with ethical values as a priority</span></div>
              <div class="about-attr"><i class="bi bi-check2-circle"></i><span>UMR as a regular part of undergraduate education</span></div>
              <div class="about-attr"><i class="bi bi-check2-circle"></i><span>Experienced faculty and well-equipped departments</span></div>
              <div class="about-attr"><i class="bi bi-check2-circle"></i><span>Library, laboratories, and skill-lab support</span></div>
              <div class="about-attr"><i class="bi bi-check2-circle"></i><span>Co-curricular: camps, seminars, sports &amp; literary week</span></div>
            </div>
          </div>

          <!-- Quick Academic Links -->
          <div style="margin:30px 0 40px 0;">
            <h3 style="font-family:var(--font-head);font-size:1.3rem;color:var(--navy);margin-bottom:16px;">Academic Resources</h3>
            <p style="font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);margin-bottom:16px;">Quick access to important documents and guides.</p>
            <div class="row g-3">
              <div class="col-md-4">
                <div class="dropdown pmc-quick-dropdown">
                  <button type="button"
                    class="pmc-card d-flex align-items-center gap-3 dropdown-toggle"
                    style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);width:100%;text-align:left;"
                    data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="bi bi-calendar3" style="font-size:1.5rem;color:var(--teal);flex-shrink:0;"></i>
                    <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Academic Calendar</div>
                  </button>
                  <ul class="dropdown-menu w-100" style="border-radius:10px;">
                    <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                        href="/assets/uploads/academic-calendar/BDS-1st-Year-Academic-Calander-12-6-2026.pdf"
                        target="_blank" rel="noopener">Academic Calendar of BDS 1st Year</a></li>
                    <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                        href="/assets/uploads/academic-calendar/BDS-2nd-Year-Academic-Calendar-12-6-2026.pdf"
                        target="_blank" rel="noopener">Academic Calendar of BDS 2nd Year</a></li>
                    <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                        href="/assets/uploads/academic-calendar/BDS-3rd-Year-Accademic-Calendar.pdf"
                        target="_blank" rel="noopener">Academic Calendar of BDS 3rd Year</a></li>
                    <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                        href="/assets/uploads/academic-calendar/BDS-4th-Year-Academic-Calendar-year-2026-27-18-5-26.pdf"
                        target="_blank" rel="noopener">Academic Calendar of BDS 4th Year</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-4">
                <a href="/student-guide" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                  style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                  <i class="bi bi-book-fill" style="font-size:1.5rem;color:var(--teal);flex-shrink:0;"></i>
                  <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Guideline for Student</div>
                </a>
              </div>
              <div class="col-md-4">
                <a href="/curriculum" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                  style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                  <i class="bi bi-journal-text" style="font-size:1.5rem;color:var(--teal);flex-shrink:0;"></i>
                  <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Curriculum</div>
                </a>
              </div>
            </div>
          </div>

          <!-- Dental hospital -->
          <div class="about-block fu" id="hospital">
            <div class="about-block-head">
              <h3>Peshawar Dental Hospital</h3>
              <p>On-campus tertiary care teaching hospital for patient care and student training.</p>
            </div>
            <p>
              The hospital provides continuous clinical exposure for undergraduate and postgraduate students of Riphah International University and CPSP. The Operation Theater runs regularly for oral and maxillofacial surgery. Preclinical skill development takes place in surgical skill and phantom laboratories; clinical skills are developed in small groups under faculty supervision.
            </p>
            <div class="pmc-hosp-grid mt-3">
              <!-- Card 1: Tertiary Dental Care -->
              <button type="button" class="pmc-hosp-card"
                data-images=''[
      {"src":"assets/images/campus/pdc10.jpeg","title":"Tertiary Dental Care 1"},
      {"src":"assets/images/campus/pdc7.jpeg","title":"Tertiary Dental Care 2"}
    ]''
                data-img="assets/images/campus/pdc10.jpeg"
                data-title="Tertiary Dental Care"
                onclick="openPmcSingleLightbox(this)">
                <i class="bi bi-hospital"></i>
                <strong>Tertiary Dental Care</strong>
                <span>Patient care &amp; teaching hospital</span>
              </button>

              <!-- Card 2: Oral & Maxillofacial OT -->
              <button type="button" class="pmc-hosp-card"
                data-images=''[]''
                data-img=""
                data-title="Oral & Maxillofacial OT"
                onclick="openPmcSingleLightbox(this)">
                <i class="bi bi-scissors"></i>
                <strong>Oral &amp; Maxillofacial OT</strong>
                <span>Regular operative lists</span>
              </button>

              <!-- Card 3: Skill Laboratories -->
              <button type="button" class="pmc-hosp-card"
                data-images=''[
      {"src":"assets/images/campus/pdc.jpeg","title":"Skill Laboratories 1"},
      {"src":"assets/images/campus/pdc5.jpeg","title":"Skill Laboratories 2"}
    ]''
                data-img="assets/images/campus/pdc.jpeg"
                data-title="Skill Laboratories"
                onclick="openPmcSingleLightbox(this)">
                <i class="bi bi-clipboard2-pulse"></i>
                <strong>Skill Laboratories</strong>
                <span>Phantom &amp; surgical skills labs</span>
              </button>
            </div>
          </div>

          <!-- Clinical training sites -->
          <div class="about-block fu" id="clinical">
            <div class="about-block-head">
              <h3>Clinical Training Sites</h3>
              <p>Dental hospital training plus rotations at affiliated teaching hospitals.</p>
            </div>
            <div class="pmc-hosp-grid">
              <a class="pmc-hosp-card" href="/pdc#hospital">
                <i class="bi bi-hospital"></i>
                <strong>Peshawar Dental Hospital</strong>
                <span>Primary dental teaching hospital</span>
              </a>
              <a class="pmc-hosp-card" href="https://mth.riphahpsh.edu.pk/" target="_blank" rel="noopener">
                <i class="bi bi-heart-pulse"></i>
                <strong>Mercy Teaching Hospital</strong>
                <span>Affiliated clinical rotations</span>
              </a>
              <a class="pmc-hosp-card" href="https://pth.riphahpsh.edu.pk/" target="_blank" rel="noopener">
                <i class="bi bi-building"></i>
                <strong>Prime Teaching Hospital</strong>
                <span>Affiliated clinical rotations</span>
              </a>
            </div>
          </div>

          <!-- Campus gallery -->
          <div class="about-block fu" id="gallery">
            <div class="about-block-head">
              <h3>Campus Gallery</h3>
              <p>A glimpse of PDC buildings and grounds on Warsak Road.</p>
            </div>
            <div class="pmc-gallery-grid">
              
                <button type="button"
                  class="pmc-gallery-item"
                  data-img=""
                  data-title=""
                  onclick="openPmcLightbox(this)"
                  aria-label="Open ">
                  <img src=""
                    alt=""
                    loading="lazy" decoding="async" />
                  <span class="pmc-gallery-zoom"><i class="bi bi-zoom-in"></i></span>
                </button>
              
            </div>
            <div class="about-cta-row">
              <a href="/gallery" class="btn-pmc btn-pmc-primary"><i class="bi bi-images"></i> Full Photo Gallery</a>
              <a href="/admissions" class="btn-pmc btn-pmc-outline"><i class="bi bi-mortarboard"></i> Admissions</a>
              <a href="/faculty" class="btn-pmc btn-pmc-outline"><i class="bi bi-people"></i> Faculty</a>
            </div>
          </div>

        </div>
      </div>
      
    </div>
  </div>
</section>

<!-- Lightweight lightbox -->
<div class="pmc-lightbox" id="pmcPageLightbox" onclick="closePmcLightboxBackdrop(event)">
  <button type="button" class="lb-close" onclick="closePmcLightbox()" aria-label="Close"><i class="bi bi-x-lg"></i></button>
  <button type="button" class="lb-prev" onclick="pmcLbNav(-1)" aria-label="Previous"><i class="bi bi-chevron-left"></i></button>
  <button type="button" class="lb-next" onclick="pmcLbNav(1)" aria-label="Next"><i class="bi bi-chevron-right"></i></button>
  <div class="lb-inner">
    <div id="pmcLbImgWrap"></div>
    <div class="lb-caption" id="pmcLbCaption"></div>
    <div class="lb-counter" id="pmcLbCounter"></div>
  </div>
</div>

<script>
  let pmcLbItems = [];
  let pmcLbCurrent = 0;

  // For gallery items (elements with data-img)
  function openPmcLightbox(el) {
    pmcLbItems = [...document.querySelectorAll(''.pmc-gallery-item[data-img]'')];
    pmcLbCurrent = Math.max(0, pmcLbItems.indexOf(el));
    renderPmcLightbox();
    document.getElementById(''pmcPageLightbox'').classList.add(''open'');
    document.body.style.overflow = ''hidden'';
  }

  // For hospital cards (single or multiple images via data-images)
  function openPmcSingleLightbox(el) {
    let items = [];
    // Try to parse data-images JSON array
    if (el.dataset.images) {
      try {
        items = JSON.parse(el.dataset.images);
        // Ensure each item has src and title
        items = items.map(item => ({
          src: item.src,
          title: item.title || ''''
        }));
      } catch (e) {
        console.error(''Invalid data-images JSON'', e);
        items = [];
      }
    }
    // Fallback to single data-img / data-title if no valid data-images
    if (items.length === 0 && el.dataset.img) {
      items = [{ src: el.dataset.img, title: el.dataset.title || '''' }];
    }
    // If still no images, do nothing (card is non-clickable)
    if (items.length === 0) return;

    pmcLbItems = items;
    pmcLbCurrent = 0;
    renderPmcLightbox();
    document.getElementById(''pmcPageLightbox'').classList.add(''open'');
    document.body.style.overflow = ''hidden'';
  }

  function closePmcLightbox() {
    document.getElementById(''pmcPageLightbox'').classList.remove(''open'');
    document.body.style.overflow = '''';
  }

  function closePmcLightboxBackdrop(e) {
    if (e.target === document.getElementById(''pmcPageLightbox'')) closePmcLightbox();
  }

  function pmcLbNav(dir) {
    if (!pmcLbItems.length) return;
    pmcLbCurrent = (pmcLbCurrent + dir + pmcLbItems.length) % pmcLbItems.length;
    renderPmcLightbox();
  }

  function renderPmcLightbox() {
    const item = pmcLbItems[pmcLbCurrent];
    if (!item) return;

    // Support both DOM elements (gallery) and plain objects (hospital)
    const img = item.src || item.dataset?.img || '''';
    const title = item.title || item.dataset?.title || '''';

    document.getElementById(''pmcLbImgWrap'').innerHTML =
      `<img src="${img}" class="lb-img" alt="${title}" />`;
    document.getElementById(''pmcLbCaption'').textContent = title;
    document.getElementById(''pmcLbCounter'').textContent =
      `${pmcLbCurrent + 1} / ${pmcLbItems.length}`;
  }

  document.addEventListener(''keydown'', (e) => {
    const box = document.getElementById(''pmcPageLightbox'');
    if (!box || !box.classList.contains(''open'')) return;
    if (e.key === ''Escape'') closePmcLightbox();
    if (e.key === ''ArrowLeft'') pmcLbNav(-1);
    if (e.key === ''ArrowRight'') pmcLbNav(1);
  });
</script>','{"label":"Peshawar Dental College","section":"College","title":"PDC Peshawar | BDS & Peshawar Dental Hospital","description":"BDS in Peshawar at PDC — female dental college with Peshawar Dental Hospital, PM&DC\/HEC recognition, and clinical training since 2010.","priority":"0.95","changefreq":"monthly","schema":"Course","course_name":"BDS"}','published',0.95,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46','Department of Dental Sciences
 Peshawar Dental College
 
 Home
 
 About
 
 Peshawar Dental College
 
 
 
 
 
 
 
 
 




 
 
 
 

 
 
 College Profile
 Peshawar Dental College
 
 The undergraduate dental college of the Department of Dental Sciences — a female-only BDS programme with ethics-centred teaching and hospital-based clinical training. Peshawar Dental College is a leading dental college in Peshawar and a recognised BDS college in Pakistan — PM&DC and HEC recognized since 2010, with its own Peshawar Dental Hospital.
 
 
 Established in 2010 and recognized by the Federal Ministry of Health, PM&DC, and HEC, PDC prepares dentists who are professionally competent, research-minded, and attentive to community oral health needs.
 
 
 More than 450 graduates have qualified from the College. The principal focus is undergraduate education, with facilities also supporting postgraduate learners of university and CPSP programmes. An integrated modular BDS system has been in place since session 2019–2020, with Undergraduate Medical Research (UMR) as a regular component.
 
 
 For department overview and campus location, see Introduction. Values are on Vision & Mission.
 
 

 
 
 
 
 
 PM&DC · HEC
 Recognised college
 
 
 
 
 
 BDS Programme
 Four-year undergraduate
 
 
 
 
 
 Female Students
 Dedicated college intake
 
 
 
 
 
 500+ Graduates
 Serving KP & beyond
 
 
 

 
 
 
 BDS Programme Highlights
 What shapes teaching and learning at Peshawar Dental College.
 
 
 Four-year BDS with integrated modular system (from 2019–20)
 Professional knowledge with ethical values as a priority
 UMR as a regular part of undergraduate education
 Experienced faculty and well-equipped departments
 Library, laboratories, and skill-lab support
 Co-curricular: camps, seminars, sports & literary week
 
 

 
 
 Academic Resources
 Quick access to important documents and guides.
 
 
 
 
 
 Academic Calendar
 
 
 Academic Calendar of BDS 1st Year
 Academic Calendar of BDS 2nd Year
 Academic Calendar of BDS 3rd Year
 Academic Calendar of BDS 4th Year
 
 
 
 
 
 
 Guideline for Student
 
 
 
 
 
 Curriculum
 
 
 
 

 
 
 
 Peshawar Dental Hospital
 On-campus tertiary care teaching hospital for patient care and student training.
 
 
 The hospital provides continuous clinical exposure for undergraduate and postgraduate students of Riphah International University and CPSP. The Operation Theater runs regularly for oral and maxillofacial surgery. Preclinical skill development takes place in surgical skill and phantom laboratories; clinical skills are developed in small groups under faculty supervision.
 
 
 
 
 
 Tertiary Dental Care
 Patient care & teaching hospital
 

 
 
 
 Oral & Maxillofacial OT
 Regular operative lists
 

 
 
 
 Skill Laboratories
 Phantom & surgical skills labs
 
 
 

 
 
 
 Clinical Training Sites
 Dental hospital training plus rotations at affiliated teaching hospitals.
 
 
 
 
 Peshawar Dental Hospital
 Primary dental teaching hospital
 
 
 
 Mercy Teaching Hospital
 Affiliated clinical rotations
 
 
 
 Prime Teaching Hospital
 Affiliated clinical rotations
 
 
 

 
 
 
 Campus Gallery
 A glimpse of PDC buildings and grounds on Warsak Road.
 
 
 
 
 
 
 
 
 
 
 Full Photo Gallery
 Admissions
 Faculty
 
 

 
 
 
 
 




 
 
 
 
 
 
 
 



 let pmcLbItems = [];
 let pmcLbCurrent = 0;

 // For gallery items (elements with data-img)
 function openPmcLightbox(el) {
 pmcLbItems = [...document.querySelectorAll(''.pmc-gallery-item[data-img]'')];
 pmcLbCurrent = Math.max(0, pmcLbItems.indexOf(el));
 renderPmcLightbox();
 document.getElementById(''pmcPageLightbox'').classList.add(''open'');
 document.body.style.overflow = ''hidden'';
 }

 // For hospital cards (single or multiple images via data-images)
 function openPmcSingleLightbox(el) {
 let items = [];
 // Try to parse data-images JSON array
 if (el.dataset.images) {
 try {
 items = JSON.parse(el.dataset.images);
 // Ensure each item has src and title
 items = items.map(item => ({
 src: item.src,
 title: item.title || ''''
 }));
 } catch (e) {
 console.error(''Invalid data-images JSON'', e);
 items = [];
 }
 }
 // Fallback to single data-img / data-title if no valid data-images
 if (items.length === 0 && el.dataset.img) {
 items = [{ src: el.dataset.img, title: el.dataset.title || '''' }];
 }
 // If still no images, do nothing (card is non-clickable)
 if (items.length === 0) return;

 pmcLbItems = items;
 pmcLbCurrent = 0;
 renderPmcLightbox();
 document.getElementById(''pmcPageLightbox'').classList.add(''open'');
 document.body.style.overflow = ''hidden'';
 }

 function closePmcLightbox() {
 document.getElementById(''pmcPageLightbox'').classList.remove(''open'');
 document.body.style.overflow = '''';
 }

 function closePmcLightboxBackdrop(e) {
 if (e.target === document.getElementById(''pmcPageLightbox'')) closePmcLightbox();
 }

 function pmcLbNav(dir) {
 if (!pmcLbItems.length) return;
 pmcLbCurrent = (pmcLbCurrent + dir + pmcLbItems.length) % pmcLbItems.length;
 renderPmcLightbox();
 }

 function renderPmcLightbox() {
 const item = pmcLbItems[pmcLbCurrent];
 if (!item) return;

 // Support both DOM elements (gallery) and plain objects (hospital)
 const img = item.src || item.dataset?.img || '''';
 const title = item.title || item.dataset?.title || '''';

 document.getElementById(''pmcLbImgWrap'').innerHTML =
 ``;
 document.getElementById(''pmcLbCaption'').textContent = title;
 document.getElementById(''pmcLbCounter'').textContent =
 `${pmcLbCurrent + 1} / ${pmcLbItems.length}`;
 }

 document.addEventListener(''keydown'', (e) => {
 const box = document.getElementById(''pmcPageLightbox'');
 if (!box || !box.classList.contains(''open'')) return;
 if (e.key === ''Escape'') closePmcLightbox();
 if (e.key === ''ArrowLeft'') pmcLbNav(-1);
 if (e.key === ''ArrowRight'') pmcLbNav(1);
 });',1),
(3,'about','About PDC | Dental College in Peshawar since 2010','About Us','College','About Peshawar Dental College: dental education in Peshawar since 2010, 450+ graduates, PM&DC/HEC recognition, and Peshawar Dental Hospital.','about','<!-- PAGE HERO -->
<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>About Us</h1>
    <div class="breadcrumb-pmc">
      <a href="/">Home</a>
      <span class="sep"><i class="bi bi-chevron-right"></i></span>
      <span class="current">Introduction</span>
    </div>
  </div>
</div>

<!-- MAIN CONTENT -->
<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <!-- Content -->
      <div class="col-lg-8">
        <div class="page-content fu">

          <h2 class="sec-title" style="font-size:1.8rem;">Department of Dental Sciences</h2>
          <p style="font-size:.95rem;color:var(--muted,#64748b);">A constituent department of <strong>Riphah International University – Peshawar Campus</strong> · <strong>Peshawar Dental College</strong></p>

          <p>The Department of Dental Sciences is a constituent department of Riphah International University – Peshawar Campus and comprises <strong>Peshawar Dental College</strong>. Established in 2010, it is recognized by the Federal Ministry of Health, PM&amp;DC, and HEC. The College is for female students only, with a student-centred aim of producing dentists who are professionally competent, ethically grounded, research-minded, and community-aware.</p>

          <p>Peshawar Dental College has graduated more than 450 dentists and continues to serve students and communities in KP through academic, social, and research activities. Postgraduate M.Phil programmes in basic dental sciences are now open.</p>

          <p>The College conducts a four-year BDS programme with an integrated modular system from session 2019–2020. The programme emphasizes professional knowledge, skill development, and ethical values. Undergraduate research (UMR) is a regular component. Faculty, departments, library, and laboratories support teaching and learning.</p>

          <p>Peshawar Dental College has its own tertiary care teaching hospital in Peshawar (Peshawar Dental Hospital), providing patient care and training for undergraduate and postgraduate students. Preclinical skills are developed in surgical skill and phantom laboratories; clinical skills are taught in small groups under faculty supervision. Students also rotate at affiliated teaching hospitals, including Mercy Teaching Hospital and Prime Teaching Hospital.</p>

          <p>Co-curricular activities include seminars, workshops, oral health awareness visits, free dental camps, Social Welfare Society activities, sports, and literary events.</p>

          <h5>Location of College Campus</h5>
          <p>The College is located on Warsak Road, near St. Mary''s school and a short distance from Peshawar Medical College, adjacent to Prime Teaching Hospital. The campus spreads over about 25 kanals with administrative offices, teaching complex, libraries, laboratories, and cafeteria. Excellent indoor and outdoor sports facilities are available.</p>
          <p>The college is easily accessible from the cantonment railway station, the city main bus terminal and the Peshawar International Airport.</p>
          <p>Warsak road is a dual carriage road, with public buses plying on it, throughout the day and late night. There is a local shopping center adjacent to the college, while the main shopping mall of Sadder is at a close distance. Captain Sher Khan Shaheed stadium on Jamrud road, Warsak dam, and Michini riveria on Kabul River, are at the doorstep'' of the college and are popular recreation sites.</p>
          <p>Hostel accommodation for girl''s students is available on college campus.</p>
          <!-- Embedded text ends here -->

          <!-- Map -->
          <div class="ratio ratio-16x9 rounded-3 overflow-hidden mt-4 mb-4">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3306.2492805215134!2d71.52763747583583!3d34.03747611850975!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38d9165e1e147611%3A0x625c2da58dc42580!2sPeshawar%20Dental%20College!5e0!3m2!1sen!2ssg!4v1785495257647!5m2!1sen!2ssg"
              allowfullscreen loading="lazy"></iframe>
          </div>

          <!-- Campus Life -->
          <h5 id="campus">Life at Campus</h5>
          <div class="row g-3 mt-2">
            <div class="col-6 col-md-4">
              <div class="pmc-card p-3" style="border-radius:12px; cursor:pointer;"
                data-img="assets/images/pdc/library1.png"
                data-title="Library & LRC"
                onclick="openPmcSingleLightbox(this)">
                <div class="text-center">
                  <i class="bi bi-book-half" style="font-size:1.6rem;color:var(--teal);"></i>
                  <div style="font-family:var(--font-head);font-size:.8rem;font-weight:700;color:var(--navy);margin-top:8px;">Library & LRC</div>
                </div>
              </div>
            </div>
            <div class="col-6 col-md-4">
              <div class="pmc-card p-3" style="border-radius:12px; cursor:pointer;"
                data-img="assets/images/campus/girls-hostel.png"
                data-title="Girls Hostel"
                onclick="openPmcSingleLightbox(this)">
                <div class="text-center">
                  <i class="bi bi-house-heart" style="font-size:1.6rem;color:var(--teal);"></i>
                  <div style="font-family:var(--font-head);font-size:.8rem;font-weight:700;color:var(--navy);margin-top:8px;">Girls Hostel</div>
                </div>
              </div>
            </div>
            <div class="col-6 col-md-4">
              <div class="pmc-card p-3" style="border-radius:12px; cursor:pointer;"
                data-img="assets/images/campus/gym-pmc.png"
                data-title="Sports & Gym"
                onclick="openPmcSingleLightbox(this)">
                <div class="text-center">
                  <i class="bi bi-trophy" style="font-size:1.6rem;color:var(--teal);"></i>
                  <div style="font-family:var(--font-head);font-size:.8rem;font-weight:700;color:var(--navy);margin-top:8px;">Sports & Gym</div>
                </div>
              </div>
            </div>
            <div class="col-6 col-md-4">
              <div class="pmc-card p-3" style="border-radius:12px; cursor:pointer;"
                data-img="assets/images/pdc/cafe.png"
                data-title="Cafeteria"
                onclick="openPmcSingleLightbox(this)">
                <div class="text-center">
                  <i class="bi bi-cup-hot" style="font-size:1.6rem;color:var(--teal);"></i>
                  <div style="font-family:var(--font-head);font-size:.8rem;font-weight:700;color:var(--navy);margin-top:8px;">Cafeteria</div>
                </div>
              </div>
            </div>
            <div class="col-6 col-md-4">
              <div class="pmc-card p-3" style="border-radius:12px; cursor:pointer;"
                data-img="assets/images/pdc/masjid.png"
                data-title="Masjid"
                onclick="openPmcSingleLightbox(this)">
                <div class="text-center">
                  <i class="bi bi-moon-stars" style="font-size:1.6rem;color:var(--teal);"></i>
                  <div style="font-family:var(--font-head);font-size:.8rem;font-weight:700;color:var(--navy);margin-top:8px;">Masjid</div>
                </div>
              </div>
            </div>
            <div class="col-6 col-md-4">
              <div class="pmc-card p-3" style="border-radius:12px; cursor:pointer;"
                data-img="assets/images/campus/pdc-transport.png"
                data-title="Transportation"
                onclick="openPmcSingleLightbox(this)">
                <div class="text-center">
                  <i class="bi bi-bus-front" style="font-size:1.6rem;color:var(--teal);"></i>
                  <div style="font-family:var(--font-head);font-size:.8rem;font-weight:700;color:var(--navy);margin-top:8px;">Transportation</div>
                </div>
              </div>
            </div>
            <div class="col-6 col-md-4">
              <div class="pmc-card p-3" style="border-radius:12px; cursor:pointer;"
                data-img="assets/images/pdc/daycare.png"
                data-title="Day Care Center"
                onclick="openPmcSingleLightbox(this)">
                <div class="text-center">
                  <i class="bi bi-balloon-heart" style="font-size:1.6rem;color:var(--teal);"></i>
                  <div style="font-family:var(--font-head);font-size:.8rem;font-weight:700;color:var(--navy);margin-top:8px;">Day Care Center</div>
                </div>
              </div>
            </div>
            <div class="col-6 col-md-4">
              <div class="pmc-card p-3" style="border-radius:12px; cursor:pointer;"
                data-img="assets/images/pdc/first-aid.png"
                data-title="First Aid & Counseling"
                onclick="openPmcSingleLightbox(this)">
                <div class="text-center">
                  <i class="bi bi-heart-pulse" style="font-size:1.6rem;color:var(--teal);"></i>
                  <div style="font-family:var(--font-head);font-size:.8rem;font-weight:700;color:var(--navy);margin-top:8px;">First Aid & Counseling</div>
                </div>
              </div>
            </div>
            <div class="col-6 col-md-4">
              <div class="pmc-card p-3" style="border-radius:12px; cursor:pointer;"
                data-img="assets/images/campus/pdc11.jpeg"
                data-title="Security"
                onclick="openPmcSingleLightbox(this)">
                <div class="text-center">
                  <i class="bi bi-shield-check" style="font-size:1.6rem;color:var(--teal);"></i>
                  <div style="font-family:var(--font-head);font-size:.8rem;font-weight:700;color:var(--navy);margin-top:8px;">Security</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Sidebar -->
      
    </div>
  </div>
</section>
<!-- Lightweight lightbox -->
<div class="pmc-lightbox" id="pmcPageLightbox" onclick="closePmcLightboxBackdrop(event)">
  <button type="button" class="lb-close" onclick="closePmcLightbox()" aria-label="Close"><i class="bi bi-x-lg"></i></button>
  <button type="button" class="lb-prev" onclick="pmcLbNav(-1)" aria-label="Previous"><i class="bi bi-chevron-left"></i></button>
  <button type="button" class="lb-next" onclick="pmcLbNav(1)" aria-label="Next"><i class="bi bi-chevron-right"></i></button>
  <div class="lb-inner">
    <div id="pmcLbImgWrap"></div>
    <div class="lb-caption" id="pmcLbCaption"></div>
    <div class="lb-counter" id="pmcLbCounter"></div>
  </div>
</div>

<script>
  let pmcLbItems = [];
  let pmcLbCurrent = 0;

  function openPmcLightbox(el) {
    pmcLbItems = [...document.querySelectorAll(''.pmc-gallery-item[data-img]'')];
    pmcLbCurrent = Math.max(0, pmcLbItems.indexOf(el));
    renderPmcLightbox();
    document.getElementById(''pmcPageLightbox'').classList.add(''open'');
    document.body.style.overflow = ''hidden'';
  }

  function openPmcSingleLightbox(el) {
    pmcLbItems = [el];
    pmcLbCurrent = 0;
    renderPmcLightbox();
    document.getElementById(''pmcPageLightbox'').classList.add(''open'');
    document.body.style.overflow = ''hidden'';
  }

  function closePmcLightbox() {
    document.getElementById(''pmcPageLightbox'').classList.remove(''open'');
    document.body.style.overflow = '''';
  }

  function closePmcLightboxBackdrop(e) {
    if (e.target === document.getElementById(''pmcPageLightbox'')) closePmcLightbox();
  }

  function pmcLbNav(dir) {
    if (!pmcLbItems.length) return;
    pmcLbCurrent = (pmcLbCurrent + dir + pmcLbItems.length) % pmcLbItems.length;
    renderPmcLightbox();
  }

  function renderPmcLightbox() {
    const el = pmcLbItems[pmcLbCurrent];
    if (!el) return;
    const img = el.dataset.img || '''';
    const title = el.dataset.title || '''';
    document.getElementById(''pmcLbImgWrap'').innerHTML =
      `<img src="${img}" class="lb-img" alt="${title}" />`;
    document.getElementById(''pmcLbCaption'').textContent = title;
    document.getElementById(''pmcLbCounter'').textContent = `${pmcLbCurrent + 1} / ${pmcLbItems.length}`;
  }

  document.addEventListener(''keydown'', (e) => {
    const box = document.getElementById(''pmcPageLightbox'');
    if (!box || !box.classList.contains(''open'')) return;
    if (e.key === ''Escape'') closePmcLightbox();
    if (e.key === ''ArrowLeft'') pmcLbNav(-1);
    if (e.key === ''ArrowRight'') pmcLbNav(1);
  });
</script>','{"label":"About Us","section":"College","title":"About PDC | Dental College in Peshawar since 2010","description":"About Peshawar Dental College: dental education in Peshawar since 2010, 450+ graduates, PM&DC\/HEC recognition, and Peshawar Dental Hospital.","priority":"0.8","changefreq":"monthly"}','published',0.8,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46','About Us
 
 Home
 
 Introduction
 
 




 
 
 
 
 

 Department of Dental Sciences
 A constituent department of Riphah International University – Peshawar Campus · Peshawar Dental College

 The Department of Dental Sciences is a constituent department of Riphah International University – Peshawar Campus and comprises Peshawar Dental College. Established in 2010, it is recognized by the Federal Ministry of Health, PM&DC, and HEC. The College is for female students only, with a student-centred aim of producing dentists who are professionally competent, ethically grounded, research-minded, and community-aware.

 Peshawar Dental College has graduated more than 450 dentists and continues to serve students and communities in KP through academic, social, and research activities. Postgraduate M.Phil programmes in basic dental sciences are now open.

 The College conducts a four-year BDS programme with an integrated modular system from session 2019–2020. The programme emphasizes professional knowledge, skill development, and ethical values. Undergraduate research (UMR) is a regular component. Faculty, departments, library, and laboratories support teaching and learning.

 Peshawar Dental College has its own tertiary care teaching hospital in Peshawar (Peshawar Dental Hospital), providing patient care and training for undergraduate and postgraduate students. Preclinical skills are developed in surgical skill and phantom laboratories; clinical skills are taught in small groups under faculty supervision. Students also rotate at affiliated teaching hospitals, including Mercy Teaching Hospital and Prime Teaching Hospital.

 Co-curricular activities include seminars, workshops, oral health awareness visits, free dental camps, Social Welfare Society activities, sports, and literary events.

 Location of College Campus
 The College is located on Warsak Road, near St. Mary''s school and a short distance from Peshawar Medical College, adjacent to Prime Teaching Hospital. The campus spreads over about 25 kanals with administrative offices, teaching complex, libraries, laboratories, and cafeteria. Excellent indoor and outdoor sports facilities are available.
 The college is easily accessible from the cantonment railway station, the city main bus terminal and the Peshawar International Airport.
 Warsak road is a dual carriage road, with public buses plying on it, throughout the day and late night. There is a local shopping center adjacent to the college, while the main shopping mall of Sadder is at a close distance. Captain Sher Khan Shaheed stadium on Jamrud road, Warsak dam, and Michini riveria on Kabul River, are at the doorstep'' of the college and are popular recreation sites.
 Hostel accommodation for girl''s students is available on college campus.
 

 
 
 
 

 
 Life at Campus
 
 
 
 
 
 Library & LRC
 
 
 
 
 
 
 
 Girls Hostel
 
 
 
 
 
 
 
 Sports & Gym
 
 
 
 
 
 
 
 Cafeteria
 
 
 
 
 
 
 
 Masjid
 
 
 
 
 
 
 
 Transportation
 
 
 
 
 
 
 
 Day Care Center
 
 
 
 
 
 
 
 First Aid & Counseling
 
 
 
 
 
 
 
 Security
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 



 let pmcLbItems = [];
 let pmcLbCurrent = 0;

 function openPmcLightbox(el) {
 pmcLbItems = [...document.querySelectorAll(''.pmc-gallery-item[data-img]'')];
 pmcLbCurrent = Math.max(0, pmcLbItems.indexOf(el));
 renderPmcLightbox();
 document.getElementById(''pmcPageLightbox'').classList.add(''open'');
 document.body.style.overflow = ''hidden'';
 }

 function openPmcSingleLightbox(el) {
 pmcLbItems = [el];
 pmcLbCurrent = 0;
 renderPmcLightbox();
 document.getElementById(''pmcPageLightbox'').classList.add(''open'');
 document.body.style.overflow = ''hidden'';
 }

 function closePmcLightbox() {
 document.getElementById(''pmcPageLightbox'').classList.remove(''open'');
 document.body.style.overflow = '''';
 }

 function closePmcLightboxBackdrop(e) {
 if (e.target === document.getElementById(''pmcPageLightbox'')) closePmcLightbox();
 }

 function pmcLbNav(dir) {
 if (!pmcLbItems.length) return;
 pmcLbCurrent = (pmcLbCurrent + dir + pmcLbItems.length) % pmcLbItems.length;
 renderPmcLightbox();
 }

 function renderPmcLightbox() {
 const el = pmcLbItems[pmcLbCurrent];
 if (!el) return;
 const img = el.dataset.img || '''';
 const title = el.dataset.title || '''';
 document.getElementById(''pmcLbImgWrap'').innerHTML =
 ``;
 document.getElementById(''pmcLbCaption'').textContent = title;
 document.getElementById(''pmcLbCounter'').textContent = `${pmcLbCurrent + 1} / ${pmcLbItems.length}`;
 }

 document.addEventListener(''keydown'', (e) => {
 const box = document.getElementById(''pmcPageLightbox'');
 if (!box || !box.classList.contains(''open'')) return;
 if (e.key === ''Escape'') closePmcLightbox();
 if (e.key === ''ArrowLeft'') pmcLbNav(-1);
 if (e.key === ''ArrowRight'') pmcLbNav(1);
 });',1),
(4,'admissions','PDC Admission | KMU BDS for Girls in Peshawar','Admissions','Academics','PDC admission for female BDS via KMU and PM&DC. Girls BDS at a private dental college in Peshawar with Peshawar Dental Hospital training.','admissions','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Admissions 2026-27</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Admissions 2026-27</span></div>
  </div>
</div>

<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">

          <!-- College Introduction -->
          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">
            The Peshawar Dental College, through Khyber Medical University (KMU), in accordance with the rules and regulations of the Pakistan Medical and Dental Council (PM&DC). offers merit-based admissions to the Bachelor of Dental Surgery (BDS) programme for female students. The transparent admission process aims to produce dentists who are professionally competent, ethically grounded, and committed to community oral health.
          </p>
          <!-- <p style="font-size:.9rem;margin-bottom:1.25rem;">
            <a href="https://riphahpsh.edu.pk/admissions.php" target="_blank" rel="noopener">Campus admissions hub</a> ·
            Prospectus and fee PDFs remain available via the links below (hosted on legacy download servers).
            <a href="/pg-dental-education">Postgraduate dental programmes</a> are open for Fall 2026
            (apply by <strong>03 Sep 2026</strong>).
            <a href="assets/images/news/PG-Admission-Form-Dental-Sciences.pdf" target="_blank" rel="noopener">Admission form</a>
            ·
            <a href="assets/images/news/pg-medical-dental-ad-fall-2026.png" target="_blank" rel="noopener">Advertisement</a>.
          </p> -->

          <!-- KMU & Quota Note -->
          <div class="pmc-card mb-4"
            style="border-radius:12px;background:linear-gradient(135deg,var(--navy),var(--navy-mid));color:white;border:none;padding:20px 24px;">
            <p
              style="font-family:var(--font-body);font-size:.88rem;color:rgba(255,255,255,.9);margin-bottom:12px;line-height:1.7;">
              <i class="bi bi-info-circle-fill" style="color:var(--gold-light);margin-right:6px;"></i>
              Admissions to private-sector MBBS and BDS programs in Khyber Pakhtunkhwa are conducted through
              <strong>Khyber Medical University (KMU)</strong> in accordance with the rules and regulations of the
              <strong>Pakistan Medical and Dental Council (PM&DC)</strong>.
            </p>
            <div class="row g-3" style="margin-top:8px;">
              <div class="col-6 text-center" style="padding:10px;background:rgba(255,255,255,.08);border-radius:8px;">
                <div style="font-family:var(--font-head);font-size:1.4rem;font-weight:900;color:var(--gold-light);">15%
                </div>
                <div
                  style="font-family:var(--font-body);font-size:.7rem;color:rgba(255,255,255,.6);text-transform:uppercase;letter-spacing:.05em;">
                  Overseas Pakistanis Quota</div>
              </div>
              <div class="col-6 text-center" style="padding:10px;background:rgba(255,255,255,.08);border-radius:8px;">
                <div style="font-family:var(--font-head);font-size:1.4rem;font-weight:900;color:var(--teal-light);">5%
                </div>
                <div
                  style="font-family:var(--font-body);font-size:.7rem;color:rgba(255,255,255,.6);text-transform:uppercase;letter-spacing:.05em;">
                  Foreign Nationals Quota</div>
              </div>
            </div>
          </div>

          <!-- Quick Stats Card -->
          <div class="pmc-card mb-4" style="border-radius:12px;background:#fff;border:1px solid var(--border-color);">
            <div class="row g-3">
              <div class="col-6 col-md-3 text-center" style="padding:16px;border-right:1px solid var(--border-color);">
                <div style="font-family:var(--font-head);font-size:1.6rem;font-weight:900;color:var(--navy);">BDS</div>
                <div
                  style="font-family:var(--font-body);font-size:.72rem;color:var(--gray-mid);text-transform:uppercase;letter-spacing:.06em;margin-top:4px;">
                  Program</div>
              </div>
              <div class="col-6 col-md-3 text-center" style="padding:16px;border-right:1px solid var(--border-color);">
                <div style="font-family:var(--font-head);font-size:1.6rem;font-weight:900;color:var(--navy);">4 Years
                </div>
                <div
                  style="font-family:var(--font-body);font-size:.72rem;color:var(--gray-mid);text-transform:uppercase;letter-spacing:.06em;margin-top:4px;">
                  Duration</div>
              </div>
              <div class="col-6 col-md-3 text-center" style="padding:16px;border-right:1px solid var(--border-color);">
                <div style="font-family:var(--font-head);font-size:1.6rem;font-weight:900;color:var(--teal);">KMU</div>
                <div
                  style="font-family:var(--font-body);font-size:.72rem;color:var(--gray-mid);text-transform:uppercase;letter-spacing:.06em;margin-top:4px;">
                  Admission Through</div>
              </div>
              <div class="col-6 col-md-3 text-center" style="padding:16px;">
                <div style="font-family:var(--font-head);font-size:1.6rem;font-weight:900;color:var(--gold);">Open</div>
                <div
                  style="font-family:var(--font-body);font-size:.72rem;color:var(--gray-mid);text-transform:uppercase;letter-spacing:.06em;margin-top:4px;">
                  Applications</div>
              </div>
            </div>
          </div>

          <!-- 1. Eligibility Criteria -->
          <h2 class="sec-title" style="font-size:1.5rem;" id="eligibility">1. Eligibility Criteria</h2>
          <h5>For Open Merit</h5>
          <ul class="checklist" style="list-style:none;padding-left:0;">
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>The candidate must have passed obtaining <strong>minimum 60% marks</strong> in Higher Secondary
                School Certificate or FSc (Pre-Medical) 12th grade or equivalent qualification from any BISE in Pakistan
                or abroad.</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Candidates who have passed <strong>MDCAT-2024, 2025 or MDCAT-2026</strong> with minimum <strong>50% marks for BDS</strong>.</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Candidates having <strong>domicile of Khyber Pakhtunkhwa / Merged Districts (MDs)</strong>.</span>
            </li>
            <h5>For Foreign Quota</h5>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Candidates applying for <strong>Foreign quota seats</strong> must fulfill eligibility criteria as
                laid down in section (7) of PM&DC undergraduate education (Admissions, Curriculum and Conduct) Policy &
                Regulations 2023 and subsequent Notification issued by PM&DC No PF-1-C-PM&DC/Notification/2025/910 Dated
                <strong>31st October, 2025</strong>.</span>
            </li>
          </ul>

          <!-- 2. Merit Weightage -->
          <h2 class="sec-title" style="font-size:1.5rem;" id="merit">2. Merit Weightage</h2>
          <p style="font-family:var(--font-body);font-size:.88rem;color:var(--gray-mid);margin-bottom:16px;">As per
            Pakistan Medical & Dental Council (PM&DC) criteria:</p>
          <div class="pmc-card mb-4"
            style="border-radius:12px;background:#fff;border:1px solid var(--border-color);overflow:hidden;">
            <table style="width:100%;border-collapse:collapse;font-family:var(--font-body);font-size:.9rem;">
              <thead>
                <tr style="background:var(--navy);color:white;">
                  <th style="padding:14px 18px;text-align:left;font-weight:700;">Component</th>
                  <th style="padding:14px 18px;text-align:center;font-weight:700;">Weightage</th>
                </tr>
              </thead>
              <tbody>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:14px 18px;color:var(--gray-dark);">MDCAT / SAT II / Foreign MCAT / UCAT</td>
                  <td
                    style="padding:14px 18px;text-align:center;font-weight:700;color:var(--navy);font-family:var(--font-head);font-size:1.1rem;">
                    50%</td>
                </tr>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:14px 18px;color:var(--gray-dark);">HSSC or Equivalent</td>
                  <td
                    style="padding:14px 18px;text-align:center;font-weight:700;color:var(--navy);font-family:var(--font-head);font-size:1.1rem;">
                    40%</td>
                </tr>
                <tr>
                  <td style="padding:14px 18px;color:var(--gray-dark);">Matric / SSC or Equivalent</td>
                  <td
                    style="padding:14px 18px;text-align:center;font-weight:700;color:var(--navy);font-family:var(--font-head);font-size:1.1rem;">
                    10%</td>
                </tr>
              </tbody>
            </table>
          </div>

          <!-- 3. Admission Procedure -->
          <h2 class="sec-title" style="font-size:1.5rem;" id="procedure">3. Admission Procedure</h2>
          <div class="pmc-card mb-4"
            style="border-radius:12px;background:#f8fafb;border:1px solid var(--border-color);padding:20px 24px;">
            <p style="font-family:var(--font-body);font-size:.88rem;color:var(--gray-dark);margin-bottom:14px;">
              <i class="bi bi-link-45deg" style="color:var(--teal);font-size:1.1rem;margin-right:4px;"></i>
              <strong>Visit:</strong> <a href="https://caspr.kmu.edu.pk" target="_blank"
                style="color:var(--navy);text-decoration:underline;">caspr.kmu.edu.pk</a>
            </p>
            <ol
              style="font-family:var(--font-body);font-size:.9rem;color:var(--gray-dark);line-height:2;padding-left:22px;margin-bottom:0;">
              <li>Register / Create an Account</li>
              <li>Fill online application form</li>
              <li>Select Peshawar Dental College (PDC)</li>
              <li>Upload required documents</li>
              <li>Pay online application fee</li>
              <li>Submit form and download acknowledgment slip</li>
            </ol>
          </div>

          <!-- 4. Important Dates -->
          <h2 class="sec-title" style="font-size:1.5rem;" id="dates">4. Dates to be Noted</h2>
          <div class="pmc-card mb-4"
            style="border-radius:12px;background:#fff;border:1px solid var(--border-color);overflow:hidden;">
            <table style="width:100%;border-collapse:collapse;font-family:var(--font-body);font-size:.88rem;">
              <thead>
                <tr style="background:var(--navy-light, #1a3a5c);color:white;">
                  <th style="padding:12px 18px;text-align:left;font-weight:700;">Event</th>
                  <th style="padding:12px 18px;text-align:right;font-weight:700;">Date</th>
                </tr>
              </thead>
              <tbody>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:11px 18px;color:var(--gray-dark);">Admission Portal Opens</td>
                  <td style="padding:11px 18px;text-align:right;font-weight:600;color:var(--navy);">06 October 2026
                  </td>
                </tr>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:11px 18px;color:var(--gray-dark);">Last Date for Submission</td>
                  <td style="padding:11px 18px;text-align:right;font-weight:600;color:#d32f2f;">09 November 2026</td>
                </tr>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:11px 18px;color:var(--gray-dark);">Provisional Merit List</td>
                  <td style="padding:11px 18px;text-align:right;font-weight:600;color:var(--navy);">11 November 2025
                  </td>
                </tr>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:11px 18px;color:var(--gray-dark);">Submission of Online Objections / Claims</td>
                  <td style="padding:11px 18px;text-align:right;font-weight:600;color:var(--navy);">11 - 12 November 2026</td>
                </tr>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:11px 18px;color:var(--gray-dark);">Meeting of appellate Scrutiny Committee for objections/ claims/ complaints</td>
                  <td style="padding:11px 18px;text-align:right;font-weight:600;color:var(--navy);">16 November 2026</td>
                </tr>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:11px 18px;color:var(--gray-dark);">Final Merit List</td>
                  <td style="padding:11px 18px;text-align:right;font-weight:600;color:var(--navy);">24 November 2026
                  </td>
                </tr>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:11px 18px;color:var(--gray-dark);">Placement in Colleges</td>
                  <td style="padding:11px 18px;text-align:right;font-weight:600;color:var(--navy);">08 - 12 December 2026</td>
                </tr>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:11px 18px;color:var(--gray-dark);">Second round of placement on all vacant seats</td>
                  <td style="padding:11px 18px;text-align:right;font-weight:600;color:var(--navy);">21 - 24 December 2026</td>
                </tr>
                <tr style="border-bottom:1px solid var(--border-color);">
                  <td style="padding:11px 18px;color:var(--gray-dark);">Third round of placement on all vacant seats</td>
                  <td style="padding:11px 18px;text-align:right;font-weight:600;color:var(--navy);">04 - 07 January 2027</td>
                </tr>
              </tbody>
            </table>
          </div>

          <!-- 5. Required Documents -->
          <h2 class="sec-title" style="font-size:1.5rem;" id="documents">5. Required Documents</h2>
          <ul class="checklist" style="list-style:none;padding-left:0;">
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:10px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-file-earmark-text-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Matric & F.Sc certificates</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:10px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-file-earmark-text-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>MDCAT result card</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:10px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-file-earmark-text-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Domicile & CNIC / B-Form</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:10px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-file-earmark-text-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Passport-size photo</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:10px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-file-earmark-text-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>IBCC equivalence (for foreign students)</span>
            </li>
          </ul>

          <!-- CTA -->
          <!-- <a href="https://caspr.kmu.edu.pk" target="_blank" class="btn-pmc btn-pmc-primary mt-3"
            style="font-size:.9rem;padding:12px 24px;">
            <i class="bi bi-box-arrow-up-right"></i> Apply Now at caspr.kmu.edu.pk
          </a>
          <a href="/contact" class="btn-pmc btn-pmc-outline mt-3 ms-2" style="font-size:.9rem;padding:12px 24px;">
            <i class="bi bi-envelope"></i> Contact Admissions Office
          </a> -->
          <div class="adm-cta-row fu">
            <a href="https://caspr.kmu.edu.pk/" target="_blank" class="btn-pmc btn-pmc-primary">
              <i class="bi bi-send"></i> Apply Now
            </a>
            <a href="/assets/images/news/kmu-mbbs-bds-admissions.jpeg" class="btn-pmc btn-pmc-outline">
              <i class="bi bi-download"></i> Advertisement
            </a>
            <!-- <a href="assets/images/news/PG-Admission-Form-Medical-Sciences.pdf" target="_blank" rel="noopener" class="btn-pmc btn-pmc-outline">
              <i class="bi bi-file-earmark-pdf"></i> MPhil Form
            </a> -->
          </div>
        </div>
      </div><!-- Sidebar -->
      
    </div>
  </div>
</section>','{"label":"Admissions","section":"Academics","title":"PDC Admission | KMU BDS for Girls in Peshawar","description":"PDC admission for female BDS via KMU and PM&DC. Girls BDS at a private dental college in Peshawar with Peshawar Dental Hospital training.","priority":"0.9","changefreq":"weekly","schema":"Course","course_name":"BDS"}','published',0.9,'weekly','2026-10-13 17:20:46','2026-10-13 17:20:46','Admissions 2026-27
 HomeAdmissions 2026-27
 



 
 
 
 

 
 
 The Peshawar Dental College, through Khyber Medical University (KMU), in accordance with the rules and regulations of the Pakistan Medical and Dental Council (PM&DC). offers merit-based admissions to the Bachelor of Dental Surgery (BDS) programme for female students. The transparent admission process aims to produce dentists who are professionally competent, ethically grounded, and committed to community oral health.
 
 

 
 
 
 
 Admissions to private-sector MBBS and BDS programs in Khyber Pakhtunkhwa are conducted through
 Khyber Medical University (KMU) in accordance with the rules and regulations of the
 Pakistan Medical and Dental Council (PM&DC).
 
 
 
 15%
 
 
 Overseas Pakistanis Quota
 
 
 5%
 
 
 Foreign Nationals Quota
 
 
 

 
 
 
 
 BDS
 
 Program
 
 
 4 Years
 
 
 Duration
 
 
 KMU
 
 Admission Through
 
 
 Open
 
 Applications
 
 
 

 
 1. Eligibility Criteria
 For Open Merit
 
 
 
 The candidate must have passed obtaining minimum 60% marks in Higher Secondary
 School Certificate or FSc (Pre-Medical) 12th grade or equivalent qualification from any BISE in Pakistan
 or abroad.
 
 
 
 Candidates who have passed MDCAT-2024, 2025 or MDCAT-2026 with minimum 50% marks for BDS.
 
 
 
 Candidates having domicile of Khyber Pakhtunkhwa / Merged Districts (MDs).
 
 For Foreign Quota
 
 
 Candidates applying for Foreign quota seats must fulfill eligibility criteria as
 laid down in section (7) of PM&DC undergraduate education (Admissions, Curriculum and Conduct) Policy &
 Regulations 2023 and subsequent Notification issued by PM&DC No PF-1-C-PM&DC/Notification/2025/910 Dated
 31st October, 2025.
 
 

 
 2. Merit Weightage
 As per
 Pakistan Medical & Dental Council (PM&DC) criteria:
 
 
 
 
 Component
 Weightage
 
 
 
 
 MDCAT / SAT II / Foreign MCAT / UCAT
 
 50%
 
 
 HSSC or Equivalent
 
 40%
 
 
 Matric / SSC or Equivalent
 
 10%
 
 
 
 

 
 3. Admission Procedure
 
 
 
 Visit: caspr.kmu.edu.pk
 
 
 Register / Create an Account
 Fill online application form
 Select Peshawar Dental College (PDC)
 Upload required documents
 Pay online application fee
 Submit form and download acknowledgment slip
 
 

 
 4. Dates to be Noted
 
 
 
 
 Event
 Date
 
 
 
 
 Admission Portal Opens
 06 October 2026
 
 
 
 Last Date for Submission
 09 November 2026
 
 
 Provisional Merit List
 11 November 2025
 
 
 
 Submission of Online Objections / Claims
 11 - 12 November 2026
 
 
 Meeting of appellate Scrutiny Committee for objections/ claims/ complaints
 16 November 2026
 
 
 Final Merit List
 24 November 2026
 
 
 
 Placement in Colleges
 08 - 12 December 2026
 
 
 Second round of placement on all vacant seats
 21 - 24 December 2026
 
 
 Third round of placement on all vacant seats
 04 - 07 January 2027
 
 
 
 

 
 5. Required Documents
 
 
 
 Matric & F.Sc certificates
 
 
 
 MDCAT result card
 
 
 
 Domicile & CNIC / B-Form
 
 
 
 Passport-size photo
 
 
 
 IBCC equivalence (for foreign students)
 
 

 
 
 
 
 Apply Now
 
 
 Advertisement',1),
(5,'vision-mission','Vision & Mission | Peshawar Dental College','Vision & Mission','College','Vision and mission of Peshawar Dental College: ethical, competent dentists for oral health in KP and Pakistan.','vision-mission','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Vision & Mission</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Vision &amp; Mission</span></div>
  </div>
</div>
<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">
          <h2 class="sec-title" style="font-size:1.8rem;">Our Vision &amp; Mission</h2>
          <div class="pmc-card mb-4"
            style="border-left:4px solid var(--teal);border-radius:12px;background:var(--teal-pale);">
            <div style="display:flex;gap:14px;align-items:flex-start;padding:4px 0;">
              <i class="bi bi-eye-fill" style="font-size:1.6rem;color:var(--teal);flex-shrink:0;margin-top:4px;"></i>
              <div>
                <h5 style="margin:0 0 8px;">Vision Statement</h5>
                <p style="margin:0;">To produce dentists with clear objectives to help in long term development of the community through the following attributes;</p>
                <ul style="margin-top:8px; margin-bottom:0;">
                  <li>Professional competence</li>
                  <li>Excellence in ethical values and practice</li>
                  <li>Cognizance of community oral and dental health needs</li>
                  <li>Research mindedness and lifelong learning</li>
                  <li>Competence in IT and current oral and dental health technologies</li>
                  <li>Capability to successfully meet the local and global oral and dental health challenges</li>
                  <li>Competitiveness at national and global level</li>
                </ul>
              </div>
            </div>
          </div>
          <div class="pmc-card mb-4"
            style="border-left:4px solid var(--gold);border-radius:12px;background:var(--gold-pale);">
            <div style="display:flex;gap:14px;align-items:flex-start;padding:4px 0;">
              <i class="bi bi-bullseye" style="font-size:1.6rem;color:var(--gold);flex-shrink:0;margin-top:4px;"></i>
              <div>
                <h5 style="margin:0 0 8px;">Mission Statement</h5>
                <p style="margin:0;font-weight:700;font-size:1.05rem;color:var(--navy);">To Achieve Excellence in professional competence and ethical values</p>
              </div>
            </div>
            <div class="mission-flower" style="margin-top:20px;text-align:center;">
              <img src="/assets/images/about/mission.jpg" alt="Mission statement diagram"
                style="width:100%;max-width:560px;height:auto;margin:0 auto;" />
            </div>
          </div>
          <div class="pmc-card"
            style="border-left:4px solid var(--navy);border-radius:12px;background:var(--off-white);">
            <div style="display:flex;gap:14px;align-items:flex-start;padding:4px 0;">
              <i class="bi bi-quote" style="font-size:1.6rem;color:var(--navy);flex-shrink:0;margin-top:4px;"></i>
              <div>
                <h5 style="margin:0 0 8px;">Our Slogan</h5>
                <p style="margin:0;font-style:italic;font-size:1.05rem;color:var(--navy);">“Come with commitment, grow with wisdom and leave with professional and ethical competence for a bright future”.</p>
                <p style="margin-top:8px;">We believe in creating your tomorrow today.</p>
              </div>
            </div>
          </div>
          </ul>
        </div>
      </div>
      
    </div>
  </div>
</section>','{"label":"Vision & Mission","section":"College","title":"Vision & Mission | Peshawar Dental College","description":"Vision and mission of Peshawar Dental College: ethical, competent dentists for oral health in KP and Pakistan.","priority":"0.5","changefreq":"yearly"}','published',0.5,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Vision & Mission
 HomeVision & Mission
 


 
 
 
 
 Our Vision & Mission
 
 
 
 
 Vision Statement
 To produce dentists with clear objectives to help in long term development of the community through the following attributes;
 
 Professional competence
 Excellence in ethical values and practice
 Cognizance of community oral and dental health needs
 Research mindedness and lifelong learning
 Competence in IT and current oral and dental health technologies
 Capability to successfully meet the local and global oral and dental health challenges
 Competitiveness at national and global level
 
 
 
 
 
 
 
 
 Mission Statement
 To Achieve Excellence in professional competence and ethical values
 
 
 
 
 
 
 
 
 
 
 Our Slogan
 “Come with commitment, grow with wisdom and leave with professional and ethical competence for a bright future”.
 We believe in creating your tomorrow today.',1),
(6,'contact','Contact Peshawar Dental College | Warsak Road','Contact Us','College','Contact Peshawar Dental College, Warsak Road, Peshawar. Phone and email for BDS admissions and enquiries.','contact','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Contact Us</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Contact Us</span></div>
  </div>
</div>
<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">
          <h2 class="sec-title" style="font-size:1.8rem;">Get in Touch</h2>
          <p>We are here to help. Whether you have questions about admissions, academics, or general information about
            Department of Dental Sciences, our team is ready to assist you.</p>
          <div class="row g-4 mb-4">
            <div class="col-md-6">
              <div class="pmc-card" style="border-radius:14px;">
                <div style="font-size:1.6rem;color:var(--teal);margin-bottom:12px;"><i class="bi bi-geo-alt-fill"></i>
                </div>
                <h4>Location</h4>
                <p>Warsak Road, Peshawar, Khyber Pakhtunkhwa,
                  Pakistan.<br />Postal Code: 25160</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card" style="border-radius:14px;">
                <div style="font-size:1.6rem;color:var(--teal);margin-bottom:12px;"><i class="bi bi-telephone-fill"></i>
                </div>
                <h4>Phone</h4>
                <p><a href="tel:+92915201848" style="color:var(--teal);font-weight:700;">091-5201848
                    <br/>091-5202264</a><br />
                    <!--Monday – Saturday: 8:00 AM – 2:00 PM-->
                    </p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card" style="border-radius:14px;">
                <div style="font-size:1.6rem;color:var(--teal);margin-bottom:12px;"><i class="bi bi-envelope-fill"></i>
                </div>
                <h4>Email</h4>
                <p><a href="mailto:info@riphahpsh.edu.pk"
                    style="color:var(--teal);font-weight:700;">info@riphahpsh.edu.pk</a><br />For information.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card" style="border-radius:14px;">
                <div style="font-size:1.6rem;color:var(--teal);margin-bottom:12px;"><i class="bi bi-globe2"></i></div>
                <h4>Follow Us</h4>
                <p>Stay updated on news, events, and announcements.</p>
                <div style="display:flex;gap:9px;margin-top:10px;"><a href="https://www.facebook.com/share/17Mw2CuEkD/"
                    target="_blank" rel="noopener"
                    style="width:36px;height:36px;background:var(--navy);border-radius:8px;display:flex;align-items:center;justify-content:center;color:white;font-size:.9rem;"><i
                      class="bi bi-facebook"></i></a></div>
              </div>
            </div>
          </div>
          <h5>Location Map</h5>
          <div class="ratio ratio-16x9 rounded-3 overflow-hidden mt-3">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3306.2492805215056!2d71.52763747583583!3d34.037476118509744!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38d9165e1e147611%3A0x625c2da58dc42580!2sPeshawar%20Dental%20College!5e0!3m2!1sen!2s!4v1785567562229!5m2!1sen!2s"
              allowfullscreen loading="lazy"></iframe>
          </div>
        </div>
      </div>
        
    </div>
  </div>
</section>','{"label":"Contact Us","section":"College","title":"Contact Peshawar Dental College | Warsak Road","description":"Contact Peshawar Dental College, Warsak Road, Peshawar. Phone and email for BDS admissions and enquiries.","priority":"0.7","changefreq":"yearly"}','published',0.7,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Contact Us
 HomeContact Us
 


 
 
 
 
 Get in Touch
 We are here to help. Whether you have questions about admissions, academics, or general information about
 Department of Dental Sciences, our team is ready to assist you.
 
 
 
 
 
 Location
 Warsak Road, Peshawar, Khyber Pakhtunkhwa,
 Pakistan.Postal Code: 25160
 
 
 
 
 
 
 Phone
 091-5201848
 091-5202264
 
 
 
 
 
 
 
 
 Email
 info@riphahpsh.edu.pkFor information.
 
 
 
 
 
 Follow Us
 Stay updated on news, events, and announcements.
 
 
 
 
 Location Map',1),
(7,'departments','Orthodontics & Oral Surgery | PDC Peshawar','Departments','Academics','Orthodontics, oral surgery, prosthodontics, and other dental departments at Peshawar Dental College, Peshawar.','departments',NULL,'{"label":"Departments","section":"Academics","title":"Orthodontics & Oral Surgery | PDC Peshawar","description":"Orthodontics, oral surgery, prosthodontics, and other dental departments at Peshawar Dental College, Peshawar.","priority":"0.7","changefreq":"monthly"}','published',0.7,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(8,'faculty','Faculty | Dental College Peshawar — PDC','Faculty','College','Faculty of Peshawar Dental College, a leading dental college in Peshawar for BDS teaching and clinical training.','faculty',NULL,'{"label":"Faculty","section":"College","title":"Faculty | Dental College Peshawar — PDC","description":"Faculty of Peshawar Dental College, a leading dental college in Peshawar for BDS teaching and clinical training.","priority":"0.7","changefreq":"monthly"}','published',0.7,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(9,'pg-dental-education','Postgraduate Dental Education | PDC Peshawar','PG Dental Education','Academics','Postgraduate dental programmes at Peshawar Dental College, Peshawar.','pg-dental-education','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <span class="page-hero-eyebrow">Department of Dental Sciences</span>
    <h1>Postgraduate Dental Education</h1>
    <div class="breadcrumb-pmc">
      <a href="/">Home</a>
      <span class="sep"><i class="bi bi-chevron-right"></i></span>
      <span class="current">Postgraduate Programs</span>
    </div>
  </div>
</div>

<section class="pmc-section pg-page">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content">

          <div class="about-intro fu">
            <span class="sec-eyebrow">Programmes</span>
            <h2 class="sec-title" style="font-size:1.75rem;">Postgraduate Dental Education</h2>
            <p>
              Postgraduate dental education in the Department of Dental Sciences is organised into two streams: <strong>Basic Sciences</strong> and <strong>Clinical Sciences</strong>.
            </p>
            <p>
              University M.Phil programmes in basic dental sciences sit alongside clinical postgraduate training. Applications for Fall 2026 are open in Oral Pathology, Oral Biology, and Dental Materials.
            </p>
          </div>

          <div class="pg-director fu">
            <div class="pg-director-ico"><i class="bi bi-person-badge"></i></div>
            <div>
              <span>Director, Basic Medical and Dental Sciences</span>
              <strong>Prof. Dr. Mohsina Haq</strong>
            </div>
          </div>

          <div class="adm-help is-adm-notice fu">
            <div class="adm-help-ico"><i class="bi bi-mortarboard-fill"></i></div>
            <div>
              <h3>Fall 2026 admissions — extended schedule</h3>
              <p>Apply by <strong>03 Sep 2026</strong>. Entry test: 04 Sep 2026. Interview: 05 Sep 2026.</p>
              <a href="assets/images/news/PG-Admission-Form-Dental-Sciences.pdf" target="_blank" rel="noopener" class="btn-pmc btn-pmc-primary"><i class="bi bi-file-earmark-pdf"></i> Admission Form</a>
              <a href="assets/images/news/pg-medical-dental-ad-fall-2026.png" target="_blank" rel="noopener" class="btn-pmc btn-pmc-outline"><i class="bi bi-image"></i> Advertisement</a>
            </div>
          </div>

          <div class="row g-4 mb-4 fu fu-delay-1">
            <div class="col-md-4">
              <a class="pg-stream-card" href="#basic-sciences">
                <strong>Basic Sciences</strong>
                <p>M.Phil programmes in oral pathology, oral biology, and dental materials.</p>
              </a>
            </div>
            <div class="col-md-4">
              <a class="pg-stream-card" href="#clinical-sciences">
                <strong>Clinical Sciences</strong>
                <p>Clinical postgraduate dental training with Peshawar Dental Hospital.</p>
              </a>
            </div>
            <div class="col-md-4">
              <a class="pg-stream-card" href="#faculty">
                <strong>Faculty</strong>
                <p>Basic dental sciences teaching staff.</p>
              </a>
            </div>
          </div>

          <div class="about-block fu" id="basic-sciences">
            <div class="about-block-head">
              <h3>Basic Sciences</h3>
              <p>HEC-aligned M.Phil programmes in basic dental sciences.</p>
            </div>
            <p>
              Applications are invited for <strong>M.Phil Basic Dental Sciences</strong> in the following disciplines.
            </p>
            <div class="pg-panel">
              <span class="pg-panel-label">M.Phil programmes</span>
              <div class="pg-chips">
                <span class="pg-chip">M.Phil Oral Pathology</span>
                <span class="pg-chip">M.Phil Oral Biology</span>
                <span class="pg-chip">M.Phil Dental Materials</span>
              </div>
            </div>
          </div>

          <div class="about-block fu" id="faculty">
            <div class="about-block-head">
              <h3>Basic Sciences Faculty</h3>
              <p>HEC recognised teaching faculty for basic dental sciences.<br />
                Director postgraduate medical and dental sciences prof Dr Mohsina Haq</p>
            </div>
            <div class="pg-staff-grid">
              <div class="pg-staff-card">
                <h4>Oral Pathology</h4>
                <ul class="pg-staff-list">
                  <li><span>Dr. Abbas Saleem Khan</span><span class="pg-qual">PhD</span></li>
                  <li><span>Dr. Nasiha Bashir</span><span class="pg-qual">PhD</span></li>
                </ul>
              </div>
              <div class="pg-staff-card">
                <h4>Oral Biology</h4>
                <ul class="pg-staff-list">
                  <li><span>Dr. Munawar Aziz</span></li>
                  <li><span>Dr. Sana Arbab</span></li>
                </ul>
              </div>
              <div class="pg-staff-card">
                <h4>Dental Materials</h4>
                <ul class="pg-staff-list">
                  <li><span>Dr. Amjad Hanif</span><span class="pg-qual">PhD</span></li>
                  <li><span>Dr. Zudia Riaz</span><span class="pg-qual">MPhil</span></li>
                </ul>
              </div>
            </div>
          </div>

          <div class="about-block fu" id="clinical-sciences">
            <div class="about-block-head">
              <h3>Clinical Sciences</h3>
              <p>Clinical postgraduate dental training with Peshawar Dental Hospital.</p>
            </div>
            <p>
              Clinical postgraduate pathways sit alongside the M.Phil basic sciences programmes. Specialty-specific training is organised with clinical placements at <strong>Peshawar Dental Hospital</strong>. Further programmes will be listed as they are notified.
            </p>

            <!-- Quick Resource Links -->
            <!-- <div class="row g-3 mb-4">
            <div class="col-md-4">
              <div class="dropdown pmc-quick-dropdown">
                <button type="button"
                  class="pmc-card d-flex align-items-center gap-3 dropdown-toggle"
                  style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);width:100%;text-align:left;"
                  data-bs-toggle="dropdown" aria-expanded="false">
                  <i class="bi bi-calendar3" style="font-size:1.5rem;color:var(--teal);flex-shrink:0;"></i>
                  <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Academic Calendar</div>
                </button>
                <ul class="dropdown-menu w-100" style="border-radius:10px;">
                  <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                      href="/assets/uploads/academic-calendar/BDS-1st-Year-Academic-Calander-12-6-2026.pdf"
                      target="_blank" rel="noopener">Academic Calendar of BDS 1st Year</a></li>
                  <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                      href="/assets/uploads/academic-calendar/BDS-2nd-Year-Academic-Calendar-12-6-2026.pdf"
                      target="_blank" rel="noopener">Academic Calendar of BDS 2nd Year</a></li>
                  <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                      href="/assets/uploads/academic-calendar/BDS-3rd-Year-Accademic-Calendar.pdf"
                      target="_blank" rel="noopener">Academic Calendar of BDS 3rd Year</a></li>
                  <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                      href="/assets/uploads/academic-calendar/BDS-4th-Year-Academic-Calendar-year-2026-27-18-5-26.pdf"
                      target="_blank" rel="noopener">Academic Calendar of BDS 4th Year</a></li>
                </ul>
              </div>
            </div>

            <div class="col-md-4">
              <a href="/student-guide" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-book-fill" style="font-size:1.5rem;color:var(--teal);flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Guideline for Student</div>
              </a>
            </div>
          </div> -->

            <div class="row g-4">
              <div class="col-md-7">
                <div class="pg-panel">
                  <span class="pg-panel-label">FCPS</span>
                  <div class="pg-chips">
                    <span class="pg-chip">Orthodontics</span>
                    <span class="pg-chip">Maxillofacial Surgery</span>
                    <span class="pg-chip">Operative Dentistry</span>
                    <span class="pg-chip">Prosthodontics</span>
                  </div>
                </div>
              </div>
            </div>
          </div>



          <div class="about-block fu" id="faculty">
            <div class="about-block-head">
              <h3>Clinical Sciences Faculty</h3>
              <p>HEC recognised teaching faculty for basic dental sciences.<br />
                Director postgraduate medical and dental sciences prof Dr Mohsina Haq</p>
            </div>
            <div class="pg-staff-grid">
              <div class="pg-staff-card">
                <h4>Orthodontics</h4>
                <ul class="pg-staff-list">
                  <li><span>Professor Dr. Shahab Adil</span></li>
                </ul>
              </div>
              <div class="pg-staff-card">
                <h4>Oral & Maxillofacial Surgery</h4>
                <ul class="pg-staff-list">
                  <li><span>Professor Dr. Syed Amjad Shah</span></li>
                </ul>
              </div>
              <div class="pg-staff-card">
                <h4>Operative Dentistry</h4>
                <ul class="pg-staff-list">
                  <li><span>Professor Dr. Iftikhar Akbar</span></li>
                </ul>
              </div>
              <div class="pg-staff-card">
                <h4>Prosthodontics</h4>
                <ul class="pg-staff-list">
                  <li><span>Professor Dr. Muhammad Raza</span></li>
                  <li><span>Professor Dr. Muhammad Sartaj Khan</span></li>
                </ul>
              </div>
            </div>
          </div>

        </div>
      </div>
      
    </div>
  </div>
</section>','{"label":"PG Dental Education","section":"Academics","title":"Postgraduate Dental Education | PDC Peshawar","description":"Postgraduate dental programmes at Peshawar Dental College, Peshawar.","priority":"0.7","changefreq":"monthly"}','published',0.7,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46','Department of Dental Sciences
 Postgraduate Dental Education
 
 Home
 
 Postgraduate Programs
 
 



 
 
 
 

 
 Programmes
 Postgraduate Dental Education
 
 Postgraduate dental education in the Department of Dental Sciences is organised into two streams: Basic Sciences and Clinical Sciences.
 
 
 University M.Phil programmes in basic dental sciences sit alongside clinical postgraduate training. Applications for Fall 2026 are open in Oral Pathology, Oral Biology, and Dental Materials.
 
 

 
 
 
 Director, Basic Medical and Dental Sciences
 Prof. Dr. Mohsina Haq
 
 

 
 
 
 Fall 2026 admissions — extended schedule
 Apply by 03 Sep 2026. Entry test: 04 Sep 2026. Interview: 05 Sep 2026.
 Admission Form
 Advertisement
 
 

 
 
 
 Basic Sciences
 M.Phil programmes in oral pathology, oral biology, and dental materials.
 
 
 
 
 Clinical Sciences
 Clinical postgraduate dental training with Peshawar Dental Hospital.
 
 
 
 
 Faculty
 Basic dental sciences teaching staff.
 
 
 

 
 
 Basic Sciences
 HEC-aligned M.Phil programmes in basic dental sciences.
 
 
 Applications are invited for M.Phil Basic Dental Sciences in the following disciplines.
 
 
 M.Phil programmes
 
 M.Phil Oral Pathology
 M.Phil Oral Biology
 M.Phil Dental Materials
 
 
 

 
 
 Basic Sciences Faculty
 HEC recognised teaching faculty for basic dental sciences.
 Director postgraduate medical and dental sciences prof Dr Mohsina Haq
 
 
 
 Oral Pathology
 
 Dr. Abbas Saleem KhanPhD
 Dr. Nasiha BashirPhD
 
 
 
 Oral Biology
 
 Dr. Munawar Aziz
 Dr. Sana Arbab
 
 
 
 Dental Materials
 
 Dr. Amjad HanifPhD
 Dr. Zudia RiazMPhil
 
 
 
 

 
 
 Clinical Sciences
 Clinical postgraduate dental training with Peshawar Dental Hospital.
 
 
 Clinical postgraduate pathways sit alongside the M.Phil basic sciences programmes. Specialty-specific training is organised with clinical placements at Peshawar Dental Hospital. Further programmes will be listed as they are notified.
 

 
 

 
 
 
 FCPS
 
 Orthodontics
 Maxillofacial Surgery
 Operative Dentistry
 Prosthodontics
 
 
 
 
 



 
 
 Clinical Sciences Faculty
 HEC recognised teaching faculty for basic dental sciences.
 Director postgraduate medical and dental sciences prof Dr Mohsina Haq
 
 
 
 Orthodontics
 
 Professor Dr. Shahab Adil
 
 
 
 Oral & Maxillofacial Surgery
 
 Professor Dr. Syed Amjad Shah
 
 
 
 Operative Dentistry
 
 Professor Dr. Iftikhar Akbar
 
 
 
 Prosthodontics
 
 Professor Dr. Muhammad Raza
 Professor Dr. Muhammad Sartaj Khan',1),
(10,'dental-education','Dental Education | Peshawar Dental College','Dental Education','Academics','Dental education philosophy and BDS teaching at Peshawar Dental College, Peshawar.','dental-education','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Dental Education</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span>Education &amp; Research <span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Dental Education</span></div>
  </div>
</div>

<style>
  .pmc-quick-dropdown .dropdown-menu.show {
    display: block !important;
  }
</style>

<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">

          <!-- Quick Resource Links -->
          <div class="row g-3 mb-4">
            <div class="col-md-4">
              <div class="dropdown pmc-quick-dropdown">
                <button type="button"
                  class="pmc-card d-flex align-items-center gap-3 dropdown-toggle"
                  style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);width:100%;text-align:left;"
                  data-bs-toggle="dropdown" aria-expanded="false">
                  <i class="bi bi-calendar3" style="font-size:1.5rem;color:var(--teal);flex-shrink:0;"></i>
                  <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Academic Calendar</div>
                </button>
                <ul class="dropdown-menu w-100" style="border-radius:10px;">
                  <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                      href="/assets/uploads/academic-calendar/BDS-1st-Year-Academic-Calander-12-6-2026.pdf"
                      target="_blank" rel="noopener">Academic Calendar of BDS 1st Year</a></li>
                  <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                      href="/assets/uploads/academic-calendar/BDS-2nd-Year-Academic-Calendar-12-6-2026.pdf"
                      target="_blank" rel="noopener">Academic Calendar of BDS 2nd Year</a></li>
                  <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                      href="/assets/uploads/academic-calendar/BDS-3rd-Year-Accademic-Calendar.pdf"
                      target="_blank" rel="noopener">Academic Calendar of BDS 3rd Year</a></li>
                  <li><a class="dropdown-item" style="font-family:var(--font-body);font-size:.88rem;"
                      href="/assets/uploads/academic-calendar/BDS-4th-Year-Academic-Calendar-year-2026-27-18-5-26.pdf"
                      target="_blank" rel="noopener">Academic Calendar of BDS 4th Year</a></li>
                </ul>
              </div>
            </div>

            <div class="col-md-4">
              <a href="/student-guide" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-book-fill" style="font-size:1.5rem;color:var(--teal);flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Guideline for Student</div>
              </a>
            </div>
            <div class="col-md-4">
              <a href="/curriculum" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-journal-text" style="font-size:1.5rem;color:var(--teal);flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Curriculum</div>
              </a>
            </div>
          </div>

          <!-- Dental Education Content -->
          <h2 class="sec-title" style="font-size:1.8rem;">Dental Education</h2>
          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">The
            education system is designed to train students on application of knowledge of basic sciences to clinical
            problems, use computers and IT in line with currents trends of dental education and achieve professional
            and ethical excellence at end of education in dental college.</p>
          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">The
            education system and curriculum will meet the challenges of contemporary global health needs and will be
            based on <strong>integrated (1st &amp; 2nd) and conventional (3rd &amp; Final) Years BDS teaching system</strong>. It will also incorporate the preliminary application
            of knowledge of basic sciences to clinical problems from first professional. Students will be given the
            opportunities of exposure to "real-life" clinical problems relevant to their level of knowledge.</p>
          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">Use of
            computers and IT will be part of the teaching and students will be taught the relevant computers softwares
            from first year. The college self-learning resource center will be open for use to students and teachers
            where they will be provided with "hands- on" assistance and training.</p>
          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">Internal
            assessment will be an integral part of evaluation system and part of it will be computer-based evaluation,
            on subjects already taught to them.</p>
          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">Students
            will be given the opportunity of training on research methodologies and paper writing. They will be expected
            to produce at least <strong>four research papers in four years</strong> and will be encouraged to submit
            their papers to the national and international conferences. College will sponsor all expense involved in
            presentation of papers accepted in various national conferences.</p>
          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">Teacher and
            students will be engaged in regular dialogue through tutorial system and accessibility of teachers to
            students will be facilitated to develop a better teacher students relation based on respect and professional
            freedom.</p>
          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">We are
            committed to achieve our goal, establish and maintain our standards, through self-accountability, monitoring
            and continuous evaluation. All available education standards outlined by professional bodies like PMDC, CPSP
            and HEC for imparting dental education will be followed in letter and spirit to achieve this goal.</p>

          <!-- Educational Outcomes -->
          <h5
            style="font-family:var(--font-head);font-size:1.3rem;color:var(--navy);margin-top:30px;margin-bottom:16px;">
            Educational Outcomes</h5>
          <p style="font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);">Our graduates would be able
            to:</p>
          <ul class="checklist" style="list-style:none;padding-left:0;">
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Provide just, equitable and ethically driven dental health care to the community for common illnesses,
                including preventive and therapeutic services.</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Communicate effectively with patients, their care givers, colleagues and other health care
                personnel.</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Contribute maximally to the advancement of bio-medical research and development of evidence-based
                dental health care interventions.</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Demonstrate effective team work in dental health care provision.</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Employ critical and reflective thinking, life-long learning and self-accountability for their
                continuing personal and professional development.</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:12px;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Model exemplary moral conduct and be a mentor for junior colleagues and students.</span>
            </li>
            <li
              style="display:flex;align-items:flex-start;gap:10px;margin-bottom:0;font-family:var(--font-body);font-size:.92rem;color:var(--gray-dark);line-height:1.7;">
              <i class="bi bi-check-circle-fill" style="color:var(--teal);flex-shrink:0;margin-top:3px;"></i>
              <span>Prove to be a socially responsible, honest, respectable and patriotic citizen.</span>
            </li>
          </ul>

        </div>
      </div><!-- Sidebar -->
      
    </div>
  </div>
</section>','{"label":"Dental Education","section":"Academics","title":"Dental Education | Peshawar Dental College","description":"Dental education philosophy and BDS teaching at Peshawar Dental College, Peshawar.","priority":"0.6","changefreq":"yearly"}','published',0.6,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Dental Education
 HomeEducation & Research Dental Education
 



 .pmc-quick-dropdown .dropdown-menu.show {
 display: block !important;
 }



 
 
 
 

 
 
 
 
 
 
 Academic Calendar
 
 
 Academic Calendar of BDS 1st Year
 Academic Calendar of BDS 2nd Year
 Academic Calendar of BDS 3rd Year
 Academic Calendar of BDS 4th Year
 
 
 

 
 
 
 Guideline for Student
 
 
 
 
 
 Curriculum
 
 
 

 
 Dental Education
 The
 education system is designed to train students on application of knowledge of basic sciences to clinical
 problems, use computers and IT in line with currents trends of dental education and achieve professional
 and ethical excellence at end of education in dental college.
 The
 education system and curriculum will meet the challenges of contemporary global health needs and will be
 based on integrated (1st & 2nd) and conventional (3rd & Final) Years BDS teaching system. It will also incorporate the preliminary application
 of knowledge of basic sciences to clinical problems from first professional. Students will be given the
 opportunities of exposure to "real-life" clinical problems relevant to their level of knowledge.
 Use of
 computers and IT will be part of the teaching and students will be taught the relevant computers softwares
 from first year. The college self-learning resource center will be open for use to students and teachers
 where they will be provided with "hands- on" assistance and training.
 Internal
 assessment will be an integral part of evaluation system and part of it will be computer-based evaluation,
 on subjects already taught to them.
 Students
 will be given the opportunity of training on research methodologies and paper writing. They will be expected
 to produce at least four research papers in four years and will be encouraged to submit
 their papers to the national and international conferences. College will sponsor all expense involved in
 presentation of papers accepted in various national conferences.
 Teacher and
 students will be engaged in regular dialogue through tutorial system and accessibility of teachers to
 students will be facilitated to develop a better teacher students relation based on respect and professional
 freedom.
 We are
 committed to achieve our goal, establish and maintain our standards, through self-accountability, monitoring
 and continuous evaluation. All available education standards outlined by professional bodies like PMDC, CPSP
 and HEC for imparting dental education will be followed in letter and spirit to achieve this goal.

 
 
 Educational Outcomes
 Our graduates would be able
 to:
 
 
 
 Provide just, equitable and ethically driven dental health care to the community for common illnesses,
 including preventive and therapeutic services.
 
 
 
 Communicate effectively with patients, their care givers, colleagues and other health care
 personnel.
 
 
 
 Contribute maximally to the advancement of bio-medical research and development of evidence-based
 dental health care interventions.
 
 
 
 Demonstrate effective team work in dental health care provision.
 
 
 
 Employ critical and reflective thinking, life-long learning and self-accountability for their
 continuing personal and professional development.
 
 
 
 Model exemplary moral conduct and be a mentor for junior colleagues and students.
 
 
 
 Prove to be a socially responsible, honest, respectable and patriotic citizen.',1),
(11,'curriculum','BDS Curriculum | Peshawar Dental College','Curriculum','Academics','BDS curriculum at Peshawar Dental College: modular dental education aligned with PM&DC in Peshawar.','curriculum','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Curriculum</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span>Education &amp; Research <span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Curriculum</span></div>
  </div>
</div>
<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">
          <h2 class="sec-title" style="font-size:1.8rem;">BDS Curriculum</h2>

          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">Our dental education curriculum is designed to provide graduate who can demonstrate excellence in professional competence and ethical values. This curriculum is based in the Pakistan Medical & Dental Council and Higher Education Commission guidelines and is an integrated curriculum that is orientated to address the local and global needs. We call it HuDeba curriculum i.e., ''Human Development Based'' curriculum.</p>

          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">To accomplish the mission statement, a structured program has been introduced to encourage professional and personal development of students during their stay in the College. In addition to their regular contact with teaching faculty, they get ample opportunity of in-teraction with leading professional and social scientists, invited as guest speakers. A conscious effort is made to achieve excellence in professional and ethical conduct.</p>

          <!-- space for image -->
          <div style="margin: 20px 0; padding: 30px; background: #f4f7f9; border: 1px dashed var(--border-color); border-radius: 12px; text-align: center; font-family: var(--font-body); color: var(--gray-mid);">
            <img src="/assets/images/medical-education/calendar-map.jpeg"/>
          </div>

          <div class="pmc-card mb-4"
            style="border-radius:12px;background:#f4f7f9;border:1px solid var(--border-color);padding:22px 24px;">
            <p style="font-family:var(--font-body);font-size:.9rem;color:var(--gray-dark);margin-bottom:0;">
              <i class="bi bi-journal-check" style="color:var(--teal);font-size:1.2rem;margin-right:8px;"></i>
              The <strong>Pakistan Medical & Dental Council</strong> prescribed curriculum of BDS degree is strictly followed. For detail of the curriculum, students are advised to visit the Pakistan Medical & Dental Council website: www.pmdc.pk
            </p>
          </div>

        </div>
      </div><!-- Sidebar -->
      
    </div>
  </div>
</section>','{"label":"Curriculum","section":"Academics","title":"BDS Curriculum | Peshawar Dental College","description":"BDS curriculum at Peshawar Dental College: modular dental education aligned with PM&DC in Peshawar.","priority":"0.5","changefreq":"yearly"}','published',0.5,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Curriculum
 HomeEducation & Research Curriculum
 


 
 
 
 
 BDS Curriculum

 Our dental education curriculum is designed to provide graduate who can demonstrate excellence in professional competence and ethical values. This curriculum is based in the Pakistan Medical & Dental Council and Higher Education Commission guidelines and is an integrated curriculum that is orientated to address the local and global needs. We call it HuDeba curriculum i.e., ''Human Development Based'' curriculum.

 To accomplish the mission statement, a structured program has been introduced to encourage professional and personal development of students during their stay in the College. In addition to their regular contact with teaching faculty, they get ample opportunity of in-teraction with leading professional and social scientists, invited as guest speakers. A conscious effort is made to achieve excellence in professional and ethical conduct.

 
 
 
 

 
 
 
 The Pakistan Medical & Dental Council prescribed curriculum of BDS degree is strictly followed. For detail of the curriculum, students are advised to visit the Pakistan Medical & Dental Council website: www.pmdc.pk',1),
(12,'pg-curriculum','PG Curriculum | Peshawar Dental College','PG Curriculum','Academics','Postgraduate dental curriculum at Peshawar Dental College.','pg-curriculum','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Curriculum</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span>Education &amp; Research <span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Curriculum</span></div>
  </div>
</div>
<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">
          <h2 class="sec-title" style="font-size:1.8rem;">Postgraduate Curriculum</h2>

          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">Our dental education curriculum is designed to provide graduate who can demonstrate excellence in professional competence and ethical values. This curriculum is based in the Pakistan Medical & Dental Council and Higher Education Commission guidelines and is an integrated curriculum that is orientated to address the local and global needs. We call it HuDeba curriculum i.e., ''Human Development Based'' curriculum.</p>

          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">To accomplish the mission statement, a structured program has been introduced to encourage professional and personal development of students during their stay in the College. In addition to their regular contact with teaching faculty, they get ample opportunity of in-teraction with leading professional and social scientists, invited as guest speakers. A conscious effort is made to achieve excellence in professional and ethical conduct.</p>

          <div class="pmc-card mb-4"
            style="border-radius:12px;background:#f4f7f9;border:1px solid var(--border-color);padding:22px 24px;">
            <p style="font-family:var(--font-body);font-size:.9rem;color:var(--gray-dark);margin-bottom:0;">
              <i class="bi bi-journal-check" style="color:var(--teal);font-size:1.2rem;margin-right:8px;"></i>
              The <strong>Pakistan Medical & Dental Council</strong> prescribed curriculum of BDS degree is strictly followed. For detail of the curriculum, students are advised to visit the Pakistan Medical & Dental Council website: www.pmdc.pk
            </p>
          </div>

          <!-- Downloadable Curriculum PDFs -->
          <h5 style="font-family:var(--font-head);color:var(--navy);margin-top:30px;margin-bottom:16px;">Downloadable Curriculum Documents</h5>
          <div class="row g-3">
            <div class="col-md-6">
              <a href="https://pdc.prime.edu.pk/downloads/1-FCPS%20&%20IMM%20OMFS.pdf" target="_blank" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-file-earmark-pdf-fill" style="font-size:1.5rem;color:#d32f2f;flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">FCPS & IMM OMFS</div>
              </a>
            </div>
            <div class="col-md-6">
              <a href="https://pdc.prime.edu.pk/downloads/2-Syllabus-FCPS-&-IMM-OMFS.pdf" target="_blank" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-file-earmark-pdf-fill" style="font-size:1.5rem;color:#d32f2f;flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Syllabus FCPS & IMM OMFS</div>
              </a>
            </div>
            <div class="col-md-6">
              <a href="https://pdc.prime.edu.pk/downloads/3c_FCPS%20(IMM%20&%20Post-IMM)%20Prosthodontics%20crculm%20(pblshed%2018-4-23).pdf" target="_blank" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-file-earmark-pdf-fill" style="font-size:1.5rem;color:#d32f2f;flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">FCPS (IMM & Post-IMM) Prosthodontics Curriculum</div>
              </a>
            </div>
            <div class="col-md-6">
              <a href="https://pdc.prime.edu.pk/downloads/FCPS%20CURRICULUM%20PDF.pdf" target="_blank" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-file-earmark-pdf-fill" style="font-size:1.5rem;color:#d32f2f;flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">FCPS Curriculum</div>
              </a>
            </div>
            <div class="col-md-6">
              <a href="https://pdc.prime.edu.pk/downloads/FCPS%20Optve%20Dent.&%20Endo(IMM&Pst-IMM)curriclm%20(Pblshd%2011-4-22+lst%20updtd%2025-8-22).pdf" target="_blank" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-file-earmark-pdf-fill" style="font-size:1.5rem;color:#d32f2f;flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">FCPS Operative Dentistry & Endo (IMM&Pst-IMM) Curriculum</div>
              </a>
            </div>
            <div class="col-md-6">
              <a href="https://pdc.prime.edu.pk/downloads/FCPS%20(IMM%20&%20Post-IMM)%20Orthodontics%20crculum%20(Pblshed%2012-Nov-25).pdf" target="_blank" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-file-earmark-pdf-fill" style="font-size:1.5rem;color:#d32f2f;flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">FCPS (IMM & Post-IMM) Orthodontics Curriculum</div>
              </a>
            </div>
            <div class="col-md-6">
              <a href="https://pdc.prime.edu.pk/downloads/Orthodontics%202017.pdf" target="_blank" class="pmc-card d-flex align-items-center gap-3 text-decoration-none"
                style="border-radius:12px;padding:14px 16px;background:#fff;border:1px solid var(--border-color);">
                <i class="bi bi-file-earmark-pdf-fill" style="font-size:1.5rem;color:#d32f2f;flex-shrink:0;"></i>
                <div style="font-family:var(--font-head);font-size:.85rem;font-weight:700;color:var(--navy);">Orthodontics 2017</div>
              </a>
            </div>
          </div>

        </div>
      </div><!-- Sidebar -->
      
    </div>
  </div>
</section>','{"label":"PG Curriculum","section":"Academics","title":"PG Curriculum | Peshawar Dental College","description":"Postgraduate dental curriculum at Peshawar Dental College.","priority":"0.4","changefreq":"yearly"}','published',0.4,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Curriculum
 HomeEducation & Research Curriculum
 


 
 
 
 
 Postgraduate Curriculum

 Our dental education curriculum is designed to provide graduate who can demonstrate excellence in professional competence and ethical values. This curriculum is based in the Pakistan Medical & Dental Council and Higher Education Commission guidelines and is an integrated curriculum that is orientated to address the local and global needs. We call it HuDeba curriculum i.e., ''Human Development Based'' curriculum.

 To accomplish the mission statement, a structured program has been introduced to encourage professional and personal development of students during their stay in the College. In addition to their regular contact with teaching faculty, they get ample opportunity of in-teraction with leading professional and social scientists, invited as guest speakers. A conscious effort is made to achieve excellence in professional and ethical conduct.

 
 
 
 The Pakistan Medical & Dental Council prescribed curriculum of BDS degree is strictly followed. For detail of the curriculum, students are advised to visit the Pakistan Medical & Dental Council website: www.pmdc.pk
 
 

 
 Downloadable Curriculum Documents
 
 
 
 
 FCPS & IMM OMFS
 
 
 
 
 
 Syllabus FCPS & IMM OMFS
 
 
 
 
 
 FCPS (IMM & Post-IMM) Prosthodontics Curriculum
 
 
 
 
 
 FCPS Curriculum
 
 
 
 
 
 FCPS Operative Dentistry & Endo (IMM&Pst-IMM) Curriculum
 
 
 
 
 
 FCPS (IMM & Post-IMM) Orthodontics Curriculum
 
 
 
 
 
 Orthodontics 2017',1),
(13,'examinations','Examinations | Peshawar Dental College','Examinations','Academics','Examinations and assessments for BDS students at Peshawar Dental College.','examinations',NULL,'{"label":"Examinations","section":"Academics","title":"Examinations | Peshawar Dental College","description":"Examinations and assessments for BDS students at Peshawar Dental College.","priority":"0.4","changefreq":"yearly"}','published',0.4,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(14,'faculty-research','Faculty Research | Peshawar Dental College','Faculty Research','Academics','Faculty research at Peshawar Dental College supporting dental scholarship in Peshawar.','faculty-research',NULL,'{"label":"Faculty Research","section":"Academics","title":"Faculty Research | Peshawar Dental College","description":"Faculty research at Peshawar Dental College supporting dental scholarship in Peshawar.","priority":"0.5","changefreq":"monthly"}','published',0.5,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(15,'student-guide','Student Guide | Peshawar Dental College','Student Guide','Academics','Student guide for BDS students at Peshawar Dental College, Peshawar.','student-guide','<div class="page-hero">
    <div class="page-hero-grid"></div>
    <div class="container page-hero-content">
        <h1>Student Guide</h1>
        <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
                    class="bi bi-chevron-right"></i></span>Education &amp; Research <span class="sep"><i
                    class="bi bi-chevron-right"></i></span><span class="current">Student Guide</span></div>
    </div>
</div>
<section class="pmc-section">
    <div class="container">
        <div class="row g-5">
            <div class="col-lg-8">
                <div class="page-content fu">
                    <!-- <h2 class="sec-title" style="font-size:1.8rem;">Student Guide</h2> -->
                    <!-- <p>Welcome to the Department of Medical Sciences – Riphah International University (Peshawar Campus). This guide provides essential information for enrolled students regarding academic policies, conduct, facilities, and student services.</p> -->
                    
                    <!-- College Rules and Regulations -->
                    <h3 class="mt-4" style="font-family:var(--font-head); color:var(--navy);">College Rules and Regulations</h3>
                    <p style="font-family:var(--font-body); font-size:.95rem; color:var(--gray-dark);">All students are advised to read these rules carefully, and abide by them all. Any violation of these rules will be tantamount to serious breach of discipline/order.</p>
                    
                    <ol style="font-family:var(--font-body); font-size:.95rem; color:var(--gray-dark); line-height:1.8; padding-left:20px;">
                        <li>Every part of the college building and hostel premises shall be kept clean, i.e., walls, fixtures, classrooms, lab equipment, books, specimens, charts, etc. should not be tampered with, mutilated or damaged in any way or form. Perpetrators will face strict disci¬plinary actions.</li>
                        <li>Students are required to show decent and disciplined behavior in the classrooms. Students are forbidden to act in a manner which is unbecoming of in the college premise/hostel/hospitals and even outside the college premises.</li>
                        <li>Students are required to strictly observe college dress code.</li>
                        <li>Students are required to observe punctually on all notified events and in the classes.</li>
                        <li>Every student is required to attend at least 75% of lectures, lab practical/ clinical rotations/ tutorials etc. Repeated absence from lecture, classes, and demonstrations and from hospital ward will make a student liable to debarring from examination and expulsion from the college.</li>
                        <li>The students must display their name cards while in the college premises or at the hospitals.</li>
                        <li>For purpose of leave, the students must apply in writing and give reason for his/her request.</li>
                        <li>Security measure to handle chemicals, equipment, instruments or reagents are to be strictly observed.</li>
                        <li>If a student has any complaint, he/she has to submit it in writing to the Vice Principal who will forward it to the Principal/ Dean of the college for necessary action (if required).</li>
                        <li>Student desirous of addressing the Dean/ Principal by a letter must do so individually. Joint applications shall be considered as breach of discipline &amp; will not be entertained.</li>
                        <li>Student who wishes to make a representation on any subject has the right of direct access to the Principal or Dean during college hours by prior appointment.</li>
                        <li>Students are required to follow college notifications, instructions issued by the Principal or on his behalf by some other authority.</li>
                        <li>Students are not allowed to leave the lecture hall, practical class or hospital ward without the permission of the teacher.</li>
                        <li>Political activities are strictly forbidden in the college and the hostels in any form. The college Disciplinary Committee will strictly deal with such cases. The punishment may include expulsion from the college.</li>
                        <li>Students shall not address a press conference, or write of communicate by other means to the press on any issues related to the college, hospital, university or government without prior approval by the college.</li>
                        <li>No student will be allowed to leave the premises of the college and hospitals during working hours without written permission.</li>
                        <li>Students are prohibited from usage of foul language, physical jokes or fighting.</li>
                        <li>Shouting, sloganeering, making noises or singing on the college/hostel/hospital premises are contrary to the decent behavior and conduct, therefore are not allowed.</li>
                        <li>No person shall be invited to address a meeting or society in the college premises without prior written permission of the Principal/ Dean.</li>
                        <li>Students are not allowed to bring the outsiders in the college/hospitals/hostels premises without prior permission of the Principal/ Dean.</li>
                        <li>No student will be allowed to take the exam unless he/she has cleared all the dues and produced NOC at the time of submission of examination forms.</li>
                        <li>All accidents, major or minor shall have to be reported immediately to the college authorities.</li>
                        <li>Any unauthorized activity is not permitted; either in the college or at hospitals/ hostels.</li>
                        <li>No poster or banner shall be displayed in the college /hostel/hospital premises without the approval of the Principal/ Dean.</li>
                        <li>Socially unacceptable activities (gambling/use of narcotics/possession of arms, etc) within the college premises, Hospitals and Hostels are strictly prohibited.</li>
                        <li>No student will be admitted to the next class unless he/she has deposited the college fee and other dues for the class.</li>
                        <li>The college administration reserves the right to revise college fee and other subscriptions from time to time during the course of studies.</li>
                    </ol>

                    <!-- <h5 class="mt-4">Academic Policies</h5>
                    <ul class="checklist">
                        <li><i class="bi bi-check-circle-fill"></i>Minimum 75% attendance is compulsory in all subjects
                            (lectures, practicals, and clinical rotations).</li>
                        <li><i class="bi bi-check-circle-fill"></i>Internal assessments contribute to eligibility for
                            university examinations.</li>
                        <li><i class="bi bi-check-circle-fill"></i>Plagiarism and academic dishonesty are strictly
                            prohibited and may result in disciplinary action.</li>
                        <li><i class="bi bi-check-circle-fill"></i>Students must wear prescribed uniform on campus and
                            in clinical settings.</li>
                    </ul>
                    <h5>Student Services</h5>
                    <ul class="checklist">
                        <li><i class="bi bi-check-circle-fill"></i>Library and Learning Resource Centre — open all
                            weekdays.</li>
                        <li><i class="bi bi-check-circle-fill"></i>Counseling and Student Assistance Program —
                            confidential support available.</li>
                        <li><i class="bi bi-check-circle-fill"></i>First Aid room available on campus during college
                            hours.</li>
                        <li><i class="bi bi-check-circle-fill"></i>Day Care Center for students with young children.
                        </li>
                        <li><i class="bi bi-check-circle-fill"></i>Hostel accommodation for female students on campus.
                        </li>
                    </ul>
                    <h5>Code of Conduct</h5>
                    <p>Students are expected to maintain the highest standards of professional behavior, respect for
                        peers and faculty, and adherence to the ethical values that define the medical profession. Any
                        misconduct may be referred to the Discipline Committee.</p>
                    <a href="https://pmc.prime.edu.pk/student-guide.php" target="_blank"
                        class="btn-pmc btn-pmc-primary mt-3"><i class="bi bi-arrow-up-right-square"></i> View Full
                        Student Guide</a> -->
                </div>
            </div>
            
        </div>
    </div>
</section>','{"label":"Student Guide","section":"Academics","title":"Student Guide | Peshawar Dental College","description":"Student guide for BDS students at Peshawar Dental College, Peshawar.","priority":"0.4","changefreq":"yearly"}','published',0.4,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Student Guide
 HomeEducation & Research Student Guide
 


 
 
 
 
 
 
 
 
 College Rules and Regulations
 All students are advised to read these rules carefully, and abide by them all. Any violation of these rules will be tantamount to serious breach of discipline/order.
 
 
 Every part of the college building and hostel premises shall be kept clean, i.e., walls, fixtures, classrooms, lab equipment, books, specimens, charts, etc. should not be tampered with, mutilated or damaged in any way or form. Perpetrators will face strict disci¬plinary actions.
 Students are required to show decent and disciplined behavior in the classrooms. Students are forbidden to act in a manner which is unbecoming of in the college premise/hostel/hospitals and even outside the college premises.
 Students are required to strictly observe college dress code.
 Students are required to observe punctually on all notified events and in the classes.
 Every student is required to attend at least 75% of lectures, lab practical/ clinical rotations/ tutorials etc. Repeated absence from lecture, classes, and demonstrations and from hospital ward will make a student liable to debarring from examination and expulsion from the college.
 The students must display their name cards while in the college premises or at the hospitals.
 For purpose of leave, the students must apply in writing and give reason for his/her request.
 Security measure to handle chemicals, equipment, instruments or reagents are to be strictly observed.
 If a student has any complaint, he/she has to submit it in writing to the Vice Principal who will forward it to the Principal/ Dean of the college for necessary action (if required).
 Student desirous of addressing the Dean/ Principal by a letter must do so individually. Joint applications shall be considered as breach of discipline & will not be entertained.
 Student who wishes to make a representation on any subject has the right of direct access to the Principal or Dean during college hours by prior appointment.
 Students are required to follow college notifications, instructions issued by the Principal or on his behalf by some other authority.
 Students are not allowed to leave the lecture hall, practical class or hospital ward without the permission of the teacher.
 Political activities are strictly forbidden in the college and the hostels in any form. The college Disciplinary Committee will strictly deal with such cases. The punishment may include expulsion from the college.
 Students shall not address a press conference, or write of communicate by other means to the press on any issues related to the college, hospital, university or government without prior approval by the college.
 No student will be allowed to leave the premises of the college and hospitals during working hours without written permission.
 Students are prohibited from usage of foul language, physical jokes or fighting.
 Shouting, sloganeering, making noises or singing on the college/hostel/hospital premises are contrary to the decent behavior and conduct, therefore are not allowed.
 No person shall be invited to address a meeting or society in the college premises without prior written permission of the Principal/ Dean.
 Students are not allowed to bring the outsiders in the college/hospitals/hostels premises without prior permission of the Principal/ Dean.
 No student will be allowed to take the exam unless he/she has cleared all the dues and produced NOC at the time of submission of examination forms.
 All accidents, major or minor shall have to be reported immediately to the college authorities.
 Any unauthorized activity is not permitted; either in the college or at hospitals/ hostels.
 No poster or banner shall be displayed in the college /hostel/hospital premises without the approval of the Principal/ Dean.
 Socially unacceptable activities (gambling/use of narcotics/possession of arms, etc) within the college premises, Hospitals and Hostels are strictly prohibited.
 No student will be admitted to the next class unless he/she has deposited the college fee and other dues for the class.
 The college administration reserves the right to revise college fee and other subscriptions from time to time during the course of studies.',1),
(16,'vacant-seats','Vacant Seats | Peshawar Dental College','Vacant Seats','Academics','Vacant BDS seats and migration information at Peshawar Dental College, Peshawar.','vacant-seats','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Vacant Seats (BDS) - (Migration)</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Vacant Seats - BDS – Migration</span></div>
  </div>
</div>

<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">

          <!-- Riphah Eligibility Alert -->
          <div class="alert mb-4"
            style="background:linear-gradient(135deg,#fff3e0,#fff);border:1px solid rgba(230,81,0,.25);border-radius:12px;padding:18px 20px;display:flex;align-items:center;gap:14px;">
            <i class="bi bi-exclamation-triangle-fill" style="color:#e65100;font-size:1.5rem;flex-shrink:0;"></i>
            <span style="font-family:var(--font-body);font-size:.9rem;color:var(--gray-dark);line-height:1.6;">
              As per Riphah International University Rules and Regulations, applicant having less than <strong>60% marks in any subject/paper</strong> shall not be eligible for migration.
            </span>
          </div>

          <h2 class="sec-title" style="font-size:1.6rem;">Vacant Seats in Peshawar Dental College</h2>
          
          <!-- Vacant Seats Table -->
          <div class="table-responsive mb-4">
            <table class="table table-bordered info-table" style="background:#fff;">
              <thead style="background:var(--navy);color:white;">
                <tr>
                  <th style="padding:14px;">Programme / Year</th>
                  <th style="padding:14px;">Session</th>
                  <th style="padding:14px;text-align:center;">Vacant Seats</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td style="padding:13px;font-weight:600;">1<sup>st</sup> Year BDS</td>
                  <td style="padding:13px;">2024-25</td>
                  <td style="padding:13px;text-align:center;font-weight:700;color:var(--gray-dark);">0</td>
                </tr>
                <tr style="background:#f9fafb;">
                  <td style="padding:13px;font-weight:600;">2<sup>nd</sup> Year BDS</td>
                  <td style="padding:13px;">2023-24</td>
                  <td style="padding:13px;text-align:center;font-weight:700;color:var(--gray-dark);">0</td>
                </tr>
                <tr>
                  <td style="padding:13px;font-weight:600;">3<sup>rd</sup> Year BDS</td>
                  <td style="padding:13px;">2023-24</td>
                  <td style="padding:13px;text-align:center;font-weight:700;color:var(--gray-dark);">0</td>
                </tr>
                <tr style="background:#f9fafb;">
                  <td style="padding:13px;font-weight:600;">Final Year BDS</td>
                  <td style="padding:13px;">2021-22</td>
                  <td style="padding:13px;text-align:center;font-weight:700;color:var(--gray-dark);">0</td>
                </tr>
              </tbody>
            </table>
          </div>

          <h2 class="sec-title" style="font-size:1.5rem;">INSTRUCTIONS FOR MIGRATION ON VACANTS</h2>
          <div class="pmc-card mb-4"
            style="border-radius:12px;background:#f4f7f9;border:1px solid var(--border-color);padding:22px 24px;">
            <p style="font-family:var(--font-body);font-size:.88rem;color:var(--gray-dark);margin-bottom:18px;">
              <i class="bi bi-journal-check" style="color:var(--teal);margin-right:6px;"></i>
              Peshawar Dental College follows Rules and Regulations of <strong>Pakistan Medical & Dental Council</strong> in letter in spirit, written as follows;
            </p>

            <ul style="list-style:none;padding-left:0;margin-bottom:0;">
              <li
                style="display:flex;align-items:flex-start;gap:10px;margin-bottom:13px;font-family:var(--font-body);font-size:.9rem;color:var(--gray-dark);line-height:1.7;">
                <i class="bi bi-dot" style="font-size:1.6rem;color:var(--navy);line-height:1;flex-shrink:0;"></i>
                <span>Students are allowed to apply against the notified vacant seats <strong>(from 2nd Year BDS to Final Year BDS)</strong> with immediate effect. As per PM&DC Admission Regulations 2023, <strong>no transfer / migration shall be allowed in the 1st year of BDS.</strong></span>
              </li>
              <li
                style="display:flex;align-items:flex-start;gap:10px;margin-bottom:13px;font-family:var(--font-body);font-size:.9rem;color:var(--gray-dark);line-height:1.7;">
                <i class="bi bi-dot" style="font-size:1.6rem;color:var(--navy);line-height:1;flex-shrink:0;"></i>
                <span>Students shall <strong>apply online</strong> for migration on vacant seats.</span>
              </li>
              <li
                style="display:flex;align-items:flex-start;gap:10px;margin-bottom:13px;font-family:var(--font-body);font-size:.9rem;color:var(--gray-dark);line-height:1.7;">
                <i class="bi bi-dot" style="font-size:1.6rem;color:var(--navy);line-height:1;flex-shrink:0;"></i>
                <span>Student will be admitted on <strong>merit based on average of Prof-examinations</strong>:</span>
              </li>
              <li
                style="display:flex;align-items:flex-start;gap:10px;margin-bottom:13px;font-family:var(--font-body);font-size:.9rem;color:var(--gray-dark);line-height:1.7;">
                <i class="bi bi-dot" style="font-size:1.6rem;color:var(--navy);line-height:1;flex-shrink:0;"></i>
                <span>As per Riphah International University Rules and Regulations, applicant having <strong>less than 60% marks in any subject/paper</strong> shall not be eligible for migration.</span>
              </li>
              <li
                style="display:flex;align-items:flex-start;gap:10px;margin-bottom:0;font-family:var(--font-body);font-size:.9rem;color:var(--gray-dark);line-height:1.7;">
                <i class="bi bi-dot" style="font-size:1.6rem;color:var(--navy);line-height:1;flex-shrink:0;"></i>
                <span>No transfer shall be accepted by a college to a vacant seat <strong>until reviewed by the Authority</strong> to ensure transparency.</span>
              </li>
            </ul>
          </div>

          <!-- Important Dates -->
          <div class="row g-3 mb-3">
            <div class="col-md-6">
              <div class="pmc-card text-center"
                style="border-radius:12px;padding:18px;background:#fff;border:1px solid var(--border-color);">
                <div
                  style="font-family:var(--font-body);font-size:.78rem;color:var(--gray-mid);text-transform:uppercase;letter-spacing:.05em;margin-bottom:6px;">
                  Last Date to Apply Online</div>
                <div style="font-family:var(--font-head);font-size:1.4rem;font-weight:900;color:#d32f2f;">02 March 2026</div>
              </div>
            </div>
          </div>

          <!-- Apply Online Button -->
          <div class="mt-4">
            <a href="https://pdc.prime.edu.pk/vacant_admission/" target="_blank" class="btn-pmc btn-pmc-primary" style="font-size:.95rem;padding:13px 30px;">
              <i class="bi bi-pencil-square"></i> Apply Online for Migration
            </a>
            <a href="/admissions" class="btn-pmc btn-pmc-outline ms-2" style="font-size:.95rem;padding:13px 30px;">
              <i class="bi bi-arrow-left-circle"></i> Back to Admissions
            </a>
          </div>

        </div>
      </div><!-- Sidebar remains unchanged -->
      
    </div>
  </div>
</section>','{"label":"Vacant Seats","section":"Academics","title":"Vacant Seats | Peshawar Dental College","description":"Vacant BDS seats and migration information at Peshawar Dental College, Peshawar.","priority":"0.5","changefreq":"monthly"}','published',0.5,'monthly','2026-10-13 17:20:46','2026-10-13 18:23:25','Vacant Seats (BDS) - (Migration)
 HomeVacant Seats - BDS – Migration
 



 
 
 
 

 
 
 
 
 As per Riphah International University Rules and Regulations, applicant having less than 60% marks in any subject/paper shall not be eligible for migration.
 
 

 Vacant Seats in Peshawar Dental College
 
 
 
 
 
 
 Programme / Year
 Session
 Vacant Seats
 
 
 
 
 1st Year BDS
 2024-25
 0
 
 
 2nd Year BDS
 2023-24
 0
 
 
 3rd Year BDS
 2023-24
 0
 
 
 Final Year BDS
 2021-22
 0
 
 
 
 

 INSTRUCTIONS FOR MIGRATION ON VACANTS
 
 
 
 Peshawar Dental College follows Rules and Regulations of Pakistan Medical & Dental Council in letter in spirit, written as follows;
 

 
 
 
 Students are allowed to apply against the notified vacant seats (from 2nd Year BDS to Final Year BDS) with immediate effect. As per PM&DC Admission Regulations 2023, no transfer / migration shall be allowed in the 1st year of BDS.
 
 
 
 Students shall apply online for migration on vacant seats.
 
 
 
 Student will be admitted on merit based on average of Prof-examinations:
 
 
 
 As per Riphah International University Rules and Regulations, applicant having less than 60% marks in any subject/paper shall not be eligible for migration.
 
 
 
 No transfer shall be accepted by a college to a vacant seat until reviewed by the Authority to ensure transparency.
 
 
 

 
 
 
 
 
 Last Date to Apply Online
 02 March 2026
 
 
 

 
 
 
 Apply Online for Migration
 
 
 Back to Admissions',0),
(17,'clinical-skill-labs','Clinical Skill Labs | PDC Peshawar','Clinical Skill Labs','Academics','Clinical skill labs at Peshawar Dental College for preclinical dental training.','clinical-skill-labs','<div class="page-hero"><div class="page-hero-grid"></div><div class="container page-hero-content"><h1>Clinical Skill Labs</h1><div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i class="bi bi-chevron-right"></i></span>Education &amp; Research <span class="sep"><i class="bi bi-chevron-right"></i></span><span class="current">Clinical Skill Labs</span></div></div></div>
<section class="pmc-section"><div class="container"><div class="row g-5"><div class="col-lg-8"><div class="page-content fu">
<h2 class="sec-title" style="font-size:1.8rem;">Clinical Skill Labs</h2>
<p>This page is currently under development and will be available soon. Please check back or <a href="/contact" style="color:var(--teal);font-weight:700;">contact us</a> for more information.</p>
<div class="pmc-card text-center mt-4" style="border-radius:14px;">
  <div style="font-size:3rem;color:var(--teal);margin-bottom:16px;"><i class="bi bi-tools"></i></div>
  <h4>Coming Soon</h4>
  <p>We are working hard to bring you this content. In the meantime, visit us at the college or contact the relevant department.</p>
  <a href="/contact" class="btn-pmc btn-pmc-primary mt-3"><i class="bi bi-envelope"></i> Contact Us</a>
</div></div></div><div class="col-lg-4 fu fu-delay-2"><div class="sidebar-widget"><div class="sw-head"><i class="bi bi-grid-fill"></i> Quick Navigation</div><div class="sw-body"><a class="sw-link" href="/about"><i class="bi bi-building"></i>Introduction</a><a class="sw-link" href="/vision-mission"><i class="bi bi-eye"></i>Vision &amp; Mission</a><a class="sw-link" href="/faculty"><i class="bi bi-people"></i>Faculty</a><a class="sw-link" href="/admissions"><i class="bi bi-mortarboard"></i>Admissions</a><a class="sw-link" href="/vacant-seats"><i class="bi bi-door-open"></i>Vacant Seats</a><a class="sw-link" href="/medical-education"><i class="bi bi-book"></i>Medical Education</a><a class="sw-link" href="/curriculum"><i class="bi bi-journal-text"></i>Curriculum</a><a class="sw-link" href="/examinations"><i class="bi bi-clipboard-pulse"></i>Examinations</a><a class="sw-link" href="/umr"><i class="bi bi-flask"></i>UMR Research</a><a class="sw-link" href="/contact"><i class="bi bi-envelope"></i>Contact Us</a></div></div><div class="sidebar-widget"><div class="sw-head"><i class="bi bi-hospital-fill"></i> Teaching Hospitals</div><div class="sw-body"><a class="sw-link" href="https://prime.edu.pk/pf/idx_kth.php" target="_blank"><i class="bi bi-hospital"></i>Kuwait Teaching Hospital</a><a class="sw-link" href="https://mth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-heart-pulse"></i>Mercy Teaching Hospital</a><a class="sw-link" href="https://pth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-capsule-pill"></i>Prime Teaching Hospital</a><a class="sw-link" href="https://prime.edu.pk/pf/community-development.php" target="_blank"><i class="bi bi-people-fill"></i>Community Dev. Center</a></div></div><div class="sidebar-widget"><div class="sw-head" style="background:var(--teal);"><i class="bi bi-mortarboard-fill"></i> Apply Now</div><div class="sw-body" style="padding:18px 20px;"><p style="font-family:var(--font-body);font-size:.84rem;color:var(--gray-mid);margin-bottom:14px;">Admissions for MBBS 2026-27 are open.</p><a href="/admissions" class="btn-pmc btn-pmc-primary w-100 justify-content-center" style="font-size:.82rem;padding:11px;">Apply for MBBS 2026-27</a><a href="/vacant-seats" class="btn-pmc btn-pmc-outline w-100 justify-content-center mt-2" style="font-size:.82rem;padding:11px;">Check Vacant Seats</a></div></div></div></div></div></section>
<section class="pmc-section-sm recog-strip"><div class="container"><div class="recog-grid"><div class="recog-cell"><div class="recog-ico"><i class="bi bi-patch-check-fill"></i></div><div class="recog-name">PM&DC</div></div><div class="recog-cell"><div class="recog-ico"><i class="bi bi-building-fill"></i></div><div class="recog-name">Riphah International University</div></div><div class="recog-cell"><div class="recog-ico"><i class="bi bi-award-fill"></i></div><div class="recog-name">CPSP</div></div><div class="recog-cell"><div class="recog-ico"><i class="bi bi-hospital-fill"></i></div><div class="recog-name">Ministry of Health</div></div><div class="recog-cell" style="border-right:none;"><div class="recog-ico"><i class="bi bi-globe-americas"></i></div><div class="recog-name">WHO</div></div></div></div></section>','{"label":"Clinical Skill Labs","section":"Academics","title":"Clinical Skill Labs | PDC Peshawar","description":"Clinical skill labs at Peshawar Dental College for preclinical dental training.","priority":"0.5","changefreq":"yearly"}','published',0.5,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Clinical Skill LabsHomeEducation & Research Clinical Skill Labs

Clinical Skill Labs
This page is currently under development and will be available soon. Please check back or contact us for more information.

 
 Coming Soon
 We are working hard to bring you this content. In the meantime, visit us at the college or contact the relevant department.
 Contact Us
 Quick NavigationIntroductionVision & MissionFacultyAdmissionsVacant SeatsMedical EducationCurriculumExaminationsUMR ResearchContact Us Teaching HospitalsKuwait Teaching HospitalMercy Teaching HospitalPrime Teaching HospitalCommunity Dev. Center Apply NowAdmissions for MBBS 2026-27 are open.Apply for MBBS 2026-27Check Vacant Seats
PM&DCRiphah International UniversityCPSPMinistry of HealthWHO',1),
(18,'virtual-museum','Virtual Museum | Peshawar Dental College','Virtual Museum','Academics','Virtual museum of Peshawar Dental College.','virtual-museum','<div class="page-hero"><div class="page-hero-grid"></div><div class="container page-hero-content"><h1>Virtual Museum</h1><div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i class="bi bi-chevron-right"></i></span>Education &amp; Research <span class="sep"><i class="bi bi-chevron-right"></i></span><span class="current">Virtual Museum</span></div></div></div>
<section class="pmc-section"><div class="container"><div class="row g-5"><div class="col-lg-8"><div class="page-content fu">
<h2 class="sec-title" style="font-size:1.8rem;">Virtual Museum</h2>
<p>This page is currently under development and will be available soon. Please check back or <a href="/contact" style="color:var(--teal);font-weight:700;">contact us</a> for more information.</p>
<div class="pmc-card text-center mt-4" style="border-radius:14px;">
  <div style="font-size:3rem;color:var(--teal);margin-bottom:16px;"><i class="bi bi-tools"></i></div>
  <h4>Coming Soon</h4>
  <p>We are working hard to bring you this content. In the meantime, visit us at the college or contact the relevant department.</p>
  <a href="/contact" class="btn-pmc btn-pmc-primary mt-3"><i class="bi bi-envelope"></i> Contact Us</a>
</div></div></div><div class="col-lg-4 fu fu-delay-2"><div class="sidebar-widget"><div class="sw-head"><i class="bi bi-grid-fill"></i> Quick Navigation</div><div class="sw-body"><a class="sw-link" href="/about"><i class="bi bi-building"></i>Introduction</a><a class="sw-link" href="/vision-mission"><i class="bi bi-eye"></i>Vision &amp; Mission</a><a class="sw-link" href="/faculty"><i class="bi bi-people"></i>Faculty</a><a class="sw-link" href="/admissions"><i class="bi bi-mortarboard"></i>Admissions</a><a class="sw-link" href="/vacant-seats"><i class="bi bi-door-open"></i>Vacant Seats</a><a class="sw-link" href="/medical-education"><i class="bi bi-book"></i>Medical Education</a><a class="sw-link" href="/curriculum"><i class="bi bi-journal-text"></i>Curriculum</a><a class="sw-link" href="/examinations"><i class="bi bi-clipboard-pulse"></i>Examinations</a><a class="sw-link" href="/umr"><i class="bi bi-flask"></i>UMR Research</a><a class="sw-link" href="/contact"><i class="bi bi-envelope"></i>Contact Us</a></div></div><div class="sidebar-widget"><div class="sw-head"><i class="bi bi-hospital-fill"></i> Teaching Hospitals</div><div class="sw-body"><a class="sw-link" href="https://prime.edu.pk/pf/idx_kth.php" target="_blank"><i class="bi bi-hospital"></i>Kuwait Teaching Hospital</a><a class="sw-link" href="https://mth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-heart-pulse"></i>Mercy Teaching Hospital</a><a class="sw-link" href="https://pth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-capsule-pill"></i>Prime Teaching Hospital</a><a class="sw-link" href="https://prime.edu.pk/pf/community-development.php" target="_blank"><i class="bi bi-people-fill"></i>Community Dev. Center</a></div></div><div class="sidebar-widget"><div class="sw-head" style="background:var(--teal);"><i class="bi bi-mortarboard-fill"></i> Apply Now</div><div class="sw-body" style="padding:18px 20px;"><p style="font-family:var(--font-body);font-size:.84rem;color:var(--gray-mid);margin-bottom:14px;">Admissions for MBBS 2026-27 are open.</p><a href="/admissions" class="btn-pmc btn-pmc-primary w-100 justify-content-center" style="font-size:.82rem;padding:11px;">Apply for MBBS 2026-27</a><a href="/vacant-seats" class="btn-pmc btn-pmc-outline w-100 justify-content-center mt-2" style="font-size:.82rem;padding:11px;">Check Vacant Seats</a></div></div></div></div></div></section>
<section class="pmc-section-sm recog-strip"><div class="container"><div class="recog-grid"><div class="recog-cell"><div class="recog-ico"><i class="bi bi-patch-check-fill"></i></div><div class="recog-name">PM&DC</div></div><div class="recog-cell"><div class="recog-ico"><i class="bi bi-building-fill"></i></div><div class="recog-name">Riphah International University</div></div><div class="recog-cell"><div class="recog-ico"><i class="bi bi-award-fill"></i></div><div class="recog-name">CPSP</div></div><div class="recog-cell"><div class="recog-ico"><i class="bi bi-hospital-fill"></i></div><div class="recog-name">Ministry of Health</div></div><div class="recog-cell" style="border-right:none;"><div class="recog-ico"><i class="bi bi-globe-americas"></i></div><div class="recog-name">WHO</div></div></div></div></section>','{"label":"Virtual Museum","section":"Academics","title":"Virtual Museum | Peshawar Dental College","description":"Virtual museum of Peshawar Dental College.","priority":"0.3","changefreq":"yearly"}','published',0.3,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Virtual MuseumHomeEducation & Research Virtual Museum

Virtual Museum
This page is currently under development and will be available soon. Please check back or contact us for more information.

 
 Coming Soon
 We are working hard to bring you this content. In the meantime, visit us at the college or contact the relevant department.
 Contact Us
 Quick NavigationIntroductionVision & MissionFacultyAdmissionsVacant SeatsMedical EducationCurriculumExaminationsUMR ResearchContact Us Teaching HospitalsKuwait Teaching HospitalMercy Teaching HospitalPrime Teaching HospitalCommunity Dev. Center Apply NowAdmissions for MBBS 2026-27 are open.Apply for MBBS 2026-27Check Vacant Seats
PM&DCRiphah International UniversityCPSPMinistry of HealthWHO',1),
(19,'student-exchange','Student Exchange | Peshawar Dental College','Student Exchange','Academics','Student exchange opportunities at Peshawar Dental College.','student-exchange','<div class="page-hero"><div class="page-hero-grid"></div><div class="container page-hero-content"><h1>Student Exchange &amp; Electives</h1><div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i class="bi bi-chevron-right"></i></span>Education &amp; Research <span class="sep"><i class="bi bi-chevron-right"></i></span><span class="current">Student Exchange &amp; Electives</span></div></div></div>
<section class="pmc-section"><div class="container"><div class="row g-5"><div class="col-lg-8"><div class="page-content fu">
<h2 class="sec-title" style="font-size:1.8rem;">Student Exchange &amp; Electives</h2>
<p>This page is currently under development and will be available soon. Please check back or <a href="/contact" style="color:var(--teal);font-weight:700;">contact us</a> for more information.</p>
<div class="pmc-card text-center mt-4" style="border-radius:14px;">
  <div style="font-size:3rem;color:var(--teal);margin-bottom:16px;"><i class="bi bi-tools"></i></div>
  <h4>Coming Soon</h4>
  <p>We are working hard to bring you this content. In the meantime, visit us at the college or contact the relevant department.</p>
  <a href="/contact" class="btn-pmc btn-pmc-primary mt-3"><i class="bi bi-envelope"></i> Contact Us</a>
</div></div></div><div class="col-lg-4 fu fu-delay-2"><div class="sidebar-widget"><div class="sw-head"><i class="bi bi-grid-fill"></i> Quick Navigation</div><div class="sw-body"><a class="sw-link" href="/about"><i class="bi bi-building"></i>Introduction</a><a class="sw-link" href="/vision-mission"><i class="bi bi-eye"></i>Vision &amp; Mission</a><a class="sw-link" href="/faculty"><i class="bi bi-people"></i>Faculty</a><a class="sw-link" href="/admissions"><i class="bi bi-mortarboard"></i>Admissions</a><a class="sw-link" href="/vacant-seats"><i class="bi bi-door-open"></i>Vacant Seats</a><a class="sw-link" href="/medical-education"><i class="bi bi-book"></i>Medical Education</a><a class="sw-link" href="/curriculum"><i class="bi bi-journal-text"></i>Curriculum</a><a class="sw-link" href="/examinations"><i class="bi bi-clipboard-pulse"></i>Examinations</a><a class="sw-link" href="/umr"><i class="bi bi-flask"></i>UMR Research</a><a class="sw-link" href="/contact"><i class="bi bi-envelope"></i>Contact Us</a></div></div><div class="sidebar-widget"><div class="sw-head"><i class="bi bi-hospital-fill"></i> Teaching Hospitals</div><div class="sw-body"><a class="sw-link" href="https://prime.edu.pk/pf/idx_kth.php" target="_blank"><i class="bi bi-hospital"></i>Kuwait Teaching Hospital</a><a class="sw-link" href="https://mth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-heart-pulse"></i>Mercy Teaching Hospital</a><a class="sw-link" href="https://pth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-capsule-pill"></i>Prime Teaching Hospital</a><a class="sw-link" href="https://prime.edu.pk/pf/community-development.php" target="_blank"><i class="bi bi-people-fill"></i>Community Dev. Center</a></div></div><div class="sidebar-widget"><div class="sw-head" style="background:var(--teal);"><i class="bi bi-mortarboard-fill"></i> Apply Now</div><div class="sw-body" style="padding:18px 20px;"><p style="font-family:var(--font-body);font-size:.84rem;color:var(--gray-mid);margin-bottom:14px;">Admissions for MBBS 2026-27 are open.</p><a href="/admissions" class="btn-pmc btn-pmc-primary w-100 justify-content-center" style="font-size:.82rem;padding:11px;">Apply for MBBS 2026-27</a><a href="/vacant-seats" class="btn-pmc btn-pmc-outline w-100 justify-content-center mt-2" style="font-size:.82rem;padding:11px;">Check Vacant Seats</a></div></div></div></div></div></section>
<section class="pmc-section-sm recog-strip"><div class="container"><div class="recog-grid"><div class="recog-cell"><div class="recog-ico"><i class="bi bi-patch-check-fill"></i></div><div class="recog-name">PM&DC</div></div><div class="recog-cell"><div class="recog-ico"><i class="bi bi-building-fill"></i></div><div class="recog-name">Riphah International University</div></div><div class="recog-cell"><div class="recog-ico"><i class="bi bi-award-fill"></i></div><div class="recog-name">CPSP</div></div><div class="recog-cell"><div class="recog-ico"><i class="bi bi-hospital-fill"></i></div><div class="recog-name">Ministry of Health</div></div><div class="recog-cell" style="border-right:none;"><div class="recog-ico"><i class="bi bi-globe-americas"></i></div><div class="recog-name">WHO</div></div></div></div></section>','{"label":"Student Exchange","section":"Academics","title":"Student Exchange | Peshawar Dental College","description":"Student exchange opportunities at Peshawar Dental College.","priority":"0.4","changefreq":"yearly"}','published',0.4,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Student Exchange & ElectivesHomeEducation & Research Student Exchange & Electives

Student Exchange & Electives
This page is currently under development and will be available soon. Please check back or contact us for more information.

 
 Coming Soon
 We are working hard to bring you this content. In the meantime, visit us at the college or contact the relevant department.
 Contact Us
 Quick NavigationIntroductionVision & MissionFacultyAdmissionsVacant SeatsMedical EducationCurriculumExaminationsUMR ResearchContact Us Teaching HospitalsKuwait Teaching HospitalMercy Teaching HospitalPrime Teaching HospitalCommunity Dev. Center Apply NowAdmissions for MBBS 2026-27 are open.Apply for MBBS 2026-27Check Vacant Seats
PM&DCRiphah International UniversityCPSPMinistry of HealthWHO',1),
(20,'gallery','Photo Gallery | Peshawar Dental College','Gallery','News','Photo gallery of Peshawar Dental College campus, clinics, and student life.','gallery','<style>
    /* ══ FILTER TABS ══ */
    .gallery-filters {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
      margin-bottom: 40px;
      justify-content: center;
    }
    .gf-btn {
      font-family: var(--font-head);
      font-size: .78rem;
      font-weight: 700;
      padding: 9px 22px;
      border-radius: 100px;
      border: 2px solid var(--border);
      background: white;
      color: var(--gray-dark);
      cursor: pointer;
      transition: all .2s;
      letter-spacing: .02em;
    }
    .gf-btn:hover  { border-color: var(--teal); color: var(--teal); }
    .gf-btn.active { background: var(--teal); border-color: var(--teal); color: white; }

    /* ══ GALLERY GRID ══ */
    .gallery-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 14px;
    }
    .gallery-item {
      position: relative;
      border-radius: var(--r-md);
      overflow: hidden;
      aspect-ratio: 1;
      cursor: pointer;
      background: var(--gray-light);
      transition: transform .3s, box-shadow .3s;
    }
    .gallery-item:hover { transform: scale(1.02); box-shadow: var(--shadow-lg); }

    /* Span variants */
    .gallery-item.span-2     { grid-column: span 2; aspect-ratio: 2/1; }
    .gallery-item.span-2-row { grid-row: span 2; aspect-ratio: 1/2; }

    .gallery-img {
      width: 100%; height: 100%;
      object-fit: cover;
      display: block;
      transition: transform .4s;
    }
    .gallery-item:hover .gallery-img { transform: scale(1.06); }

    /* Placeholder (when no image) */
    .gallery-placeholder {
      width: 100%; height: 100%;
      background: linear-gradient(135deg, var(--navy), var(--navy-mid));
      display: flex; flex-direction: column;
      align-items: center; justify-content: center;
      gap: 10px;
      transition: filter .3s;
    }
    .gallery-placeholder i    { font-size: 2rem; color: rgba(255,255,255,.5); }
    .gallery-placeholder span { font-family: var(--font-head); font-size: .75rem; color: rgba(255,255,255,.4); text-transform: uppercase; letter-spacing: .08em; }

    /* Overlay */
    .gallery-overlay {
      position: absolute; inset: 0;
      background: linear-gradient(to top, rgba(10,22,40,.85) 0%, transparent 55%);
      opacity: 0;
      transition: opacity .25s;
      display: flex; align-items: flex-end;
      padding: 18px;
    }
    .gallery-item:hover .gallery-overlay { opacity: 1; }
    .gallery-overlay-text {
      font-family: var(--font-head);
      font-size: .82rem;
      font-weight: 700;
      color: white;
      line-height: 1.3;
    }
    .gallery-overlay-cat {
      font-family: var(--font-body);
      font-size: .68rem;
      font-weight: 700;
      color: var(--teal-light);
      text-transform: uppercase;
      letter-spacing: .08em;
      margin-bottom: 3px;
    }
    /* Zoom icon badge */
    .gallery-zoom {
      position: absolute;
      top: 12px; right: 12px;
      width: 32px; height: 32px;
      background: rgba(255,255,255,.15);
      backdrop-filter: blur(8px);
      border-radius: 8px;
      display: flex; align-items: center; justify-content: center;
      color: white; font-size: .9rem;
      opacity: 0; transition: opacity .25s;
    }
    .gallery-item:hover .gallery-zoom { opacity: 1; }

    /* ══ LIGHTBOX ══ */
    .pmc-lightbox {
      position: fixed; inset: 0;
      background: rgba(6,14,26,.96);
      z-index: 9999;
      display: none;
      align-items: center;
      justify-content: center;
    }
    .pmc-lightbox.open { display: flex; animation: lbFade .25s ease; }
    @keyframes lbFade { from{opacity:0} to{opacity:1} }

    .lb-inner {
      position: relative;
      max-width: 90vw;
      max-height: 90vh;
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    .lb-img-wrap {
      position: relative;
      border-radius: var(--r-md);
      overflow: hidden;
      box-shadow: 0 24px 80px rgba(0,0,0,.6);
    }
    .lb-img {
      max-width: 88vw;
      max-height: 76vh;
      object-fit: contain;
      display: block;
    }
    /* Placeholder in lightbox */
    .lb-placeholder {
      width: 600px; max-width: 88vw;
      height: 400px; max-height: 76vh;
      background: linear-gradient(135deg, var(--navy), var(--navy-mid));
      display: flex; flex-direction: column;
      align-items: center; justify-content: center;
      gap: 14px;
    }
    .lb-placeholder i    { font-size: 3rem; color: rgba(255,255,255,.4); }
    .lb-placeholder span { font-family:var(--font-head); font-size:.8rem; color:rgba(255,255,255,.35); }

    .lb-caption {
      margin-top: 16px;
      text-align: center;
    }
    .lb-caption-title {
      font-family: var(--font-head);
      font-size: .95rem;
      font-weight: 700;
      color: white;
      margin-bottom: 3px;
    }
    .lb-caption-cat {
      font-family: var(--font-body);
      font-size: .75rem;
      color: var(--teal-light);
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: .07em;
    }
    .lb-counter {
      font-family: var(--font-body);
      font-size: .75rem;
      color: rgba(255,255,255,.35);
      margin-top: 6px;
    }

    /* Controls */
    .lb-close {
      position: absolute;
      top: -48px; right: 0;
      width: 40px; height: 40px;
      background: rgba(255,255,255,.1);
      border: none; border-radius: 8px;
      color: white; font-size: 1.1rem;
      cursor: pointer;
      display: flex; align-items: center; justify-content: center;
      transition: background .2s;
    }
    .lb-close:hover { background: rgba(255,255,255,.2); }

    .lb-prev, .lb-next {
      position: fixed;
      top: 50%; transform: translateY(-50%);
      width: 48px; height: 48px;
      background: rgba(255,255,255,.1);
      border: 1px solid rgba(255,255,255,.15);
      border-radius: 50%;
      color: white; font-size: 1.2rem;
      cursor: pointer;
      display: flex; align-items: center; justify-content: center;
      transition: background .2s;
    }
    .lb-prev { left: 20px; }
    .lb-next { right: 20px; }
    .lb-prev:hover, .lb-next:hover { background: rgba(194,65,12,.5); }

    /* ══ ALBUM SECTION HEADING ══ */
    .album-heading {
      display: flex;
      align-items: center;
      gap: 14px;
      margin-bottom: 22px;
      padding-bottom: 14px;
      border-bottom: 2px solid var(--border);
    }
    .album-heading-icon {
      width: 44px; height: 44px;
      background: var(--navy);
      border-radius: 10px;
      display: flex; align-items: center; justify-content: center;
      color: var(--gold); font-size: 1.2rem;
      flex-shrink: 0;
    }
    .album-title {
      font-family: var(--font-head);
      font-size: 1.1rem;
      font-weight: 800;
      color: var(--navy);
    }
    .album-count {
      font-family: var(--font-body);
      font-size: .75rem;
      font-weight: 700;
      color: white;
      background: var(--teal);
      padding: 2px 10px;
      border-radius: 100px;
    }

    /* ══ EMPTY STATE ══ */
    .gallery-empty {
      text-align: center;
      padding: 70px 0;
    }
    .gallery-empty i { font-size: 3rem; color: var(--gray-light); margin-bottom: 14px; display: block; }

    /* ══ BACK TO TOP ══ */
    #backToTop {
      position: fixed; bottom: 28px; right: 28px;
      width: 44px; height: 44px; background: var(--teal);
      color: white; border: none; border-radius: 10px; font-size: 1.1rem;
      display: flex; align-items: center; justify-content: center;
      cursor: pointer; z-index: 999; opacity: 0; transform: translateY(10px);
      transition: opacity .25s, transform .25s, background .2s;
      box-shadow: 0 4px 18px rgba(194,65,12,.35);
    }
    #backToTop.visible { opacity: 1; transform: translateY(0); }
    #backToTop:hover   { background: var(--navy); }

    /* ══ RESPONSIVE ══ */
    @media (max-width: 991.98px) {
      .gallery-grid { grid-template-columns: repeat(3,1fr); }
      .gallery-item.span-2 { grid-column: span 2; }
      .gallery-item.span-2-row { grid-row: span 1; aspect-ratio: 1; }
    }
    @media (max-width: 767.98px) {
      .gallery-grid { grid-template-columns: repeat(2,1fr); }
      .gallery-item.span-2     { grid-column: span 2; }
      .gallery-item.span-2-row { grid-row: span 1; aspect-ratio: 1; }
      .lb-prev, .lb-next { display: none; }
    }
    @media (max-width: 480px) {
      .gallery-grid { grid-template-columns: 1fr 1fr; gap: 8px; }
    }
  </style>


<!-- PAGE HERO -->
<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <span class="page-hero-eyebrow">Department of Dental Sciences</span>
    <h1>Photo Gallery</h1>
    <div class="breadcrumb-pmc">
      <a href="/">Home</a>
      <span class="sep"><i class="bi bi-chevron-right"></i></span>
      <span class="current">Gallery</span>
    </div>
  </div>
</div>

<section class="pmc-section bg-off">
  <div class="container">
    <div class="row mb-5">
      <div class="col-lg-7">
        <span class="sec-eyebrow">Visual Journey</span>
        <h2 class="sec-title">Life at Peshawar Dental College</h2>
        <p class="sec-desc">Explore PDC campus buildings and shared campus facilities that support dental education at Riphah International University – Peshawar Campus.</p>
      </div>
    </div>

    <div class="gallery-filters">
      <button class="gf-btn active" data-filter="all" type="button"><i class="bi bi-grid-3x3-gap me-1"></i> All Albums</button>
      <button class="gf-btn" data-filter="campus" type="button"><i class="bi bi-buildings me-1"></i> Campus</button>
      <button class="gf-btn" data-filter="facilities" type="button"><i class="bi bi-house-heart me-1"></i> Facilities</button>
    </div>


    <div class="album-section mb-5" data-category="">
      <div class="album-heading">
        <div class="album-heading-icon"><i class="bi "></i></div>
        <div>
          <div class="album-title"></div>
          <span class="album-count"> Photos</span>
        </div>
        <div class="ms-auto">
          <button class="gf-btn" type="button" style="font-size:.72rem;padding:6px 14px;" onclick="openAlbumLightbox('''')">
            <i class="bi bi-images me-1"></i> View Album
          </button>
        </div>
      </div>
      <div class="gallery-grid" id="grid-">

        <div class="gallery-item fu"
             data-category=""
             data-title=""
             data-caption=""
             data-img=""
             onclick="openLightbox(this)">
          <img src=""
               alt=""
               class="gallery-img" loading="lazy" decoding="async" />
          <div class="gallery-zoom"><i class="bi bi-zoom-in"></i></div>
          <div class="gallery-overlay">
            <div>
              <div class="gallery-overlay-cat"></div>
              <div class="gallery-overlay-text"></div>
            </div>
          </div>
        </div>

      </div>
    </div>


  </div>
</section>


<!-- ═══ LIGHTBOX ═══ -->
<div class="pmc-lightbox" id="pmcLightbox" onclick="closeLightboxOnBackdrop(event)">
  <div class="lb-inner" id="lbInner">
    <button class="lb-close" onclick="closeLightbox()" aria-label="Close"><i class="bi bi-x-lg"></i></button>
    <div class="lb-img-wrap" id="lbImgWrap">
      <!-- content injected by JS -->
    </div>
    <div class="lb-caption" id="lbCaption"></div>
    <div class="lb-counter" id="lbCounter"></div>
  </div>
  <button class="lb-prev" onclick="lbNav(-1)" aria-label="Previous"><i class="bi bi-chevron-left"></i></button>
  <button class="lb-next" onclick="lbNav(1)"  aria-label="Next"><i class="bi bi-chevron-right"></i></button>
</div>

<!-- Recognition Strip -->
<section class="pmc-section-sm recog-strip">
  <div class="container">
    <div class="recog-grid">
      <div class="recog-cell"><div class="recog-ico"><i class="bi bi-patch-check-fill"></i></div><div class="recog-name">PM&DC</div></div>
      <div class="recog-cell"><div class="recog-ico"><i class="bi bi-building-fill"></i></div><div class="recog-name">Riphah University</div></div>
      <div class="recog-cell"><div class="recog-ico"><i class="bi bi-award-fill"></i></div><div class="recog-name">CPSP</div></div>
      <div class="recog-cell"><div class="recog-ico"><i class="bi bi-hospital-fill"></i></div><div class="recog-name">Ministry of Health</div></div>
      <div class="recog-cell" style="border-right:none;"><div class="recog-ico"><i class="bi bi-globe-americas"></i></div><div class="recog-name">WHO</div></div>
    </div>
  </div>
</section>

<!-- ═══ FOOTER ═══ -->


<button id="backToTop" aria-label="Back to top"><i class="bi bi-chevron-up"></i></button>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/assets/js/pmc-global.js"></script>
<script>
/* ══════════════════════════════════════════════
   GALLERY PAGE SCRIPTS
══════════════════════════════════════════════ */

// ── Placeholder HTML generator ──────────────────────────────────
function galleryPlaceholder(label, icon) {
  return `<div class="gallery-placeholder">
    <i class="bi ${icon || ''bi-image''}"></i>
    <span>${label}</span>
  </div>
  <div class="gallery-zoom"><i class="bi bi-zoom-in"></i></div>
  <div class="gallery-overlay">
    <div><div class="gallery-overlay-text">${label}</div></div>
  </div>`;
}

// ── Filter ───────────────────────────────────────────────────────
const filterBtns   = document.querySelectorAll(''.gf-btn[data-filter]'');
const albumSections = document.querySelectorAll(''.album-section'');

filterBtns.forEach(btn => {
  btn.addEventListener(''click'', () => {
    filterBtns.forEach(b => b.classList.remove(''active''));
    btn.classList.add(''active'');
    const filter = btn.dataset.filter;

    albumSections.forEach(section => {
      const cat = section.dataset.category;
      const show = filter === ''all'' || cat === filter;
      section.style.display = show ? '''' : ''none'';
      if (show) section.style.animation = ''none'';
    });

    // Scroll to first visible album
    const first = [...albumSections].find(s => s.style.display !== ''none'');
    if (first && filter !== ''all'') first.scrollIntoView({ behavior: ''smooth'', block: ''start'' });
  });
});

// ── Lightbox ─────────────────────────────────────────────────────
let lbItems   = [];
let lbCurrent = 0;

function openLightbox(el) {
  // Collect all gallery items currently visible
  lbItems = [...document.querySelectorAll(''.gallery-item[data-img]'')].filter(e => {
    return e.closest(''.album-section'').style.display !== ''none'';
  });
  lbCurrent = lbItems.indexOf(el);
  renderLightbox();
  document.getElementById(''pmcLightbox'').classList.add(''open'');
  document.body.style.overflow = ''hidden'';
}

function openAlbumLightbox(category) {
  lbItems = [...document.querySelectorAll(`.gallery-item[data-category="${category}"][data-img]`)];
  lbCurrent = 0;
  renderLightbox();
  document.getElementById(''pmcLightbox'').classList.add(''open'');
  document.body.style.overflow = ''hidden'';
}

function closeLightbox() {
  document.getElementById(''pmcLightbox'').classList.remove(''open'');
  document.body.style.overflow = '''';
}

function closeLightboxOnBackdrop(e) {
  if (e.target === document.getElementById(''pmcLightbox'')) closeLightbox();
}

function lbNav(dir) {
  lbCurrent = ((lbCurrent + dir) + lbItems.length) % lbItems.length;
  renderLightbox();
}

function renderLightbox() {
  const el    = lbItems[lbCurrent];
  const img   = el.dataset.img   || '''';
  const title = el.dataset.title || '''';
  const cap   = el.dataset.caption || '''';
  const cat   = el.dataset.category || '''';

  const wrap = document.getElementById(''lbImgWrap'');
  const isFallback = !img || img.endsWith(''/'');

  if (img) {
    wrap.innerHTML = `<img src="${img}" class="lb-img" alt="${title}"
      onerror="this.parentElement.innerHTML=''<div class=\\''lb-placeholder\\''><i class=\\''bi bi-image\\''></i><span>${title}</span></div>''"
    />`;
  } else {
    wrap.innerHTML = `<div class="lb-placeholder"><i class="bi bi-image"></i><span>${title}</span></div>`;
  }

  document.getElementById(''lbCaption'').innerHTML = `
    <div class="lb-caption-cat">${cat}</div>
    <div class="lb-caption-title">${title}</div>
    ${cap ? `<div style="font-family:var(--font-body);font-size:.8rem;color:rgba(255,255,255,.5);margin-top:3px;">${cap}</div>` : ''''}
  `;
  document.getElementById(''lbCounter'').textContent = `${lbCurrent + 1} / ${lbItems.length}`;
}

// Keyboard navigation
document.addEventListener(''keydown'', e => {
  const lb = document.getElementById(''pmcLightbox'');
  if (!lb.classList.contains(''open'')) return;
  if (e.key === ''ArrowRight'' || e.key === ''ArrowDown'') lbNav(1);
  if (e.key === ''ArrowLeft''  || e.key === ''ArrowUp'')   lbNav(-1);
  if (e.key === ''Escape'') closeLightbox();
});

// ── Fade-up observer ─────────────────────────────────────────────
const fuEls = document.querySelectorAll(''.fu'');
const obs = new IntersectionObserver(entries => {
  entries.forEach(e => { if (e.isIntersecting) { e.target.classList.add(''vis''); obs.unobserve(e.target); } });
}, { threshold: 0.08 });
fuEls.forEach(el => obs.observe(el));

// ── Load More (placeholder) ─────────────────────────────────────
function loadMore() {
  document.getElementById(''loadMoreBtn'').innerHTML = ''<i class="bi bi-check-circle"></i> All Photos Loaded'';
  document.getElementById(''loadMoreBtn'').disabled = true;
}

// ── Back to top ──────────────────────────────────────────────────
const btt = document.getElementById(''backToTop'');
window.addEventListener(''scroll'', () => btt.classList.toggle(''visible'', scrollY > 500));
btt.addEventListener(''click'', () => window.scrollTo({ top: 0, behavior: ''smooth'' }));

// ── Navbar scroll ────────────────────────────────────────────────
const nav = document.getElementById(''mainNav'');
window.addEventListener(''scroll'', () => nav.classList.toggle(''scrolled'', scrollY > 40));
</script>','{"label":"Gallery","section":"News","title":"Photo Gallery | Peshawar Dental College","description":"Photo gallery of Peshawar Dental College campus, clinics, and student life.","priority":"0.3","changefreq":"monthly"}','published',0.3,'monthly','2026-10-13 17:20:46','2026-10-13 18:23:25','/* ══ FILTER TABS ══ */
 .gallery-filters {
 display: flex;
 flex-wrap: wrap;
 gap: 10px;
 margin-bottom: 40px;
 justify-content: center;
 }
 .gf-btn {
 font-family: var(--font-head);
 font-size: .78rem;
 font-weight: 700;
 padding: 9px 22px;
 border-radius: 100px;
 border: 2px solid var(--border);
 background: white;
 color: var(--gray-dark);
 cursor: pointer;
 transition: all .2s;
 letter-spacing: .02em;
 }
 .gf-btn:hover { border-color: var(--teal); color: var(--teal); }
 .gf-btn.active { background: var(--teal); border-color: var(--teal); color: white; }

 /* ══ GALLERY GRID ══ */
 .gallery-grid {
 display: grid;
 grid-template-columns: repeat(4, 1fr);
 gap: 14px;
 }
 .gallery-item {
 position: relative;
 border-radius: var(--r-md);
 overflow: hidden;
 aspect-ratio: 1;
 cursor: pointer;
 background: var(--gray-light);
 transition: transform .3s, box-shadow .3s;
 }
 .gallery-item:hover { transform: scale(1.02); box-shadow: var(--shadow-lg); }

 /* Span variants */
 .gallery-item.span-2 { grid-column: span 2; aspect-ratio: 2/1; }
 .gallery-item.span-2-row { grid-row: span 2; aspect-ratio: 1/2; }

 .gallery-img {
 width: 100%; height: 100%;
 object-fit: cover;
 display: block;
 transition: transform .4s;
 }
 .gallery-item:hover .gallery-img { transform: scale(1.06); }

 /* Placeholder (when no image) */
 .gallery-placeholder {
 width: 100%; height: 100%;
 background: linear-gradient(135deg, var(--navy), var(--navy-mid));
 display: flex; flex-direction: column;
 align-items: center; justify-content: center;
 gap: 10px;
 transition: filter .3s;
 }
 .gallery-placeholder i { font-size: 2rem; color: rgba(255,255,255,.5); }
 .gallery-placeholder span { font-family: var(--font-head); font-size: .75rem; color: rgba(255,255,255,.4); text-transform: uppercase; letter-spacing: .08em; }

 /* Overlay */
 .gallery-overlay {
 position: absolute; inset: 0;
 background: linear-gradient(to top, rgba(10,22,40,.85) 0%, transparent 55%);
 opacity: 0;
 transition: opacity .25s;
 display: flex; align-items: flex-end;
 padding: 18px;
 }
 .gallery-item:hover .gallery-overlay { opacity: 1; }
 .gallery-overlay-text {
 font-family: var(--font-head);
 font-size: .82rem;
 font-weight: 700;
 color: white;
 line-height: 1.3;
 }
 .gallery-overlay-cat {
 font-family: var(--font-body);
 font-size: .68rem;
 font-weight: 700;
 color: var(--teal-light);
 text-transform: uppercase;
 letter-spacing: .08em;
 margin-bottom: 3px;
 }
 /* Zoom icon badge */
 .gallery-zoom {
 position: absolute;
 top: 12px; right: 12px;
 width: 32px; height: 32px;
 background: rgba(255,255,255,.15);
 backdrop-filter: blur(8px);
 border-radius: 8px;
 display: flex; align-items: center; justify-content: center;
 color: white; font-size: .9rem;
 opacity: 0; transition: opacity .25s;
 }
 .gallery-item:hover .gallery-zoom { opacity: 1; }

 /* ══ LIGHTBOX ══ */
 .pmc-lightbox {
 position: fixed; inset: 0;
 background: rgba(6,14,26,.96);
 z-index: 9999;
 display: none;
 align-items: center;
 justify-content: center;
 }
 .pmc-lightbox.open { display: flex; animation: lbFade .25s ease; }
 @keyframes lbFade { from{opacity:0} to{opacity:1} }

 .lb-inner {
 position: relative;
 max-width: 90vw;
 max-height: 90vh;
 display: flex;
 flex-direction: column;
 align-items: center;
 }
 .lb-img-wrap {
 position: relative;
 border-radius: var(--r-md);
 overflow: hidden;
 box-shadow: 0 24px 80px rgba(0,0,0,.6);
 }
 .lb-img {
 max-width: 88vw;
 max-height: 76vh;
 object-fit: contain;
 display: block;
 }
 /* Placeholder in lightbox */
 .lb-placeholder {
 width: 600px; max-width: 88vw;
 height: 400px; max-height: 76vh;
 background: linear-gradient(135deg, var(--navy), var(--navy-mid));
 display: flex; flex-direction: column;
 align-items: center; justify-content: center;
 gap: 14px;
 }
 .lb-placeholder i { font-size: 3rem; color: rgba(255,255,255,.4); }
 .lb-placeholder span { font-family:var(--font-head); font-size:.8rem; color:rgba(255,255,255,.35); }

 .lb-caption {
 margin-top: 16px;
 text-align: center;
 }
 .lb-caption-title {
 font-family: var(--font-head);
 font-size: .95rem;
 font-weight: 700;
 color: white;
 margin-bottom: 3px;
 }
 .lb-caption-cat {
 font-family: var(--font-body);
 font-size: .75rem;
 color: var(--teal-light);
 font-weight: 600;
 text-transform: uppercase;
 letter-spacing: .07em;
 }
 .lb-counter {
 font-family: var(--font-body);
 font-size: .75rem;
 color: rgba(255,255,255,.35);
 margin-top: 6px;
 }

 /* Controls */
 .lb-close {
 position: absolute;
 top: -48px; right: 0;
 width: 40px; height: 40px;
 background: rgba(255,255,255,.1);
 border: none; border-radius: 8px;
 color: white; font-size: 1.1rem;
 cursor: pointer;
 display: flex; align-items: center; justify-content: center;
 transition: background .2s;
 }
 .lb-close:hover { background: rgba(255,255,255,.2); }

 .lb-prev, .lb-next {
 position: fixed;
 top: 50%; transform: translateY(-50%);
 width: 48px; height: 48px;
 background: rgba(255,255,255,.1);
 border: 1px solid rgba(255,255,255,.15);
 border-radius: 50%;
 color: white; font-size: 1.2rem;
 cursor: pointer;
 display: flex; align-items: center; justify-content: center;
 transition: background .2s;
 }
 .lb-prev { left: 20px; }
 .lb-next { right: 20px; }
 .lb-prev:hover, .lb-next:hover { background: rgba(194,65,12,.5); }

 /* ══ ALBUM SECTION HEADING ══ */
 .album-heading {
 display: flex;
 align-items: center;
 gap: 14px;
 margin-bottom: 22px;
 padding-bottom: 14px;
 border-bottom: 2px solid var(--border);
 }
 .album-heading-icon {
 width: 44px; height: 44px;
 background: var(--navy);
 border-radius: 10px;
 display: flex; align-items: center; justify-content: center;
 color: var(--gold); font-size: 1.2rem;
 flex-shrink: 0;
 }
 .album-title {
 font-family: var(--font-head);
 font-size: 1.1rem;
 font-weight: 800;
 color: var(--navy);
 }
 .album-count {
 font-family: var(--font-body);
 font-size: .75rem;
 font-weight: 700;
 color: white;
 background: var(--teal);
 padding: 2px 10px;
 border-radius: 100px;
 }

 /* ══ EMPTY STATE ══ */
 .gallery-empty {
 text-align: center;
 padding: 70px 0;
 }
 .gallery-empty i { font-size: 3rem; color: var(--gray-light); margin-bottom: 14px; display: block; }

 /* ══ BACK TO TOP ══ */
 #backToTop {
 position: fixed; bottom: 28px; right: 28px;
 width: 44px; height: 44px; background: var(--teal);
 color: white; border: none; border-radius: 10px; font-size: 1.1rem;
 display: flex; align-items: center; justify-content: center;
 cursor: pointer; z-index: 999; opacity: 0; transform: translateY(10px);
 transition: opacity .25s, transform .25s, background .2s;
 box-shadow: 0 4px 18px rgba(194,65,12,.35);
 }
 #backToTop.visible { opacity: 1; transform: translateY(0); }
 #backToTop:hover { background: var(--navy); }

 /* ══ RESPONSIVE ══ */
 @media (max-width: 991.98px) {
 .gallery-grid { grid-template-columns: repeat(3,1fr); }
 .gallery-item.span-2 { grid-column: span 2; }
 .gallery-item.span-2-row { grid-row: span 1; aspect-ratio: 1; }
 }
 @media (max-width: 767.98px) {
 .gallery-grid { grid-template-columns: repeat(2,1fr); }
 .gallery-item.span-2 { grid-column: span 2; }
 .gallery-item.span-2-row { grid-row: span 1; aspect-ratio: 1; }
 .lb-prev, .lb-next { display: none; }
 }
 @media (max-width: 480px) {
 .gallery-grid { grid-template-columns: 1fr 1fr; gap: 8px; }
 }
 




 
 
 Department of Dental Sciences
 Photo Gallery
 
 Home
 
 Gallery
 
 



 
 
 
 Visual Journey
 Life at Peshawar Dental College
 Explore PDC campus buildings and shared campus facilities that support dental education at Riphah International University – Peshawar Campus.
 
 

 
 All Albums
 Campus
 Facilities
 


 
 
 
 
 
 Photos
 
 
 
 View Album
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 


 





 
 
 
 
 
 
 
 
 
 




 
 
 PM&DC
 Riphah University
 CPSP
 Ministry of Health
 WHO
 
 










/* ══════════════════════════════════════════════
 GALLERY PAGE SCRIPTS
══════════════════════════════════════════════ */

// ── Placeholder HTML generator ──────────────────────────────────
function galleryPlaceholder(label, icon) {
 return `
 
 ${label}
 
 
 
 ${label}
 `;
}

// ── Filter ───────────────────────────────────────────────────────
const filterBtns = document.querySelectorAll(''.gf-btn[data-filter]'');
const albumSections = document.querySelectorAll(''.album-section'');

filterBtns.forEach(btn => {
 btn.addEventListener(''click'', () => {
 filterBtns.forEach(b => b.classList.remove(''active''));
 btn.classList.add(''active'');
 const filter = btn.dataset.filter;

 albumSections.forEach(section => {
 const cat = section.dataset.category;
 const show = filter === ''all'' || cat === filter;
 section.style.display = show ? '''' : ''none'';
 if (show) section.style.animation = ''none'';
 });

 // Scroll to first visible album
 const first = [...albumSections].find(s => s.style.display !== ''none'');
 if (first && filter !== ''all'') first.scrollIntoView({ behavior: ''smooth'', block: ''start'' });
 });
});

// ── Lightbox ─────────────────────────────────────────────────────
let lbItems = [];
let lbCurrent = 0;

function openLightbox(el) {
 // Collect all gallery items currently visible
 lbItems = [...document.querySelectorAll(''.gallery-item[data-img]'')].filter(e => {
 return e.closest(''.album-section'').style.display !== ''none'';
 });
 lbCurrent = lbItems.indexOf(el);
 renderLightbox();
 document.getElementById(''pmcLightbox'').classList.add(''open'');
 document.body.style.overflow = ''hidden'';
}

function openAlbumLightbox(category) {
 lbItems = [...document.querySelectorAll(`.gallery-item[data-category="${category}"][data-img]`)];
 lbCurrent = 0;
 renderLightbox();
 document.getElementById(''pmcLightbox'').classList.add(''open'');
 document.body.style.overflow = ''hidden'';
}

function closeLightbox() {
 document.getElementById(''pmcLightbox'').classList.remove(''open'');
 document.body.style.overflow = '''';
}

function closeLightboxOnBackdrop(e) {
 if (e.target === document.getElementById(''pmcLightbox'')) closeLightbox();
}

function lbNav(dir) {
 lbCurrent = ((lbCurrent + dir) + lbItems.length) % lbItems.length;
 renderLightbox();
}

function renderLightbox() {
 const el = lbItems[lbCurrent];
 const img = el.dataset.img || '''';
 const title = el.dataset.title || '''';
 const cap = el.dataset.caption || '''';
 const cat = el.dataset.category || '''';

 const wrap = document.getElementById(''lbImgWrap'');
 const isFallback = !img || img.endsWith(''/'');

 if (img) {
 wrap.innerHTML = ``;
 } else {
 wrap.innerHTML = `${title}`;
 }

 document.getElementById(''lbCaption'').innerHTML = `
 ${cat}
 ${title}
 ${cap ? `${cap}` : ''''}
 `;
 document.getElementById(''lbCounter'').textContent = `${lbCurrent + 1} / ${lbItems.length}`;
}

// Keyboard navigation
document.addEventListener(''keydown'', e => {
 const lb = document.getElementById(''pmcLightbox'');
 if (!lb.classList.contains(''open'')) return;
 if (e.key === ''ArrowRight'' || e.key === ''ArrowDown'') lbNav(1);
 if (e.key === ''ArrowLeft'' || e.key === ''ArrowUp'') lbNav(-1);
 if (e.key === ''Escape'') closeLightbox();
});

// ── Fade-up observer ─────────────────────────────────────────────
const fuEls = document.querySelectorAll(''.fu'');
const obs = new IntersectionObserver(entries => {
 entries.forEach(e => { if (e.isIntersecting) { e.target.classList.add(''vis''); obs.unobserve(e.target); } });
}, { threshold: 0.08 });
fuEls.forEach(el => obs.observe(el));

// ── Load More (placeholder) ─────────────────────────────────────
function loadMore() {
 document.getElementById(''loadMoreBtn'').innerHTML = '' All Photos Loaded'';
 document.getElementById(''loadMoreBtn'').disabled = true;
}

// ── Back to top ──────────────────────────────────────────────────
const btt = document.getElementById(''backToTop'');
window.addEventListener(''scroll'', () => btt.classList.toggle(''visible'', scrollY > 500));
btt.addEventListener(''click'', () => window.scrollTo({ top: 0, behavior: ''smooth'' }));

// ── Navbar scroll ────────────────────────────────────────────────
const nav = document.getElementById(''mainNav'');
window.addEventListener(''scroll'', () => nav.classList.toggle(''scrolled'', scrollY > 40));',0),
(21,'newsletter','Newsletter | Peshawar Dental College','Newsletter','News','Newsletters from Peshawar Dental College and the Department of Dental Sciences.','newsletter',NULL,'{"label":"Newsletter","section":"News","title":"Newsletter | Peshawar Dental College","description":"Newsletters from Peshawar Dental College and the Department of Dental Sciences.","priority":"0.4","changefreq":"monthly"}','published',0.4,'monthly','2026-10-13 17:20:46','2026-10-13 18:23:25',NULL,0),
(22,'education-literature','Educational Literature | Peshawar Dental College','Educational Literature','Academics','Educational literature from Peshawar Dental College.','education-literature','<style>
  /* ── Card styles similar to newsletter page ── */
  .edu-section { margin-bottom: 48px; }
  .edu-section-title { 
    font-family: var(--font-head); 
    font-size: 1.4rem; 
    font-weight: 800; 
    color: var(--navy); 
    margin-bottom: 24px; 
    display: flex; 
    align-items: center; 
    gap: 10px; 
  }
  .edu-section-title::before { 
    content: ''''; 
    display: inline-block; 
    width: 5px; 
    height: 32px; 
    background: var(--teal); 
    border-radius: 3px; 
  }

  .edu-card {
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--r-lg);
    overflow: hidden;
    transition: transform .25s, box-shadow .25s, border-color .25s;
  }
  .edu-card:hover { 
    transform: translateY(-4px); 
    box-shadow: var(--shadow-lg); 
    border-color: var(--teal); 
  }

  .edu-card-img-container {
    height: 420px;
    background: #f8f9fa;
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
  }
  .edu-card-img-container img {
    width: 100%;
    height: 100%;
    object-fit: contain;
    display: block;
  }
  .edu-card-body { 
    padding: 20px 24px; 
    display: flex;
    flex-direction: column;
    flex: 1;
  }
  .edu-card-title { 
    font-family: var(--font-head); 
    font-size: .95rem; 
    font-weight: 700; 
    color: var(--navy); 
    line-height: 1.4; 
    margin-bottom: 16px;
  }
  .btn-teal {
    background-color: var(--teal);
    color: #fff;
    border: none;
    padding: 8px 18px;
    font-family: var(--font-head);
    font-size: .8rem;
    font-weight: 700;
    border-radius: var(--r-sm);
    text-decoration: none;
    display: inline-flex;
    align-items: center;
    gap: 6px;
    transition: background 0.2s;
    margin-top: auto;
  }
  .btn-teal:hover {
    background-color: #00796b;
    color: #fff;
  }
  .hover-shadow:hover {
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
  }
  .transition {
    transition: all 0.2s ease;
  }
  /* Equal height cards in a row */
  .row > .d-flex.align-items-stretch .card {
    height: 100%;
  }

  @media (min-width: 768px) {
    .edu-card-img-container {
      height: 450px !important;
    }
  }
  @media (min-width: 1200px) {
    .edu-card-img-container {
      height: 500px !important;
    }
  }
</style>

<!-- PAGE HERO -->
<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Education Literature</h1>
    <div class="breadcrumb-pmc">
      <a href="/">Home</a>
      <span class="sep"><i class="bi bi-chevron-right"></i></span>
      <a href="/medical-education">Education &amp; Research</a>
      <span class="sep"><i class="bi bi-chevron-right"></i></span>
      <span class="current">Education Literature</span>
    </div>
  </div>
</div>

<section class="pmc-section bg-off">
  <div class="container">

    <!-- Intro -->
    <div class="row justify-content-center mb-5">
      <div class="col-lg-8 text-center">
        <h2 class="section-heading mb-3">Education Literature</h2>
        <p class="section-subhead">
          A curated collection of health awareness and religious guidance materials prepared by the
          <strong>Department of Medical Sciences – Riphah International University (Peshawar Campus)</strong>.
          Each topic is available as a downloadable PDF for easy reference.
        </p>
      </div>
    </div>

    

    
      <div class="edu-section">
        <h3 class="edu-section-title"></h3>
        <div class="row g-4">
          
            <div class="col-md-6 col-lg-4 d-flex align-items-stretch">
              <div class="edu-card w-100 hover-shadow transition">
                <!-- Image container -->
                <div class="edu-card-img-container">
                  
                    <img src="" alt="" loading="lazy">
                  
                    <div class="d-flex align-items-center justify-content-center h-100 text-muted">
                      <i class="bi bi-file-pdf" style="font-size:3rem;"></i>
                    </div>
                  
                </div>
                <!-- Card body -->
                <div class="edu-card-body">
                  <h4 class="edu-card-title"></h4>
                  <a href="" target="_blank" rel="noopener" class="btn btn-teal w-100">
                    <i class="bi bi-download me-2"></i> Download PDF
                  </a>
                </div>
              </div>
            </div>
          
        </div>
      </div>
    

  </div>
</section>




<script>
  const obs = new IntersectionObserver(e => e.forEach(x => { if (x.isIntersecting) { x.target.classList.add(''vis''); obs.unobserve(x.target); } }), { threshold: .07 });
  document.querySelectorAll(''.fu'').forEach(el => obs.observe(el));

  const nav = document.getElementById(''mainNav'');
  const btt = document.getElementById(''backToTop'');
  window.addEventListener(''scroll'', () => {
    nav.classList.toggle(''scrolled'', scrollY > 40);
    btt.classList.toggle(''visible'', scrollY > 500);
  }, { passive: true });
  btt.addEventListener(''click'', () => window.scrollTo({ top: 0, behavior: ''smooth'' }));
</script>','{"label":"Educational Literature","section":"Academics","title":"Educational Literature | Peshawar Dental College","description":"Educational literature from Peshawar Dental College.","priority":"0.4","changefreq":"monthly"}','published',0.4,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46','/* ── Card styles similar to newsletter page ── */
 .edu-section { margin-bottom: 48px; }
 .edu-section-title { 
 font-family: var(--font-head); 
 font-size: 1.4rem; 
 font-weight: 800; 
 color: var(--navy); 
 margin-bottom: 24px; 
 display: flex; 
 align-items: center; 
 gap: 10px; 
 }
 .edu-section-title::before { 
 content: ''''; 
 display: inline-block; 
 width: 5px; 
 height: 32px; 
 background: var(--teal); 
 border-radius: 3px; 
 }

 .edu-card {
 background: white;
 border: 1px solid var(--border);
 border-radius: var(--r-lg);
 overflow: hidden;
 transition: transform .25s, box-shadow .25s, border-color .25s;
 }
 .edu-card:hover { 
 transform: translateY(-4px); 
 box-shadow: var(--shadow-lg); 
 border-color: var(--teal); 
 }

 .edu-card-img-container {
 height: 420px;
 background: #f8f9fa;
 display: flex;
 align-items: center;
 justify-content: center;
 overflow: hidden;
 }
 .edu-card-img-container img {
 width: 100%;
 height: 100%;
 object-fit: contain;
 display: block;
 }
 .edu-card-body { 
 padding: 20px 24px; 
 display: flex;
 flex-direction: column;
 flex: 1;
 }
 .edu-card-title { 
 font-family: var(--font-head); 
 font-size: .95rem; 
 font-weight: 700; 
 color: var(--navy); 
 line-height: 1.4; 
 margin-bottom: 16px;
 }
 .btn-teal {
 background-color: var(--teal);
 color: #fff;
 border: none;
 padding: 8px 18px;
 font-family: var(--font-head);
 font-size: .8rem;
 font-weight: 700;
 border-radius: var(--r-sm);
 text-decoration: none;
 display: inline-flex;
 align-items: center;
 gap: 6px;
 transition: background 0.2s;
 margin-top: auto;
 }
 .btn-teal:hover {
 background-color: #00796b;
 color: #fff;
 }
 .hover-shadow:hover {
 box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
 }
 .transition {
 transition: all 0.2s ease;
 }
 /* Equal height cards in a row */
 .row > .d-flex.align-items-stretch .card {
 height: 100%;
 }

 @media (min-width: 768px) {
 .edu-card-img-container {
 height: 450px !important;
 }
 }
 @media (min-width: 1200px) {
 .edu-card-img-container {
 height: 500px !important;
 }
 }




 
 
 Education Literature
 
 Home
 
 Education & Research
 
 Education Literature
 
 



 

 
 
 
 Education Literature
 
 A curated collection of health awareness and religious guidance materials prepared by the
 Department of Medical Sciences – Riphah International University (Peshawar Campus).
 Each topic is available as a downloadable PDF for easy reference.
 
 
 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 Download PDF
 
 
 
 
 
 
 
 

 






 const obs = new IntersectionObserver(e => e.forEach(x => { if (x.isIntersecting) { x.target.classList.add(''vis''); obs.unobserve(x.target); } }), { threshold: .07 });
 document.querySelectorAll(''.fu'').forEach(el => obs.observe(el));

 const nav = document.getElementById(''mainNav'');
 const btt = document.getElementById(''backToTop'');
 window.addEventListener(''scroll'', () => {
 nav.classList.toggle(''scrolled'', scrollY > 40);
 btt.classList.toggle(''visible'', scrollY > 500);
 }, { passive: true });
 btt.addEventListener(''click'', () => window.scrollTo({ top: 0, behavior: ''smooth'' }));',1),
(23,'all-news','News | Peshawar Dental College','News','News','News from Peshawar Dental College — admissions and campus updates.','all-news',NULL,'{"label":"News","section":"News","title":"News | Peshawar Dental College","description":"News from Peshawar Dental College — admissions and campus updates.","priority":"0.5","changefreq":"weekly"}','published',0.5,'weekly','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(24,'events','Events | Peshawar Dental College','Events','News','Events at Peshawar Dental College, Peshawar.','events',NULL,'{"label":"Events","section":"News","title":"Events | Peshawar Dental College","description":"Events at Peshawar Dental College, Peshawar.","priority":"0.4","changefreq":"weekly"}','published',0.4,'weekly','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(25,'single-news','Campus News | Peshawar Dental College','News Article','News','News from Peshawar Dental College.','single-news',NULL,'{"label":"News Article","section":"News","title":"Campus News | Peshawar Dental College","description":"News from Peshawar Dental College.","priority":"0.2","changefreq":"monthly","og_type":"article"}','published',0.2,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(26,'event-single','Event | Peshawar Dental College','Event','News','Event details from Peshawar Dental College.','event-single',NULL,'{"label":"Event","section":"News","title":"Event | Peshawar Dental College","description":"Event details from Peshawar Dental College.","priority":"0.2","changefreq":"monthly","og_type":"article"}','published',0.2,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46',NULL,0),
(27,'portal-login','Portal Login | Peshawar Dental College','Portal Login','College','Portal login for Peshawar Dental College students and staff.','portal-login','<style>
/* ═══ Portal Tabs (prominent) ═══ */
.portal-tabs {
  display: flex; gap: 12px; margin-bottom: 34px;
  background: var(--off-white); border: 1px solid var(--border);
  border-radius: var(--r-lg); padding: 8px; box-shadow: var(--shadow-sm);
  overflow-x: auto; /* in case of many tabs on small screens */
}
.portal-tab {
  font-family: var(--font-head); font-size: .9rem; font-weight: 700;
  padding: 14px 28px; background: white; border: 2px solid transparent;
  border-radius: var(--r-md); color: var(--gray-dark);
  cursor: pointer; position: relative; transition: all .25s;
  flex: 1; text-align: center; white-space: nowrap;
  box-shadow: 0 1px 4px rgba(0,0,0,.04);
}
.portal-tab.active {
  background: var(--navy); border-color: var(--navy); color: white;
  box-shadow: 0 6px 14px rgba(10,22,40,.18);
  transform: scale(1.02);
}
.portal-tab:not(.active):hover {
  background: var(--teal-pale); border-color: var(--teal); color: var(--teal);
  transform: translateY(-1px); box-shadow: 0 4px 10px rgba(0,0,0,.06);
}
.portal-tab i { font-size: 1.1rem; margin-right: 8px; vertical-align: middle; }
/* Remove the underline after pseudo-element, use background change instead */
.portal-tab.active::after { display: none; }

/* ═══ Login Card ═══ */
.login-card {
  background: white; border: 1px solid var(--border);
  border-radius: var(--r-lg); box-shadow: var(--shadow-sm);
  padding: 30px 28px; max-width: 480px; margin: 0 auto;
}
.login-card .lc-icon {
  width: 64px; height: 64px; background: var(--teal-pale);
  border-radius: 50%; display: flex; align-items: center; justify-content: center;
  margin: 0 auto 18px; color: var(--teal); font-size: 1.8rem;
}
.login-card h3 {
  font-family: var(--font-head); font-weight: 800; color: var(--navy);
  text-align: center; margin-bottom: 6px;
}
.login-card p.sub {
  font-family: var(--font-body); font-size: .85rem; color: var(--gray-mid);
  text-align: center; margin-bottom: 24px;
}
.login-card .btn-login {
  width: 100%; padding: 12px; border-radius: var(--r-sm);
  font-family: var(--font-head); font-size: .9rem; font-weight: 700;
  background: var(--teal); color: white; border: none; cursor: pointer;
  transition: background .2s; text-align: center; text-decoration: none;
  display: inline-block;
}
.login-card .btn-login:hover { background: #008f80; }

/* Responsive */
@media(max-width:575px) {
  .portal-tab { padding: 12px 16px; font-size: .82rem; }
  .portal-tabs { flex-wrap: nowrap; }
}
</style>

<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Portal Login</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i class="bi bi-chevron-right"></i></span><span class="current">Portal Login</span></div>
  </div>
</div>

<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">
          <p style="font-family:var(--font-body); font-size:.95rem; color:var(--gray-mid); margin-bottom: 0;">
            Select your role to access the PMC Portal. All users (students, teachers, and parents) use the same central login system.
          </p>

          <!-- Portal Tabs (now larger, card-like) -->
          <div class="portal-tabs fu">
            <button class="portal-tab active" data-portal="student" onclick="switchPortal(''student'')">
              <i class="bi bi-mortarboard-fill"></i> Student
            </button>
            <button class="portal-tab" data-portal="teacher" onclick="switchPortal(''teacher'')">
              <i class="bi bi-person-workspace"></i> Teacher
            </button>
            <button class="portal-tab" data-portal="parent" onclick="switchPortal(''parent'')">
              <i class="bi bi-people-fill"></i> Parent
            </button>
          </div>

          <!-- Student Login Card -->
          <div class="portal-pane fu" id="pane-student">
            <div class="login-card">
              <div class="lc-icon"><i class="bi bi-person-circle"></i></div>
              <h3>Student Portal</h3>
              <p class="sub">Access your academic dashboard, fee challan, exam schedule, and results.</p>
              <a href="https://pmc.prime.edu.pk/portal_login.php" target="_blank" class="btn-login">
                <i class="bi bi-box-arrow-in-right"></i> Login to Student Portal
              </a>
              <p style="font-size:.76rem; color:var(--gray-mid); text-align:center; margin:16px 0 0;">
                Having trouble? Contact IT at <a href="mailto:info@prime.edu.pk" style="color:var(--teal);">info@prime.edu.pk</a>
              </p>
            </div>
          </div>

          <!-- Teacher Login Card -->
          <div class="portal-pane fu" id="pane-teacher" style="display:none;">
            <div class="login-card">
              <div class="lc-icon" style="background:var(--gold-pale); color:var(--gold);"><i class="bi bi-person-badge-fill"></i></div>
              <h3>Teacher Portal</h3>
              <p class="sub">Manage your courses, upload grades, access timetables, and communicate with students.</p>
              <a href="https://pmc.prime.edu.pk/portal_login.php" target="_blank" class="btn-login" style="background:var(--navy);">
                <i class="bi bi-box-arrow-in-right"></i> Login to Teacher Portal
              </a>
              <p style="font-size:.76rem; color:var(--gray-mid); text-align:center; margin:16px 0 0;">
                Need help? <a href="mailto:faculty.support@prime.edu.pk" style="color:var(--teal);">faculty.support@prime.edu.pk</a>
              </p>
            </div>
          </div>

          <!-- Parent Login Card -->
          <div class="portal-pane fu" id="pane-parent" style="display:none;">
            <div class="login-card">
              <div class="lc-icon" style="background:var(--teal-pale); color:var(--navy);"><i class="bi bi-shield-lock-fill"></i></div>
              <h3>Parent Portal</h3>
              <p class="sub">Monitor your child''s attendance, academic progress, fee status, and announcements.</p>
              <a href="https://pmc.prime.edu.pk/portal_login.php" target="_blank" class="btn-login" style="background:var(--gold);">
                <i class="bi bi-box-arrow-in-right"></i> Login to Parent Portal
              </a>
              <p style="font-size:.76rem; color:var(--gray-mid); text-align:center; margin:16px 0 0;">
                For assistance: <a href="mailto:parents@prime.edu.pk" style="color:var(--teal);">parents@prime.edu.pk</a>
              </p>
            </div>
          </div>

        </div>
      </div>

      <!-- Sidebar (unchanged) -->
      <div class="col-lg-4 fu fu-delay-2">
        <div class="sidebar-widget">
          <div class="sw-head"><i class="bi bi-grid-fill"></i> Quick Navigation</div>
          <div class="sw-body">
            <a class="sw-link" href="/about"><i class="bi bi-building"></i>Introduction</a>
            <a class="sw-link" href="/vision-mission"><i class="bi bi-eye"></i>Vision &amp; Mission</a>
            <a class="sw-link" href="/faculty"><i class="bi bi-people"></i>Faculty</a>
            <a class="sw-link" href="/admissions"><i class="bi bi-mortarboard"></i>Admissions</a>
            <a class="sw-link" href="/vacant-seats"><i class="bi bi-door-open"></i>Vacant Seats</a>
            <a class="sw-link" href="/medical-education"><i class="bi bi-book"></i>Medical Education</a>
            <a class="sw-link" href="/curriculum"><i class="bi bi-journal-text"></i>Curriculum</a>
            <a class="sw-link" href="/examinations"><i class="bi bi-clipboard-pulse"></i>Examinations</a>
            <a class="sw-link" href="/umr"><i class="bi bi-flask"></i>UMR Research</a>
            <a class="sw-link" href="/contact"><i class="bi bi-envelope"></i>Contact Us</a>
          </div>
        </div>
        <div class="sidebar-widget">
          <div class="sw-head"><i class="bi bi-hospital-fill"></i> Teaching Hospitals</div>
          <div class="sw-body">
            <a class="sw-link" href="/pdc#hospital"><i class="bi bi-hospital"></i>Peshawar Dental Hospital</a>
            <a class="sw-link" href="https://mth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-heart-pulse"></i>Mercy Teaching Hospital</a>
            <a class="sw-link" href="https://pth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-capsule-pill"></i>Prime Teaching Hospital</a>
          </div>
        </div>
        <div class="sidebar-widget">
          <div class="sw-head" style="background:var(--teal);"><i class="bi bi-info-circle-fill"></i> Need Help?</div>
          <div class="sw-body" style="padding:18px 20px;">
            <p style="font-family:var(--font-body);font-size:.84rem;color:var(--gray-mid);margin-bottom:14px;">
              For login issues or portal assistance, please contact the relevant department.</p>
            <a href="/contact" class="btn-pmc btn-pmc-primary w-100 justify-content-center" style="font-size:.82rem;padding:11px;">Contact IT Support</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="pmc-section-sm recog-strip">
  <div class="container">
    <div class="recog-grid">
      <div class="recog-cell"><div class="recog-ico"><i class="bi bi-patch-check-fill"></i></div><div class="recog-name">PM&DC</div></div>
      <div class="recog-cell"><div class="recog-ico"><i class="bi bi-building-fill"></i></div><div class="recog-name">Riphah International University</div></div>
      <div class="recog-cell"><div class="recog-ico"><i class="bi bi-award-fill"></i></div><div class="recog-name">CPSP</div></div>
      <div class="recog-cell"><div class="recog-ico"><i class="bi bi-hospital-fill"></i></div><div class="recog-name">Ministry of Health</div></div>
      <div class="recog-cell" style="border-right:none;"><div class="recog-ico"><i class="bi bi-globe-americas"></i></div><div class="recog-name">WHO</div></div>
    </div>
  </div>
</section>



<script>
function switchPortal(portal) {
  document.querySelectorAll(''.portal-tab'').forEach(tab => {
    tab.classList.toggle(''active'', tab.dataset.portal === portal);
  });
  document.getElementById(''pane-student'').style.display = portal === ''student'' ? '''' : ''none'';
  document.getElementById(''pane-teacher'').style.display = portal === ''teacher'' ? '''' : ''none'';
  document.getElementById(''pane-parent'').style.display = portal === ''parent'' ? '''' : ''none'';
}
</script>','{"label":"Portal Login","section":"College","title":"Portal Login | Peshawar Dental College","description":"Portal login for Peshawar Dental College students and staff.","priority":"0.3","changefreq":"yearly"}','published',0.3,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','/* ═══ Portal Tabs (prominent) ═══ */
.portal-tabs {
 display: flex; gap: 12px; margin-bottom: 34px;
 background: var(--off-white); border: 1px solid var(--border);
 border-radius: var(--r-lg); padding: 8px; box-shadow: var(--shadow-sm);
 overflow-x: auto; /* in case of many tabs on small screens */
}
.portal-tab {
 font-family: var(--font-head); font-size: .9rem; font-weight: 700;
 padding: 14px 28px; background: white; border: 2px solid transparent;
 border-radius: var(--r-md); color: var(--gray-dark);
 cursor: pointer; position: relative; transition: all .25s;
 flex: 1; text-align: center; white-space: nowrap;
 box-shadow: 0 1px 4px rgba(0,0,0,.04);
}
.portal-tab.active {
 background: var(--navy); border-color: var(--navy); color: white;
 box-shadow: 0 6px 14px rgba(10,22,40,.18);
 transform: scale(1.02);
}
.portal-tab:not(.active):hover {
 background: var(--teal-pale); border-color: var(--teal); color: var(--teal);
 transform: translateY(-1px); box-shadow: 0 4px 10px rgba(0,0,0,.06);
}
.portal-tab i { font-size: 1.1rem; margin-right: 8px; vertical-align: middle; }
/* Remove the underline after pseudo-element, use background change instead */
.portal-tab.active::after { display: none; }

/* ═══ Login Card ═══ */
.login-card {
 background: white; border: 1px solid var(--border);
 border-radius: var(--r-lg); box-shadow: var(--shadow-sm);
 padding: 30px 28px; max-width: 480px; margin: 0 auto;
}
.login-card .lc-icon {
 width: 64px; height: 64px; background: var(--teal-pale);
 border-radius: 50%; display: flex; align-items: center; justify-content: center;
 margin: 0 auto 18px; color: var(--teal); font-size: 1.8rem;
}
.login-card h3 {
 font-family: var(--font-head); font-weight: 800; color: var(--navy);
 text-align: center; margin-bottom: 6px;
}
.login-card p.sub {
 font-family: var(--font-body); font-size: .85rem; color: var(--gray-mid);
 text-align: center; margin-bottom: 24px;
}
.login-card .btn-login {
 width: 100%; padding: 12px; border-radius: var(--r-sm);
 font-family: var(--font-head); font-size: .9rem; font-weight: 700;
 background: var(--teal); color: white; border: none; cursor: pointer;
 transition: background .2s; text-align: center; text-decoration: none;
 display: inline-block;
}
.login-card .btn-login:hover { background: #008f80; }

/* Responsive */
@media(max-width:575px) {
 .portal-tab { padding: 12px 16px; font-size: .82rem; }
 .portal-tabs { flex-wrap: nowrap; }
}



 
 
 Portal Login
 HomePortal Login
 



 
 
 
 
 
 Select your role to access the PMC Portal. All users (students, teachers, and parents) use the same central login system.
 

 
 
 
 Student
 
 
 Teacher
 
 
 Parent
 
 

 
 
 
 
 Student Portal
 Access your academic dashboard, fee challan, exam schedule, and results.
 
 Login to Student Portal
 
 
 Having trouble? Contact IT at info@prime.edu.pk
 
 
 

 
 
 
 
 Teacher Portal
 Manage your courses, upload grades, access timetables, and communicate with students.
 
 Login to Teacher Portal
 
 
 Need help? faculty.support@prime.edu.pk
 
 
 

 
 
 
 
 Parent Portal
 Monitor your child''s attendance, academic progress, fee status, and announcements.
 
 Login to Parent Portal
 
 
 For assistance: parents@prime.edu.pk
 
 
 

 
 

 
 
 
 Quick Navigation
 
 Introduction
 Vision & Mission
 Faculty
 Admissions
 Vacant Seats
 Medical Education
 Curriculum
 Examinations
 UMR Research
 Contact Us
 
 
 
 Teaching Hospitals
 
 Peshawar Dental Hospital
 Mercy Teaching Hospital
 Prime Teaching Hospital
 
 
 
 Need Help?
 
 
 For login issues or portal assistance, please contact the relevant department.
 Contact IT Support
 
 
 
 
 



 
 
 PM&DC
 Riphah International University
 CPSP
 Ministry of Health
 WHO
 
 





function switchPortal(portal) {
 document.querySelectorAll(''.portal-tab'').forEach(tab => {
 tab.classList.toggle(''active'', tab.dataset.portal === portal);
 });
 document.getElementById(''pane-student'').style.display = portal === ''student'' ? '''' : ''none'';
 document.getElementById(''pane-teacher'').style.display = portal === ''teacher'' ? '''' : ''none'';
 document.getElementById(''pane-parent'').style.display = portal === ''parent'' ? '''' : ''none'';
}',1),
(28,'literary-society','Literary Society | Peshawar Dental College','Literary Society','College','Literature and arts society at Peshawar Dental College.','literary-society','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Literary Society</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span>Societies <span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Literature & Arts Society</span></div>
  </div>
</div>

<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">

          <h2 class="sec-title" style="font-size:1.8rem;">Introduction to SLS</h2>
          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">The
            Students'' Literary Society is a student-centered society of Department of Medical Sciences &amp; Department of Dental
            Sciences and has been founded to encourage and inculcate literary pursuits in the students of the Aesculapian
            sciences.</p>

          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">The purpose
            for establishing the literary society is to compliment the rigorous and purely scientific study of medical
            subjects by creating a platform that will encourage the literary and artistic inclination of the students of
            Department of Medical Sciences.</p>

          <p style="font-family:var(--font-body);font-size:.95rem;color:var(--gray-dark);line-height:1.85;">The Society
            organizes various events where students have the opportunity to display their talents. These events vary
            from debates, quizzes, essay writing, poetry writing, calligraphy and photography.</p>

          <!-- Events Highlight Section -->
          <!-- <div class="row g-4 mb-4 mt-3">
            <div class="col-md-6">
              <div class="pmc-card"
                style="border-radius:12px;padding:18px;background:#f8fafb;border:1px solid var(--border-color);">
                <div class="d-flex align-items-center gap-3 mb-2">
                  <i class="bi bi-mic-fill" style="font-size:1.4rem;color:var(--teal);flex-shrink:0;"></i>
                  <h6 style="font-family:var(--font-head);color:var(--navy);margin-bottom:0;">Debates &amp; Declamation
                  </h6>
                </div>
                <p style="font-family:var(--font-body);font-size:.85rem;color:var(--gray-dark);margin-bottom:0;">
                  Inter-college and intra-college debating competitions that sharpen critical thinking and public
                  speaking skills.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card"
                style="border-radius:12px;padding:18px;background:#f8fafb;border:1px solid var(--border-color);">
                <div class="d-flex align-items-center gap-3 mb-2">
                  <i class="bi bi-pen-fill" style="font-size:1.4rem;color:var(--teal);flex-shrink:0;"></i>
                  <h6 style="font-family:var(--font-head);color:var(--navy);margin-bottom:0;">Essay &amp; Poetry Writing
                  </h6>
                </div>
                <p style="font-family:var(--font-body);font-size:.85rem;color:var(--gray-dark);margin-bottom:0;">
                  Competitions in Urdu, Pashto, and English to foster literary creativity and expression.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card"
                style="border-radius:12px;padding:18px;background:#f8fafb;border:1px solid var(--border-color);">
                <div class="d-flex align-items-center gap-3 mb-2">
                  <i class="bi bi-camera" style="font-size:1.4rem;color:var(--teal);flex-shrink:0;"></i>
                  <h6 style="font-family:var(--font-head);color:var(--navy);margin-bottom:0;">Calligraphy &amp;
                    Photography</h6>
                </div>
                <p style="font-family:var(--font-body);font-size:.85rem;color:var(--gray-dark);margin-bottom:0;">
                  Exhibitions and contests showcasing artistic talent alongside literary activities.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card"
                style="border-radius:12px;padding:18px;background:#f8fafb;border:1px solid var(--border-color);">
                <div class="d-flex align-items-center gap-3 mb-2">
                  <i class="bi bi-question-circle" style="font-size:1.4rem;color:var(--teal);flex-shrink:0;"></i>
                  <h6 style="font-family:var(--font-head);color:var(--navy);margin-bottom:0;">Quizzes</h6>
                </div>
                <p style="font-family:var(--font-body);font-size:.85rem;color:var(--gray-dark);margin-bottom:0;">
                  Subject-based and general knowledge quizzes that challenge students in a lively competitive
                  environment.</p>
              </div>
            </div>
          </div> -->

          <!-- CTA -->
          <!-- <a href="https://pmc.prime.edu.pk/idx_sls.php" target="_blank" class="btn-pmc btn-pmc-primary mt-2">
            <i class="bi bi-arrow-up-right-square"></i> Visit Official Literary Society Page
          </a> -->

        </div>
      </div><!-- Sidebar -->
      
    </div>
  </div>
</section>','{"label":"Literary Society","section":"College","title":"Literary Society | Peshawar Dental College","description":"Literature and arts society at Peshawar Dental College.","priority":"0.3","changefreq":"yearly"}','published',0.3,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Literary Society
 HomeSocieties Literature & Arts Society
 



 
 
 
 

 Introduction to SLS
 The
 Students'' Literary Society is a student-centered society of Department of Medical Sciences & Department of Dental
 Sciences and has been founded to encourage and inculcate literary pursuits in the students of the Aesculapian
 sciences.

 The purpose
 for establishing the literary society is to compliment the rigorous and purely scientific study of medical
 subjects by creating a platform that will encourage the literary and artistic inclination of the students of
 Department of Medical Sciences.

 The Society
 organizes various events where students have the opportunity to display their talents. These events vary
 from debates, quizzes, essay writing, poetry writing, calligraphy and photography.',1),
(29,'social-welfare','Social Welfare Society | Peshawar Dental College','Social Welfare','College','Social Welfare Society at Peshawar Dental College.','social-welfare','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Social Welfare Society</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span>Societies <span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Social Welfare Society</span></div>
  </div>
</div>
<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">
          <h2 class="sec-title" style="font-size:1.8rem;">Social Welfare Society</h2>
          <p>The <strong>Social Welfare Society (SWS)</strong> at PMC is dedicated to serving the community through
            health awareness campaigns, free medical camps, blood donation drives, and charitable initiatives. It
            instills in students a sense of civic responsibility and compassionate service.</p>
          <div class="row g-4 mb-4">
            <div class="col-md-6">
              <div class="pmc-card">
                <div class="pmc-card-icon"><i class="bi bi-heart-fill"></i></div>
                <h4>Free Medical Camps</h4>
                <p>Regular outreach camps in underserved communities of Peshawar, providing free consultations,
                  medicines, and health education.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card">
                <div class="pmc-card-icon"><i class="bi bi-droplet-half"></i></div>
                <h4>Blood Donation Drives</h4>
                <p>Bi-annual blood donation campaigns encouraging students and faculty to donate blood for hospital
                  blood banks.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card">
                <div class="pmc-card-icon"><i class="bi bi-megaphone"></i></div>
                <h4>Health Awareness</h4>
                <p>Public awareness campaigns on key health issues including hygiene, vaccination, mental health, and
                  disease prevention.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card">
                <div class="pmc-card-icon"><i class="bi bi-gift"></i></div>
                <h4>Charitable Initiatives</h4>
                <p>Fundraising and charitable activities supporting deserving students, patients, and community members
                  during times of need.</p>
              </div>
            </div>
          </div>
          <a href="https://pmc.prime.edu.pk/idx_sws.php" target="_blank" class="btn-pmc btn-pmc-primary"><i
              class="bi bi-arrow-up-right-square"></i> Visit Official SWS Page</a>
        </div>
      </div>
      
    </div>
  </div>
</section>','{"label":"Social Welfare","section":"College","title":"Social Welfare Society | Peshawar Dental College","description":"Social Welfare Society at Peshawar Dental College.","priority":"0.3","changefreq":"yearly"}','published',0.3,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Social Welfare Society
 HomeSocieties Social Welfare Society
 


 
 
 
 
 Social Welfare Society
 The Social Welfare Society (SWS) at PMC is dedicated to serving the community through
 health awareness campaigns, free medical camps, blood donation drives, and charitable initiatives. It
 instills in students a sense of civic responsibility and compassionate service.
 
 
 
 
 Free Medical Camps
 Regular outreach camps in underserved communities of Peshawar, providing free consultations,
 medicines, and health education.
 
 
 
 
 
 Blood Donation Drives
 Bi-annual blood donation campaigns encouraging students and faculty to donate blood for hospital
 blood banks.
 
 
 
 
 
 Health Awareness
 Public awareness campaigns on key health issues including hygiene, vaccination, mental health, and
 disease prevention.
 
 
 
 
 
 Charitable Initiatives
 Fundraising and charitable activities supporting deserving students, patients, and community members
 during times of need.
 
 
 
 Visit Official SWS Page',1),
(30,'sports-society','Sports Society | Peshawar Dental College','Sports Society','College','Sports society at Peshawar Dental College.','sports-society','<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Sports Society</h1>
    <div class="breadcrumb-pmc"><a href="/">Home</a><span class="sep"><i
          class="bi bi-chevron-right"></i></span>Societies <span class="sep"><i
          class="bi bi-chevron-right"></i></span><span class="current">Sports Society</span></div>
  </div>
</div>
<section class="pmc-section">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-8">
        <div class="page-content fu">
          <h2 class="sec-title" style="font-size:1.8rem;">Sports Society</h2>
          <!-- <p>The <strong>PMC Sports Society (SSS)</strong> promotes physical fitness, team spirit, and healthy
            competition among students. The society organises inter-college sports events, tournaments, and recreational
            activities throughout the year at the PMC campus sports facilities.</p>
          <div class="row g-4 mb-4">
            <div class="col-md-6">
              <div class="pmc-card">
                <div class="pmc-card-icon"><i class="bi bi-trophy-fill"></i></div>
                <h4>Annual Sports Gala</h4>
                <p>A highlight of the PMC calendar — a week-long sports festival featuring cricket, football,
                  basketball, badminton, and athletics.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card">
                <div class="pmc-card-icon"><i class="bi bi-person-arms-up"></i></div>
                <h4>Gym &amp; Fitness</h4>
                <p>PMC provides a well-equipped gymnasium for students and faculty to maintain physical health and
                  fitness throughout the academic year.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card">
                <div class="pmc-card-icon"><i class="bi bi-people-fill"></i></div>
                <h4>Team Sports</h4>
                <p>Cricket, football, volleyball, and basketball teams represent PMC in inter-college competitions
                  across Khyber Pakhtunkhwa.</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pmc-card">
                <div class="pmc-card-icon"><i class="bi bi-award-fill"></i></div>
                <h4>Individual Sports</h4>
                <p>Table tennis, badminton, athletics, and swimming events for individual students to showcase their
                  sporting talents.</p>
              </div>
            </div>
          </div>
          <a href="https://pmc.prime.edu.pk/idx_sss.php" target="_blank" class="btn-pmc btn-pmc-primary"><i
              class="bi bi-arrow-up-right-square"></i> Visit Official Sports Society Page</a> -->
        </div>
      </div>
      
    </div>
  </div>
</section>','{"label":"Sports Society","section":"College","title":"Sports Society | Peshawar Dental College","description":"Sports society at Peshawar Dental College.","priority":"0.3","changefreq":"yearly"}','published',0.3,'yearly','2026-10-13 17:20:46','2026-10-13 17:20:46','Sports Society
 HomeSocieties Sports Society
 


 
 
 
 
 Sports Society',1),
(31,'sitemap-page','Sitemap | Peshawar Dental College','Sitemap','College','HTML sitemap of Peshawar Dental College and the Department of Dental Sciences.','sitemap-page','<style>
.sitemap-list { list-style: none; padding: 0; margin: 0; }
.sitemap-list li { margin-bottom: 10px; }
.sitemap-list a {
  font-family: var(--font-body);
  font-size: .9rem;
  font-weight: 500;
  color: var(--navy);
  text-decoration: none;
  display: flex;
  align-items: center;
  gap: 6px;
}
.sitemap-list a::before { content: ''›''; color: var(--teal); }
.sitemap-list a:hover { color: var(--teal); }
</style>
<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <span class="page-hero-eyebrow">Department of Dental Sciences</span>
    <h1>Sitemap</h1>
    <div class="breadcrumb-pmc">
      <a href="">Home</a>
      <span class="sep"><i class="bi bi-chevron-right"></i></span>
      <span class="current">Sitemap</span>
    </div>
  </div>
</div>
<section class="pmc-section">
  <div class="container">
    <div class="page-content">
      <p>Browse public pages of Peshawar Dental College and the Department of Dental Sciences.</p>
      <div class="row g-4">
        
        <div class="col-md-4">
          <h2 class="sec-title" style="font-size:1.15rem;"></h2>
          <ul class="sitemap-list">
            
            <li><a href=""></a></li>
            
          </ul>
        </div>
        
      </div>
    </div>
  </div>
</section>','{"label":"Sitemap","section":"College","title":"Sitemap | Peshawar Dental College","description":"HTML sitemap of Peshawar Dental College and the Department of Dental Sciences.","priority":"0.3","changefreq":"monthly"}','published',0.3,'monthly','2026-10-13 17:20:46','2026-10-13 17:20:46','.sitemap-list { list-style: none; padding: 0; margin: 0; }
.sitemap-list li { margin-bottom: 10px; }
.sitemap-list a {
 font-family: var(--font-body);
 font-size: .9rem;
 font-weight: 500;
 color: var(--navy);
 text-decoration: none;
 display: flex;
 align-items: center;
 gap: 6px;
}
.sitemap-list a::before { content: ''›''; color: var(--teal); }
.sitemap-list a:hover { color: var(--teal); }


 
 
 Department of Dental Sciences
 Sitemap
 
 Home
 
 Sitemap
 
 


 
 
 Browse public pages of Peshawar Dental College and the Department of Dental Sciences.',1);
-- pages: 31 rows

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` VARCHAR(191) NOT NULL,
  `value` TEXT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `settings` (`id`,`key`,`value`,`updated_at`) VALUES
(1,'site_name','Peshawar Dental College','2026-10-13 17:20:46'),
(2,'hub_base_production','https://riphahpsh.edu.pk/','2026-10-13 17:20:46'),
(3,'hub_base_staging','https://staging.riphahpsh.edu.pk/riphahpsh/','2026-10-13 17:20:46'),
(4,'contact_phone','+92-91-5202191','2026-10-13 17:20:46'),
(5,'contact_email','info@riphahpsh.edu.pk','2026-10-13 17:20:46'),
(6,'newsletters','[{"title":"July 2026","date":"July, 2026","pdf":"https://prime.edu.pk/pf/downloads/newsletters/July-2026-Newsletter.pdf","image":"https://prime.edu.pk/pf/downloads/newsletters/titles/PRIME-JULY-Monthly-Newsletter.jpg"},{"title":"June 2026","date":"June, 2026","pdf":"https://prime.edu.pk/pf/downloads/newsletters/June-2026-Newsletter-latest.pdf","image":"https://prime.edu.pk/pf/downloads/newsletters/titles/June2026.jpg"},{"title":"May 2026","date":"May, 2026","pdf":"https://prime.edu.pk/pf/downloads/newsletters/May%20Newsletter.pdf","image":"https://prime.edu.pk/pf/downloads/newsletters/titles/May2026.jpg"},{"title":"April 2026","date":"April, 2026","pdf":"https://prime.edu.pk/pf/downloads/newsletters/April-2026-Newsletter.pdf","image":"https://prime.edu.pk/pf/downloads/newsletters/titles/Newsletter-April-2026.jpg"},{"title":"March 2026","date":"March, 2026","pdf":"https://prime.edu.pk/pf/downloads/newsletters/Newsletter_March_2026.pdf","image":"https://prime.edu.pk/pf/downloads/newsletters/titles/Newsletter_March_2026_title.jpg"},{"title":"February 2026","date":"February, 2026","pdf":"https://prime.edu.pk/pf/downloads/newsletters/Newsletter_Feb._2026.pdf","image":"https://prime.edu.pk/pf/downloads/newsletters/titles/Newsletter-Feb.--2026-1.jpg"},{"title":"January 2026","date":"January, 2026","pdf":"https://prime.edu.pk/pf/downloads/newsletters/Newsletter_January_2026.pdf","image":"https://prime.edu.pk/pf/downloads/newsletters/titles/newsletter-12-1-2026.jpg"}]','2026-10-13 18:23:25'),
(7,'hrms_api_url','https://biometric.prime.edu.pk/hrms/apis/getEmployeeInfoPDC.php','2026-10-13 17:20:46'),
(8,'vacant_seats','{"intro":"As per Riphah International University Rules and Regulations, applicant having less than 60% marks in any subject/paper shall not be eligible for migration.","heading":"Vacant Seats in Peshawar Dental College","rows":[{"year":"1st Year BDS","session":"2024-25","seats":"0","note":""},{"year":"2nd Year BDS","session":"2023-24","seats":"0","note":""},{"year":"3rd Year BDS","session":"2023-24","seats":"0","note":""},{"year":"Final Year BDS","session":"2021-22","seats":"0","note":""}],"notices":["Students are allowed to apply against the notified vacant seats (from 2nd Year BDS to Final Year BDS) with immediate effect. As per PM&DC Admission Regulations 2023, no transfer / migration shall be allowed in the 1st year of BDS.","Students shall apply online for migration on vacant seats.","Student will be admitted on merit based on average of Prof-examinations.","As per Riphah International University Rules and Regulations, applicant having less than 60% marks in any subject/paper shall not be eligible for migration.","No transfer shall be accepted by a college to a vacant seat until reviewed by the Authority to ensure transparency."],"last_date":"02 March 2026","apply_url":"https://pdc.prime.edu.pk/vacant_admission/","apply_label":"Apply Online for Migration"}','2026-10-13 18:23:25');
-- settings: 8 rows

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(191) NOT NULL,
  `password_hash` VARCHAR(191) NOT NULL,
  `name` VARCHAR(191) NULL,
  `role` VARCHAR(191) NOT NULL DEFAULT 'admin',
  `is_active` TINYINT(1) NOT NULL DEFAULT 1,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`,`email`,`password_hash`,`name`,`role`,`is_active`,`created_at`,`updated_at`) VALUES
(1,'admin@riphahpsh.edu.pk','$2y$10$Gi/7g8.vGBxC2gImRCtiVuA8vsuSLiTpcnYPYHqwpYBCeE22FjNPG','CMS Admin','admin',1,'2026-10-13 17:20:46','2026-10-13 17:20:46');
-- users: 1 rows

SET FOREIGN_KEY_CHECKS=1;
