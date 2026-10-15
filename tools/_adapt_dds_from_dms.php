<?php
/**
 * Retarget copied DMS ci4 scaffold to DDS (branding, HRMS, routes, seeder, ACP colors).
 */
declare(strict_types=1);

$root = dirname(__DIR__);

function rewrite_file(string $path, array $replacements): void
{
    if (! is_file($path)) {
        echo "missing $path\n";
        return;
    }
    $src = (string) file_get_contents($path);
    $out = strtr($src, $replacements);
    if ($out !== $src) {
        file_put_contents($path, $out);
        echo "updated $path\n";
    }
}

// --- composer / env / readme ---
file_put_contents($root . '/composer.json', json_encode([
    'name' => 'prime/dds',
    'description' => 'Peshawar Dental College / Department of Dental Sciences (CodeIgniter 4)',
    'license' => 'MIT',
    'type' => 'project',
    'homepage' => 'https://dds.riphahpsh.edu.pk/',
    'require' => [
        'php' => '^8.2',
        'codeigniter4/framework' => '^4.7',
    ],
    'require-dev' => [
        'fakerphp/faker' => '^1.9',
        'mikey179/vfsstream' => '^1.6',
        'phpunit/phpunit' => '^10.5.16',
    ],
    'autoload' => [
        'psr-4' => [
            'App\\' => 'app/',
            'Config\\' => 'app/Config/',
        ],
        'exclude-from-classmap' => [
            '**/Database/Migrations/**',
        ],
    ],
    'autoload-dev' => [
        'psr-4' => [
            'Tests\\Support\\' => 'tests/_support',
        ],
    ],
    'config' => [
        'optimize-autoloader' => true,
        'preferred-install' => 'dist',
        'sort-packages' => true,
    ],
    'scripts' => [
        'test' => 'phpunit',
    ],
], JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES) . "\n");
echo "composer.json\n";

file_put_contents($root . '/.env.example', <<<'ENV'
CI_ENVIRONMENT = production

# Staging: https://staging.riphahpsh.edu.pk/dds/
# Production: https://dds.riphahpsh.edu.pk/
app.baseURL = 'https://dds.riphahpsh.edu.pk/'
app.forceGlobalSecureRequests = true
app.indexPage = ''

database.default.hostname = localhost
database.default.database = staging_dds
database.default.username = staging_dds
database.default.password = change_me
database.default.DBDriver = MySQLi
database.default.DBPrefix =
database.default.port = 3306
database.default.charset = utf8mb4
database.default.DBCollat = utf8mb4_general_ci

CMS_ADMIN_EMAIL = admin@riphahpsh.edu.pk
CMS_ADMIN_PASSWORD = change_me

DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=staging_dds
DB_USERNAME=staging_dds
DB_PASSWORD=change_me

# PDC HRMS
hrms.apiUrl = 'https://biometric.prime.edu.pk/hrms/apis/getEmployeeInfoPDC.php'

encryption.key =
ENV
);
echo ".env.example\n";

file_put_contents($root . '/README.md', <<<'MD'
# DDS — Peshawar Dental College (CodeIgniter 4)

Public website for the Department of Dental Sciences / Peshawar Dental College.

## Local setup

```bash
composer install
cp .env.example .env
# For local SQLite: set DBDriver=SQLite3 and database.default.database=writable/dds.db
php spark migrate
php spark db:seed DdsSeeder
php spark serve
```

- Live HRMS (PDC): `https://biometric.prime.edu.pk/hrms/apis/getEmployeeInfoPDC.php`
- ACP: `/acp/login` — bootstrap admin from `CMS_ADMIN_EMAIL` / `CMS_ADMIN_PASSWORD`
- Brand colors: navy `#0A1628`, dark orange `#C2410C`, gold `#C9A84C`

## Notes

- Branch `ci4` is the CI4 conversion (legacy PHP remains on `master`).
- Seed data is built from `_legacy` via `tools/extract_seed_data.php` and related scripts.
MD
);
echo "README.md\n";

// --- HRMS client ---
rewrite_file($root . '/app/Libraries/HrmsClient.php', [
    'https://biometric.prime.edu.pk/hrms/apis/getEmployeeInfo.php'
        => 'https://biometric.prime.edu.pk/hrms/apis/getEmployeeInfoPDC.php',
    'dms_hrms_faculty_cache.json' => 'dds_hrms_faculty_cache.json',
]);

// --- helper: keep dms_asset as alias, add dds_asset ---
$helper = $root . '/app/Helpers/faculty_helper.php';
$h = (string) file_get_contents($helper);
if (! str_contains($h, 'function dds_asset')) {
    $h = str_replace(
        "if (! function_exists('dms_asset')) {\n    function dms_asset(string \$path): string",
        "if (! function_exists('dds_asset')) {\n    function dds_asset(string \$path): string\n    {\n        return dms_asset(\$path);\n    }\n}\n\nif (! function_exists('dms_asset')) {\n    function dms_asset(string \$path): string",
        $h
    );
    file_put_contents($helper, $h);
    echo "faculty_helper dds_asset alias\n";
}

// --- Routes: dental static pages ---
$routes = <<<'PHP'
<?php

use CodeIgniter\Router\RouteCollection;

/** @var RouteCollection $routes */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(true);
$routes->set404Override();

$routes->get('/', 'Home::index');
$routes->get('departments', 'Departments::index');
$routes->get('department', 'Departments::show');
$routes->get('department-activity', 'Departments::activity');

$routes->get('faculty', 'Faculty::index');
$routes->get('faculty-proxy', 'Faculty::proxy');
$routes->get('faculty-profile', 'Faculty::profile');
$routes->get('faculty-all', 'Faculty::redirectAll');
$routes->get('medical-education', 'PageController::redirectMedicalEducation');
$routes->get('pg-medical-education', 'PageController::redirectPgDentalEducation');
$routes->get('pg-surgery-residency', 'PageController::redirectPgComingSoon');

$routes->get('robots.txt', 'SeoController::robots');
$routes->get('sitemap.xml', 'SeoController::sitemap');

// Static / content pages (DB view_key + Views/pages/{slug}.php)
$static = [
    'about', 'admissions', 'vision-mission', 'contact', 'pdc',
    'curriculum', 'examinations', 'faculty-research', 'newsletter',
    'all-news', 'single-news', 'events', 'event-single', 'gallery',
    'dental-education', 'clinical-skill-labs', 'education-literature',
    'literary-society', 'social-welfare', 'sports-society',
    'student-exchange', 'student-guide', 'student-research', 'umr',
    'vacant-seats', 'virtual-museum', 'pg-dental-education',
    'pg-curriculum', 'pg-coming-soon', 'portal-login', 'sitemap-page',
];
foreach ($static as $slug) {
    $routes->get($slug, 'PageController::show/' . $slug);
}

// Admin Control Panel
$routes->group('acp', ['namespace' => 'App\Controllers\Acp'], static function ($routes) {
    $routes->get('login', 'Auth::login');
    $routes->post('login', 'Auth::attempt');
    $routes->get('logout', 'Auth::logout');

    $routes->group('', ['filter' => 'acpAuth'], static function ($routes) {
        $routes->get('/', 'Dashboard::index');

        $routes->get('pages', 'Pages::index');
        $routes->get('pages/create', 'Pages::create');
        $routes->post('pages/store', 'Pages::store');
        $routes->get('pages/edit/(:num)', 'Pages::edit/$1');
        $routes->post('pages/update/(:num)', 'Pages::update/$1');
        $routes->post('pages/delete/(:num)', 'Pages::delete/$1');

        $routes->get('news', 'News::index');
        $routes->get('news/create', 'News::create');
        $routes->post('news/store', 'News::store');
        $routes->get('news/edit/(:num)', 'News::edit/$1');
        $routes->post('news/update/(:num)', 'News::update/$1');
        $routes->post('news/delete/(:num)', 'News::delete/$1');
        $routes->post('news/media-delete/(:num)', 'News::deleteMedia/$1');
        $routes->post('news/media-reorder', 'News::reorderMedia');

        $routes->get('events', 'Events::index');
        $routes->get('events/create', 'Events::create');
        $routes->post('events/store', 'Events::store');
        $routes->get('events/edit/(:num)', 'Events::edit/$1');
        $routes->post('events/update/(:num)', 'Events::update/$1');
        $routes->post('events/delete/(:num)', 'Events::delete/$1');
        $routes->post('events/media-delete/(:num)', 'Events::deleteMedia/$1');
        $routes->post('events/media-reorder', 'Events::reorderMedia');

        $routes->get('departments', 'Departments::index');
        $routes->get('departments/edit/(:num)', 'Departments::edit/$1');
        $routes->post('departments/update/(:num)', 'Departments::update/$1');
        $routes->post('departments/activity-store/(:num)', 'Departments::storeActivity/$1');
        $routes->post('departments/activity-delete/(:num)', 'Departments::deleteActivity/$1');
        $routes->post('departments/activities-reorder', 'Departments::reorderActivities');

        $routes->get('faculty', 'Faculty::index');
        $routes->get('faculty/create', 'Faculty::create');
        $routes->post('faculty/store', 'Faculty::store');
        $routes->get('faculty/edit/(:num)', 'Faculty::edit/$1');
        $routes->post('faculty/update/(:num)', 'Faculty::update/$1');
        $routes->post('faculty/delete/(:num)', 'Faculty::delete/$1');
        $routes->post('faculty/set-dept-source', 'Faculty::setDeptSource');

        $routes->get('settings', 'Settings::index');
        $routes->post('settings/save', 'Settings::save');

        $routes->get('users', 'Users::index');
        $routes->get('users/create', 'Users::create');
        $routes->post('users/store', 'Users::store');
        $routes->get('users/edit/(:num)', 'Users::edit/$1');
        $routes->post('users/update/(:num)', 'Users::update/$1');
        $routes->post('users/delete/(:num)', 'Users::delete/$1');
    });
});
PHP;
file_put_contents($root . '/app/Config/Routes.php', $routes);
echo "Routes.php\n";

// --- PageController redirects for dental ---
$pc = (string) file_get_contents($root . '/app/Controllers/PageController.php');
$pc = str_replace(
    "return redirect()->to(site_url('pmc') . '#mbbs');",
    "return redirect()->to(site_url('dental-education'));",
    $pc
);
if (! str_contains($pc, 'redirectPgDentalEducation')) {
    $pc = str_replace(
        "public function redirectMedicalEducation()\n    {\n        return redirect()->to(site_url('dental-education'));\n    }",
        "public function redirectMedicalEducation()\n    {\n        return redirect()->to(site_url('dental-education'));\n    }\n\n    public function redirectPgDentalEducation()\n    {\n        return redirect()->to(site_url('pg-dental-education'));\n    }\n\n    public function redirectPgComingSoon()\n    {\n        return redirect()->to(site_url('pg-coming-soon'));\n    }",
        $pc
    );
}
file_put_contents($root . '/app/Controllers/PageController.php', $pc);
echo "PageController.php\n";

// --- Rename seeder ---
$seederSrc = $root . '/app/Database/Seeds/DmsSeeder.php';
$seederDst = $root . '/app/Database/Seeds/DdsSeeder.php';
if (is_file($seederSrc)) {
    $s = (string) file_get_contents($seederSrc);
    $s = str_replace('class DmsSeeder', 'class DdsSeeder', $s);
    $s = str_replace('Peshawar Medical College', 'Peshawar Dental College', $s);
    $s = str_replace('Department of Medical Sciences', 'Department of Dental Sciences', $s);
    $s = str_replace('getEmployeeInfo.php', 'getEmployeeInfoPDC.php', $s);
    $s = str_replace('dms.', 'dds.', $s);
    file_put_contents($seederDst, $s);
    unlink($seederSrc);
    echo "DdsSeeder.php\n";
}

// Settings defaults inside seeder — also patch site_name if present
if (is_file($seederDst)) {
    rewrite_file($seederDst, [
        'Peshawar Medical College' => 'Peshawar Dental College',
        'Medical Sciences' => 'Dental Sciences',
    ]);
}

// --- ACP login / layout branding ---
foreach ([
    $root . '/app/Views/acp/auth/login.php',
    $root . '/app/Views/acp/layouts/main.php',
] as $f) {
    rewrite_file($f, [
        'DMS Admin' => 'DDS Admin',
        'DMS · ACP' => 'DDS · ACP',
        'DMS ACP' => 'DDS ACP',
        'Medical Sciences' => 'Dental Sciences',
        'Peshawar Medical College' => 'Peshawar Dental College',
        'DMS' => 'DDS',
    ]);
}

// --- Dashboard chart brand colors (orange/gold) ---
$dash = $root . '/app/Views/acp/dashboard.php';
if (is_file($dash)) {
    rewrite_file($dash, [
        "['#155F7A', '#C4873A', '#2A87A8', '#0B1F33', '#E0A85C', '#6e8294', '#143452', '#8a5a18']"
            => "['#C2410C', '#C9A84C', '#EA580C', '#0A1628', '#e0c068', '#7a8a99', '#122040', '#9a3412']",
        'rgba(21,95,122,.14)' => 'rgba(194,65,12,.14)',
        'rgba(21,95,122,.12)' => 'rgba(194,65,12,.12)',
        'rgba(196,135,58,.12)' => 'rgba(201,168,76,.12)',
    ]);
}

// --- ACP CSS retint to DDS tokens ---
$acp = $root . '/public/assets/css/acp.css';
if (is_file($acp)) {
    $css = (string) file_get_contents($acp);
    $css = preg_replace(
        '/\/\* DMS ACP[\s\S]*?--acp-side-w:[^;]+;/',
        "/* DDS ACP — matches public PDC brand tokens */\n:root {\n  --navy: #0A1628;\n  --navy-mid: #122040;\n  --navy-deep: #060e1a;\n  --teal: #C2410C;\n  --teal-light: #EA580C;\n  --teal-pale: #FFF1E6;\n  --gold: #C9A84C;\n  --gold-light: #e0c068;\n  --gold-pale: #fdf6e3;\n  --white: #ffffff;\n  --off-white: #F4F7F9;\n  --gray-light: #eef1f5;\n  --gray-mid: #7a8a99;\n  --gray-dark: #3d4f60;\n  --border: #dde3ea;\n  --text: #1a2740;\n  --font-head: 'Montserrat', sans-serif;\n  --font-body: 'Quicksand', sans-serif;\n  --shadow-sm: 0 2px 12px rgba(10,22,40,.07);\n  --shadow-md: 0 6px 28px rgba(10,22,40,.11);\n  --r-sm: 8px;\n  --r-md: 14px;\n  --ease: .25s ease;\n  --acp-side-w: 252px;",
        $css,
        1
    );
    // leftover hard-coded DMS teal rgba in KPI/chart helpers if any
    $css = str_replace('rgba(11, 31, 51', 'rgba(10, 22, 40', $css);
    $css = str_replace('rgba(21,95,122', 'rgba(194,65,12', $css);
    file_put_contents($acp, $css);
    echo "acp.css retinted\n";
}

// --- build_layout default title ---
$bl = $root . '/tools/build_layout.php';
if (is_file($bl)) {
    rewrite_file($bl, [
        "\$page_title = \$page_title ?? 'Peshawar Medical College';"
            => "\$page_title = \$page_title ?? 'Peshawar Dental College';",
    ]);
}

// --- extract_seed_data: dental skip list + empty oric map default ---
$ex = $root . '/tools/extract_seed_data.php';
if (is_file($ex)) {
    $e = (string) file_get_contents($ex);
    // Replace medical ORIC map with empty/passthrough — DDS departments may already have oric in data
    $e = preg_replace(
        '/\$oricMap = \[[\s\S]*?\];/',
        "\$oricMap = []; // dental ORIC IDs filled when available",
        $e,
        1
    );
    $e = str_replace(
        "'medical-education.php', 'portal_login.php',",
        "'medical-education.php', 'pg-medical-education.php', 'pg-surgery-residency.php', 'portal_login.php',",
        $e
    );
    file_put_contents($ex, $e);
    echo "extract_seed_data.php\n";
}

// --- FacultyDirectoryService: keep structure; hide lecturer ranks like DDS staging ---
$fds = $root . '/app/Services/FacultyDirectoryService.php';
if (is_file($fds)) {
    // Ensure helper rank filter is used — already is. Update hidden depts if needed.
    rewrite_file($fds, [
        "return ['DHPE & R', 'DHPE & Research'];" => "return [];",
    ]);
}

// --- backfill cache path ---
foreach (['backfill_faculty_emp_ids.php', 'backfill_faculty_dept_override.php'] as $tool) {
    $p = $root . '/tools/' . $tool;
    rewrite_file($p, [
        'dms_hrms_faculty_cache.json' => 'dds_hrms_faculty_cache.json',
        'getEmployeeInfo.php' => 'getEmployeeInfoPDC.php',
        'writable/dms.db' => 'writable/dds.db',
    ]);
}

echo "Done adapt.\n";
