<?php
require_once dirname(__DIR__) . '/includes/faculty-lib.php';

function has_photo_file(?array $rec): bool {
  if (!$rec || empty($rec['photo'])) {
    return false;
  }
  $fs = dirname(__DIR__) . '/' . ltrim((string) $rec['photo'], '/');
  return is_file($fs);
}

function profile_data_received(?array $rec): bool {
  if (!$rec) {
    return false;
  }
  $quals = !empty($rec['qualifications']) && is_array($rec['qualifications']);
  $exp = !empty($rec['experience']) && is_array($rec['experience']);
  $pubs = !empty($rec['publications']) && is_array($rec['publications']);
  return $quals && ($exp || $pubs);
}

$pack = faculty_hrms_fetch_all();
$directory = [];
$slugs = [];
if (!empty($pack['ok'])) {
  foreach ($pack['employees'] as $row) {
    if (!is_array($row)) {
      continue;
    }
    if (!faculty_public_desig_allowed((string) ($row['desTitle'] ?? ''))) {
      continue;
    }
    $emp = trim((string) ($row['empName'] ?? ''));
    $dep = trim((string) ($row['depName'] ?? ''));
    if ($emp === '' || $dep === '' || strcasecmp($dep, 'Administration') === 0) {
      continue;
    }
    if (in_array($dep, ['Dental Education', 'DDE'], true)) {
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
  $des = trim((string) ($rec['designation'] ?? 'Faculty'));
  $des = trim(preg_split('/[\n;]/', $des)[0] ?? $des);
  if (!faculty_public_desig_allowed($des)) {
    continue;
  }
  $emp = trim((string) $rec['name']);
  $depName = trim((string) ($rec['department'] ?? ''));
  if ($depName === '' || strcasecmp($depName, 'Administration') === 0) {
    continue;
  }
  if (in_array($depName, ['Dental Education', 'DDE'], true)) {
    continue;
  }
  $already = false;
  $keys = array_filter([(string) ($rec['slug'] ?? ''), faculty_slug($emp)]);
  foreach (($rec['aliases'] ?? []) as $alias) {
    $keys[] = (string) $alias;
  }
  foreach ($slugs as $memberSlug) {
    foreach ($keys as $key) {
      $key = trim($key);
      if ($key !== '' && (faculty_slugs_match($memberSlug, faculty_slug($key)) || faculty_slugs_match($memberSlug, $key))) {
        $already = true;
        break 2;
      }
    }
  }
  if ($already) {
    continue;
  }
  $directory[] = [
    'empName' => $emp,
    'desTitle' => $des !== '' ? $des : 'Faculty',
    'depName' => $depName,
  ];
  $slugs[] = faculty_slug($emp);
}

$rows = [];
foreach ($directory as $row) {
  $name = trim((string) ($row['empName'] ?? ''));
  $des = trim((string) ($row['desTitle'] ?? ''));
  $dep = trim((string) ($row['depName'] ?? ''));
  if ($name === '' || !faculty_public_desig_allowed($des)) {
    continue;
  }
  $rec = faculty_profile_lookup(faculty_slug($name));
  if (has_photo_file($rec)) {
    continue;
  }
  $rows[] = [
    'name' => $name,
    'designation' => $des,
    'department' => $dep,
    'profile_data' => profile_data_received($rec) ? 'Received' : 'Not received',
    'status' => 'Missing photo',
    'missing' => ['photo'],
  ];
}

echo json_encode($rows, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
