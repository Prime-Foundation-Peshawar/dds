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

- Seed data was imported from the former static site. The archived PHP copy is no longer in this repo.