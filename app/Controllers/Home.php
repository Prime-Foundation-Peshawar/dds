<?php

namespace App\Controllers;

class Home extends PublicController
{
    public function index(): string
    {
        require_once ROOTPATH . 'legacy/includes/cms-content.php';

        $homeNotices = dms_news_home('notices');
        $homeCampus = dms_news_home('campus');
        $homeAdmissions = array_values(array_filter($homeNotices, static fn ($r) => ($r['category'] ?? '') === 'admissions'));
        $homeCareers = array_values(array_filter($homeNotices, static fn ($r) => ($r['category'] ?? '') === 'career'));
        $preload_images = ['assets/images/pdc-building/pdc-slide-2.webp'];

        return $this->renderPage('pages/home', compact(
            'homeNotices',
            'homeCampus',
            'homeAdmissions',
            'homeCareers',
            'preload_images'
        ));
    }
}
