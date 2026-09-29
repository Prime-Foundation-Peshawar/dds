# DDS ACP (Admin Control Panel)

CI4 ACP for Peshawar Dental College / Department of Dental Sciences.

## Setup

1. Copy `.env.example` → `.env` and set:
   - `app.baseURL` (staging: `https://staging.riphahpsh.edu.pk/dds/`)
   - `database.default.*` / `DB_*` (staging DB: `staging_dds`)
   - `CMS_ADMIN_EMAIL` / `CMS_ADMIN_PASSWORD`
2. Run `php db/apply.php` then the seed scripts (deploy workflow does this).
3. Sign in at `/acp/login`.

## Modules

- Dashboard KPIs (RCP website protocol)
- Analytics / GA notes
- Monthly reports (contributions, activities, integrity, suggestions)
- News, events, homepage slides, gallery, vacant seats, newsletters
- CMS pages, departments, faculty submissions/profiles
