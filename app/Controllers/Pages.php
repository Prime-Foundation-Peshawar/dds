<?php

namespace App\Controllers;

use CodeIgniter\HTTP\ResponseInterface;

/**
 * Static / CMS-backed public pages.
 */
class Pages extends PublicController
{
    /** @var list<string> */
    protected array $staticSlugs = [
        'about', 'vision-mission', 'contact', 'admissions', 'curriculum', 'pmc', 'pdc',
        'examinations', 'e-health', 'clinical-skill-labs', 'education-literature',
        'literary-society', 'social-welfare', 'sports-society', 'student-exchange',
        'student-guide', 'student-research', 'umr', 'virtual-museum',
        'pg-medical-education', 'pg-surgery-residency', 'faculty-research',
        'portal', 'portal-login', 'sitemap-page',
    ];

    public function show(string $slug)
    {
        $slug = strtolower(trim($slug));
        $slug = preg_replace('/[^a-z0-9\-\_]/', '', $slug) ?? '';

        if ($slug === 'medical-education') {
            return $this->redirectLegacy('dental-education', 301);
        }
        if ($slug === 'pg-medical-education' || $slug === 'pg-coming-soon') {
            return $this->redirectLegacy('pg-dental-education', 301);
        }
        if ($slug === 'pg-surgery-residency') {
            return $this->redirectLegacy('pg-dental-education', 301);
        }
        if ($slug === 'umr') {
            return redirect()->to('https://riphahpsh.edu.pk/umr.php', 301);
        }
        if ($slug === 'student-research') {
            return $this->redirectLegacy('faculty-research', 302);
        }
        if ($slug === 'portal_login') {
            return $this->redirectLegacy('portal-login', 301);
        }

        // Built-in static views win over CMS so ported pages never 500 on a missing sidebar include.
        $view = 'pages/' . $slug;
        $hasStatic = is_file(APPPATH . 'Views/' . $view . '.php');

        // CMS override only for slugs that are not reserved and have no static view.
        if (! $hasStatic && ! $this->isReserved($slug)) {
            require_once ROOTPATH . 'legacy/includes/cms-content.php';
            $cmsPage = dms_cms_page_by_slug($slug);
            if (is_array($cmsPage)) {
                return $this->renderCms($cmsPage);
            }
        }

        if (! $hasStatic) {
            throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound($slug);
        }

        $data = array_merge($this->metaFromLegacy($slug), $this->pageData($slug));

        return $this->renderPage($view, $data);
    }

    /**
     * View data that used to be prepared at the top of legacy *.php pages.
     *
     * @return array<string,mixed>
     */
    protected function pageData(string $slug): array
    {
        return match ($slug) {
            'faculty-research' => $this->facultyResearchData(),
            default => [],
        };
    }

    /**
     * @return array<string,mixed>
     */
    protected function facultyResearchData(): array
    {
        $debugMode = $this->request->getGet('debug') === '1';
        $apiUrl = 'https://oric.riphahpsh.edu.pk/apis/getPublicationsInfo.php';
        $publicationsByDept = [];
        $fetchError = false;
        $debugInfo = [];

        $ch = curl_init();
        curl_setopt_array($ch, [
            CURLOPT_URL => $apiUrl,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_TIMEOUT => 15,
            CURLOPT_CONNECTTIMEOUT => 8,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_MAXREDIRS => 3,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_USERAGENT => 'Mozilla/5.0 (compatible; PDC-Website/1.0)',
            CURLOPT_HTTPHEADER => ['Accept: application/json'],
        ]);
        $result = curl_exec($ch);
        $httpCode = (int) curl_getinfo($ch, CURLINFO_HTTP_CODE);
        $curlError = curl_error($ch);
        curl_close($ch);

        $debugInfo['http_code'] = $httpCode;
        $debugInfo['curl_error'] = $curlError;
        $debugInfo['raw_result'] = $result;

        if ($result === false || $curlError !== '') {
            $fetchError = true;
        } elseif ($httpCode < 200 || $httpCode >= 300) {
            $fetchError = true;
        } else {
            $data = json_decode((string) $result);
            if (json_last_error() !== JSON_ERROR_NONE) {
                $fetchError = true;
            } else {
                $list = null;
                if (is_array($data)) {
                    $list = $data;
                } elseif (is_object($data)) {
                    foreach (['data', 'records', 'result', 'publications', 'items'] as $key) {
                        if (isset($data->{$key}) && is_array($data->{$key})) {
                            $list = $data->{$key};
                            break;
                        }
                    }
                }
                if ($list === null) {
                    $fetchError = true;
                } else {
                    foreach ($list as $pub) {
                        $dept = $pub->depName ?? 'Other';
                        $publicationsByDept[$dept][] = $pub;
                    }
                }
            }
        }

        $flatPublications = [];
        foreach ($publicationsByDept as $dept => $pubs) {
            foreach ($pubs as $pub) {
                $flatPublications[] = [
                    'department' => $dept,
                    'author' => $pub->authorName ?? '',
                    'title' => $pub->pubTitle ?? '',
                    'journal' => $pub->pubJournalName ?? '',
                    'year' => $pub->pubYear ?? '',
                ];
            }
        }

        usort($flatPublications, static function (array $a, array $b): int {
            if ((int) $a['year'] !== (int) $b['year']) {
                return (int) $b['year'] - (int) $a['year'];
            }

            return strcmp((string) $a['department'], (string) $b['department']);
        });

        $departments = array_keys($publicationsByDept);
        sort($departments);
        $years = array_values(array_unique(array_map(static fn (array $p) => $p['year'], $flatPublications)));
        rsort($years);

        return [
            'debug_mode' => $debugMode,
            'debug_info' => $debugInfo,
            'fetch_error' => $fetchError,
            'publications_by_dept' => $publicationsByDept,
            'flat_publications' => $flatPublications,
            'departments' => $departments,
            'years' => $years,
            'page_title' => 'Faculty Research — Department of Dental Sciences - Riphah International University (Peshawar Campus)',
            'page_description' => 'Explore research publications by faculty members of the Department of Dental Sciences.',
        ];
    }

    public function cms(): string
    {
        require_once ROOTPATH . 'legacy/includes/cms-content.php';
        $slug = trim((string) ($this->request->getGet('slug') ?? ''));
        $cmsPage = $slug !== '' ? dms_cms_page_by_slug($slug) : null;
        if (! is_array($cmsPage)) {
            throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound($slug ?: 'cms');
        }

        return $this->renderCms($cmsPage);
    }

    /**
     * @param array<string,mixed> $cmsPage
     */
    protected function renderCms(array $cmsPage): string
    {
        $heroTitle = (string) ($cmsPage['hero_title'] ?? $cmsPage['title'] ?? 'Page');
        $crumb = (string) ($cmsPage['breadcrumb_label'] ?? $heroTitle);
        $bodyHtml = (string) ($cmsPage['body_html'] ?? '');
        $showSidebar = ! empty($cmsPage['show_sidebar']);
        $page_title = ! empty($cmsPage['meta_title']) ? (string) $cmsPage['meta_title'] : null;
        $page_description = ! empty($cmsPage['meta_description']) ? (string) $cmsPage['meta_description'] : null;

        return $this->renderPage('pages/cms-page', compact(
            'cmsPage',
            'heroTitle',
            'crumb',
            'bodyHtml',
            'showSidebar',
            'page_title',
            'page_description'
        ));
    }

    /**
     * @return array<string,mixed>
     */
    protected function metaFromLegacy(string $slug): array
    {
        $metaFile = APPPATH . 'Views/pages/' . $slug . '.meta.json';
        if (! is_file($metaFile)) {
            return [];
        }
        $json = json_decode((string) file_get_contents($metaFile), true);
        if (! is_array($json) || empty($json['meta']) || ! is_array($json['meta'])) {
            return [];
        }
        $out = [];
        foreach ($json['meta'] as $key => $expr) {
            // meta values are PHP expressions like "'About | …'" — eval safely via string trim of quotes.
            $expr = trim((string) $expr);
            if (preg_match('/^([\'"])(.*)\\1$/s', $expr, $m)) {
                $out[$key] = $m[2];
            }
        }

        return $out;
    }

    protected function isReserved(string $slug): bool
    {
        static $reserved = [
            'index', 'home',
            'all-news', 'single-news', 'events', 'event-single',
            'gallery', 'vacant-seats', 'newsletter',
            'departments', 'department', 'department-activity',
            'faculty', 'faculty-profile', 'faculty-all', 'faculty-update',
            'faculty-update-submit', 'faculty_api', 'faculty-profiles-api', 'faculty-proxy',
            'e-health', 'examinations', 'faculty-research',
            'portal', 'portal-login', 'portal_login',
            'sitemap', 'sitemap-page', 'robots',
            'medical-education', 'cms-page', 'acp',
        ];

        return in_array($slug, $reserved, true);
    }
}
