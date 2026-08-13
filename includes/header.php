<?php
if (!defined('base_url')) {
  $host = strtolower($_SERVER['HTTP_HOST'] ?? '');
  if ($host === 'staging.riphahpsh.edu.pk' || $host === 'www.staging.riphahpsh.edu.pk') {
    define('base_url', 'https://staging.riphahpsh.edu.pk/dds/');
  } else {
    define('base_url', 'https://dds.riphahpsh.edu.pk/');
  }
}
if (!function_exists('dds_asset')) {
  function dds_asset(string $path): string {
    $full = dirname(__DIR__) . '/' . ltrim($path, '/');
    $v = is_file($full) ? (string) filemtime($full) : (string) time();
    return htmlspecialchars($path, ENT_QUOTES, 'UTF-8') . '?v=' . rawurlencode($v);
  }
}
$page_title = $page_title ?? 'Department of Dental Sciences | Peshawar Dental College — Riphah Peshawar Campus';
$page_description = $page_description ?? 'Department of Dental Sciences, Riphah International University – Peshawar Campus. Peshawar Dental College — PM&DC recognized BDS programmes. Warsak Road, Peshawar.';
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title><?= htmlspecialchars($page_title) ?></title>
  <meta name="description" content="<?= htmlspecialchars($page_description) ?>" />

  <link rel="icon" type="image/png" href="assets/images/logo/favicon-logo.jpg" sizes="32x32">
  <link rel="apple-touch-icon" href="assets/images/logo/favicon-logo.jpg">

  <meta property="og:title" content="<?= htmlspecialchars($page_title) ?>">
  <meta property="og:description" content="<?= htmlspecialchars($page_description) ?>">
  <meta property="og:image" content="<?= htmlspecialchars(base_url) ?>assets/images/logo/favicon-logo.jpg">
  <meta property="og:url" content="<?= htmlspecialchars(base_url) ?>">

  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
  <link href="<?= dds_asset('assets/css/pmc-global.css') ?>" rel="stylesheet" />
  <link href="<?= dds_asset('assets/css/style.css') ?>" rel="stylesheet" />
  <?php if (!empty($preload_images) && is_array($preload_images)): ?>
    <?php foreach ($preload_images as $preload_href): ?>
      <?php
        $preload_ext = strtolower(pathinfo($preload_href, PATHINFO_EXTENSION));
        $preload_type = $preload_ext === 'webp' ? 'image/webp' : ($preload_ext === 'png' ? 'image/png' : 'image/jpeg');
      ?>
  <link rel="preload" as="image" href="<?= htmlspecialchars($preload_href) ?>" type="<?= $preload_type ?>" fetchpriority="high" />
    <?php endforeach; ?>
  <?php endif; ?>
</head>

<body>

  <div class="pmc-topbar d-none d-md-block">
    <div class="container">
      <div class="d-flex align-items-center justify-content-between">
        <div class="d-flex align-items-center flex-wrap gap-1">
          <i class="bi bi-geo-alt-fill me-1"></i> Warsak Road, Peshawar, KP 25160, Pakistan
          <span class="sep">|</span>
          <i class="bi bi-telephone-fill me-1"></i>
          <a href="tel:+92915201848">+92-91-5201848 / +92-91-5202264</a>
          <span class="sep">|</span>
          <i class="bi bi-envelope-fill me-1"></i>
          <a href="mailto:info@riphahpsh.edu.pk">info@riphahpsh.edu.pk</a>
        </div>
        <div class="d-flex align-items-center gap-3">
          <a href="http://careers.prime.edu.pk" target="_blank"><i class="bi bi-briefcase me-1"></i>Career Portal</a>
          <a href="https://ses.prime.edu.pk" target="_blank"><i class="bi bi-laptop me-1"></i>LMS</a>
          <a href="vacant-seats.php" class="tb-cta"><i class="bi bi-door-open me-1"></i>Vacant Seats</a>
        </div>
      </div>
    </div>
  </div>

  <nav class="pmc-nav navbar navbar-expand-lg" id="mainNav">
    <div class="container">
      <a class="pmc-brand" href="index.php">
        <div class="">
          <img src="assets/images/logo/riphah-psh.png"
            alt="Department of Dental Sciences (DDS) — Riphah Peshawar Campus" width="200px;" />
        </div>
        <div class="pmc-brand-text d-none d-md-block" style="margin-left:10px;line-height:1.25;">
          <div style="font-size:.88rem;font-weight:700;color:var(--navy);">Department of Dental Sciences</div>
          <div style="font-size:.72rem;color:var(--teal);">Peshawar Dental College · Riphah Peshawar Campus</div>
        </div>
      </a>

      <button class="pmc-toggler navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMain">
        <i class="bi bi-list" style="font-size:1.4rem;color:var(--navy)"></i>
      </button>

      <div class="collapse navbar-collapse" id="navMain">
        <ul class="navbar-nav ms-auto align-items-lg-center position-static">

          <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>

          <li class="nav-item mega-menu-wrapper position-static">
            <a class="nav-link dropdown-toggle" href="about.php">About</a>
            <div class="mega-menu">
              <div class="container">
                <div class="row g-4">
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-info-circle-fill"></i> About Us</div>
                    <a class="mega-link" href="about.php"><i class="bi bi-building"></i>About DDS</a>
                    <a class="mega-link" href="vision-mission.php"><i class="bi bi-eye"></i>Vision &amp; Mission</a>
                    <a class="mega-link" href="faculty.php"><i class="bi bi-people"></i>Faculty</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/upload/organogram/Organogram%20March%2013,%202023-PDC.pdf" target="_blank"><i class="bi bi-diagram-3"></i>Organogram</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-hospital-fill"></i> College &amp; Hospitals</div>
                    <a class="mega-link" href="pdc.php"><i class="bi bi-award"></i>Peshawar Dental College</a>
                    <a class="mega-link" href="pdc.php#hospital"><i class="bi bi-hospital"></i>Peshawar Dental Hospital</a>
                    <a class="mega-link" href="https://mth.prime.edu.pk/" target="_blank"><i class="bi bi-heart-pulse"></i>Mercy Teaching Hospital</a>
                    <a class="mega-link" href="https://pth.prime.edu.pk/" target="_blank"><i class="bi bi-building"></i>Prime Teaching Hospital</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-diagram-3"></i> Other Relevant Departments</div>
                    <a class="mega-link" href="https://riphahpsh.edu.pk/" target="_blank"><i class="bi bi-building"></i>Main Campus</a>
                    <a class="mega-link" href="https://dms.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-heart-pulse"></i>Department of Medical Sciences</a>
                    <a class="mega-link" href="https://riphahpsh.edu.pk/islamic-studies.php" target="_blank"><i class="bi bi-book"></i>Department of Islamic Studies &amp; Comparative Religion</a>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <li class="nav-item"><a class="nav-link" href="departments.php">Departments</a></li>

          <li class="nav-item mega-menu-wrapper">
            <a class="nav-link dropdown-toggle" href="index.php#programs">Programs</a>
            <div class="dropdown-menu plain-dd" style="min-width:260px;">
              <a class="dropdown-item" href="pdc.php"><i class="bi bi-mortarboard"></i>Undergraduate Dental Education (PDC)</a>
              <a class="dropdown-item" href="#"><i class="bi bi-hourglass-split"></i>Postgraduate Dental Education <span class="text-muted" style="font-size:.72rem;">(Coming Soon)</span></a>
              <a class="dropdown-item" href="dental-education.php"><i class="bi bi-book"></i>Dental Education Overview</a>
            </div>
          </li>

          <li class="nav-item mega-menu-wrapper position-static">
            <a class="nav-link dropdown-toggle" href="admissions.php">Admissions</a>
            <div class="mega-menu">
              <div class="container">
                <div class="row g-4">
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-mortarboard-fill"></i> Apply</div>
                    <a class="mega-link" href="admissions.php"><i class="bi bi-pencil-square"></i>Admissions</a>
                    <a class="mega-link" href="vacant-seats.php"><i class="bi bi-door-open"></i>Vacant Seats</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/Dental%20College%20Prospectus%202025-26.pdf"
                      target="_blank"><i class="bi bi-file-pdf"></i>Prospectus 2025–26</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/PDC%20BDS%20PROSPECTUS%2024-25.pdf"
                      target="_blank"><i class="bi bi-file-pdf"></i>Prospectus 2024–25</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-cash-stack"></i> Fees &amp; Scholarships</div>
                    <a class="mega-link"
                      href="https://pdc.prime.edu.pk/downloads/BDS_Fee_Session_2025-26_25-12-2025.htm"
                      target="_blank"><i class="bi bi-receipt"></i>Fee Structure 2025–26</a>
                    <a class="mega-link"
                      href="https://pdc.prime.edu.pk/downloads/BDS_Fee_Session%202024-25-Final%20dated%2023.07.htm"
                      target="_blank"><i class="bi bi-receipt"></i>Fee Structure 2024–25</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/Scholarship%20Policy.pdf"
                      target="_blank"><i class="bi bi-award"></i>Scholarship Policy</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/Scholarship_Application_Form.pdf"
                      target="_blank"><i class="bi bi-file-earmark-text"></i>Scholarship Application</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-info-circle"></i> Key Information</div>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/Admission_Policy_Session_2023-24.pdf" target="_blank"><i class="bi bi-check-circle"></i>Admissions Policy (Undergraduate)</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/pgmi-admission-policy-pg.pdf" target="_blank"><i class="bi bi-list-ol"></i>Admissions Policy (Postgraduate)</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/" target="_blank"><i class="bi bi-person-circle"></i>Student Portal</a>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <li class="nav-item mega-menu-wrapper position-static">
            <a class="nav-link dropdown-toggle" href="dental-education.php">Education &amp; Research</a>
            <div class="mega-menu">
              <div class="container">
                <div class="row g-4">
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-book-fill"></i> Education</div>
                    <a class="mega-link" href="dental-education.php"><i class="bi bi-journal-medical"></i>Dental Education</a>
                    <a class="mega-link" href="#"><i class="bi bi-journal-medical"></i>Postgraduate Dental Education (Coming Soon)</a>
                    <a class="mega-link" href="curriculum.php"><i class="bi bi-journal-text"></i>Curriculum (Undergraduate)</a>
                    <a class="mega-link" href="pg-curriculum.php"><i class="bi bi-journal-text"></i>Curriculum (Postgraduate)</a>
                    <a class="mega-link" href="examinations.php"><i class="bi bi-clipboard-pulse"></i>Examinations &amp; Assessments</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-laptop"></i> Research</div>
                    <a class="mega-link" href="https://umr.prime.edu.pk/" target="_blank"><i class="bi bi-search"></i>Undergraduate Medical Research (UMR)</a>
                    <a class="mega-link" href="faculty-research.php"><i class="bi bi-people"></i>Faculty Research</a>
                    <a class="mega-link" href="https://oric.prime.edu.pk/" target="_blank"><i class="bi bi-lightbulb"></i>ORIC</a>
                    <a class="mega-link" href="https://riphahpsh.edu.pk/pubedu.php" target="_blank"><i class="bi bi-journal-bookmark"></i>Educational Literature</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-calendar-event"></i> Resources</div>
                    <a class="mega-link" href="student-guide.php"><i class="bi bi-book"></i>Student Guide</a>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <li class="nav-item"><a class="nav-link" href="gallery.php">Gallery</a></li>
          <li class="nav-item"><a class="nav-link" href="contact.php">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>
