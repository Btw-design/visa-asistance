# Fix GitHub Pages subpath issue: add /visa-asistance prefix to all internal paths
# Uses [regex]::Escape for proper .NET regex escaping

$ErrorActionPreference = "Stop"
$basePath = "D:\ahit health\my-visa-assistance"
$prefix = "/visa-asistance"
$utf8NoBom = New-Object System.Text.UTF8Encoding $false

$htmlFiles = Get-ChildItem -Path $basePath -Recurse -Filter "*.html" | 
    Where-Object { $_.DirectoryName -notmatch '\\scripts\\' -and $_.DirectoryName -notmatch '\\.opencode\\' }

Write-Host "Adding prefix '$prefix' to $($htmlFiles.Count) files..."
Write-Host ""

$totalCount = 0

foreach ($f in $htmlFiles) {
    $relPath = $f.FullName.Substring($basePath.Length + 1)
    $c = Get-Content $f.FullName -Raw -Encoding UTF8
    $orig = $c
    
    # Apply path prefixing using -replace with properly constructed patterns
    
    # Assets
    $c = $c -replace '(?<=href=")/css/style\.css(?=")', "${prefix}/css/style.css"
    $c = $c -replace '(?<=src=")/js/main\.js(?=")', "${prefix}/js/main.js"
    $c = $c -replace '(?<=src=")/js/countries\.js(?=")', "${prefix}/js/countries.js"
    $c = $c -replace '(?<=href=")/favicon/', "${prefix}/favicon/"
    
    # Section directories
    $c = $c -replace '(?<=href=")/visa-guide/', "${prefix}/visa-guide/"
    $c = $c -replace '(?<=href=")/visa-requirements/', "${prefix}/visa-requirements/"
    $c = $c -replace '(?<=href=")/blog/', "${prefix}/blog/"
    
    # Top-level pages: look for href="/page" or href="/page/"
    # We use a regex that matches /pathword followed by / or " (end of href value)
    $topPages = @(
        '/about', '/contact', '/embassy-address', '/passport-ranking',
        '/privacy-policy', '/terms-of-service', '/upcoming-events'
    )
    foreach ($page in $topPages) {
        $escapedPage = [regex]::Escape($page)
        $pattern = '(?<=href=")' + $escapedPage + '(?=[/"])'
        $c = $c -replace $pattern, "${prefix}${page}"
    }
    
    # Home link: exact href="/" followed by space, >, or class attribute
    # Use a specific pattern that won't match already-prefixed URLs
    $c = $c -replace 'href="/"(?=\s+|>)', "href=`"${prefix}/`""
    
    # Domain references (canonical URLs, sitemap links, social share, JSON-LD)
    $c = $c -replace 'https://www\.myvisaassistance\.com', 'https://btw-design.github.io/visa-asistance'
    
    if ($c -ne $orig) {
        [System.IO.File]::WriteAllText($f.FullName, $c, $utf8NoBom)
        Write-Host "  $relPath"
        $totalCount++
    }
}

# Update robots.txt
$robotsPath = Join-Path $basePath "robots.txt"
$robots = Get-Content $robotsPath -Raw -Encoding UTF8
$robotsOld = $robots
$robots = $robots -replace 'https://www\.myvisaassistance\.com', 'https://btw-design.github.io/visa-asistance'
[System.IO.File]::WriteAllText($robotsPath, $robots, $utf8NoBom)
if ($robots -ne $robotsOld) { Write-Host "  robots.txt" }

# Update sitemap.xml
$sitemapPath = Join-Path $basePath "sitemap.xml"
$sitemap = Get-Content $sitemapPath -Raw -Encoding UTF8
$sitemapOld = $sitemap
$sitemap = $sitemap -replace 'https://www\.myvisaassistance\.com', 'https://btw-design.github.io/visa-asistance'
[System.IO.File]::WriteAllText($sitemapPath, $sitemap, $utf8NoBom)
if ($sitemap -ne $sitemapOld) { Write-Host "  sitemap.xml" }

Write-Host ""
Write-Host "Done. Files modified: $totalCount" -ForegroundColor Green