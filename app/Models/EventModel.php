<?php

namespace App\Models;

use CodeIgniter\Model;

class EventModel extends Model
{
    protected $table         = 'events';
    protected $primaryKey    = 'id';
    protected $allowedFields = [
        'slug', 'title', 'excerpt', 'body_html', 'body_text', 'category', 'cover_image', 'link_url', 'link_label',
        'start_date', 'event_date', 'location', 'status', 'created_at', 'updated_at',
    ];
    protected $useTimestamps = true;

    /** First day of an event: start_date for multi-day events, otherwise event_date (the last day). */
    public const FIRST_DAY_SQL = 'COALESCE(start_date, event_date)';

    /** Adds the homepage button columns (link_url, link_label) when missing. */
    public function ensureLinkColumns(): void
    {
        try {
            $db = db_connect();
            if ($db->tableExists($this->table) && ! $db->fieldExists('link_url', $this->table)) {
                $db->query("ALTER TABLE `{$this->table}` ADD COLUMN `link_url` VARCHAR(500) NULL AFTER `cover_image`, ADD COLUMN `link_label` VARCHAR(60) NULL AFTER `link_url`");
            }
        } catch (\Throwable $e) {
            log_message('error', 'Could not ensure ' . $this->table . ' link columns: ' . $e->getMessage());
        }
    }

    /** Adds the start_date column when missing. */
    public function ensureStartDateColumn(): void
    {
        try {
            $db = db_connect();
            if ($db->tableExists($this->table) && ! $db->fieldExists('start_date', $this->table)) {
                $db->query("ALTER TABLE `{$this->table}` ADD COLUMN `start_date` DATE NULL AFTER `link_label`");
            }
        } catch (\Throwable $e) {
            log_message('error', 'Could not ensure ' . $this->table . ' start_date column: ' . $e->getMessage());
        }
    }

    /**
     * Published events that have not started yet, soonest first.
     *
     * @return list<array<string,mixed>>
     */
    public function upcomingEvents(int $limit = 5): array
    {
        $this->ensureStartDateColumn();
        $out = [];
        foreach ($this->where('status', 'published')
            ->where(self::FIRST_DAY_SQL . ' >=', date('Y-m-d'))
            ->orderBy('event_date', 'ASC')
            ->findAll() as $row) {
            $out[(string) $row['slug']] ??= $row;
        }

        return array_slice(array_values($out), 0, $limit);
    }

    /** @return list<array<string,mixed>> */
    public function published(int $limit = 0): array
    {
        $builder = $this->where('status', 'published')->orderBy('event_date', 'DESC');
        if ($limit > 0) {
            $builder->limit($limit);
        }

        return $builder->findAll();
    }

    /** @return array<string,mixed>|null */
    public function findPublishedBySlug(string $slug): ?array
    {
        $row = $this->where('slug', $slug)->where('status', 'published')->first();

        return $row ?: null;
    }
}
