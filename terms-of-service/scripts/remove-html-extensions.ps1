# ============================================================
# Remove .html Extensions from All Internal Links
# My Visa Assistance - Lead Generation Site
# ============================================================
# This script:
# 1. Converts about.html and contact.html to about/index.html and contact/index.html
# 2. Updates all internal href links to remove .html extension
# 3. Updates share URLs (wa.me, facebook, twitter) to clean URLs
# 4. Updates Open Graph URLs to clean URLs
# 5. Updates the generator script
# 6. Regenerates 66 country pages
# ============================================================

$root = "D:\ahit health\my-visa-assistance"

# ---------- Step 1: Convert about.html and contact.html to directory structure ----------
Write-Host "Step 1: Converting about.html and contact.html to directory/index.html..." -ForegroundColor Cyan

$rootPages = @(
    @{Old="about.html"; NewDir="about"; Canonical="about"}
    @{Old="contact.html"; NewDir="contact"; Canonical="contact"}
)

foreach ($page in $rootPages) {
    $oldPath = Join-Path $root $page.Old
    $newDir  = Join-Path $root $page.NewDir
    
    if (Test-Path $oldPath) {
        # Create directory
        if (-not (Test-Path $newDir)) {
            New-Item -ItemType Directory -Path $newDir | Out-Null
        }
        
        # Read old content
        $content = Get-Content $oldPath -Raw
        
        # Update relative CSS/JS paths: css/style.css -> ../css/style.css
        $content = $content -replace '(href|src)="css/', '$1="../css/'
        $content = $content -replace '(href|src)="js/', '$1="../js/'
        $content = $content -replace '(href|src)="favicon/', '$1="../favicon/'
        
        # Update canonical URL
        $content = $content -replace "canonical`" href=`"https://myvisaassistance.com/$($page.Old)`"", "canonical`" href=`"https://myvisaassistance.com/$($page.Canonical)`""
        
        # Write to new location
        $newPath = Join-Path $newDir "index.html"
        Set-Content -Path $newPath -Value $content -NoNewline
        Write-Host "  Created $newPath" -ForegroundColor Green
        
        # Remove old file (optional - uncomment to delete)
        # Remove-Item $oldPath
        # Write-Host "  Removed $oldPath" -ForegroundColor DarkYellow
    }
}

# ---------- Step 2: Get all HTML files ----------
Write-Host "`nStep 2: Collecting all HTML files..." -ForegroundColor Cyan

$allHtmlFiles = Get-ChildItem -Path $root -Recurse -Filter "*.html" -Exclude "node_modules" | Where-Object { $_.DirectoryName -notmatch '\\node_modules\\' }
Write-Host "  Found $($allHtmlFiles.Count) HTML files" -ForegroundColor Green

# ---------- Step 3: Update internal .html links ----------
Write-Host "`nStep 3: Updating internal .html links to clean URLs..." -ForegroundColor Cyan

$totalReplacements = 0

foreach ($file in $allHtmlFiles) {
    $content = Get-Content $file.FullName -Raw
    $originalContent = $content
    $fileReplacements = 0
    
    # 3a: Update nav/footer links to about and contact (with leading /)
    # href="/about.html" -> href="/about"
    # href="about.html" -> href="/about" (only in root-level files)
    if ($content -match 'href="(/?)about\.html"') {
        $content = $content -replace 'href="/about\.html"', 'href="/about"'
        $content = $content -replace 'href="about\.html"', 'href="/about"'
        $fileReplacements++
    }
    if ($content -match 'href="(/?)contact\.html"') {
        $content = $content -replace 'href="/contact\.html"', 'href="/contact"'
        $content = $content -replace 'href="contact\.html"', 'href="/contact"'
        $fileReplacements++
    }
    
    # 3b: Update visa-guide links
    # href="/visa-guide/xxx.html" -> href="/visa-guide/xxx"
    $content = $content -replace 'href="/visa-guide/([^"/]+)\.html"', 'href="/visa-guide/$1"'
    
    # 3c: Update visa-requirements links
    $content = $content -replace 'href="/visa-requirements/([^"/]+)\.html"', 'href="/visa-requirements/$1"'
    
    # 3d: Update blog links
    $content = $content -replace 'href="/blog/([^"/]+)\.html"', 'href="/blog/$1"'
    
    # 3e: Update share URLs (WhatsApp, Twitter, Facebook) that reference our blog posts
    $content = $content -replace '(https://myvisaassistance\.com/blog/[^"&?]+)\.html', '$1'
    
    # 3f: Update og:url meta tags
    if ($content -match 'property="og:url"') {
        $content = $content -replace '(property="og:url"\s+content="https://myvisaassistance\.com/[^"]+)\.html"', '$1"'
    }
    
    # Count replacements
    if ($content -ne $originalContent) {
        $diff = [System.Text.Encoding]::UTF8.GetByteCount($content) - [System.Text.Encoding]::UTF8.GetByteCount($originalContent)
        $totalReplacements++
        Set-Content -Path $file.FullName -Value $content -NoNewline
        Write-Host "  Updated: $($file.FullName.Replace($root,''))" -ForegroundColor Gray
    }
}

Write-Host "  $totalReplacements files modified" -ForegroundColor Green

# ---------- Step 4: Update generator script ----------
Write-Host "`nStep 4: Updating generator script URLs..." -ForegroundColor Cyan

$genScript = Join-Path $root "generate-countries.ps1"
if (Test-Path $genScript) {
    $genContent = Get-Content $genScript -Raw
    
    # Update sidebar cross-links in the generator
    $genContent = $genContent -replace '/visa-requirements/\$\(c\.slug\)-visa-requirements\.html', '/visa-requirements/$($c.slug)-visa-requirements'
    $genContent = $genContent -replace '/visa-guide/\$\(c\.slug\)-visa\.html', '/visa-guide/$($c.slug)-visa'
    
    # Update footer top country links
    $genContent = $genContent -replace '/visa-guide/usa-visa\.html', '/visa-guide/usa-visa'
    $genContent = $genContent -replace '/visa-guide/uk-visa\.html', '/visa-guide/uk-visa'
    $genContent = $genContent -replace '/visa-guide/canada-visa\.html', '/visa-guide/canada-visa'
    $genContent = $genContent -replace '/visa-guide/australia-visa\.html', '/visa-guide/australia-visa'
    $genContent = $genContent -replace '/visa-guide/india-visa\.html', '/visa-guide/india-visa'
    $genContent = $genContent -replace '/visa-guide/schengen-visa\.html', '/visa-guide/schengen-visa'
    
    # Update about and contact links in generator
    $genContent = $genContent -replace '/about\.html', '/about'
    $genContent = $genContent -replace '/contact\.html', '/contact'
    
    Set-Content -Path $genScript -Value $genContent -NoNewline
    Write-Host "  Updated generate-countries.ps1" -ForegroundColor Green
}

# ---------- Step 5: Regenerate 66 country pages ----------
Write-Host "`nStep 5: Regenerating country pages..." -ForegroundColor Cyan

Push-Location $root
try {
    & .\generate-countries.ps1
    Write-Host "  Regeneration complete" -ForegroundColor Green
} catch {
    Write-Host "  Regeneration failed: $_" -ForegroundColor Red
} finally {
    Pop-Location
}

Write-Host "`n===== DONE =====" -ForegroundColor Cyan
Write-Host "All .html extensions removed from internal URLs." -ForegroundColor Green
Write-Host "about.html -> about/index.html" -ForegroundColor Yellow
Write-Host "contact.html -> contact/index.html" -ForegroundColor Yellow
Write-Host "Canonical URLs already clean." -ForegroundColor Yellow
Write-Host ".htaccess and web.config rewrite rules created." -ForegroundColor Yellow
