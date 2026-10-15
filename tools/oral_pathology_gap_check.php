<?php
require_once dirname(__DIR__) . '/includes/faculty-lib.php';

function ncount(?array $rec, string $key): int
{
  if (!$rec || empty($rec[$key])) {
    return 0;
  }
  return is_array($rec[$key])
    ? count(array_filter(array_map(static fn($v) => trim((string) $v), $rec[$key])))
    : (trim((string) $rec[$key]) !== '' ? 1 : 0);
}

$sourceFaculty = [
  ['name' => 'Abbas Saleem Khan', 'aliases' => ['Abbas Saleem Khan'], 'annexure_pubs_guess' => 40, 'annexure' => 'Annexure-1'],
  ['name' => 'Nasiha Motahir', 'aliases' => ['Nasiha Bashir', 'Nasiha Motahir'], 'annexure_pubs_guess' => 18, 'annexure' => 'Annexure-2'],
  ['name' => 'Fatima Iqbal', 'aliases' => ['Fatima Iqbal'], 'annexure_pubs_guess' => 20, 'annexure' => 'Annexure-3'],
  ['name' => 'Tehmina Naushin', 'aliases' => ['Tehmina Nausheen', 'Tehmina Naushin', 'Tehmina Naushin Ur Razaq'], 'annexure_pubs_guess' => 23, 'annexure' => 'Annexure-4'],
  ['name' => 'Karishma Ali', 'aliases' => ['Karishma Ali'], 'annexure_pubs_guess' => 11, 'annexure' => 'Annexure-5'],
  ['name' => 'Anoshia Zahid', 'aliases' => ['Anoshia Zahid'], 'annexure_pubs_guess' => 2, 'annexure' => 'Annexure-6'],
];

$wanted = [];
foreach (faculty_hrms_dept_names_for_slug('oral-pathology', 'Oral Pathology') as $label) {
  $wanted[faculty_hrms_norm_dept($label)] = true;
}

$pack = faculty_hrms_fetch_all();
$hrms = [];
if (!empty($pack['ok'])) {
  foreach ($pack['employees'] as $row) {
    if (!is_array($row) || !faculty_public_desig_allowed((string) ($row['desTitle'] ?? ''))) {
      continue;
    }
    $dep = faculty_hrms_norm_dept((string) ($row['depName'] ?? ''));
    if ($dep === '' || empty($wanted[$dep])) {
      continue;
    }
    $hrms[] = $row;
  }
}

echo "=== HRMS Oral Pathology (" . count($hrms) . ") ===\n";
foreach ($hrms as $row) {
  echo '- ', $row['empName'], ' | ', $row['desTitle'], "\n";
}

echo "\n=== Source pack vs website profile ===\n";
$rows = [];
foreach ($sourceFaculty as $src) {
  $cv = null;
  foreach ($src['aliases'] as $alias) {
    $cv = faculty_profile_lookup_cv($alias);
    if ($cv) {
      break;
    }
  }
  $matchedHrms = null;
  foreach ($hrms as $row) {
    foreach ($src['aliases'] as $alias) {
      if (faculty_slugs_match(faculty_slug($row['empName']), faculty_slug($alias))) {
        $matchedHrms = $row;
        break 2;
      }
    }
  }

  $q = ncount($cv, 'qualifications');
  $e = ncount($cv, 'experience');
  $p = ncount($cv, 'publications');
  $photo = $cv && !empty($cv['photo']);
  if (!$cv) {
    $status = 'Pending';
  } elseif ($q > 0 && ($e > 0 || $p > 0)) {
    $status = 'Completed';
  } else {
    $status = 'Partial';
  }

  $gaps = [];
  if (!$cv) {
    $gaps[] = 'no website profile';
  }
  if ($q <= 0) {
    $gaps[] = 'missing qualifications';
  }
  if ($e <= 0) {
    $gaps[] = 'missing experience';
  }
  if ($p <= 0) {
    $gaps[] = 'missing publications';
  } elseif ($src['annexure_pubs_guess'] > $p + 3) {
    $gaps[] = 'publications may be incomplete (site ' . $p . ' vs annexure ~' . $src['annexure_pubs_guess'] . ')';
  }
  if (!$photo) {
    $gaps[] = 'missing photo (optional)';
  }
  if (!$matchedHrms) {
    $gaps[] = 'not found in HRMS Oral Pathology filter';
  }

  $rows[] = [
    'source_name' => $src['name'],
    'annexure' => $src['annexure'],
    'website_name' => $cv['name'] ?? '',
    'slug' => $cv['slug'] ?? '',
    'hrms' => $matchedHrms['empName'] ?? '',
    'desig' => $matchedHrms['desTitle'] ?? ($cv['designation'] ?? ''),
    'status' => $status,
    'photo' => $photo,
    'q' => $q,
    'e' => $e,
    'p' => $p,
    'annexure_pubs_guess' => $src['annexure_pubs_guess'],
    'gaps' => $gaps,
  ];

  echo $src['name'], ' => ', $status, "\n";
  echo '  website: ', ($cv['name'] ?? 'NONE'), ' | slug=', ($cv['slug'] ?? '-'), "\n";
  echo '  HRMS: ', ($matchedHrms['empName'] ?? 'NONE'), ' | ', ($matchedHrms['desTitle'] ?? '-'), "\n";
  echo '  counts: photo=', ($photo ? 'Y' : 'N'), " q=$q e=$e p=$p | annexure pubs~{$src['annexure_pubs_guess']}\n";
  if ($gaps) {
    echo '  gaps: ', implode('; ', $gaps), "\n";
  }
}

// HRMS people not in source master list
echo "\n=== On HRMS but not in master source list ===\n";
foreach ($hrms as $row) {
  $found = false;
  foreach ($sourceFaculty as $src) {
    foreach ($src['aliases'] as $alias) {
      if (faculty_slugs_match(faculty_slug($row['empName']), faculty_slug($alias))) {
        $found = true;
        break 2;
      }
    }
  }
  if (!$found) {
    $cv = faculty_profile_lookup_cv($row['empName']);
    echo '- ', $row['empName'], ' | ', $row['desTitle'], ' | profile=', ($cv ? ($cv['slug'] ?? 'Y') : 'NONE'), "\n";
  }
}

file_put_contents(
  dirname(__DIR__) . '/tools/_oral_pathology_gap.json',
  json_encode(['generated_at' => date('c'), 'rows' => $rows], JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)
);
echo "\nWrote tools/_oral_pathology_gap.json\n";
