<?php include('includes/header.php'); ?>

<style>
  /* Clean table styling for faculty list */
  .dept-members table {
    width: 100%;
    border-collapse: collapse;
    font-family: var(--font-body);
  }
  .dept-members th {
    text-align: left;
    padding: 10px 12px;
    font-family: var(--font-head);
    font-size: .72rem;
    text-transform: uppercase;
    letter-spacing: .05em;
    color: #64748b;
    border-bottom: 2px solid #e2e8f0;
  }
  .dept-members td {
    padding: 10px 12px;
    border-bottom: 1px solid #f1f5f9;
    font-size: .85rem;
    color: #334155;
  }
  .dept-members tr:last-child td {
    border-bottom: none;
  }
  .reg-number {
    font-family: 'SF Mono', 'Fira Code', monospace;
    font-size: 0.82rem;
    color: #475569;
    background: #f8fafc;
    padding: 2px 10px;
    border-radius: 4px;
  }
</style>

<link href="assets/css/faculty.css" rel="stylesheet"/>

<!-- PAGE HERO -->
<div class="page-hero">
  <div class="page-hero-grid"></div>
  <div class="container page-hero-content">
    <h1>Our Distinguished Faculty</h1>
    <div class="breadcrumb-pmc">
      <a href="index.php">Home</a>
      <span class="sep"><i class="bi bi-chevron-right"></i></span>
      <a href="about.php">About Us</a>
      <span class="sep"><i class="bi bi-chevron-right"></i></span>
      <span class="current">Faculty</span>
    </div>
  </div>
</div>

<!-- FACULTY STATS STRIP -->
<div class="fac-stats">
  <div class="container-fluid px-0">
    <div class="row g-0">
      <div class="col-6 col-md-3">
        <div class="fac-stat-cell">
          <span class="fac-stat-num" id="statTotal">—</span>
          <span class="fac-stat-lbl">Total Faculty Members</span>
        </div>
      </div>
      <div class="col-6 col-md-3">
        <div class="fac-stat-cell">
          <span class="fac-stat-num" id="statProfessors">—</span>
          <span class="fac-stat-lbl">Professors</span>
        </div>
      </div>
      <div class="col-6 col-md-3">
        <div class="fac-stat-cell">
          <span class="fac-stat-num" id="statDepts">—</span>
          <span class="fac-stat-lbl">Departments</span>
        </div>
      </div>
      <div class="col-6 col-md-3">
        <div class="fac-stat-cell">
          <span class="fac-stat-num" id="statPMDC">PM&DC</span>
          <span class="fac-stat-lbl">Verified & Registered</span>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- MAIN -->
<section class="pmc-section bg-off">
  <div class="container">

    <!-- INTRO -->
    <div class="row mb-5 fu">
      <div class="col-lg-8">
        <span class="sec-eyebrow">About Our Faculty</span>
        <h2 class="sec-title">Expert Clinicians & Academic Professionals</h2>
        <p class="sec-desc">Riphah International University - Peshawar Campus is proud to have a highly qualified, experienced, and dedicated team of professors, associate professors, assistant professors, senior lecturers, and lecturers — all PM&DC registered — spanning every department of the MBBS curriculum.</p>
      </div>
    </div>

    <!-- SEARCH & FILTER BAR (only search + department filter, no designation) -->
    <div class="filter-bar fu">
      <div class="row g-3 align-items-end">
        <div class="col-lg-5 col-md-6">
          <label class="form-label" style="font-family:var(--font-head);font-size:.72rem;font-weight:700;color:var(--navy);text-transform:uppercase;letter-spacing:.08em;">Search Faculty</label>
          <div class="search-wrap">
            <i class="bi bi-search"></i>
            <input type="text" id="searchInput" placeholder="Search by name, department, reg. no…"/>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <label class="form-label" style="font-family:var(--font-head);font-size:.72rem;font-weight:700;color:var(--navy);text-transform:uppercase;letter-spacing:.08em;">Filter by Department</label>
          <select id="deptFilter" class="filter-select">
            <option value="">All Departments</option>
          </select>
        </div>
        <div class="col-lg-3 col-md-6">
          <button class="vt-btn" id="clearFilters" title="Clear Filters" style="background:var(--off-white);border:1px solid var(--border);padding:8px 16px;border-radius:8px;">
            <i class="bi bi-x-lg" style="font-size:.8rem;"></i> Clear
          </button>
        </div>
      </div>
      <div class="mt-3 pt-2" style="border-top:1px solid var(--border);">
        <span class="results-info">Showing <span id="resultCount">—</span> of <span id="totalCount">—</span> faculty members</span>
      </div>
    </div>

    <!-- LOADING STATE -->
    <div id="loadingState">
      <div class="spinner-pmc"></div>
      <p style="font-family:var(--font-body);color:var(--gray-mid);font-size:.9rem;">Loading faculty data…</p>
    </div>

    <!-- EMPTY STATE -->
    <div id="emptyState">
      <div class="empty-icon"><i class="bi bi-search"></i></div>
      <h5 style="font-family:var(--font-head);color:var(--navy);font-size:1.1rem;margin-bottom:8px;">No Results Found</h5>
      <p style="font-family:var(--font-body);color:var(--gray-mid);font-size:.9rem;">Try adjusting your search or filter criteria.</p>
      <button onclick="clearAllFilters()" class="btn-pmc btn-pmc-outline" style="font-size:.85rem;padding:9px 20px;margin-top:8px;"><i class="bi bi-x-circle"></i> Clear All Filters</button>
    </div>

    <!-- FACULTY CONTENT -->
    <div id="facultyContent"></div>

  </div>
</section>

<?php include('includes/footer.php'); ?>

<script>
/* ═══════════════════════════════════════════════
   FACULTY LIST — ONLY NAME, PMC REG NO, FACULTY REG NO
   GROUPED BY DEPARTMENT, NO DESIGNATION FILTER
   USES facFacRegNo FROM API (matching old site)
═══════════════════════════════════════════════ */

const API_URL = 'faculty-proxy.php';

// Department config
const DEPT_CONFIG = {
  'Anatomy':           { icon: 'bi-body-text',        order: 1  },
  'Physiology':        { icon: 'bi-activity',          order: 2  },
  'Biochemistry':      { icon: 'bi-flask',             order: 3  },
  'Pathology':         { icon: 'bi-eyedropper',        order: 4  },
  'Pharmacology':      { icon: 'bi-capsule-pill',      order: 5  },
  'Forensic Medicine': { icon: 'bi-shield-check',      order: 6  },
  'CHS':               { icon: 'bi-people-fill',       order: 7  },
  'DHPE & R':          { icon: 'bi-mortarboard-fill',  order: 8  },
  'Psychiatry':        { icon: 'bi-brain',             order: 9  },
  'Medicine':          { icon: 'bi-heart-pulse-fill',  order: 10 },
  'Surgery':           { icon: 'bi-scissors',          order: 11 },
  'Gynaecology':       { icon: 'bi-gender-female',     order: 12 },
  'Paediatrics':       { icon: 'bi-person-fill',       order: 13 },
  'ENT':               { icon: 'bi-ear-fill',          order: 14 },
  'Ophthalmology':     { icon: 'bi-eye-fill',          order: 15 },
  'Orthopaedics':      { icon: 'bi-bandaid-fill',      order: 16 },
  'Dermatology':       { icon: 'bi-droplet-half',      order: 17 },
  'Radiology':         { icon: 'bi-radioactive',       order: 18 },
  'Anaesthesia':       { icon: 'bi-lungs-fill',        order: 19 },
  'Administration':    { icon: 'bi-building-fill',     order: 99 },
  'IT & MI':           { icon: 'bi-display',           order: 100 },
};

// Designation rank for internal sorting only (still needed for professor count stat and ordering within dept)
const DESIG_RANK = {
  'Professor': 1, 'Associate Professor': 2, 'Assistant Professor': 3,
  'Senior Lecturer': 4, 'Lecturer': 5, 'Senior Registrar': 6,
  'Registrar': 7, 'CEO': 8, 'Director IT': 9, 'Other': 10
};

let allFaculty = [];

function getDeptIcon(dept) {
  return (DEPT_CONFIG[dept] || { icon: 'bi-person-badge' }).icon;
}

function getDeptOrder(dept) {
  return (DEPT_CONFIG[dept] || { order: 50 }).order;
}

function getDesigRank(desig) {
  return DESIG_RANK[desig] || 10;
}

// Fetch data
async function fetchFaculty() {
  try {
    const res = await fetch(API_URL);
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    const data = await res.json();
    return Array.isArray(data) ? data : [];
  } catch (err) {
    console.error('Faculty API error:', err);
    return null;
  }
}

// Populate department filter only (no designation filter)
function populateFilters(faculty) {
  const depts = [...new Set(faculty.map(f => f.depName).filter(Boolean))]
                 .sort((a,b) => getDeptOrder(a) - getDeptOrder(b));

  const deptSel = document.getElementById('deptFilter');
  while (deptSel.options.length > 1) deptSel.remove(1);

  depts.forEach(d => {
    const o = document.createElement('option');
    o.value = d; o.textContent = d;
    deptSel.appendChild(o);
  });
}

// Update stats
function updateStats(faculty) {
  document.getElementById('statTotal').textContent      = faculty.length;
  document.getElementById('statProfessors').textContent = faculty.filter(f => f.desTitle === 'Professor').length;
  document.getElementById('statDepts').textContent      = new Set(faculty.map(f => f.depName).filter(Boolean)).size;
}

// Get filtered list (search + department only)
function getFiltered() {
  const q    = document.getElementById('searchInput').value.trim().toLowerCase();
  const dept = document.getElementById('deptFilter').value;

  return allFaculty.filter(f => {
    const matchQ = !q || [f.empName, f.depName, f.facPMDCNo, f.facFacRegNo]
                         .filter(Boolean).some(v => v.toLowerCase().includes(q));
    const matchDept = !dept || f.depName === dept;
    return matchQ && matchDept;
  });
}

// Toggle department collapse
function toggleDept(header) {
  const section = header.closest('.dept-section');
  const members = section.querySelector('.dept-members');
  if (members.style.display === 'none') {
    members.style.display = '';
    section.classList.remove('collapsed');
  } else {
    members.style.display = 'none';
    section.classList.add('collapsed');
  }
}

// Render faculty as simple table per department
function renderFaculty(faculty) {
  const container   = document.getElementById('facultyContent');
  const emptyState  = document.getElementById('emptyState');
  const resultCount = document.getElementById('resultCount');
  const totalCount  = document.getElementById('totalCount');

  resultCount.textContent = faculty.length;
  totalCount.textContent  = allFaculty.length;

  if (!faculty.length) {
    container.innerHTML = '';
    emptyState.style.display = 'block';
    return;
  }
  emptyState.style.display = 'none';

  const grouped = {};
  faculty.forEach(f => {
    const dept = f.depName || 'Other';
    if (!grouped[dept]) grouped[dept] = [];
    grouped[dept].push(f);
  });

  const sortedDepts = Object.keys(grouped).sort((a,b) => getDeptOrder(a) - getDeptOrder(b));

  let html = '';
  sortedDepts.forEach(dept => {
    const members = grouped[dept].sort((a,b) => getDesigRank(a.desTitle) - getDesigRank(b.desTitle));
    const icon    = getDeptIcon(dept);
    html += `
      <div class="dept-section">
        <div class="dept-header" onclick="toggleDept(this)">
          <div class="dept-icon"><i class="bi ${icon}"></i></div>
          <div class="dept-name">Department of ${dept}</div>
          <span class="dept-count">${members.length} Member${members.length !== 1 ? 's' : ''}</span>
          <i class="bi bi-chevron-down dept-toggle-icon"></i>
        </div>
        <div class="dept-members">
          <table>
            <thead><tr><th>Name</th><th>PMC Reg. No.</th><th>Faculty Reg. No.</th></tr></thead>
            <tbody>
              ${members.map(m => `
                <tr>
                  <td>${m.empName || '—'}</td>
                  <td><span class="reg-number">${m.facPMDCNo || '—'}</span></td>
                  <td><span class="reg-number">${m.facFacRegNo || '—'}</span></td>
                </tr>
              `).join('')}
            </tbody>
          </table>
        </div>
      </div>`;
  });

  container.innerHTML = html;
}

function clearAllFilters() {
  document.getElementById('searchInput').value = '';
  document.getElementById('deptFilter').value  = '';
  renderFaculty(allFaculty);
}

// Initialization
(async function init() {
  const loading = document.getElementById('loadingState');
  loading.style.display = 'block';

  const data = await fetchFaculty();
  loading.style.display = 'none';

  if (!data) {
    document.getElementById('facultyContent').innerHTML = `
      <div class="text-center py-5">
        <div style="font-size:3rem;color:var(--gray-light);margin-bottom:16px;"><i class="bi bi-wifi-off"></i></div>
        <h5 style="font-family:var(--font-head);color:var(--navy);">Unable to Load Faculty Data</h5>
        <p style="font-family:var(--font-body);color:var(--gray-mid);font-size:.9rem;">Please check your connection or try refreshing the page.</p>
        <button onclick="location.reload()" class="btn-pmc btn-pmc-primary mt-3" style="font-size:.85rem;padding:10px 22px;">
          <i class="bi bi-arrow-clockwise"></i> Retry
        </button>
      </div>`;
    return;
  }

  // Sort all faculty by department order, then designation rank
  allFaculty = data.sort((a,b) => {
    const deptDiff = getDeptOrder(a.depName) - getDeptOrder(b.depName);
    if (deptDiff !== 0) return deptDiff;
    return getDesigRank(a.desTitle) - getDesigRank(b.desTitle);
  });

  // Manual IT & MI entry (unchanged from old site)
  allFaculty.push({
    depName: 'IT & MI',
    desTitle: 'Director IT',
    empName: 'Muhammad Furqan',
    facPMDCNo: '',
    facFacRegNo: ''
  });

  updateStats(allFaculty);
  populateFilters(allFaculty);
  renderFaculty(allFaculty);

  // Event listeners (search + department filter only)
  let searchTimer;
  document.getElementById('searchInput').addEventListener('input', () => {
    clearTimeout(searchTimer);
    searchTimer = setTimeout(() => renderFaculty(getFiltered()), 250);
  });
  document.getElementById('deptFilter').addEventListener('change', () => renderFaculty(getFiltered()));
  document.getElementById('clearFilters').addEventListener('click', clearAllFilters);
})();
</script>