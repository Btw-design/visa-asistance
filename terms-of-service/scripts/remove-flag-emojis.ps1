# Remove flag emojis from all HTML files in the site
# Replaces emoji flags with appropriate alternatives

$base = "D:\ahit health\my-visa-assistance"
$files = Get-ChildItem $base -Filter '*.html' -Recurse | Where-Object { $_.FullName -notmatch '\\scripts\\' }

$count = 0
$totalFiles = $files.Count

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $original = $content

    # 1. Remove flag emoji spans from country logos strip
    # Pattern: <span class="flag">ANY_FLAG_EMOJI</span>
    $content = $content -replace '<span class="flag">[^\<]*?</span>\s*', ''

    # 2. Replace flag emoji divs in hero slider with icon
    $content = $content -replace '<div class="hero-slide-flag">[^\<]*?</div>', '<div class="hero-slide-flag"><i class="bi bi-passport"></i></div>'

    # 3. Replace standalone flag emojis (regional indicator pairs) in general content
    # Match any sequence of regional indicator symbols (pairs for country flags)
    $content = $content -replace '[\x{1F1E6}-\x{1F1FF}]{2}', ''

    if ($content -ne $original) {
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewLine
        $count++
    }
}

Write-Host "Processed $totalFiles files. Modified $count files with flag removals."
