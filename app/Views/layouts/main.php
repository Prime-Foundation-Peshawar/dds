<?php
helper('faculty');
$host = strtolower($_SERVER['HTTP_HOST'] ?? '');
$is_staging = ($host === 'staging.riphahpsh.edu.pk' || $host === 'www.staging.riphahpsh.edu.pk');
$hub_base = hub_base();
$page_title = $page_title ?? 'Peshawar Dental College';
$page_description = $page_description ?? '';
$canonical_url = $canonical_url ?? current_url();
$og_type = $og_type ?? 'website';
$page_image = $page_image ?? base_url('assets/images/logo/favicon-logo.jpg');
$robots_content = $is_staging ? 'noindex, nofollow' : ($robots ?? '');
if (!defined('GOOGLE_SITE_VERIFICATION')) {
    define('GOOGLE_SITE_VERIFICATION', '');
}
if (!function_exists('seo_json_ld')) {
    function seo_json_ld(array $graph): string {
        return json_encode(['@context' => 'https://schema.org', '@graph' => $graph], JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE) ?: '{}';
    }
}
$ld_graph = $ld_graph ?? [];
?><!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title><?= htmlspecialchars($page_title) ?></title>
  <meta name="description" content="<?= htmlspecialchars($page_description) ?>" />
  <link rel="canonical" href="<?= htmlspecialchars($canonical_url) ?>" />
  <?php if ($robots_content !== ''): ?>
  <meta name="robots" content="<?= htmlspecialchars($robots_content) ?>" />
  <?php endif; ?>
  <?php if (GOOGLE_SITE_VERIFICATION !== ''): ?>
  <meta name="google-site-verification" content="<?= htmlspecialchars(GOOGLE_SITE_VERIFICATION) ?>" />
  <?php endif; ?>

  <link rel="icon" type="image/png" href="<?= base_url('assets/images/logo/favicon-logo.jpg') ?>" sizes="32x32">
  <link rel="apple-touch-icon" href="<?= base_url('assets/images/logo/favicon-logo.jpg') ?>">

  <meta property="og:type" content="<?= htmlspecialchars($og_type) ?>">
  <meta property="og:site_name" content="Peshawar Dental College">
  <meta property="og:locale" content="en_PK">
  <meta property="og:title" content="<?= htmlspecialchars($page_title) ?>">
  <meta property="og:description" content="<?= htmlspecialchars($page_description) ?>">
  <meta property="og:image" content="<?= htmlspecialchars($page_image) ?>">
  <meta property="og:url" content="<?= htmlspecialchars($canonical_url) ?>">
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="<?= htmlspecialchars($page_title) ?>">
  <meta name="twitter:description" content="<?= htmlspecialchars($page_description) ?>">
  <meta name="twitter:image" content="<?= htmlspecialchars($page_image) ?>">

  <script type="application/ld+json"><?= seo_json_ld($ld_graph) ?></script>

  <?php if (!$is_staging): ?>
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-LLF69PBVMB"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-LLF69PBVMB');
  </script>
  <?php endif; ?>

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
          <a href="https://careers.riphahpsh.edu.pk" target="_blank"><i class="bi bi-briefcase me-1"></i>Career Portal</a>
          <a href="https://ses.prime.edu.pk" target="_blank"><i class="bi bi-laptop me-1"></i>LMS</a>
          <a href="<?= site_url('vacant-seats') ?>" class="tb-cta"><i class="bi bi-door-open me-1"></i>Vacant Seats</a>
        </div>
      </div>
    </div>
  </div>

  <nav class="pmc-nav navbar navbar-expand-lg" id="mainNav">
    <div class="container">
      <a class="pmc-brand" href="<?= site_url() ?>">
        <div class="">
          <img src="<?= base_url('assets/images/logo/riphah-psh.png') ?>"
            alt="Department of Dental Sciences (PDC) — Riphah Peshawar Campus" width="200px;" />
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

          <li class="nav-item"><a class="nav-link" href="<?= site_url() ?>">Home</a></li>

          <li class="nav-item mega-menu-wrapper position-static">
            <a class="nav-link dropdown-toggle" href="<?= site_url('about') ?>">About</a>
            <div class="mega-menu">
              <div class="container">
                <div class="row g-4">
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-info-circle-fill"></i> About Us</div>
                    <a class="mega-link" href="<?= site_url('about') ?>"><i class="bi bi-building"></i>Introduction</a>
                    <a class="mega-link" href="<?= site_url('vision-mission') ?>"><i class="bi bi-eye"></i>Vision &amp; Mission</a>
                    <a class="mega-link" href="<?= site_url('faculty') ?>"><i class="bi bi-people"></i>Faculty</a>
                    <a class="mega-link" href="<?= base_url('assets/images/organogram/PDC-Organogram-2026.pdf') ?>" target="_blank"><i class="bi bi-diagram-3"></i>Organogram</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-hospital-fill"></i> College &amp; Hospitals</div>
                    <a class="mega-link" href="<?= site_url('pdc') ?>"><i class="bi bi-award"></i>Peshawar Dental College</a>
                    <!-- <a class="mega-link" href="<?= site_url('pdc') ?>#hospital"><i class="bi bi-hospital"></i>Peshawar Dental Hospital</a> -->
                    <a class="mega-link" href="https://mth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-heart-pulse"></i>Mercy Teaching Hospital</a>
                    <a class="mega-link" href="https://pth.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-building"></i>Prime Teaching Hospital</a>
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

          <li class="nav-item"><a class="nav-link" href="<?= site_url('departments') ?>">Departments</a></li>

          <li class="nav-item mega-menu-wrapper">
            <a class="nav-link dropdown-toggle" href="<?= site_url('index') ?>#programs">Programs</a>
            <div class="dropdown-menu plain-dd" style="min-width:260px;">
              <a class="dropdown-item" href="<?= site_url('pdc') ?>"><i class="bi bi-mortarboard"></i>Undergraduate Dental Education (PDC)</a>
              <a class="dropdown-item" href="<?= site_url('pg-dental-education') ?>"><i class="bi bi-journal-medical"></i>Postgraduate Dental Education</a>
              <!-- <a class="dropdown-item" href="<?= site_url('dental-education') ?>"><i class="bi bi-book"></i>Dental Education Overview</a> -->
            </div>
          </li>

          <li class="nav-item mega-menu-wrapper position-static">
            <a class="nav-link dropdown-toggle" href="<?= site_url('admissions') ?>">Admissions</a>
            <div class="mega-menu">
              <div class="container">
                <div class="row g-4">
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-mortarboard-fill"></i> Apply</div>
                    <a class="mega-link" href="<?= site_url('admissions') ?>"><i class="bi bi-pencil-square"></i>Admissions</a>
                    <a class="mega-link" href="<?= site_url('vacant-seats') ?>"><i class="bi bi-door-open"></i>Vacant Seats (BDS)</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/Dental%20College%20Prospectus%202025-26.pdf"
                      target="_blank"><i class="bi bi-file-pdf"></i>Prospectus 2025–26</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/PDC%20BDS%20PROSPECTUS%2024-25.pdf"
                      target="_blank"><i class="bi bi-file-pdf"></i>Prospectus 2024–25</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-cash-stack"></i> Fees &amp; Scholarships</div>
                    <a class="mega-link"
                      href="<?= base_url('assets/uploads/admissions/fee-structure/PDC-Fee structure 2026-27.htm') ?>"
                      target="_blank"><i class="bi bi-receipt"></i>Fee Structure 2026–27</a>
                    <a class="mega-link"
                      href="https://pdc.prime.edu.pk/downloads/BDS_Fee_Session_2025-26_25-12-2025.htm"
                      target="_blank"><i class="bi bi-receipt"></i>Fee Structure 2025–26</a>
                    <a class="mega-link"
                      href="https://pdc.prime.edu.pk/downloads/BDS_Fee_Session%202024-25-Final%20dated%2023.07.htm"
                      target="_blank"><i class="bi bi-receipt"></i>Fee Structure 2024–25</a>
                    <a class="mega-link" href="<?= base_url('assets/uploads/policies/Scholarship-Policy.pdf') ?>"
                      target="_blank"><i class="bi bi-award"></i>Scholarship Policy</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/Scholarship_Application_Form.pdf"
                      target="_blank"><i class="bi bi-file-earmark-text"></i>Scholarship Application</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-info-circle"></i> Key Information</div>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/Admission_Policy_Session_2023-24.pdf" target="_blank"><i class="bi bi-check-circle"></i>Admissions Policy (Undergraduate)</a>
                    <a class="mega-link" href="https://pdc.prime.edu.pk/downloads/pgmi-admission-policy-pg.pdf" target="_blank"><i class="bi bi-list-ol"></i>Admissions Policy (Postgraduate)</a>
                    <a class="mega-link" href="https://pmc.prime.edu.pk/portal_login.php" target="_blank"><i class="bi bi-person-circle"></i>Portal</a>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <li class="nav-item mega-menu-wrapper position-static">
            <a class="nav-link dropdown-toggle" href="<?= site_url('dental-education') ?>">Education &amp; Research</a>
            <div class="mega-menu">
              <div class="container">
                <div class="row g-4">
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-book-fill"></i> Education</div>
                    <a class="mega-link" href="<?= site_url('dental-education') ?>"><i class="bi bi-journal-medical"></i>Dental Education</a>
                    <a class="mega-link" href="<?= site_url('pg-dental-education') ?>"><i class="bi bi-journal-medical"></i>Postgraduate Dental Education</a>
                    <a class="mega-link" href="<?= site_url('curriculum') ?>"><i class="bi bi-journal-text"></i>Curriculum (Undergraduate)</a>
                    <a class="mega-link" href="<?= site_url('pg-curriculum') ?>"><i class="bi bi-journal-text"></i>Curriculum (Postgraduate)</a>
                    <a class="mega-link" href="<?= site_url('examinations') ?>"><i class="bi bi-clipboard-pulse"></i>Examinations &amp; Assessments</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-laptop"></i> Research</div>
                    <a class="mega-link" href="https://umr.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-search"></i>Undergraduate Medical Research (UMR)</a>
                    <a class="mega-link" href="<?= site_url('faculty-research') ?>"><i class="bi bi-people"></i>Faculty Research</a>
                    <a class="mega-link" href="https://oric.riphahpsh.edu.pk/" target="_blank"><i class="bi bi-lightbulb"></i>ORIC</a>
                    <a class="mega-link" href="https://riphahpsh.edu.pk/pubedu.php" target="_blank"><i class="bi bi-journal-bookmark"></i>Educational Literature</a>
                  </div>
                  <div class="col-lg-4">
                    <div class="mega-col-head"><i class="bi bi-calendar-event"></i> Resources</div>
                    <a class="mega-link" href="<?= site_url('student-guide') ?>"><i class="bi bi-book"></i>Student Guide</a>
                  </div>
                </div>
              </div>
            </div>
          </li>

          <li class="nav-item"><a class="nav-link" href="<?= site_url('gallery') ?>">Gallery</a></li>
          <li class="nav-item"><a class="nav-link" href="<?= site_url('contact') ?>">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>

<?= $this->renderSection('content') ?>
<!-- ═══ FOOTER ═══ -->
<footer class="pmc-footer">
  <div class="footer-top">
    <div class="container">
      <div class="row g-5">
        <div class="col-lg-3">
          <div class="foot-brand">
            <img src="<?= base_url('assets/images/logo/riphah-psh-white.png') ?>"
              alt="Department of Dental Sciences (PDC) — Riphah Peshawar Campus" width="250px" />
          </div>
          <p class="foot-desc">
            Department of Dental Sciences, Riphah International University – Peshawar Campus — comprising Peshawar Dental College.
          </p>
          <div class="foot-socials">
            <a href="https://www.facebook.com/share/17Mw2CuEkD/" class="soc-btn" target="_blank" rel="noopener"
              aria-label="Facebook"><i class="bi bi-facebook"></i></a>
          </div>
        </div>
        <div class="col-6 col-lg-2">
          <p class="foot-heading">Quick Links</p>
          <ul class="foot-links">
            <li><a href=""<?= site_url() ?>">Home</a></li>
            <li><a href="<?= site_url('about') ?>">About Us</a></li>
            <li><a href="<?= site_url('departments') ?>">Departments</a></li>
            <li><a href="<?= site_url('vision-mission') ?>">Vision &amp; Mission</a></li>
            <li><a href="<?= site_url('faculty') ?>">Faculty</a></li>
            <li><a href="<?= site_url('admissions') ?>">Admissions</a></li>
            <li><a href="<?= site_url('pdc') ?>">Peshawar Dental College</a></li>
            <li><a href="<?= site_url('vacant-seats') ?>">Vacant Seats</a></li>
            <li><a href="<?= site_url('contact') ?>">Contact Us</a></li>
          </ul>
        </div>
        <div class="col-6 col-lg-2">
          <p class="foot-heading">Education</p>
          <ul class="foot-links">
            <li><a href="<?= site_url('dental-education') ?>">Dental Education</a></li>
            <li><a href="<?= site_url('curriculum') ?>">Curriculum</a></li>
            <li><a href="<?= site_url('faculty-research') ?>">Faculty Research</a></li>
            <li><a href="https://riphahpsh.edu.pk/news-letter.php" target="_blank" rel="noopener">Newsletter</a></li>
          </ul>
        </div>
        <div class="col-6 col-lg-2">
          <p class="foot-heading">Societies</p>
          <ul class="foot-links">
            <li><a href="https://riphahpsh.edu.pk/umr.php" target="_blank" rel="noopener">UMR Society</a></li>
            <li><a href="https://riphahpsh.edu.pk/social-welfare.php" target="_blank" rel="noopener">Social Welfare Society</a></li>
            <li><a href="https://riphahpsh.edu.pk/literary-society.php" target="_blank" rel="noopener">Literature &amp; Arts Society</a></li>
            <li><a href="https://riphahpsh.edu.pk/sports-society.php" target="_blank" rel="noopener">Sports Society</a></li>
          </ul>
        </div>
        <div class="col-lg-3">
          <p class="foot-heading">Contact Us</p>
          <div class="foot-contact"><i class="bi bi-geo-alt-fill"></i><span>Warsak Road, Peshawar, KP 25160,
              Pakistan</span></div>
          <div class="foot-contact"><i class="bi bi-telephone-fill"></i><span><a
                href="tel:+92915201848">+92-91-5201848 / +92-91-5202264</a></span></div>
          <div class="foot-contact"><i class="bi bi-envelope-fill"></i><span><a
                href="mailto:info@riphahpsh.edu.pk">info@riphahpsh.edu.pk</a></span></div>
          <div class="mt-3">
            <a href="https://pmc.prime.edu.pk/portal_login.php" target="_blank" rel="noopener" class="btn-pmc btn-pmc-teal"
              style="background:var(--teal);color:white;font-size:.82rem;padding:10px 20px;">
              <i class="bi bi-person-circle"></i> Portal
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="footer-bot">
      <span>&copy; <?= date('Y') ?> Riphah International University - Peshawar Campus &middot; All Rights Reserved.</span>
      <div class="d-flex gap-3 flex-wrap justify-content-center">
        <a href="sitemap-page">Sitemap</a>
      </div>
    </div>
  </div>
</footer>

<button id="backToTop" aria-label="Back to top"><i class="bi bi-chevron-up"></i></button>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="<?= function_exists('dds_asset') ? dds_asset('assets/js/pmc-global.js') : 'assets/js/pmc-global.js' ?>"></script>
</body>

</html>
