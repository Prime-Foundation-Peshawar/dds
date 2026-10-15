<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

/**
 * Seeds newsletters + vacant_seats settings and gallery albums for DDS.
 */
class SiteModulesSeeder extends Seeder
{
    public function run()
    {
        $this->call('GallerySeeder');
        $now = date('Y-m-d H:i:s');

        // Newsletters are hosted externally (riphahpsh.edu.pk/news-letter.php) — not seeded locally.

        $vacant = [
            'intro'   => 'As per Riphah International University Rules and Regulations, applicant having less than 60% marks in any subject/paper shall not be eligible for migration.',
            'heading' => 'Vacant Seats in Peshawar Dental College',
            'rows'    => [
                ['year' => '1st Year BDS', 'session' => '2024-25', 'seats' => '0', 'note' => ''],
                ['year' => '2nd Year BDS', 'session' => '2023-24', 'seats' => '0', 'note' => ''],
                ['year' => '3rd Year BDS', 'session' => '2023-24', 'seats' => '0', 'note' => ''],
                ['year' => 'Final Year BDS', 'session' => '2021-22', 'seats' => '0', 'note' => ''],
            ],
            'notices' => [
                'Students are allowed to apply against the notified vacant seats (from 2nd Year BDS to Final Year BDS) with immediate effect. As per PM&DC Admission Regulations 2023, no transfer / migration shall be allowed in the 1st year of BDS.',
                'Students shall apply online for migration on vacant seats.',
                'Student will be admitted on merit based on average of Prof-examinations.',
                'As per Riphah International University Rules and Regulations, applicant having less than 60% marks in any subject/paper shall not be eligible for migration.',
                'No transfer shall be accepted by a college to a vacant seat until reviewed by the Authority to ensure transparency.',
            ],
            'last_date'   => '02 March 2026',
            'apply_url'   => 'https://pdc.prime.edu.pk/vacant_admission/',
            'apply_label' => 'Apply Online for Migration',
        ];

        $key   = 'vacant_seats';
        $value = json_encode($vacant, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
        $existing = $this->db->table('settings')->where('key', $key)->get()->getRowArray();
        if ($existing) {
            $this->db->table('settings')->where('id', $existing['id'])->update([
                'value'      => $value,
                'updated_at' => $now,
            ]);
        } else {
            $this->db->table('settings')->insert([
                'key'        => $key,
                'value'      => $value,
                'updated_at' => $now,
            ]);
        }

        $this->db->table('pages')->where('slug', 'vacant-seats')->update([
            'use_cms'    => 0,
            'view_key'   => 'vacant-seats',
            'updated_at' => $now,
        ]);
    }
}
