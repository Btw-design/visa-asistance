# ============================================================
# Convert Site to Directory-Based Clean URL Structure
# My Visa Assistance
# ============================================================
# Converts every .html file to directory/index.html so clean
# URLs like /visa-guide/china-visa work on ANY static host
# without server rewrite rules.
# ============================================================

$root = "D:\ahit health\my-visa-assistance"
Write-Host "===== Step 1: Fix all relative asset paths to absolute =====" -ForegroundColor Cyan

$allHtml = Get-ChildItem -Path $root -Recurse -Filter "*.html" | Where-Object { $_.DirectoryName -notmatch '\\node_modules\\' }

foreach ($f in $allHtml) {
    $content = Get-Content $f.FullName -Raw
    $orig = $content
    $changed = $false

    # Pattern 1: ../css/ -> /css/
    if ($content -match '(href|src)="\.\./css/') {
        $content = $content -replace '(href|src)="\.\./css/', '$1="/css/'
        $changed = $true
    }
    # Pattern 2: href="css/ -> href="/css/
    if ($content -match 'href="css/') {
        $content = $content -replace 'href="css/', 'href="/css/'
        $changed = $true
    }
    
    # Pattern 3: ../js/ -> /js/
    if ($content -match '(src)="\.\./js/') {
        $content = $content -replace '(src)="\.\./js/', '$1="/js/'
        $changed = $true
    }
    # Pattern 4: src="js/ -> src="/js/
    if ($content -match 'src="js/') {
        $content = $content -replace 'src="js/', 'src="/js/'
        $changed = $true
    }
    
    # Pattern 5: ../favicon/ -> /favicon/
    if ($content -match '(href)="\.\./favicon/') {
        $content = $content -replace '(href)="\.\./favicon/', '$1="/favicon/'
        $changed = $true
    }
    # Pattern 6: href="favicon/ -> href="/favicon/
    if ($content -match 'href="favicon/') {
        $content = $content -replace 'href="favicon/', 'href="/favicon/'
        $changed = $true
    }

    if ($changed) {
        Set-Content -Path $f.FullName -Value $content -NoNewline
        Write-Host "  Fixed paths: $($f.FullName.Replace($root,''))" -ForegroundColor Gray
    }
}

Write-Host ""
Write-Host "===== Step 2: Convert .html files to directory/index.html =====" -ForegroundColor Cyan

# Files to skip (already directory indexes or root-level fallbacks)
$skipFiles = @(
    '\index.html',
    '\about\index.html',
    '\contact\index.html',
    '\about.html',
    '\contact.html',
    '\404.html',
    '\visa-guide\index.html',
    '\visa-requirements\index.html',
    '\blog\index.html'
)

$converted = 0
foreach ($f in $allHtml) {
    $rel = $f.FullName.Replace($root,'')
    if ($rel -in $skipFiles) { continue }
    if ($rel -notmatch '\.html$') { continue }
    
    # Get the directory and filename without extension
    $parentDir = $f.DirectoryName
    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($f.Name)
    
    # Create new directory: same name as file (without .html)
    $newDir = Join-Path $parentDir $baseName
    if (-not (Test-Path $newDir)) {
        New-Item -ItemType Directory -Path $newDir | Out-Null
    }
    
    # New path: directory/index.html
    $newPath = Join-Path $newDir "index.html"
    
    # Move the file
    Move-Item -Path $f.FullName -Destination $newPath -Force
    Write-Host "  $rel -> $baseName/index.html" -ForegroundColor Green
    $converted++
}

Write-Host "  Converted $converted files" -ForegroundColor Green

Write-Host ""
Write-Host "===== Step 3: Update generator script =====" -ForegroundColor Cyan

$genScript = Join-Path $root "generate-countries.ps1"
if (Test-Path $genScript) {
    $genContent = Get-Content $genScript -Raw
    $genOrig = $genContent
    
    # Fix asset paths in templates: ../css/ -> /css/
    $genContent = $genContent -replace '(href|src)="\.\./css/', '$1="/css/'
    $genContent = $genContent -replace '(src)="\.\./js/', '$1="/js/'
    $genContent = $genContent -replace '(href)="\.\./favicon/', '$1="/favicon/'
    
    # Fix output file paths: -visa.html -> -visa/index.html
    $genContent = $genContent -replace '\$guidePath = "D:.*?\$\(c\.slug\)-visa\.html"', '$guidePath = "D:\ahit health\my-visa-assistance\visa-guide\$($c.slug)-visa\index.html"'
    $genContent = $genContent -replace '\$reqPath = "D:.*?\$\(c\.slug\)-visa-requirements\.html"', '$reqPath = "D:\ahit health\my-visa-assistance\visa-requirements\$($c.slug)-visa-requirements\index.html"'
    
    # Fix write messages
    $genContent = $genContent -replace 'Write-Host "Created: visa-guide/\$\(c\.slug\)-visa\.html"', 'Write-Host "Created: visa-guide/$($c.slug)-visa/index.html"'
    $genContent = $genContent -replace 'Write-Host "Created: visa-requirements/\$\(c\.slug\)-visa-requirements\.html"', 'Write-Host "Created: visa-requirements/$($c.slug)-visa-requirements/index.html"'
    
    if ($genContent -ne $genOrig) {
        Set-Content -Path $genScript -Value $genContent -NoNewline
        Write-Host "  Updated generate-countries.ps1" -ForegroundColor Green
    } else {
        Write-Host "  Generator already up to date" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "===== Step 4: Regenerate country pages =====" -ForegroundColor Cyan

Push-Location $root
try {
    & powershell -ExecutionPolicy Bypass -File "generate-countries.ps1"
    Write-Host "  Regeneration complete" -ForegroundColor Green
} catch {
    Write-Host "  Regeneration failed: $_" -ForegroundColor Red
} finally {
    Pop-Location
}

Write-Host ""
Write-Host "===== DONE =====" -ForegroundColor Cyan
Write-Host "All pages now use directory/index.html structure." -ForegroundColor Green
Write-Host "Clean URLs will work on ANY static host (no rewrite rules needed)." -ForegroundColor Green
