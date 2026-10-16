-- Restore the public gallery albums when the production database has none.
INSERT INTO gallery_albums (slug, title, icon, sort_order, created_at, updated_at)
SELECT 'campus', 'PDC Campus & Buildings', 'bi-buildings', 0, NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM gallery_albums WHERE slug = 'campus');

INSERT INTO gallery_albums (slug, title, icon, sort_order, created_at, updated_at)
SELECT 'facilities', 'Campus Facilities', 'bi-house-heart', 1, NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM gallery_albums WHERE slug = 'facilities');

INSERT INTO gallery_items (album_id, image_path, title, caption, span, sort_order, created_at, updated_at)
SELECT a.id, v.image_path, v.title, v.caption, v.span, v.sort_order, NOW(), NOW()
FROM gallery_albums a
JOIN (
  SELECT 'campus' AS slug, 'assets/images/campus/pdc1.jpeg' AS image_path, 'Peshawar Dental College' AS title, 'Main academic building on Warsak Road' AS caption, 'span-2' AS span, 0 AS sort_order
  UNION ALL SELECT 'campus', 'assets/images/campus/pdc2.jpeg', 'Academic Block', 'Teaching and learning spaces', NULL, 1
  UNION ALL SELECT 'campus', 'assets/images/campus/pdc3.jpeg', 'Classroom', 'Teaching and learning spaces', NULL, 2
  UNION ALL SELECT 'campus', 'assets/images/campus/pdc5.jpeg', 'Sills Lab', 'Teaching and learning spaces', NULL, 3
  UNION ALL SELECT 'campus', 'assets/images/campus/pdc10.jpeg', 'Campus Courtyard', 'Open spaces around the dental college', NULL, 4
  UNION ALL SELECT 'campus', 'assets/images/campus/pdc11.jpeg', 'Campus Approach', 'Entrance and approach to PDC', NULL, 5
  UNION ALL SELECT 'campus', 'assets/images/campus/pdc12.jpeg', 'Building Detail', 'Architectural view of the college', NULL, 6
  UNION ALL SELECT 'facilities', 'assets/images/pdc/library.JPG', 'Library & LRC', 'Learning resource centre for dental students', 'span-2', 0
  UNION ALL SELECT 'facilities', 'assets/images/pdc/library1.png', 'Library & LRC', 'Learning resource centre for dental students', NULL, 1
  UNION ALL SELECT 'facilities', 'assets/images/campus/library2.jpeg', 'Library & LRC', 'Learning resource centre for dental students', NULL, 2
  UNION ALL SELECT 'facilities', 'assets/images/campus/library3.jpeg', 'Library & LRC', 'Learning resource centre for dental students', NULL, 3
  UNION ALL SELECT 'facilities', 'assets/images/campus/girls-hostel.png', 'Hostel', 'On-campus accommodation', NULL, 4
  UNION ALL SELECT 'facilities', 'assets/images/campus/hostel1.png', 'Hostel', 'On-campus accommodation', NULL, 5
  UNION ALL SELECT 'facilities', 'assets/images/campus/hostel2.png', 'Hostel', 'On-campus accommodation', NULL, 6
  UNION ALL SELECT 'facilities', 'assets/images/campus/hostel3.png', 'Hostel', 'On-campus accommodation', NULL, 7
  UNION ALL SELECT 'facilities', 'assets/images/campus/hostel4.png', 'Hostel', 'On-campus accommodation', NULL, 8
  UNION ALL SELECT 'facilities', 'assets/images/campus/hostel5.png', 'Hostel', 'On-campus accommodation', NULL, 9
  UNION ALL SELECT 'facilities', 'assets/images/campus/hostel6.png', 'Hostel', 'On-campus accommodation', NULL, 10
  UNION ALL SELECT 'facilities', 'assets/images/campus/gym-pmc.png', 'Sports & Gym', 'Fitness and recreation facilities', NULL, 11
  UNION ALL SELECT 'facilities', 'assets/images/pdc/cafe.png', 'Cafeteria', 'Student cafeteria and dining', NULL, 12
  UNION ALL SELECT 'facilities', 'assets/images/pdc/masjid.png', 'Masjid', 'Campus mosque', NULL, 13
  UNION ALL SELECT 'facilities', 'assets/images/campus/pdc-transport.png', 'Transport', 'College transport services', NULL, 14
  UNION ALL SELECT 'facilities', 'assets/images/pdc/daycare.png', 'Day Care', 'Day care facility on campus', NULL, 15
) v ON v.slug = a.slug
WHERE NOT EXISTS (
  SELECT 1 FROM gallery_items i WHERE i.album_id = a.id AND i.image_path = v.image_path
);
