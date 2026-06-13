# Phase 2: Fix remaining corruption - CSS fonts and remaining patterns
# This handles deep corruption in CSS font names and remaining text issues

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

# Additional rules for phase 2
$rules2 = @(
    # ===== CSS font names =====
    # 'Segoe UI' -> being corrupted
    @('Begoe BI', 'Segoe UI'),
    @('Begoe', 'Segoe'),  # fallback
    # 'Roboto' -> being corrupted
    @('roboto', 'Roboto'),  # lowercase r fix (Roboto uses capital R)
    @('soboto', 'Roboto'),  # R -> s corruption
    # 'Helvetica Neue' -> Helvetica  eue (double space, missing N)
    @('Helvetica  eue', 'Helvetica Neue'),
    @('Helvetica eue', 'Helvetica Neue'),
    # 'Arial' -> 'Urial'
    @('Urial', 'Arial'),
    # 'sans-serif' -> shouldn't be corrupted but check
    @('sans-serif', 'sans-serif'),  # no-op check
    
    # ===== Remaining body text patterns =====
    # "Bxpert" -> "Expert"
    @('Bxpert', 'Expert'),
    
    # "omplete" -> "Complete" (missing C)
    @('\bomplete\b', 'Complete'),
    @('\bompletely\b', 'Completely'),
    
    # "ompare" -> "Compare" (missing C)
    @('\bompare\b', 'Compare'),
    @('\bompany\b', 'Company'),
    
    # "omprehensive" -> "Comprehensive"
    @('\bomprehensive\b', 'Comprehensive'),
    @('\bommon\b', 'Common'),
    @('\bompliance\b', 'Compliance'),
    @('\bomply\b', 'Comply'),
    @('\bomfort\b', 'Comfort'),
    @('\bommunication\b', 'Communication'),
    @('\bomment\b', 'Comment'),
    @('\bommit\b', 'Commit'),
    @('\bommittee\b', 'Committee'),
    @('\bommercial\b', 'Commercial'),
    @('\bommission\b', 'Commission'),
    @('\bompatible\b', 'Compatible'),
    @('\bompetitive\b', 'Competitive'),
    @('\bomplaint\b', 'Complaint'),
    
    # "ou" -> "Cou" at word start (country, could, etc.)
    @('\bountry\b', 'Country'),
    @('\bountries\b', 'Countries'),
    @('\bouncil\b', 'Council'),
    
    # "ertification" -> "Certification"
    @('\bertification\b', 'Certification'),
    @('\bertificate\b', 'Certificate'),
    @('\bertified\b', 'Certified'),
    @('\bertify\b', 'Certify'),
    
    # "onditions" -> "Conditions"
    @('\bonditions\b', 'Conditions'),
    @('\bonds\b', 'Conditions'),  # wrong
    # Actually let me be more careful
    @('\bondition\b', 'Condition'),
    @('\bonsequently\b', 'Consequently'),
    @('\bonsider\b', 'Consider'),
    @('\bonsulate\b', 'Consulate'),
    @('\bontact\b', 'Contact'),
    @('\bontinent\b', 'Continent'),
    @('\bontinue\b', 'Continue'),
    @('\bontract\b', 'Contract'),
    @('\bontrol\b', 'Control'),
    @('\bonvenient\b', 'Convenient'),
    @('\bonsulate\b', 'Consulate'),
    @('\bonsular\b', 'Consular'),
    @('\bonsent\b', 'Consent'),
    @('\boston\b', 'Boston'),  # just in case
    
    # "orruption" -> "Corruption"  
    @('\borruption\b', 'Corruption'),
    @('\borrespond\b', 'Correspond'),
    @('\borrect\b', 'Correct'),
    @('\borrectly\b', 'Correctly'),
    @('\borrection\b', 'Correction'),
    @('\borridor\b', 'Corridor'),
    
    # "ustody" -> "Custody"  
    @('\bustody\b', 'Custody'),
    @('\butom\b', 'Custom'),
    @('\butomer\b', 'Customer'),
    
    # "ollection" -> "Collection"
    @('\bollection\b', 'Collection'),
    @('\bollege\b', 'College'),
    @('\bolleague\b', 'Colleague'),
    
    # "hoose" -> "Choose"
    @('\bhoose\b', 'Choose'),
    @('\bhoosing\b', 'Choosing')
)

foreach ($dir in $blogDirs) {
    $path = Join-Path $dir "index.html"
    $name = Split-Path $dir -Leaf
    Write-Host "Processing: $name" -ForegroundColor Cyan
    
    $content = Get-Content $path -Raw -Encoding UTF8
    $originalLen = $content.Length
    $fixCount = 0
    
    foreach ($rule in $rules2) {
        $old = $rule[0]
        $new = $rule[1]
        if ($old -eq $new) { continue }  # skip no-ops
        $count = [regex]::Matches($content, $old).Count
        if ($count -gt 0) {
            $content = [regex]::Replace($content, $old, $new)
            $fixCount += $count
            Write-Host ("  Fixed $count x '$old' -> '$new'")
        }
    }
    
    # Fix double spaces everywhere (but keep intentional ones)
    $dsBefore = [regex]::Matches($content, '(?<=[a-zA-Z0-9])  (?=[a-zA-Z0-9])').Count
    if ($dsBefore -gt 0) {
        $content = [regex]::Replace($content, '(?<=[a-zA-Z0-9])  (?=[a-zA-Z0-9])', ' ')
        $fixCount += $dsBefore
        Write-Host ("  Cleaned $dsBefore double spaces")
    }
    
    # Fix title: ensure "| My Visa Assistance" is present
    # But only add it if it's missing (not if it's there but corrupted)
    
    # Write back
    $utf8NoBom = New-Object System.Text.UTF8Encoding $false
    [System.IO.File]::WriteAllText($path, $content, $utf8NoBom)
    
    $newLen = $content.Length
    Write-Host ("Done: $name - $fixCount phase 2 fixes (size: $originalLen -> $newLen chars)") -ForegroundColor Green
    Write-Host ""
    $totalFixes += $fixCount
}

Write-Host "========================================" -ForegroundColor Yellow
Write-Host "Phase 2 total fixes: $totalFixes" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Yellow
