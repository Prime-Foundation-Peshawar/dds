<?php
$preload_images = ['assets/images/pdc-building/pdc-slide-2.webp'];
include('includes/header.php');
?>

<!-- ═══ HERO SLIDER ═══ -->
<div id="heroSlider" aria-roledescription="carousel" aria-label="Department of Dental Sciences highlights">

  <!-- SLIDE 1 — Clinical training & campus -->
  <div class="hero-slide active" role="group" aria-roledescription="slide" aria-label="1 of 2">
    <div class="slide-media slide-bg-3"></div>
    <div class="slide-overlay"></div>
    <div class="container slide-inner">
      <div class="row align-items-center g-4 g-xl-5">
        <div class="col-lg-6">
          <div class="slide-content">
            <p class="slide-brand">Clinical Training</p>
            <h1 class="slide-title">Learn Where <span class="hl">Care</span> Happens</h1>
            <p class="slide-body">From skill labs to specialty clinics — train at Peshawar Dental Hospital and affiliated teaching hospitals with real patients, supervised practice, and research-minded mentors.</p>
            <div class="slide-actions">
              <a href="departments.php" class="btn-pmc btn-pmc-primary">Academic Departments</a>
              <a href="#hospitals" class="btn-pmc btn-pmc-outline-white"><i class="bi bi-hospital"></i> Teaching Hospitals</a>
            </div>
          </div>
        </div>
        <div class="col-lg-6 d-none d-lg-block">
          <div class="slide-facilities" aria-label="Clinical training strengths">
            <div class="sf-title">Where You Train</div>
            <div class="sf-grid">
              <div class="sf-item"><i class="bi bi-hospital"></i><span>Peshawar Dental Hospital</span></div>
              <div class="sf-item"><i class="bi bi-heart-pulse"></i><span>Mercy Teaching Hospital</span></div>
              <div class="sf-item"><i class="bi bi-building"></i><span>Prime Teaching Hospital</span></div>
              <div class="sf-item"><i class="bi bi-diagram-3"></i><span>Academic Departments</span></div>
              <div class="sf-item"><i class="bi bi-activity"></i><span>Clinical Skill Labs</span></div>
              <div class="sf-item"><i class="bi bi-people"></i><span>Expert Faculty</span></div>
              <div class="sf-item"><i class="bi bi-search"></i><span>Research Culture</span></div>
              <div class="sf-item"><i class="bi bi-airplane"></i><span>Student Exchange</span></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- SLIDE 2 — BDS / Peshawar Dental College -->
  <div class="hero-slide" role="group" aria-roledescription="slide" aria-label="2 of 2" data-lazy-bg>
    <div class="slide-media slide-bg-4"></div>
    <div class="slide-overlay"></div>
    <div class="container slide-inner">
      <div class="slide-content">
        <p class="slide-brand">Department of Dental Sciences</p>
        <h1 class="slide-title">Your <span class="hl-teal">BDS</span> Journey Starts Here</h1>
        <p class="slide-body">Peshawar Dental College offers PM&amp;DC-aligned BDS education — rigorous preclinical science, early clinical exposure, and mentors who teach dentistry with integrity.</p>
        <p class="slide-body slide-body-sub">Study at Riphah International University – Peshawar Campus and build the competence to serve communities across KP and beyond.</p>
        <div class="slide-actions">
          <a href="admissions.php" class="btn-pmc btn-pmc-primary"><i class="bi bi-mortarboard"></i> Admissions 2025–26</a>
          <a href="pdc.php" class="btn-pmc btn-pmc-outline-white">About PDC</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <div class="slider-chrome">
    <button class="slider-prev" type="button" aria-label="Previous slide"><i class="bi bi-chevron-left"></i></button>
    <div class="slider-indicators" role="tablist" aria-label="Slides">
      <button class="slider-dot active" type="button" data-slide="0" role="tab" aria-label="Clinical Training" aria-selected="true">
        <span class="slider-dot-track"><span class="slider-dot-bar"></span></span>
        <span class="slider-dot-label">Clinical</span>
      </button>
      <button class="slider-dot" type="button" data-slide="1" role="tab" aria-label="Peshawar Dental College" aria-selected="false">
        <span class="slider-dot-track"><span class="slider-dot-bar"></span></span>
        <span class="slider-dot-label">BDS</span>
      </button>
    </div>
    <button class="slider-next" type="button" aria-label="Next slide"><i class="bi bi-chevron-right"></i></button>
  </div>
</div>

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
        <div class="stat-cell"><span class="stat-num" data-count="450" data-suffix="+">450+</span><span
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
    <div class="row g-4">
      <div class="col-lg-6 fu fu-delay-1">
        <div class="pmc-card home-prog-card">
          <div class="home-prog-logo">
            <img src="assets/images/logo/pdc-crest.png" alt="Peshawar Dental College logo" width="72" height="72" loading="lazy" />
          </div>
          <span class="home-prog-code">Undergraduate</span>
          <h4>Peshawar Dental College</h4>
          <p>Established in 2010; a PM&amp;DC-recognized BDS programme for female students, with clinical training at Peshawar Dental Hospital and affiliated teaching hospitals.</p>
          <a href="pdc.php" class="btn-pmc btn-pmc-outline home-prog-btn">Learn More <i class="bi bi-arrow-right"></i></a>
        </div>
      </div>
      <div class="col-lg-6 fu fu-delay-2">
        <div class="pmc-card home-prog-card">
          <div class="home-prog-logo">
            <img src="assets/images/logo/pdc-crest.png" alt="Peshawar Dental College logo" width="72" height="72" loading="lazy" />
          </div>
          <span class="home-prog-code">Postgraduate</span>
          <h4>Postgraduate Dental Education</h4>
          <p>M.Phil programmes in Oral Pathology, Oral Biology, and Dental Materials, with clinical postgraduate training at Peshawar Dental Hospital.</p>
          <a href="pg-dental-education.php" class="btn-pmc btn-pmc-outline home-prog-btn">Explore <i class="bi bi-arrow-right"></i></a>
        </div>
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
        <a href="about.php" class="btn-pmc btn-pmc-primary mt-4"><i class="bi bi-arrow-right-circle"></i> Read Full
          About Department of Dental Sciences</a>
      </div>
    </div>
  </div>
</section>





<!-- ═══ TEACHING HOSPITALS ═══ -->
<section class="pmc-section bg-navy home-hospitals" id="hospitals">
  <div class="container">
    <div class="home-sec-head text-center fu">
      <span class="sec-eyebrow">Affiliated Teaching Hospitals</span>
      <h2 class="sec-title">Clinical Training at Its Finest</h2>
      <p class="sec-desc">Students of the Department of Dental Sciences train at Peshawar Dental Hospital and affiliated teaching hospitals for comprehensive clinical exposure.</p>
    </div>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6 fu fu-delay-1">
        <a class="hosp-card" href="pdc.php#hospital">
          <span class="hosp-code">PDH</span>
          <h3 class="hosp-name">Peshawar Dental Hospital</h3>
          <p class="hosp-desc">Tertiary care dental teaching hospital providing patient care and clinical training for BDS students.</p>
          <span class="hosp-link">Learn more <i class="bi bi-arrow-right"></i></span>
        </a>
      </div>
      <div class="col-lg-4 col-md-6 fu fu-delay-2">
        <a class="hosp-card" href="https://mth.prime.edu.pk/" target="_blank" rel="noopener">
          <span class="hosp-code">MTH</span>
          <h3 class="hosp-name">Mercy Teaching Hospital</h3>
          <p class="hosp-desc">Focused on community healthcare with high patient volume — ideal for comprehensive, broad clinical experience.</p>
          <span class="hosp-link">Visit hospital <i class="bi bi-arrow-right"></i></span>
        </a>
      </div>
      <div class="col-lg-4 col-md-6 fu fu-delay-3">
        <a class="hosp-card" href="https://pth.prime.edu.pk/" target="_blank" rel="noopener">
          <span class="hosp-code">PTH</span>
          <h3 class="hosp-name">Prime Teaching Hospital</h3>
          <p class="hosp-desc">Equipped with modern diagnostic and surgical facilities for intensive clinical and surgical training rotations.</p>
          <span class="hosp-link">Visit hospital <i class="bi bi-arrow-right"></i></span>
        </a>
      </div>
    </div>
  </div>
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
        <!-- <a href="about.php#campus" class="btn-pmc btn-pmc-primary"><i class="bi bi-images"></i> Full Campus Tour</a> -->
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
      <div class="campus-tile">
        <div class="ct-inner ct-bg-9">
          <div class="ct-ico"><i class="bi bi-heart-pulse"></i></div>
          <div class="ct-lbl">Counseling & Aid</div>
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
      <div class="col-lg-4 text-lg-end fu fu-delay-1 mt-3 mt-lg-0">
        <a href="admissions.php" class="btn-pmc btn-pmc-outline"><i class="bi bi-mortarboard"></i> Admissions Info</a>
      </div>
    </div>
    <div class="row g-4">
      <div class="col-lg-6 col-md-6 fu fu-delay-1">
        <article class="news-card news-card-text news-card--admissions">
          <div class="nc-body">
            <div class="nc-meta">
              <span class="nc-cat nc-cat-admissions">Admissions</span>
              <span class="nc-date"><i class="bi bi-calendar3"></i> Published: Aug 2026</span>
            </div>
            <h3 class="nc-title">MPhil Basic Dental Sciences</h3>
            <p class="nc-deadline"><i class="bi bi-clock"></i> Apply by <strong>03 Sep 2026</strong></p>
            <p class="nc-excerpt">Oral Pathology, Oral Biology, and Dental Materials. Test <strong>04 Sep</strong>, interview <strong>05 Sep</strong>.</p>
            <div class="nc-actions nc-actions-split">
              <a target="_blank" rel="noopener" href="<?= hub_base ?>assets/images/news/pg-medical-dental-ad-fall-2026.png" class="nc-btn nc-btn-primary">Read more <i class="bi bi-arrow-right"></i></a>
              <a target="_blank" rel="noopener" href="<?= hub_base ?>assets/images/news/PG-Admission-Form-Dental-Sciences.pdf" class="nc-btn nc-btn-form"><i class="bi bi-download"></i> Form</a>
            </div>
          </div>
        </article>
      </div>
      <div class="col-lg-6 col-md-6 fu fu-delay-2">
        <article class="news-card news-card-text news-card--admissions">
          <div class="nc-body">
            <div class="nc-meta">
              <span class="nc-cat nc-cat-admissions">Admissions</span>
              <span class="nc-date"><i class="bi bi-calendar3"></i> Session 2025–26</span>
            </div>
            <h3 class="nc-title">BDS Admissions — Applications Closed</h3>
            <p class="nc-deadline"><i class="bi bi-info-circle"></i> Review eligibility and next-cycle guidance</p>
            <div class="nc-actions">
              <a href="admissions.php" class="nc-btn nc-btn-primary">Admissions info <i class="bi bi-arrow-right"></i></a>
            </div>
          </div>
        </article>
      </div>
    </div>
  </div>
</section>

<!-- ═══ WE ARE HIRING ═══ -->
<section class="pmc-section" id="careers">
  <div class="container">
    <div class="row align-items-end mb-4 mb-lg-5">
      <div class="col-lg-8 fu">
        <span class="sec-eyebrow">Careers</span>
        <h2 class="sec-title">We Are Hiring</h2>
        <p class="sec-desc mb-0">Faculty and staff opportunities at Riphah International University – Peshawar Campus.</p>
      </div>
      <div class="col-lg-4 text-lg-end fu fu-delay-1 mt-3 mt-lg-0">
        <a href="http://careers.prime.edu.pk" target="_blank" rel="noopener" class="btn-pmc btn-pmc-outline"><i class="bi bi-briefcase"></i> Career Portal</a>
      </div>
    </div>
    <div class="row g-4">
      <div class="col-lg-6 col-md-6 fu fu-delay-1">
        <article class="news-card news-card-text news-card--career">
          <div class="nc-body">
            <div class="nc-meta">
              <span class="nc-cat nc-cat-career">Career</span>
              <span class="nc-date"><i class="bi bi-calendar3"></i> Published: Aug 2026</span>
            </div>
            <h3 class="nc-title">Positions Vacant</h3>
            <p class="nc-deadline"><i class="bi bi-clock"></i> Apply by <strong>17 Aug 2026</strong></p>
            <div class="nc-actions">
              <a target="_blank" href="assets/images/news/career-ad.jpg" class="nc-btn nc-btn-primary">View advertisement <i class="bi bi-arrow-right"></i></a>
            </div>
          </div>
        </article>
      </div>
      <div class="col-lg-6 col-md-6 fu fu-delay-2">
        <article class="news-card news-card-text news-card--career hub-career-portal-card">
          <div class="nc-body">
            <div class="nc-meta">
              <span class="nc-cat nc-cat-career">Career Portal</span>
            </div>
            <h3 class="nc-title">Explore Open Roles Online</h3>
            <p class="nc-excerpt">Browse current vacancies and submit applications through the official Career Portal.</p>
            <div class="nc-actions">
              <a href="http://careers.prime.edu.pk" target="_blank" rel="noopener" class="nc-btn nc-btn-primary">Visit Career Portal <i class="bi bi-box-arrow-up-right"></i></a>
            </div>
          </div>
        </article>
      </div>
    </div>
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
        <a href="events.php" class="btn-pmc btn-pmc-outline"><i class="bi bi-calendar-event"></i> View All</a>
      </div>
    </div>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6 fu fu-delay-1">
        <article class="news-card news-card-text news-card--campus">
          <div class="nc-body">
            <div class="nc-meta">
              <span class="nc-cat nc-cat-news">College</span>
              <span class="nc-date"><i class="bi bi-calendar3"></i> Established 2010</span>
            </div>
            <h3 class="nc-title">Peshawar Dental College — BDS for Female Students</h3>
            <p class="nc-excerpt">A PM&amp;DC-recognized four-year BDS programme preparing professionally competent female dentists.</p>
            <div class="nc-actions">
              <a href="pdc.php" class="nc-btn nc-btn-primary">About PDC <i class="bi bi-arrow-right"></i></a>
            </div>
          </div>
        </article>
      </div>
      <div class="col-lg-4 col-md-6 fu fu-delay-2">
        <article class="news-card news-card-text news-card--campus">
          <div class="nc-body">
            <div class="nc-meta">
              <span class="nc-cat nc-cat-news">Campus</span>
              <span class="nc-date"><i class="bi bi-calendar3"></i> Clinical training</span>
            </div>
            <h3 class="nc-title">Clinical Training at Peshawar Dental Hospital</h3>
            <p class="nc-excerpt">Hands-on clinical exposure at Peshawar Dental Hospital, with affiliated teaching hospital rotations.</p>
            <div class="nc-actions">
              <a href="#hospitals" class="nc-btn nc-btn-primary">View hospitals <i class="bi bi-arrow-right"></i></a>
            </div>
          </div>
        </article>
      </div>
      <div class="col-lg-4 col-md-6 fu fu-delay-3">
        <article class="news-card news-card-text news-card--campus">
          <div class="nc-body">
            <div class="nc-meta">
              <span class="nc-cat nc-cat-news">Campus Life</span>
              <span class="nc-date"><i class="bi bi-calendar3"></i> 2026</span>
            </div>
            <h3 class="nc-title">Student Societies &amp; Campus Activities</h3>
            <p class="nc-excerpt">Societies, sports, literature, and community service initiatives on Warsak Road campus.</p>
            <div class="nc-actions">
              <a href="events.php" class="nc-btn nc-btn-primary">View notices <i class="bi bi-arrow-right"></i></a>
            </div>
          </div>
        </article>
      </div>
    </div>
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
          <a href="admissions.php" class="btn-pmc btn-pmc-navy"><i class="bi bi-mortarboard-fill"></i> Apply Now</a>
          <a href="contact.php" class="btn-pmc btn-pmc-outline-white"><i class="bi bi-telephone"></i> Contact Us</a>
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

<?php include('includes/footer.php'); ?>