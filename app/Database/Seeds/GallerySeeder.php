<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class GallerySeeder extends Seeder
{
    public function run()
    {
        $now = date('Y-m-d H:i:s');
        $albums = [
            'campus' => [
                'title' => 'PDC Campus & Buildings',
                'icon'  => 'bi-buildings',
                'items' => [
                    ['src' => 'assets/images/campus/pdc1.jpeg', 'title' => 'Peshawar Dental College', 'caption' => 'Main academic building on Warsak Road'],
                    ['src' => 'assets/images/campus/pdc2.jpeg', 'title' => 'Academic Block', 'caption' => 'Teaching and learning spaces'],
                    ['src' => 'assets/images/campus/pdc3.jpeg', 'title' => 'Classroom', 'caption' => 'Teaching and learning spaces'],
                    ['src' => 'assets/images/campus/pdc5.jpeg', 'title' => 'Sills Lab', 'caption' => 'Teaching and learning spaces'],
                    ['src' => 'assets/images/campus/pdc10.jpeg', 'title' => 'Campus Courtyard', 'caption' => 'Open spaces around the dental college'],
                    ['src' => 'assets/images/campus/pdc11.jpeg', 'title' => 'Campus Approach', 'caption' => 'Entrance and approach to PDC'],
                    ['src' => 'assets/images/campus/pdc12.jpeg', 'title' => 'Building Detail', 'caption' => 'Architectural view of the college'],
                ],
            ],
            'facilities' => [
                'title' => 'Campus Facilities',
                'icon'  => 'bi-house-heart',
                'items' => [
                    ['src' => 'assets/images/pdc/library.JPG', 'title' => 'Library & LRC', 'caption' => 'Learning resource centre for dental students'],
                    ['src' => 'assets/images/pdc/library1.png', 'title' => 'Library & LRC', 'caption' => 'Learning resource centre for dental students'],
                    ['src' => 'assets/images/campus/library2.jpeg', 'title' => 'Library & LRC', 'caption' => 'Learning resource centre for dental students'],
                    ['src' => 'assets/images/campus/library3.jpeg', 'title' => 'Library & LRC', 'caption' => 'Learning resource centre for dental students'],
                    ['src' => 'assets/images/campus/girls-hostel.png', 'title' => 'Hostel', 'caption' => 'On-campus accommodation'],
                    ['src' => 'assets/images/campus/hostel1.png', 'title' => 'Hostel', 'caption' => 'On-campus accommodation'],
                    ['src' => 'assets/images/campus/hostel2.png', 'title' => 'Hostel', 'caption' => 'On-campus accommodation'],
                    ['src' => 'assets/images/campus/hostel3.png', 'title' => 'Hostel', 'caption' => 'On-campus accommodation'],
                    ['src' => 'assets/images/campus/hostel4.png', 'title' => 'Hostel', 'caption' => 'On-campus accommodation'],
                    ['src' => 'assets/images/campus/hostel5.png', 'title' => 'Hostel', 'caption' => 'On-campus accommodation'],
                    ['src' => 'assets/images/campus/hostel6.png', 'title' => 'Hostel', 'caption' => 'On-campus accommodation'],
                    ['src' => 'assets/images/campus/gym-pmc.png', 'title' => 'Sports & Gym', 'caption' => 'Fitness and recreation facilities'],
                    ['src' => 'assets/images/pdc/cafe.png', 'title' => 'Cafeteria', 'caption' => 'Student cafeteria and dining'],
                    ['src' => 'assets/images/pdc/masjid.png', 'title' => 'Masjid', 'caption' => 'Campus mosque'],
                    ['src' => 'assets/images/campus/pdc-transport.png', 'title' => 'Transport', 'caption' => 'College transport services'],
                    ['src' => 'assets/images/pdc/daycare.png', 'title' => 'Day Care', 'caption' => 'Day care facility on campus'],
                ],
            ],
        ];

        $this->db->table('gallery_items')->emptyTable();
        $this->db->table('gallery_albums')->emptyTable();

        $order = 0;
        foreach ($albums as $slug => $album) {
            $this->db->table('gallery_albums')->insert([
                'slug'       => $slug,
                'title'      => $album['title'],
                'icon'       => $album['icon'],
                'sort_order' => $order++,
                'created_at' => $now,
                'updated_at' => $now,
            ]);
            $albumId = (int) $this->db->insertID();
            foreach (array_values($album['items']) as $i => $item) {
                $this->db->table('gallery_items')->insert([
                    'album_id'   => $albumId,
                    'image_path' => $item['src'],
                    'title'      => $item['title'] ?? null,
                    'caption'    => $item['caption'] ?? null,
                    'span'       => null,
                    'sort_order' => $i,
                    'created_at' => $now,
                    'updated_at' => $now,
                ]);
            }
        }

        // Ensure public gallery uses the template view, not CMS body.
        $this->db->table('pages')->where('slug', 'gallery')->update([
            'use_cms'    => 0,
            'view_key'   => 'gallery',
            'updated_at' => $now,
        ]);
    }
}
