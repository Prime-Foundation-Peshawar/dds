<?php
/**
 * Audit DDS faculty profiles for departments that have source packs to upload.
 */
require_once dirname(__DIR__) . '/includes/departments-data.php';
require_once dirname(__DIR__) . '/includes/faculty-lib.php';

$targets = [
  'oral-pathology' => [
    'folder' => 'Oral Pathology',
    'source_names' => [
      'Abbas Saleem Khan',
      'Nasiha Motahir',
      'Nasiha Bashir',
      'Fatima Iqbal',
      'Tehmina Naushin',
      'Tehmina Nausheen',
      'Tehmina Naushin Ur Razaq',
      'Karishma Ali',
      'Anoshia Zahid',
    ],
  ],
  'prosthodontics' => [
    'folder' => 'Prosthodontics',
    'source_names' => ['Muhammad Raza', 'Muhammad Sartaj Khan', 'Saima Afridi', 'Samia Manzar', 'Maryam Tahir'],
  ],
  'sciences-of-dental-material' => [
    'folder' => 'Science of Dental Materials',
    'source_names' => ['Amjad Hanif', 'Hina Rehman', 'Zudia Riaz', 'Mah Rukh'],
  ],
  'community-preventive-dentistry' => [
    'folder' => 'Community & Preventive Dentistry',
    'source_names' => ['Farzeen Khan', 'Aamir Hameed', 'Farah Shah', 'Areeba Faheem'],
  ],
  'dental-education' => [
    'folder' => 'DDE',
    // Marina Khan / Uzma Siddique appear only as co-authors in pubs, not faculty rows.
    'source_names' => ['Mushyyada Durrani'],
  ],
  'oral-maxillofacial-surgery' => [
    'folder' => 'Oral & Maxillofacial Surgery',
    'source_names' => ['Syed Amjad Shah', 'Amjad Shah'],
  ],
  'oral-biology' => [
    'folder' => 'Oral Biology',
    'source_names' => ['Dila Baz Khan', 'Munawar Aziz Khattak'],
  ],
  'oral-medicine' => [
    'folder' => 'Oral Medicine',
    'source_names' => ['Muhammad Younas', 'Sobia Kanwal', 'Shagufta Naz', 'Manzar Iqbal'],
  ],
  'paediatric-dentistry' => [
    'folder' => 'Paediatric Dentistry',
    'source_names' => ['Hasham Khan', 'Humaira Hayat', 'Zarghuna Niaz', 'Maryam Rashid'],
  ],
  'periodontology' => [
    'folder' => 'Periodontology',
    // Tariq Ali Khan appears only as workshop presenter text; Palwasha not a clear faculty row in pack.
    'source_names' => ['Kawish Syed', 'Mahirah Iqbal', 'Zeeshan Danish', 'Abeera Hamid', 'Abira Hamid', 'Mubah Safdar', 'Hina Tariq'],
  ],
];

function field_count(?array $rec, string $key): int
{
  if (!$rec || empty($rec[$key])) {
    return 0;
  }
  if (!is_array($rec[$key])) {
    return trim((string) $rec[$key]) !== '' ? 1 : 0;
  }
  $n = 0;
  foreach ($rec[$key] as $v) {
    if (is_array($v)) {
      $text = trim(implode(' ', array_map('strval', $v)));
    } else {
      $text = trim((string) $v);
    }
    if ($text !== '') {
      $n++;
    }
  }
  return $n;
}

function classify(?array $rec): array
{
  $photo = $rec && !empty($rec['photo']);
  $q = field_count($rec, 'qualifications');
  $e = field_count($rec, 'experience');
  $p = field_count($rec, 'publications');
  $hasAny = $photo || $q || $e || $p || field_count($rec, 'research_preferences');
  if (!$rec || !$hasAny) {
    $status = 'Pending';
  } elseif ($q > 0 && ($e > 0 || $p > 0)) {
    $status = 'Completed';
  } else {
    $status = 'Partial';
  }
  $missing = [];
  if ($q <= 0) {
    $missing[] = 'qualifications';
  }
  if ($e <= 0 && $p <= 0) {
    if ($e <= 0) {
      $missing[] = 'experience';
    }
    if ($p <= 0) {
      $missing[] = 'publications';
    }
  }
  if (!$photo) {
    $missing[] = 'photo (optional)';
  }
  return compact('status', 'photo', 'q', 'e', 'p', 'missing');
}

function in_source(string $name, array $sourceNames): bool
{
  $slug = faculty_slug($name);
  foreach ($sourceNames as $s) {
    if (faculty_slugs_match($slug, faculty_slug($s)) || faculty_slugs_match($slug, $s)) {
      return true;
    }
  }
  return false;
}

$pack = faculty_hrms_fetch_all();
$hrmsOk = !empty($pack['ok']);
$profiles = faculty_profiles_pack()['profiles'] ?? [];

$report = [
  'generated_at' => date('c'),
  'branch' => trim((string) shell_exec('git rev-parse --abbrev-ref HEAD 2>NUL')),
  'commit' => trim((string) shell_exec('git rev-parse --short HEAD 2>NUL')),
  'hrms_ok' => $hrmsOk,
  'criteria' => [
    'Completed' => 'Qualifications + (experience or publications); photo optional; skills ignored',
    'Partial' => 'Some content received but incomplete',
    'Pending' => 'Not received / no usable qualifications+experience/publications',
  ],
  'departments' => [],
];

foreach ($targets as $slug => $meta) {
  $dept = $academic_departments[$slug] ?? null;
  $deptName = (string) ($dept['name'] ?? $meta['folder']);
  $wanted = [];
  foreach (faculty_hrms_dept_names_for_slug($slug, $deptName) as $label) {
    $wanted[faculty_hrms_norm_dept($label)] = true;
  }

  $members = [];
  if ($hrmsOk) {
    foreach ($pack['employees'] as $row) {
      if (!is_array($row) || !faculty_public_desig_allowed((string) ($row['desTitle'] ?? ''))) {
        continue;
      }
      $dep = faculty_hrms_norm_dept((string) ($row['depName'] ?? ''));
      if ($dep === '' || empty($wanted[$dep])) {
        continue;
      }
      $emp = trim((string) ($row['empName'] ?? ''));
      if ($emp === '') {
        continue;
      }
      $cv = faculty_profile_lookup_cv($emp);
      $info = classify($cv);
      $members[] = [
        'name' => $emp,
        'designation' => trim((string) ($row['desTitle'] ?? '')),
        'source' => 'HRMS',
        'in_source_pack' => in_source($emp, $meta['source_names']),
        'has_profile' => (bool) $cv,
        'profile_slug' => $cv['slug'] ?? faculty_slug($emp),
        'status' => $info['status'],
        'photo' => $info['photo'],
        'qualifications' => $info['q'],
        'experience' => $info['e'],
        'publications' => $info['p'],
        'missing' => $info['missing'],
      ];
    }
  }

  // Also include profile-only people in this department not already listed
  foreach ($profiles as $rec) {
    if (!is_array($rec)) {
      continue;
    }
    $dep = faculty_hrms_norm_dept((string) ($rec['department'] ?? ''));
    if ($dep === '' || empty($wanted[$dep])) {
      continue;
    }
    $emp = trim((string) ($rec['name'] ?? ''));
    if ($emp === '') {
      continue;
    }
    $already = false;
    foreach ($members as $m) {
      if (faculty_slugs_match(faculty_slug($m['name']), faculty_slug($emp))) {
        $already = true;
        break;
      }
    }
    if ($already) {
      continue;
    }
    if (!faculty_public_desig_allowed((string) ($rec['designation'] ?? '')) && !faculty_profile_has_cv($rec)) {
      // skip clearly non-directory if designation hidden and no cv? still include if in source
      if (!in_source($emp, $meta['source_names'])) {
        continue;
      }
    }
    $info = classify($rec);
    $members[] = [
      'name' => $emp,
      'designation' => trim((string) ($rec['designation'] ?? '')),
      'source' => 'CV-only',
      'in_source_pack' => in_source($emp, $meta['source_names']),
      'has_profile' => true,
      'profile_slug' => $rec['slug'] ?? faculty_slug($emp),
      'status' => $info['status'],
      'photo' => $info['photo'],
      'qualifications' => $info['q'],
      'experience' => $info['e'],
      'publications' => $info['p'],
      'missing' => $info['missing'],
    ];
  }

  // Source-pack names not found in HRMS/CV
  $missingFromSite = [];
  foreach ($meta['source_names'] as $srcName) {
    $found = false;
    foreach ($members as $m) {
      if (faculty_slugs_match(faculty_slug($m['name']), faculty_slug($srcName))) {
        $found = true;
        break;
      }
    }
    if (!$found) {
      // also direct profile lookup
      $cv = faculty_profile_lookup_cv($srcName);
      if ($cv) {
        $info = classify($cv);
        $members[] = [
          'name' => $cv['name'] ?? $srcName,
          'designation' => trim((string) ($cv['designation'] ?? '')),
          'source' => 'Source-pack/CV',
          'in_source_pack' => true,
          'has_profile' => true,
          'profile_slug' => $cv['slug'] ?? faculty_slug($srcName),
          'status' => $info['status'],
          'photo' => $info['photo'],
          'qualifications' => $info['q'],
          'experience' => $info['e'],
          'publications' => $info['p'],
          'missing' => $info['missing'],
        ];
      } else {
        $missingFromSite[] = $srcName;
      }
    }
  }

  $completed = 0;
  $partial = 0;
  $pending = 0;
  foreach ($members as $m) {
    if ($m['status'] === 'Completed') {
      $completed++;
    } elseif ($m['status'] === 'Partial') {
      $partial++;
    } else {
      $pending++;
    }
  }
  $total = count($members);
  if ($total <= 0 || $completed <= 0) {
    $deptStatus = 'Pending';
  } elseif ($completed >= $total) {
    $deptStatus = 'Completed';
  } else {
    $deptStatus = 'Partial';
  }

  $report['departments'][] = [
    'slug' => $slug,
    'name' => $deptName,
    'folder' => $meta['folder'],
    'total' => $total,
    'completed' => $completed,
    'partial' => $partial,
    'pending' => $pending,
    'department_status' => $deptStatus,
    'source_names_not_on_site' => $missingFromSite,
    'members' => $members,
  ];
}

echo json_encode($report, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
