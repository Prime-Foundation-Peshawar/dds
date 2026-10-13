# Bootstrap DDS ci4 from master archive + DMS ci4 scaffold.
# Run from DDS repo root on branch ci4.
$ErrorActionPreference = 'Stop'
$dds = 'D:\projects\php\www\dds'
$dms = 'D:\projects\php\www\dms'
Set-Location $dds

Write-Host '=== 1) Archive master legacy into _legacy ==='
New-Item -ItemType Directory -Force -Path '_legacy\root-php', '_legacy\includes', '_legacy\public-old' | Out-Null

# Root PHP pages
Get-ChildItem -File -Filter '*.php' | ForEach-Object {
    Move-Item -LiteralPath $_.FullName -Destination (Join-Path '_legacy\root-php' $_.Name) -Force
}
# Includes
if (Test-Path 'includes') {
    if (Test-Path '_legacy\includes') { Remove-Item '_legacy\includes' -Recurse -Force }
    Move-Item 'includes' '_legacy\includes' -Force
}
# Assets (keep a copy under _legacy too, then we'll place into public/)
if (Test-Path 'assets') {
    if (Test-Path '_legacy\public-old\assets') { Remove-Item '_legacy\public-old\assets' -Recurse -Force }
    Copy-Item 'assets' '_legacy\public-old\assets' -Recurse -Force
}
# Legacy htaccess if present
if (Test-Path '.htaccess') {
    Copy-Item '.htaccess' '_legacy\.htaccess' -Force
}
# Existing legacy/ folder (older archive) — keep beside _legacy
# faculty profile folder — archive
if (Test-Path 'faculty profile') {
    Move-Item 'faculty profile' '_legacy\faculty-profile-docs' -Force
}

Write-Host '=== 2) Copy DMS CI4 scaffold ==='
$excludeDirs = @('.git', 'vendor', 'writable', 'output', '.cursor', 'node_modules', '_legacy')
$excludeFiles = @('.env', 'error_log', 'composer.lock')

# Ensure target dirs exist; robocopy app, public shell, tools, tests, db pattern, spark, etc.
$copyRoots = @(
    'app', 'public', 'tests', 'tools', 'db', 'builds',
    'spark', 'preload.php', 'LICENSE', 'env', 'composer.json', 'README.md',
    '.gitignore', '.htaccess', '.env.example'
)
foreach ($item in $copyRoots) {
    $src = Join-Path $dms $item
    if (-not (Test-Path $src)) { Write-Host "skip missing $item"; continue }
    $dst = Join-Path $dds $item
    if (Test-Path $src -PathType Container) {
        New-Item -ItemType Directory -Force -Path $dst | Out-Null
        robocopy $src $dst /E /NFL /NDL /NJH /NJS /nc /ns /np /XD .git vendor cache session logs debugbar uploads | Out-Null
        if ($LASTEXITCODE -ge 8) { throw "robocopy failed for $item code=$LASTEXITCODE" }
    } else {
        Copy-Item $src $dst -Force
    }
}

# Writable skeleton from DMS
New-Item -ItemType Directory -Force -Path 'writable\cache', 'writable\session', 'writable\logs', 'writable\debugbar', 'writable\uploads' | Out-Null
foreach ($d in @('cache', 'session', 'logs', 'debugbar', 'uploads')) {
    $idx = Join-Path $dms "writable\$d\index.html"
    if (Test-Path $idx) { Copy-Item $idx "writable\$d\index.html" -Force }
    else { Set-Content "writable\$d\index.html" '' }
}
Copy-Item (Join-Path $dms 'writable\index.html') 'writable\index.html' -Force -ErrorAction SilentlyContinue
# Keep .gitkeep patterns
Get-ChildItem (Join-Path $dms 'writable') -Recurse -Filter '.gitkeep' -ErrorAction SilentlyContinue | ForEach-Object {
    $rel = $_.FullName.Substring((Join-Path $dms 'writable').Length).TrimStart('\')
    $target = Join-Path 'writable' $rel
    New-Item -ItemType Directory -Force -Path (Split-Path $target) | Out-Null
    Copy-Item $_.FullName $target -Force
}

Write-Host '=== 3) Overlay DDS assets into public/assets ==='
if (Test-Path 'assets') {
    # master assets still at root — merge into public/assets
    New-Item -ItemType Directory -Force -Path 'public\assets' | Out-Null
    robocopy 'assets' 'public\assets' /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    if ($LASTEXITCODE -ge 8) { throw "assets robocopy failed code=$LASTEXITCODE" }
    Remove-Item 'assets' -Recurse -Force
} elseif (Test-Path '_legacy\public-old\assets') {
    New-Item -ItemType Directory -Force -Path 'public\assets' | Out-Null
    robocopy '_legacy\public-old\assets' 'public\assets' /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
}

# Remove DMS-only public media that we don't need if missing — leave as-is

Write-Host '=== 4) Remove leftover flat-site public clutter ==='
# Old empty public/assets from master may remain; ok
if (Test-Path 'public\assets\assets') {
    # nested mistake? leave
}

Write-Host 'Bootstrap file copy done.'
