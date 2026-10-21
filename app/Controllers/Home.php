<?php

namespace App\Controllers;

use App\Models\PageModel;

class Home extends BaseController
{
    public function index()
    {
        $page = model(PageModel::class)->findPublished('home');
        $posterWebp = FCPATH . 'assets/images/slider/pdc-hero-poster.webp';
        $posterV = @filemtime($posterWebp) ?: time();

        return view('pages/home_wrap', [
            'page_title' => $page['title'] ?? 'Peshawar Dental College | PDC - BDS in Peshawar',
            'page_description' => $page['description'] ?? '',
            'canonical_url' => site_url('/'),
            'preload_images' => [base_url('assets/images/slider/pdc-hero-poster.webp') . '?v=' . $posterV],
        ]);
    }
}
