# Phase 3: Final cleanup - fix remaining cosmetic issues
# Focused on visible text only, not breaking HTML/CSS

$ErrorActionPreference = "Stop"

$blogDirs = @(
    "D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process",
    "D:\ahit health\my-visa-assistance\blog\schengen-visa-complete-guide-2026",
    "D:\ahit health\my-visa-assistance\blog\thailand-visa-options-2026",
    "D:\ahit health\my-visa-assistance\blog\uk-visa-processing-times-2026",
    "D:\ahit health\my-visa-assistance\blog\us-visa-interview-tips-2026",
    "D:\ahit health\my-visa-assistance\blog\visa-document-checklist-2026"
)

$totalFixes = 0

foreach ($dir in $blogDirs) {
    $path = Join-Path $dir "index.html"
    $name = Split-Path $dir -Leaf
    Write-Host "Processing: $name" -ForegroundColor Cyan
    
    $content = Get-Content $path -Raw -Encoding UTF8
    $originalLen = $content.Length
    $fixCount = 0
    
    # 1. Fix meta description leading space: content=" Complete" -> content="Complete"
    $descBefore = [regex]::Matches($content, 'content=" ').Count
    if ($descBefore -gt 0) {
        $content = $content -replace 'content=" ', 'content="'
        $fixCount += $descBefore
        Write-Host ("  Fixed $descBefore meta desc leading spaces")
    }
    
    # 2. Fix meta description double spaces
    $content = $content -replace '(?<=content="[^"]*) {2,}(?=[a-zA-Z])', ' '
    
    # 3. Fix title-specific issues
    $titleMatch = [regex]::Match($content, '<title>([^<]+)</title>')
    if ($titleMatch.Success) {
        $oldTitle = $titleMatch.Groups[1].Value
        $newTitle = $oldTitle
        
        # Fix specific known word corruptions in title
        $titleFixes = @{
            '\bretirement\b' = 'Retirement'
            '\bdigital\b' = 'Digital'
            '\bnomad\b' = 'Nomad'
            '\bneed\b' = 'Need'
        }
        foreach ($pair in $titleFixes.GetEnumerator()) {
            $old = $pair.Key
            $new = $pair.Value
            if ($newTitle -match $old) {
                $newTitle = $newTitle -replace $old, $new
            }
        }
        
        # Fix double spaces in title
        if ($newTitle -match '  ') {
            $newTitle = $newTitle -replace '  ', ' '
            Write-Host ("  Fixed double space in title")
        }
        
        # Ensure title has "| My Visa Assistance" if related content mentions it
        # Check the JSON-LD to see if the brand name is present
        $hasBrand = [regex]::IsMatch($content, '"name": "My Visa Assistance"')
        if ($hasBrand -and -not $newTitle.Contains('My Visa')) {
            $newTitle = $newTitle + " | My Visa Assistance"
            Write-Host ("  Added brand suffix to title")
        }
        
        if ($newTitle -ne $oldTitle) {
            $content = $content.Substring(0, $titleMatch.Groups[1].Index) + $newTitle + $content.Substring($titleMatch.Groups[1].Index + $titleMatch.Groups[1].Length)
            $fixCount++
            Write-Host ("  Title: '$oldTitle' -> '$newTitle'")
        }
    }
    
    # 4. Fix body text: clean up double spaces between words
    # But do this carefully to not break SVG/HTML
    $bodyMatch = [regex]::Match($content, '<body[^>]*>(.*?)</body>', [System.Text.RegularExpressions.RegexOptions]::Singleline)
    if ($bodyMatch.Success) {
        $bodyStartIdx = $bodyMatch.Groups[1].Index
        $bodyLen = $bodyMatch.Groups[1].Length
        $body = $bodyMatch.Groups[1].Value
        $fixedBody = $body -replace '(?<=[a-zA-Z0-9.,;:!?]) {2,}(?=[a-zA-Z0-9])', ' '
        $spacesFixed = [regex]::Matches($body, '(?<=[a-zA-Z0-9.,;:!?]) {2,}(?=[a-zA-Z0-9])').Count
        if ($spacesFixed -gt 0) {
            $content = $content.Substring(0, $bodyStartIdx) + $fixedBody + $content.Substring($bodyStartIdx + $bodyLen)
            $fixCount += $spacesFixed
            Write-Host ("  Fixed $spacesFixed double spaces in body")
        }
    }
    
    # 5. Also check for lowercase person names in body
    # "retirement" -> "retirement"  (keep lowercase for common nouns)
    # Actually, only fix specific words in titles
    
    # Write back
    $utf8NoBom = New-Object System.Text.UTF8Encoding $false
    [System.IO.File]::WriteAllText($path, $content, $utf8NoBom)
    
    $newLen = $content.Length
    Write-Host ("Done: $name - $fixCount phase 3 fixes (size: $originalLen -> $newLen chars)") -ForegroundColor Green
    Write-Host ""
    $totalFixes += $fixCount
}

Write-Host "========================================" -ForegroundColor Yellow
Write-Host "Phase 3 total fixes: $totalFixes" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Yellow
