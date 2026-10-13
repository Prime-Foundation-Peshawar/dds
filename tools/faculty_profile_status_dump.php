<?php
/**
 * JSON dump for DDS faculty profile completion report.
 * Run from repo root: php tools/faculty_profile_status_dump.php
 */
require_once dirname(__DIR__) . '/includes/departments-data.php';
require_once dirname(__DIR__) . '/includes/faculty-lib.php';

function profile_field_count($rec, string $key): int
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
      $text = trim(implode(' ', array_map(static function ($x) {
        return is_scalar($x) ? (string) $x : '';
      }, $v)));
    } else {
      $text = trim((string) $v);
    }
    if ($text !== '') {
      $n++;
    }
  }
  return $n;
}

function classify_profile(?array $rec): array
{
  $hasPhoto = $rec && !empty($rec['photo']);
  $nQual = profile_field_count($rec, 'qualifications');
  $nExp = profile_field_count($rec, 'experience');
  $nPubs = profile_field_count($rec, 'publications');
  $nResearch = profile_field_count($rec, 'research_preferences');
  $hasAny = $hasPhoto || $nQual || $nExp || $nPubs || $nResearch;

  if (!$rec || !$hasAny) {
    $status = 'Pending';
  } elseif ($nQual > 0 && ($nExp > 0 || $nPubs > 0)) {
    $status = 'Completed';
  } else {
    $status = 'Partial';
  }

  return [
    'status' => $status,
    'has_photo' => $hasPhoto,
    'qualifications' => $nQual,
    'experience' => $nExp,
    'publications' => $nPubs,
    'skills' => 0,
    'research' => $nResearch,
    'slug' => $rec['slug'] ?? '',
  ];
}

$catalog = $academic_departments;
$groups = academic_department_groups($catalog);

$deptMeta = [];
foreach ($catalog as $slug => $dept) {
  if (!empty($dept['hidden'])) {
    continue;
  }
  $name = (string) ($dept['name'] ?? $slug);
  $meta = [
    'slug' => $slug,
    'name' => $name,
    'group' => (string) ($dept['group'] ?? 'Other'),
  ];
  $deptMeta[faculty_hrms_norm_dept($name)] = $meta;
  foreach (faculty_hrms_dept_names_for_slug($slug, $name) as $label) {
    $deptMeta[faculty_hrms_norm_dept($label)] = $meta;
  }
}

$directory = [];
$slugs = [];
$pack = faculty_hrms_fetch_all();
if (!empty($pack['ok'])) {
  foreach ($pack['employees'] as $row) {
    if (!is_array($row)) {
      continue;
    }
    if (!faculty_public_desig_allowed((string) ($row['desTitle'] ?? ''))) {
      continue;
    }
    $emp = trim((string) ($row['empName'] ?? ''));
    if ($emp === '') {
      continue;
    }
    $depName = trim((string) ($row['depName'] ?? ''));
    if ($depName === '' || strcasecmp($depName, 'Administration') === 0) {
      continue;
    }
    $directory[] = $row;
    $slugs[] = faculty_slug($emp);
  }
}

foreach (faculty_profiles_pack()['profiles'] as $rec) {
  if (!is_array($rec) || trim((string) ($rec['name'] ?? '')) === '') {
    continue;
  }
  if (!faculty_profile_has_cv($rec)) {
    continue;
  }
  if (!faculty_public_desig_allowed((string) ($rec['designation'] ?? '')) && !faculty_profile_has_cv($rec)) {
    continue;
  }
  $emp = trim((string) $rec['name']);
  $depName = trim((string) ($rec['department'] ?? ''));
  if ($depName === '' || strcasecmp($depName, 'Administration') === 0) {
    continue;
  }
  $already = false;
  $keys = array_filter([(string) ($rec['slug'] ?? ''), faculty_slug($emp)]);
  if (!empty($rec['aliases']) && is_array($rec['aliases'])) {
    foreach ($rec['aliases'] as $alias) {
      $keys[] = (string) $alias;
    }
  }
  foreach ($slugs as $memberSlug) {
    foreach ($keys as $key) {
      $key = trim($key);
      if ($key === '') {
        continue;
      }
      if (faculty_slugs_match($memberSlug, faculty_slug($key)) || faculty_slugs_match($memberSlug, $key)) {
        $already = true;
        break 2;
      }
    }
  }
  if ($already) {
    continue;
  }
  $des = trim((string) ($rec['designation'] ?? 'Faculty'));
  $des = trim(preg_split('/[\n;]/', $des)[0] ?? $des);
  $directory[] = [
    'empName' => $emp,
    'desTitle' => $des !== '' ? $des : 'Faculty',
    'depName' => $depName,
    'facPMDCNo' => '',
    'facFacRegNo' => '',
    'qualifications' => '',
  ];
  $slugs[] = faculty_slug($emp);
}

$rows = [];
foreach ($directory as $row) {
  $depName = trim((string) ($row['depName'] ?? ''));
  if ($depName === '' || strcasecmp($depName, 'Administration') === 0) {
    continue;
  }
  $norm = faculty_hrms_norm_dept($depName);
  $meta = $deptMeta[$norm] ?? [
    'slug' => faculty_slug($depName),
    'name' => $depName,
    'group' => 'Other',
  ];

  $emp = trim((string) ($row['empName'] ?? ''));
  $cv = faculty_profile_lookup_cv($emp);
  $info = classify_profile($cv);

  $rows[] = [
    'group' => $meta['group'],
    'department' => $meta['name'],
    'department_slug' => $meta['slug'],
    'name' => $emp,
    'designation' => trim((string) ($row['desTitle'] ?? '')),
    'pmdc' => trim((string) ($row['facPMDCNo'] ?? '')),
    'status' => $info['status'],
    'has_photo' => $info['has_photo'],
    'qualifications' => $info['qualifications'],
    'experience' => $info['experience'],
    'publications' => $info['publications'],
    'skills' => $info['skills'],
    'research' => $info['research'],
    'profile_slug' => $info['slug'] !== '' ? $info['slug'] : faculty_slug($emp),
  ];
}

$orderedDepts = [];
foreach ($groups as $groupName => $depts) {
  foreach ($depts as $slug => $dept) {
    $orderedDepts[] = [
      'group' => $groupName,
      'name' => (string) $dept['name'],
      'slug' => $slug,
    ];
  }
}

$branch = trim((string) shell_exec('git rev-parse --abbrev-ref HEAD 2>NUL'));
$commit = trim((string) shell_exec('git rev-parse --short HEAD 2>NUL'));

echo json_encode([
  'generated_at' => date('c'),
  'source' => 'HRMS campus 2 + faculty-profiles.json',
  'branch' => $branch,
  'commit' => $commit,
  'criteria' => [
    'Completed' => 'Qualifications + (experience or publications); photo optional. Skills not required.',
    'Partial' => 'Profile content received but incomplete — still missing qualifications and/or experience/publications',
    'Pending' => 'Profile not received — missing qualifications and experience/publications',
  ],
  'departments_order' => $orderedDepts,
  'faculty' => $rows,
], JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
