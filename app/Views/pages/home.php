<?php
/** Auto-ported content body from legacy index.php */
?>
<?php


?>

<?php
$hospitals = [
  [
    'id'           => 'pdh',
    'code'         => 'PDH',
    'name'         => 'Peshawar Dental Hospital',
    'desc'         => 'Tertiary care dental teaching hospital providing patient care and clinical training for BDS students.',
    'url'          => site_url('pdc') . '#hospital',
    'dept_url'     => site_url('departments'),
    'services_url' => site_url('pdc') . '#hospital',
    'external'     => false,
    'highlights'   => ['Oral & Maxillofacial OT', 'Phantom Lab', 'Surgical Skills Lab'],
    'departments'  => [
      'Oral & Maxillofacial Surgery',
      'Operative Dentistry',
      'Prosthodontics',
      'Orthodontics',
      'Periodontology',
      'Paediatric Dentistry',
      'Oral Medicine',
      'Community & Preventive Dentistry',
      'Oral Pathology',
    ],
    'services' => [
      'Dental Outpatient Department (OPD)',
      'Oral & Maxillofacial Operation Theatre',
      'Phantom Laboratory',
      'Surgical Skills Laboratory',
    ],
    'facilities' => [],
  ],
  [
    'id'           => 'mth',
    'code'         => 'MTH',
    'name'         => 'Mercy Teaching Hospital',
    'desc'         => 'Community-focused hospital with high patient volume, ideal for broad, everyday clinical experience.',
    'url'          => 'https://mth.riphahpsh.edu.pk/',
    'dept_url'     => 'https://mth.riphahpsh.edu.pk/pages/departments.php',
    'services_url' => 'https://mth.riphahpsh.edu.pk/pages/services.php',
    'highlights'   => ['Gynae & Obstetrics', 'Nursery / NICU', 'Emergency 24/7', 'Psychiatry'],
    'departments'  => [
      'General Medicine',
      'Pulmonology',
      'General Surgery',
      'Gynaecology & Obstetrics',
      'Paediatrics',
      'Nursery / NICU',
      'Orthopaedics',
      'Endocrinology',
      'Ophthalmology',
      'Dermatology',
      'Radiology',
      'Anaesthesiology',
      'Pathology',
      'ICU',
      'Psychiatry',
    ],
    'services' => [
      'Outpatient Department (OPD)',
      'Casualty / Emergency',
      'Laboratory',
      'X-Ray',
      'ECG / ECHO',
      'Operation Theatre',
      'Pharmacy',
      'Ultrasound',
      'Labour Room',
    ],
    'facilities' => [],
  ],
  [
    'id'           => 'pth',
    'code'         => 'PTH',
    'name'         => 'Prime Teaching Hospital',
    'desc'         => 'Modern diagnostic and surgical facilities for intensive clinical and surgical training rotations.',
    'url'          => 'https://pth.riphahpsh.edu.pk/',
    'dept_url'     => 'https://pth.riphahpsh.edu.pk/pages/departments.php',
    'services_url' => 'https://pth.riphahpsh.edu.pk/pages/services.php',
    'highlights'   => ['Neurosurgery', 'Cardiac Surgery', 'ERCP & Endoscopy', 'CT & MRI'],
    'departments'  => [
      'Gastroenterology & Hepatology',
      'Medicine',
      'Neurosurgery',
      'Neurology',
      'Orthopaedics',
      'Urology',
      'Nephrology',
      'Paediatrics',
      'Gynaecology & Obstetrics',
      'General Surgery',
      'Vascular & Endovascular Surgery',
      'Pulmonology',
      'Radiology',
      'Ophthalmology',
      'Psychiatry',
      'Cardiology',
      'Cardiac Surgery',
      'Family Medicine',
      'Accident & Emergency',
    ],
    'services' => [
      'Specialist OPD',
      'General OPD',
      'Emergency (Casualty)',
      'ICU (Intensive Care Unit)',
      'Operation Theatre',
      'Laboratory',
      'Special Chemistry Lab Tests',
      'Pharmacy',
      'Ultrasound',
      'X-Ray',
      'CT Scan',
      'MRI',
      'Endoscopy, Colonoscopy & Sigmoidoscopy',
      'ERCP, PEG Tube & Metallic Stenting',
      'ECG',
      'ECHO',
      'ETT',
      'Physiotherapy',
      'Wards & Private Rooms',
    ],
    'facilities' => ['Cafeteria', 'Masjid', '24/7 Generator Support', 'Spacious Parking'],
  ],
];

if (!function_exists('hs_e')) {
  function hs_e($s)
  {
    return htmlspecialchars((string) $s, ENT_QUOTES, 'UTF-8');
  }
}

if (!function_exists('hs_target')) {
  function hs_target(array $h)
  {
    return ($h['external'] ?? true) ? ' target="_blank" rel="noopener"' : '';
  }
}
?>

<style>
  /* ═══ Home: Teaching Hospitals (extends existing .hosp-card) ═══ */
  .home-hospitals {
    --hh-gold: var(--gold-light, #e3c47d);
    --hh-teal: var(--teal, #0e9384);
    --hh-navy: var(--navy, #0b2545);
    --hh-line: rgba(255, 255, 255, .12);
  }

  /* Card additions */
  .hosp-card--rich .hosp-desc {
    flex-grow: 0;
    margin-bottom: 18px;
  }

  @media (min-width: 992px) {
    .hosp-card--rich .hosp-desc {
      min-height: calc(3 * 1.75em);
    }
  }

  .hosp-facts {
    display: flex;
    margin: 0 0 16px;
    padding: 14px 0;
    list-style: none;
    border-top: 1px solid var(--hh-line);
    border-bottom: 1px solid var(--hh-line);
  }

  .hosp-facts li {
    flex: 1;
    font-family: var(--font-head, 'Montserrat', sans-serif);
    font-size: .64rem;
    font-weight: 600;
    letter-spacing: .08em;
    text-transform: uppercase;
    color: rgba(255, 255, 255, .55);
  }

  .hosp-facts li+li {
    padding-left: 14px;
    border-left: 1px solid var(--hh-line);
  }

  .hosp-facts strong {
    display: block;
    margin-bottom: 2px;
    font-size: 1.35rem;
    font-weight: 800;
    letter-spacing: -.01em;
    line-height: 1.1;
    color: #fff;
  }

  .hosp-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    flex-grow: 1;
    align-content: flex-start;
    margin: 0;
    padding: 0;
    list-style: none;
  }

  .hosp-tags li {
    padding: 4px 10px;
    font-family: var(--font-body, 'Quicksand', sans-serif);
    font-size: .74rem;
    font-weight: 600;
    color: rgba(255, 255, 255, .82);
    background: rgba(255, 255, 255, .06);
    border: 1px solid var(--hh-line);
    border-radius: 999px;
  }

  .hosp-actions {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
    margin-top: 22px;
  }

  .hosp-actions .hosp-link {
    margin-top: 0;
    text-decoration: none;
  }

  .hosp-more {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    padding: 8px 14px;
    font-family: var(--font-head, 'Montserrat', sans-serif);
    font-size: .72rem;
    font-weight: 700;
    letter-spacing: .02em;
    color: var(--hh-navy);
    text-decoration: none;
    background: var(--hh-gold);
    border-radius: 999px;
    transition: background .2s ease, color .2s ease;
  }

  .hosp-more:hover,
  .hosp-more:focus-visible {
    color: var(--hh-navy);
    background: #fff;
  }

  /* ── Detail dialog ── */
  .hosp-dialog {
    width: min(1000px, calc(100vw - 32px));
    max-height: min(86vh, 760px);
    padding: 0;
    color: #13233a;
    background: #fff;
    border: 0;
    border-radius: var(--r-lg, 18px);
    box-shadow: 0 40px 90px -30px rgba(0, 0, 0, .6);
    overflow: hidden;
  }

  .hosp-dialog[open] {
    position: fixed;
    top: 50%;
    left: 50%;
    right: auto;
    bottom: auto;
    margin: 0;
    transform: translate(-50%, -50%);
    display: flex;
    flex-direction: column;
    animation: hdIn .25s ease both;
  }

  .hosp-dialog::backdrop {
    background: rgba(6, 18, 36, .6);
    backdrop-filter: blur(3px);
  }

  @keyframes hdIn {
    from {
      opacity: 0;
      transform: translate(-50%, calc(-50% + 12px)) scale(.98);
    }

    to {
      opacity: 1;
      transform: translate(-50%, -50%);
    }
  }

  .hd-head {
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
    gap: 16px;
    padding: 22px 26px 18px;
    color: #fff;
    background: var(--hh-navy);
    border-top: 3px solid var(--hh-gold);
  }

  .hd-code {
    font-family: var(--font-head, 'Montserrat', sans-serif);
    font-size: .66rem;
    font-weight: 800;
    letter-spacing: .14em;
    color: var(--hh-gold);
  }

  .hd-head h3 {
    margin: 4px 0 0;
    font-family: var(--font-head, 'Montserrat', sans-serif);
    font-size: 1.25rem;
    font-weight: 700;
    color: #fff;
  }

  .hd-close {
    flex: none;
    display: grid;
    place-items: center;
    width: 36px;
    height: 36px;
    color: #fff;
    background: rgba(255, 255, 255, .1);
    border: 0;
    border-radius: 50%;
    cursor: pointer;
  }

  .hd-close:hover,
  .hd-close:focus-visible {
    background: rgba(255, 255, 255, .22);
  }

  .hd-body {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 18px;
    padding: 22px 26px;
    overflow-y: auto;
    background: #f4f7fa;
  }

  .hd-panel {
    padding: 18px 20px 8px;
    background: #fff;
    border: 1px solid #e3e9f0;
    border-radius: 14px;
  }

  .hd-panel-head {
    display: flex;
    align-items: center;
    gap: 10px;
    padding-bottom: 12px;
    margin-bottom: 4px;
    border-bottom: 2px solid var(--hh-navy);
  }

  .hd-panel-ico {
    display: grid;
    place-items: center;
    width: 30px;
    height: 30px;
    font-size: .9rem;
    color: var(--hh-teal);
    background: rgba(194, 65, 12, .1);
    border-radius: 8px;
  }

  .hd-panel-head h4 {
    flex: 1;
    margin: 0;
    font-family: var(--font-head, 'Montserrat', sans-serif);
    font-size: .8rem;
    font-weight: 800;
    letter-spacing: .08em;
    text-transform: uppercase;
    color: var(--hh-navy);
  }

  .hd-count {
    min-width: 28px;
    padding: 2px 8px;
    font-family: var(--font-head, 'Montserrat', sans-serif);
    font-size: .72rem;
    font-weight: 800;
    text-align: center;
    color: var(--hh-navy);
    background: var(--hh-gold);
    border-radius: 999px;
  }

  .hd-list {
    display: grid;
    grid-template-columns: 1fr 1fr;
    column-gap: 18px;
    margin: 0;
    padding: 0;
    list-style: none;
  }

  .hd-list li {
    position: relative;
    display: flex;
    align-items: center;
    min-height: 40px;
    padding: 8px 0 8px 16px;
    font-size: .82rem;
    font-weight: 600;
    line-height: 1.35;
    color: #2a3b52;
    border-bottom: 1px solid #eef2f6;
  }

  .hd-list li::before {
    content: "";
    position: absolute;
    left: 2px;
    top: 50%;
    width: 6px;
    height: 6px;
    margin-top: -3px;
    background: var(--hh-teal);
    border-radius: 50%;
  }

  .hd-list li:last-child,
  .hd-list li:nth-last-child(2):nth-child(odd) {
    border-bottom: 0;
  }

  .hd-foot {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 10px 20px;
    padding: 14px 26px;
    font-size: .82rem;
    background: #f6f8fb;
    border-top: 1px solid #e3e9f0;
  }

  .hd-foot a {
    font-weight: 600;
    color: var(--hh-teal);
    text-decoration: none;
  }

  .hd-foot a:hover {
    text-decoration: underline;
  }

  .hd-foot .hd-visit {
    margin-left: auto;
    padding: 8px 16px;
    color: #fff;
    background: var(--hh-navy);
    border-radius: 999px;
  }

  .hd-foot .hd-visit:hover {
    text-decoration: none;
    background: var(--hh-teal);
  }

  html.hosp-dialog-open {
    overflow: hidden;
  }

  @media (max-width: 767.98px) {
    .hd-body {
      grid-template-columns: 1fr;
      gap: 14px;
      padding: 14px;
    }

    .hd-panel {
      padding: 16px 16px 6px;
    }

    .hd-head,
    .hd-foot {
      padding-left: 18px;
      padding-right: 18px;
    }

    .hd-foot .hd-visit {
      margin-left: 0;
    }

    .hosp-dialog {
      max-height: 90vh;
    }
  }

  @media (max-width: 420px) {
    .hd-list {
      grid-template-columns: 1fr;
    }

    .hd-list li:nth-last-child(2):nth-child(odd) {
      border-bottom: 1px solid #eef2f6;
    }
  }

  @media (prefers-reduced-motion: reduce) {
    .hosp-dialog[open] {
      animation: none;
    }
  }
</style>

<?php if (! empty($home_slides)): ?>
<!-- ═══ HERO SLIDER (managed in ACP) ═══ -->
<?php $slideLink = static fn ($url) => preg_match('#^https?://#i', $url) ? $url : site_url(ltrim($url, '/')); ?>
<div id="heroSlider" aria-roledescription="carousel" aria-label="Campus highlights">
  <?php foreach ($home_slides as $index => $slide): ?>
  <?php
  $isVideo   = $slide['media_type'] === 'video';
  $videoPath = $slide['video_path'] ?: \App\Models\SettingModel::CURRENT_VIDEO_720;
  $poster    = $slide['image_path'] ?: \App\Models\SettingModel::CURRENT_POSTER;
  // *word* in the title is highlighted in teal, as on the campus film banner.
  $title     = preg_replace('/\*(.+?)\*/', '<span class="hl-teal">$1</span>', esc($slide['title']));
  ?>
  <div class="hero-slide <?= $index === 0 ? 'active' : '' ?> <?= $slide['motion_enabled'] ? '' : 'no-motion' ?>" role="group" aria-roledescription="slide" aria-label="<?= $index + 1 ?> of <?= count($home_slides) ?>">
    <?php if ($isVideo): ?>
      <div class="slide-media has-video" style="background-image:url('<?= base_url($poster) ?>')">
        <video class="managed-slide-video" muted playsinline loop preload="none" poster="<?= base_url($poster) ?>" src="<?= base_url($videoPath) ?>" aria-hidden="true"></video>
      </div>
    <?php else: ?>
      <div class="slide-media" style="background-image:url('<?= base_url($slide['image_path']) ?>')"></div>
    <?php endif; ?>
    <div class="slide-overlay"></div>
    <div class="container slide-inner">
      <div class="slide-content">
        <?php if ($slide['subtitle'] !== ''): ?><p class="slide-brand"><?= esc($slide['subtitle']) ?></p><?php endif; ?>
        <h1 class="slide-title"><?= $title ?></h1>
        <p class="slide-body"><?= nl2br(esc($slide['text'])) ?></p>
        <?php if ($slide['link_url'] !== '' || $slide['link2_url'] !== ''): ?>
        <div class="slide-actions">
          <?php if ($slide['link_url'] !== ''): ?><a href="<?= esc($slideLink($slide['link_url']), 'attr') ?>" class="btn-pmc btn-pmc-primary"><?= esc($slide['link_label'] ?: 'Learn more') ?></a><?php endif; ?>
          <?php if ($slide['link2_url'] !== ''): ?><a href="<?= esc($slideLink($slide['link2_url']), 'attr') ?>" class="btn-pmc btn-pmc-outline-white"><?= esc($slide['link2_label'] ?: 'Learn more') ?></a><?php endif; ?>
        </div>
        <?php endif; ?>
      </div>
    </div>
  </div>
  <?php endforeach; ?>

  <?php if (count($home_slides) > 1): ?>
  <!-- Controls -->
  <div class="slider-chrome">
    <button class="slider-prev" type="button" aria-label="Previous slide"><i class="bi bi-chevron-left"></i></button>
    <div class="slider-indicators" role="tablist" aria-label="Slides">
      <?php foreach ($home_slides as $index => $slide): ?>
      <?php $dotLabel = mb_strimwidth(str_replace('*', '', $slide['subtitle'] ?: $slide['title']), 0, 18, '…'); ?>
      <button class="slider-dot <?= $index === 0 ? 'active' : '' ?>" type="button" data-slide="<?= $index ?>" role="tab" aria-label="<?= esc($dotLabel, 'attr') ?>" aria-selected="<?= $index === 0 ? 'true' : 'false' ?>">
        <span class="slider-dot-track"><span class="slider-dot-bar"></span></span>
        <span class="slider-dot-label"><?= esc($dotLabel) ?></span>
      </button>
      <?php endforeach; ?>
    </div>
    <button class="slider-next" type="button" aria-label="Next slide"><i class="bi bi-chevron-right"></i></button>
  </div>
  <?php endif; ?>
</div>
<?php else: ?>
<?php
$heroPosterJpg = FCPATH . 'assets/images/slider/pdc-hero-poster.jpg';
$heroPosterWebp = FCPATH . 'assets/images/slider/pdc-hero-poster.webp';
$heroVideo720 = FCPATH . 'assets/videos/pdc-hero-720.mp4';
$heroVideo480 = FCPATH . 'assets/videos/pdc-hero-480.mp4';
$heroPosterJpgV = @filemtime($heroPosterJpg) ?: time();
$heroPosterWebpV = @filemtime($heroPosterWebp) ?: time();
$heroVideo720V = @filemtime($heroVideo720) ?: time();
$heroVideo480V = @filemtime($heroVideo480) ?: time();
?>
<!-- ═══ HERO — cinematic campus film ═══ -->
<div id="heroSlider" class="hero-cinematic" aria-label="Peshawar Dental College campus film">
  <div class="hero-slide active">
    <div class="slide-media slide-bg-hero has-video">
      <picture class="hero-poster">
        <source srcset="<?= base_url('assets/images/slider/pdc-hero-poster.webp') ?>?v=<?= $heroPosterWebpV ?>" type="image/webp">
        <img src="<?= base_url('assets/images/slider/pdc-hero-poster.jpg') ?>?v=<?= $heroPosterJpgV ?>" alt="" width="1600" height="900" fetchpriority="high" decoding="async">
      </picture>
      <video
        class="hero-video"
        muted
        playsinline
        loop
        preload="none"
        disablepictureinpicture
        aria-hidden="true"
        data-src-720="<?= base_url('assets/videos/pdc-hero-720.mp4') ?>?v=<?= $heroVideo720V ?>"
        data-src-480="<?= base_url('assets/videos/pdc-hero-480.mp4') ?>?v=<?= $heroVideo480V ?>"></video>
    </div>
    <div class="slide-overlay slide-overlay-film"></div>
    <div class="container slide-inner">
      <div class="slide-content">
        <p class="slide-brand">Department of Dental Sciences</p>
        <h1 class="slide-title">Your <span class="hl-teal">BDS</span> Journey Starts Here</h1>
        <p class="slide-body">Peshawar Dental College offers PM&amp;DC-aligned BDS education — rigorous preclinical science, early clinical exposure, and mentors who teach dentistry with integrity.</p>
        <p class="slide-body slide-body-sub">Study at Riphah International University – Peshawar Campus and build the competence to serve communities across KP and beyond.</p>
        <div class="slide-actions">
          <a href="<?= site_url('admissions') ?>" class="btn-pmc btn-pmc-primary"><i class="bi bi-mortarboard"></i> Admissions Info</a>
          <a href="<?= site_url('pdc') ?>" class="btn-pmc btn-pmc-outline-white">About PDC</a>
        </div>
      </div>
    </div>
    <button type="button" class="hero-video-toggle" aria-label="Pause campus film" hidden>
      <i class="bi bi-pause-fill"></i>
    </button>
  </div>
</div>
<?php endif; ?>

<!-- ═══ STATS BAR ═══ -->
<div class="pmc-stats">
  <div class="container-fluid px-0">
    <div class="row g-0">
      <div class="col-6 col-md-3">
        <div class="stat-cell"><span class="stat-num" data-count="2010" data-suffix="">2010</span><span
            class="stat-lbl">Year Established</span></div>
      </div>
      <div class="col-6 col-md-3">
        <div class="stat-cell"><span class="stat-num" data-count="15" data-suffix="+">15+</span><span
            class="stat-lbl">Years of Excellence</span></div>
      </div>
      <div class="col-6 col-md-3">
        <div class="stat-cell"><span class="stat-num" data-count="450" data-suffix="+">500+</span><span
            class="stat-lbl">Dentists Graduated</span></div>
      </div>
      <div class="col-6 col-md-3">
        <div class="stat-cell"><span class="stat-num" data-count="4" data-suffix="">4</span><span
            class="stat-lbl">Year BDS Programme</span></div>
      </div>
    </div>
  </div>
</div>


<!-- ═══ PROGRAMS ═══ -->
<section class="pmc-section" id="programs">
  <div class="container">
    <div class="text-center mb-5 fu">
      <span class="sec-eyebrow">Academic Programs</span>
      <h2 class="sec-title">Dental Education at International Standards</h2>
      <p class="sec-desc mx-auto" style="max-width:570px;">A curriculum built to produce graduates with clinical acumen,
        research ability, ethical values, and community leadership.</p>
    </div>
    <div class="row g-4 home-prog-grid">
      <div class="col-lg-6 fu fu-delay-1">
        <a class="home-prog-card home-prog-card--ug" href="<?= site_url('pdc') ?>">
          <span class="home-prog-code">Undergraduate</span>
          <h3>Peshawar Dental College</h3>
          <p>Established in 2010; a PM&amp;DC-recognized BDS programme for female students, with clinical training at Peshawar Dental Hospital and affiliated teaching hospitals.</p>
          <ul class="home-prog-meta">
            <li>BDS · 4 years</li>
            <li>Female students</li>
            <li>PM&amp;DC recognised</li>
            <li>HEC recognised</li>
          </ul>
          <span class="home-prog-cta">Learn more</span>
        </a>
      </div>
      <div class="col-lg-6 fu fu-delay-2">
        <a class="home-prog-card home-prog-card--pg" href="<?= site_url('pg-dental-education') ?>">
          <span class="home-prog-code">Postgraduate</span>
          <h3>Postgraduate Dental Education</h3>
          <p>M.Phil programmes in Oral Pathology, Oral Biology, and Dental Materials, with clinical postgraduate training at Peshawar Dental Hospital.</p>
          <ul class="home-prog-meta">
            <li>Oral Pathology</li>
            <li>Oral Biology</li>
            <li>Dental Materials</li>
          </ul>
          <span class="home-prog-cta">Explore programmes</span>
        </a>
      </div>
    </div>
  </div>
</section>

<!-- ═══ ABOUT ═══ -->
<section class="pmc-section bg-off" id="about">
  <div class="container">
    <div class="row g-5 align-items-start">
      <div class="col-lg-5 fu">
        <div class="about-visual" style="position:relative;">
        </div>
      </div>
      <div class="col-lg-7 fu fu-delay-2">
        <span class="sec-eyebrow">About </span>
        <h2 class="sec-title">Department of Dental Sciences</h2>

        <p class="sec-desc">The Department of Dental Sciences is a constituent department of Riphah International University – Peshawar Campus. It comprises <strong>Peshawar Dental College</strong>, established in 2010. The College is recognized by the Federal Ministry of Health, PM&amp;DC, and HEC, and offers a student-centred BDS programme for female students — professionally competent, ethically grounded, research-minded, and community-aware.
        </p>
        <p class="sec-desc">Peshawar Dental College has graduated more than 450 dentists and continues to serve students and communities in KP through academic, social, and research activities, with clinical training at Peshawar Dental Hospital and affiliated teaching hospitals.</p>
        <p class="sec-desc">For students searching for the best dental college in Peshawar or a top BDS college in Pakistan, PDC offers PM&amp;DC-recognized female dental education, a dedicated teaching hospital, and a Warsak Road campus of Riphah International University.</p>
        <a href="<?= site_url('about') ?>" class="btn-pmc btn-pmc-primary mt-4"><i class="bi bi-arrow-right-circle"></i> Read Full
          About Department of Dental Sciences</a>
      </div>
    </div>
  </div>
</section>





<!-- ═══ WHY PDC ═══ -->
<section class="pmc-section" id="why-pdc">
  <div class="container">
    <div class="home-sec-head text-center fu">
      <span class="sec-eyebrow">Why PDC</span>
      <h2 class="sec-title">Why Choose Peshawar Dental College</h2>
      <p class="sec-desc">Looking for the best dental college in Peshawar or a leading BDS college in Pakistan. Peshawar Dental College is PM&amp;DC and HEC recognized, female-only, and trains dentists at Peshawar Dental Hospital.</p>
    </div>
    <div class="row g-4">
      <div class="col-md-6 col-lg-3 fu fu-delay-1">
        <div class="why-card">
          <div class="why-ico"><i class="bi bi-award-fill"></i></div>
          <h4>PM&amp;DC &amp; HEC</h4>
          <p>Recognised dental college in Peshawar since 2010, aligned with national BDS standards.</p>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 fu fu-delay-2">
        <div class="why-card">
          <div class="why-ico"><i class="bi bi-hospital"></i></div>
          <h4>Own Dental Hospital</h4>
          <p>Clinical training at Peshawar Dental Hospital plus affiliated teaching hospitals.</p>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 fu fu-delay-3">
        <div class="why-card">
          <div class="why-ico"><i class="bi bi-person-hearts"></i></div>
          <h4>Female BDS</h4>
          <p>A dedicated BDS programme for female students serving communities worldwide.</p>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 fu fu-delay-4">
        <div class="why-card">
          <div class="why-ico"><i class="bi bi-mortarboard-fill"></i></div>
          <h4>450+ Graduates</h4>
          <p>Dentists trained in Peshawar and serving patients across Pakistan and beyond.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ═══ TEACHING HOSPITALS ═══ -->
<section class="pmc-section bg-navy home-hospitals" id="hospitals" data-hosp>
  <div class="container">
    <div class="home-sec-head text-center fu">
      <span class="sec-eyebrow">Affiliated Teaching Hospitals</span>
      <h2 class="sec-title">Clinical Training at Its Finest</h2>
      <p class="sec-desc">Students of the Department of Dental Sciences train at Peshawar Dental Hospital and affiliated teaching hospitals for comprehensive clinical exposure.</p>
    </div>

    <div class="row g-4">
      <?php foreach ($hospitals as $i => $h): ?>
        <div class="col-lg-4 col-md-6 fu fu-delay-<?= $i + 1 ?>">
          <article class="hosp-card hosp-card--rich">
            <span class="hosp-code"><?= hs_e($h['code']) ?></span>
            <h3 class="hosp-name"><?= hs_e($h['name']) ?></h3>
            <p class="hosp-desc"><?= hs_e($h['desc']) ?></p>

            <ul class="hosp-facts">
              <li><strong><?= count($h['departments']) ?></strong> Departments</li>
              <li><strong><?= count($h['services']) ?></strong> Services</li>
            </ul>

            <!-- <ul class="hosp-tags" aria-label="Highlights">
              <?php foreach ($h['highlights'] as $t): ?><li><?= hs_e($t) ?></li><?php endforeach; ?>
            </ul> -->

            <div class="hosp-actions">
              <a class="hosp-more" href="<?= hs_e($h['services_url']) ?>"<?= hs_target($h) ?>
                data-hosp-open="hosp-dlg-<?= hs_e($h['id']) ?>">
                <i class="bi bi-list-ul" aria-hidden="true"></i> Departments &amp; services
              </a>
              <a class="hosp-link" href="<?= hs_e($h['url']) ?>"<?= hs_target($h) ?>>Visit <i class="bi bi-arrow-right"></i></a>
            </div>
          </article>
        </div>
      <?php endforeach; ?>
    </div>
  </div>

  <?php foreach ($hospitals as $h): ?>
    <dialog class="hosp-dialog" id="hosp-dlg-<?= hs_e($h['id']) ?>" aria-labelledby="hosp-dlg-<?= hs_e($h['id']) ?>-title">
      <div class="hd-head">
        <div>
          <span class="hd-code"><?= hs_e($h['code']) ?></span>
          <h3 id="hosp-dlg-<?= hs_e($h['id']) ?>-title"><?= hs_e($h['name']) ?></h3>
        </div>
        <button type="button" class="hd-close" data-hosp-close aria-label="Close"><i class="bi bi-x-lg"></i></button>
      </div>

      <div class="hd-body">
        <section class="hd-panel">
          <header class="hd-panel-head">
            <span class="hd-panel-ico" aria-hidden="true"><i class="bi bi-diagram-3"></i></span>
            <h4>Departments</h4>
            <span class="hd-count"><?= count($h['departments']) ?></span>
          </header>
          <ul class="hd-list">
            <?php foreach ($h['departments'] as $d): ?><li><?= hs_e($d) ?></li><?php endforeach; ?>
          </ul>
        </section>

        <section class="hd-panel">
          <header class="hd-panel-head">
            <span class="hd-panel-ico" aria-hidden="true"><i class="bi bi-clipboard2-pulse"></i></span>
            <h4>Services</h4>
            <span class="hd-count"><?= count($h['services']) ?></span>
          </header>
          <ul class="hd-list">
            <?php foreach ($h['services'] as $sv): ?><li><?= hs_e($sv) ?></li><?php endforeach; ?>
          </ul>
        </section>
      </div>

      <div class="hd-foot">
        <a href="<?= hs_e($h['dept_url']) ?>"<?= hs_target($h) ?>>All departments <i class="bi bi-box-arrow-up-right"></i></a>
        <a href="<?= hs_e($h['services_url']) ?>"<?= hs_target($h) ?>>Services page <i class="bi bi-box-arrow-up-right"></i></a>
        <a class="hd-visit" href="<?= hs_e($h['url']) ?>"<?= hs_target($h) ?>>Visit hospital website <i class="bi bi-arrow-right"></i></a>
      </div>
    </dialog>
  <?php endforeach; ?>
</section>

<!-- ═══ CAMPUS LIFE ═══ -->
<section class="pmc-section bg-off" id="campus">
  <div class="container">
    <div class="row align-items-end mb-5">
      <div class="col-lg-7 fu">
        <span class="sec-eyebrow">Life at Department of Dental Sciences</span>
        <h2 class="sec-title">A Campus Built for Learning & Wellbeing</h2>
        <p class="sec-desc">Spanning 25 kanals on Warsak Road, Department of Dental Science's lush green campus provides
          everything a Dental
          student needs — academics, recreation, spirituality, and community.</p>
      </div>
      <div class="col-lg-5 text-lg-end fu fu-delay-2">
        <!-- <a href="<?= site_url('about') ?>#campus" class="btn-pmc btn-pmc-primary"><i class="bi bi-images"></i> Full Campus Tour</a> -->
      </div>
    </div>
    <div class="campus-mosaic fu">
      <div class="campus-tile big">
        <div class="ct-inner ct-bg-1">
          <div class="ct-ico"><i class="bi bi-buildings"></i></div>
          <div class="ct-lbl">Department of Dental Sciences<br />
            <!--<span style="font-size:.78rem;opacity:.65;font-weight:500;">25 Kanals · Warsak Road, Peshawar</span>-->
          </div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-10">
          <div class="ct-ico"><i class="bi bi-easel"></i></div>
          <div class="ct-lbl">Classrooms</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-11">
          <div class="ct-ico"><i class="bi bi-person-workspace"></i></div>
          <div class="ct-lbl">Skills Lab</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-12">
          <div class="ct-ico"><i class="bi bi-eyedropper"></i></div>
          <div class="ct-lbl">Multipurpose Lab</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-13">
          <div class="ct-ico"><i class="bi bi-bank"></i></div>
          <div class="ct-lbl">Dental Museum</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-14">
          <div class="ct-ico"><i class="bi bi-radioactive"></i></div>
          <div class="ct-lbl">Radiology (X-Ray)</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-2">
          <div class="ct-ico"><i class="bi bi-book-half"></i></div>
          <div class="ct-lbl">Library & LRC</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-3">
          <div class="ct-ico"><i class="bi bi-trophy"></i></div>
          <div class="ct-lbl">Sports & Gym</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-4">
          <div class="ct-ico"><i class="bi bi-cup-hot"></i></div>
          <div class="ct-lbl">Cafeteria</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-5">
          <div class="ct-ico"><i class="bi bi-house-heart"></i></div>
          <div class="ct-lbl">Girls Hostel</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-6">
          <div class="ct-ico"><i class="bi bi-moon-stars"></i></div>
          <div class="ct-lbl">Masjid</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-7">
          <div class="ct-ico"><i class="bi bi-bus-front"></i></div>
          <div class="ct-lbl">Transportation</div>
        </div>
      </div>
      <div class="campus-tile">
        <div class="ct-inner ct-bg-8">
          <div class="ct-ico"><i class="bi bi-balloon-heart"></i></div>
          <div class="ct-lbl">Day Care Center</div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ═══ ADMISSIONS UPDATED ═══ -->
<section class="pmc-section bg-off" id="admissions-updates">
  <div class="container">
    <div class="row align-items-end mb-4 mb-lg-5">
      <div class="col-lg-8 fu">
        <span class="sec-eyebrow">Admissions</span>
        <h2 class="sec-title">Admission Updates</h2>
        <p class="sec-desc mb-0">Current programme openings and application guidance for Peshawar Dental College and postgraduate dental programmes.</p>
      </div>
    </div>
    <?php if (! empty($admission_cards)): ?>
    <div class="row g-4">
      <?php foreach ($admission_cards as $i => $card): ?>
        <?= view('pages/partials/home_news_card', ['card' => $card, 'delay' => $i + 1, 'variant' => 'admissions']) ?>
      <?php endforeach; ?>
    </div>
    <?php else: ?>
    <div class="row">
      <div class="col-lg-12 fu-scale">
        <div class="alert alert-light border d-flex align-items-center gap-2 py-3 px-3 mb-0" role="status">
          <i class="bi bi-mortarboard" aria-hidden="true"></i>
          <span>No admissions are open at the moment. New openings and deadlines will be posted here once the next cycle begins.</span>
        </div>
      </div>
    </div>
    <?php endif; ?>
  </div>
</section>

<!-- ═══ WE ARE HIRING ═══ -->
<section class="pmc-section" id="careers">
  <div class="container">
    <div class="row align-items-end mb-4 mb-lg-5">
      <div class="col-lg-8 fu">
        <span class="sec-eyebrow">Careers</span>
        <h2 class="sec-title">We Are Hiring</h2>
        <p class="sec-desc mb-0">Faculty and staff opportunities at Riphah International University &ndash; Peshawar Campus.</p>
      </div>
      <?php if (!empty($jobs)): ?>
      <div class="col-lg-4 text-lg-end fu fu-delay-1 mt-3 mt-lg-0">
        <a href="<?= site_url('careers') ?>" class="btn-pmc btn-pmc-outline"><i class="bi bi-briefcase"></i> View All Jobs</a>
      </div>
      <?php endif; ?>
    </div>
    <?php if (!empty($jobs)): ?>
      <div class="career-slider" role="region" aria-label="Latest career opportunities">
        <div class="career-slider-track" id="careerSliderTrack" tabindex="0" aria-label="Job cards; scroll to see more opportunities">
          <?php foreach ($jobs as $job): ?>
            <?= view('pages/partials/job_card', ['job' => $job]) ?>
          <?php endforeach; ?>
        </div>
      </div>
    <?php else: ?>
    <div class="row">
      <div class="col-lg-12 fu-scale">
        <div class="alert alert-light border d-flex align-items-center gap-2 py-3 px-3 mb-0" role="status">
          <i class="bi bi-briefcase" aria-hidden="true"></i>
          <span>No vacancies to display right now. <a href="<?= site_url('careers') ?>">Visit our Careers page</a> for opportunities and application guidance.</span>
        </div>
      </div>
    </div>
    <?php endif; ?>
  </div>
</section>

<!-- ═══ LATEST FROM CAMPUS ═══ -->
<section class="pmc-section bg-off" id="news">
  <div class="container">
    <div class="row align-items-end mb-4 mb-lg-5">
      <div class="col-lg-8 fu">
        <span class="sec-eyebrow">News &amp; Events</span>
        <h2 class="sec-title">Latest from Campus</h2>
        <p class="sec-desc mb-0">Campus notices, college updates, and student life highlights.</p>
      </div>
      <div class="col-lg-4 text-lg-end fu fu-delay-1 mt-3 mt-lg-0">
        <a href="<?= site_url('events') ?>" class="btn-pmc btn-pmc-outline"><i class="bi bi-calendar-event"></i> View All</a>
      </div>
    </div>
    <?php if (! empty($campus_cards)): ?>
    <div class="row g-4">
      <?php foreach ($campus_cards as $i => $card): ?>
        <?= view('pages/partials/home_news_card', ['card' => $card, 'delay' => $i + 1, 'variant' => 'campus']) ?>
      <?php endforeach; ?>
    </div>
    <?php else: ?>
    <div class="row">
      <div class="col-lg-12 fu-scale">
        <div class="alert alert-light border d-flex align-items-center gap-2 py-3 px-3 mb-0" role="status">
          <i class="bi bi-newspaper" aria-hidden="true"></i>
          <span>No news found. Please check back soon for campus updates.</span>
        </div>
      </div>
    </div>
    <?php endif; ?>
  </div>
</section>

<!-- ═══ CTA BAND ═══ -->
<!-- <section class="cta-band">
  <div class="container">
    <div class="row align-items-center g-4">
      <div class="col-lg-7 fu">
        <h2 class="mb-3">Begin Your Journey in Medicine at Department of Dental Sciences</h2>
        <p>Join KP's most recognized private medical college. Admissions for MBBS 2026–27 are open — seats are limited,
          apply today.</p>
      </div>
      <div class="col-lg-5 text-lg-end fu fu-delay-2">
        <div class="d-flex gap-3 justify-content-lg-end flex-wrap">
          <a href="<?= site_url('admissions') ?>" class="btn-pmc btn-pmc-navy"><i class="bi bi-mortarboard-fill"></i> Apply Now</a>
          <a href="<?= site_url('contact') ?>" class="btn-pmc btn-pmc-outline-white"><i class="bi bi-telephone"></i> Contact Us</a>
        </div>
      </div>
    </div>
  </div>
</section> -->

<!-- ═══ FOOTER ═══ -->
<section class="pmc-section recog-strip">
  <div class="container">
    <div class="text-center mb-5 fu">
      <span class="sec-eyebrow">Recognitions &amp; Accreditations</span>
      <h2 class="sec-title" style="color:white;">Recognized by Leading Institutions</h2>
    </div>
    <div class="recog-grid fu">
      <div class="recog-cell">
        <div class="recog-ico"><i class="bi bi-patch-check-fill"></i></div>
        <div class="recog-name">Pakistan Medical &amp; Dental Council<br /><small style="opacity:.5;font-size:.62rem;">(PM&amp;DC)</small></div>
      </div>
      <div class="recog-cell">
        <div class="recog-ico"><i class="bi bi-building-fill"></i></div>
        <div class="recog-name">Riphah International University</div>
      </div>
      <div class="recog-cell">
        <div class="recog-ico"><i class="bi bi-patch-check-fill"></i></div>
        <div class="recog-name">Higher Education Commission<br /><small style="opacity:.5;font-size:.62rem;">(HEC)</small></div>
      </div>
      <div class="recog-cell">
        <div class="recog-ico"><i class="bi bi-award-fill"></i></div>
        <div class="recog-name">College of Physicians &amp; Surgeons Pakistan<br /><small style="opacity:.5;font-size:.62rem;">(CPSP)</small></div>
      </div>
      <div class="recog-cell">
        <div class="recog-ico"><i class="bi bi-hospital-fill"></i></div>
        <div class="recog-name">Ministry of Health<br /><small style="opacity:.5;font-size:.62rem;">Pakistan</small></div>
      </div>
      <div class="recog-cell" style="border-right:none;">
        <div class="recog-ico"><i class="bi bi-globe-americas"></i></div>
        <div class="recog-name">World Health Organization<br /><small style="opacity:.5;font-size:.62rem;">(WHO)</small></div>
      </div>
    </div>
  </div>
</section>

<script>
  /* Home: Teaching Hospitals detail dialogs */
  (function() {
    'use strict';

    function boot() {
      var root = document.querySelector('[data-hosp]');
      if (!root || typeof HTMLDialogElement === 'undefined') return; // links fall back to hospital services pages

      var lastTrigger = null;

      function close(dlg) {
        if (dlg.open) dlg.close();
      }

      root.querySelectorAll('[data-hosp-open]').forEach(function(btn) {
        var dlg = document.getElementById(btn.getAttribute('data-hosp-open'));
        if (!dlg) return;
        btn.setAttribute('role', 'button');
        btn.setAttribute('aria-haspopup', 'dialog');
        btn.addEventListener('click', function(e) {
          e.preventDefault();
          lastTrigger = btn;
          dlg.showModal();
          document.documentElement.classList.add('hosp-dialog-open');
        });
      });

      root.querySelectorAll('.hosp-dialog').forEach(function(dlg) {
        dlg.querySelectorAll('[data-hosp-close]').forEach(function(b) {
          b.addEventListener('click', function() {
            close(dlg);
          });
        });
        // Click on backdrop closes
        dlg.addEventListener('click', function(e) {
          if (e.target !== dlg) return;
          var r = dlg.getBoundingClientRect();
          var inside = e.clientX >= r.left && e.clientX <= r.right && e.clientY >= r.top && e.clientY <= r.bottom;
          if (!inside) close(dlg);
        });
        dlg.addEventListener('close', function() {
          document.documentElement.classList.remove('hosp-dialog-open');
          if (lastTrigger) lastTrigger.focus();
        });
      });
    }

    if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', boot);
    else boot();
  })();
</script>
