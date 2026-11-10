<?php

namespace App\Controllers\Acp;

use App\Models\SettingModel;

class Slider extends BaseAcpController
{
    public function index()
    {
        return $this->acpView('slider/index', [
            'title'  => 'Home slider',
            'slides' => model(SettingModel::class)->homeSlides(),
        ]);
    }

    public function save()
    {
        $postLimit = ini_parse_quantity(ini_get('post_max_size'));
        if ($postLimit > 0 && (int) $this->request->getServer('CONTENT_LENGTH') > $postLimit) {
            return redirect()->back()->with('error', 'Slider was not saved: uploads exceed the server total request limit of ' . ini_get('post_max_size') . '.');
        }

        $post    = $this->request->getPost();
        $uploads = $this->request->getFileMultiple('media') ?? [];
        $slides  = [];

        foreach ($post['title'] ?? [] as $i => $title) {
            $slide = [
                'media_type'     => ($post['media_type'][$i] ?? 'image') === 'video' ? 'video' : 'image',
                'image_path'     => ltrim(trim((string) ($post['image_path'][$i] ?? '')), '/'),
                'video_path'     => ltrim(trim((string) ($post['video_path'][$i] ?? '')), '/'),
                'subtitle'       => trim((string) ($post['subtitle'][$i] ?? '')),
                'title'          => trim((string) $title),
                'text'           => trim((string) ($post['text'][$i] ?? '')),
                'link_label'     => trim((string) ($post['link_label'][$i] ?? '')),
                'link_url'       => $this->safeLink(trim((string) ($post['link_url'][$i] ?? ''))),
                'link2_label'    => trim((string) ($post['link2_label'][$i] ?? '')),
                'link2_url'      => $this->safeLink(trim((string) ($post['link2_url'][$i] ?? ''))),
                'start_date'     => trim((string) ($post['start_date'][$i] ?? '')),
                'end_date'       => trim((string) ($post['end_date'][$i] ?? '')),
                'enabled'        => isset($post['enabled'][$i]),
                'motion_enabled' => isset($post['motion_enabled'][$i]),
            ];

            if ($slide['title'] === '' || $slide['text'] === '') {
                return redirect()->back()->with('error', 'Every slide needs a title and a paragraph.');
            }
            if ($slide['start_date'] !== '' && $slide['end_date'] !== '' && $slide['end_date'] < $slide['start_date']) {
                return redirect()->back()->with('error', 'Expiry date cannot be before the display date ("' . $slide['title'] . '").');
            }

            // PHP can reject uploads before application validation (size, partial upload,
            // missing temporary directory, etc.). Never silently keep the old file.
            $upload = $uploads[$i] ?? null;
            if ($upload && $upload->getError() !== UPLOAD_ERR_NO_FILE && ! $upload->isValid()) {
                return redirect()->back()->with('error',
                    'Slide upload failed: ' . $upload->getErrorString()
                    . ' Server upload limit: ' . ini_get('upload_max_filesize')
                    . '; total request limit: ' . ini_get('post_max_size') . '.');
            }

            // A new upload replaces the current file; otherwise the current one is kept.
            if ($upload && $upload->isValid() && ! $upload->hasMoved()) {
                if ($slide['media_type'] === 'image') {
                    $slide['image_path'] = $this->storeSlideFile($upload, ['jpg', 'jpeg', 'png', 'webp'], 8 * 1024 * 1024);
                    if ($slide['image_path'] === null) {
                        return redirect()->back()->with('error', 'Images must be JPEG, PNG or WebP and no larger than 8 MB.');
                    }
                } else {
                    $slide['video_path'] = $this->storeSlideFile($upload, ['mp4', 'webm'], 100 * 1024 * 1024);
                    if ($slide['video_path'] === null) {
                        return redirect()->back()->with('error', 'Videos must be MP4 or WebM and no larger than 100 MB.');
                    }
                }
            }

            if ($slide['media_type'] === 'image' && $slide['image_path'] === '') {
                return redirect()->back()->with('error', 'Please upload an image for "' . $slide['title'] . '".');
            }
            if ($slide['media_type'] === 'video' && $slide['video_path'] !== '' && ! is_file(FCPATH . $slide['video_path'])) {
                return redirect()->back()->with('error', 'The video for "' . $slide['title'] . '" is missing. Please upload it again.');
            }

            $slides[] = $slide;
        }

        model(SettingModel::class)->setJson(SettingModel::HOME_SLIDER_KEY, $slides);

        return redirect()->to(site_url('acp/slider'))->with('success', 'Home slider saved.');
    }

    private function storeSlideFile($file, array $allowed, int $maxBytes): ?string
    {
        $ext = strtolower($file->getClientExtension());
        if (! in_array($ext, $allowed, true) || $file->getSize() > $maxBytes) {
            return null;
        }

        $subdir = 'uploads/slider/' . date('Y/m');
        if (! is_dir(FCPATH . $subdir)) {
            mkdir(FCPATH . $subdir, 0755, true);
        }
        $name = $file->getRandomName();
        $file->move(FCPATH . $subdir, $name);

        return $subdir . '/' . $name;
    }
}
