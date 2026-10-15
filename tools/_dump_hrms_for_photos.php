<?php
require_once dirname(__DIR__) . '/includes/faculty-lib.php';

$pack = faculty_hrms_fetch_all();
$out = [
  'ok' => !empty($pack['ok']),
  'error' => $pack['error'] ?? null,
  'count' => 0,
  'employees' => [],
];
if (!empty($pack['ok'])) {
  foreach ($pack['employees'] as $row) {
    if (!is_array($row)) {
      continue;
    }
    $out['employees'][] = [
      'empId' => (string) ($row['empId'] ?? $row['EmpId'] ?? $row['id'] ?? ''),
      'empName' => trim((string) ($row['empName'] ?? '')),
      'desTitle' => trim((string) ($row['desTitle'] ?? '')),
      'depName' => trim((string) ($row['depName'] ?? '')),
      'slug' => faculty_slug(trim((string) ($row['empName'] ?? ''))),
    ];
  }
  $out['count'] = count($out['employees']);
}

$profiles = [];
foreach (faculty_profiles_pack()['profiles'] as $slug => $rec) {
  $profiles[] = [
    'slug' => (string) ($rec['slug'] ?? $slug),
    'name' => (string) ($rec['name'] ?? ''),
    'aliases' => $rec['aliases'] ?? [],
    'department' => (string) ($rec['department'] ?? ''),
    'designation' => (string) ($rec['designation'] ?? ''),
    'photo' => (string) ($rec['photo'] ?? ''),
  ];
}
$out['profiles'] = $profiles;

echo json_encode($out, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
