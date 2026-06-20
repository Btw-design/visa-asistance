# Fix encoding corruption in 6 original blog posts
# Strategy: Split file into CSS (preserved), metadata/structured data, and body text.
# Apply targeted word-level replacements only in visible text content.

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

# Replacement rules: ordered from most specific to least specific
# Each rule is [old, new] - uses regex for word-aware matching
$rules = @(
    # ===== CHARSET & ENCODING =====
    @('charset="BHF-8"', 'charset="UTF-8"'),
    
    # ===== BRAND NAME =====
    @('Yy Visa Usistance', 'My Visa Assistance'),  # variant
    @('Yy Visa Ussistance', 'My Visa Assistance'),  # main corruption
    @('Yy Visa', 'My Visa'),
    @('Yy Vis', 'My Vis'),  # in truncated title
    
    # ===== STRUCTURED DATA (JSON-LD) =====
    @('"name": "Yy', '"name": "My'),
    @('"publisher": { "@type": "Organization", "name": "Yy', '"publisher": { "@type": "Organization", "name": "My'),
    
    # ===== FIX: corrupted word "Ussistance" -> "Assistance" =====
    @('\bUssistance\b', 'Assistance'),
    @('\busistance\b', 'assistance'),  # lowercase variant
    
    # ===== FIX: corrupted word "Bs" -> "UK" =====
    @('\bBs\b', 'UK'),
    
    # ===== FIX: Hh -> Th (only at word start, 'Hh' never valid in English) =====
    @('\bHh', 'Th'),
    
    # ===== FIX: Hr -> Pr at word start (Hriority, Hrocess, etc.) =====
    @('\bHr', 'Pr'),
    
    # ===== FIX: Hip -> Tip at word start =====
    @('\bHip(?=[se\s,:;.!?])', 'Tip'),
    
    # ===== FIX: Bet -> Get =====
    @('\bBet\b', 'Get'),
    
    # ===== FIX: Bu -> Su at word start (Bucceed, Buccessful) =====
    @('\bBu', 'Su'),
    
    # ===== FIX: Upp -> App at word start (Upplication, Upproach) =====
    @('\bUpp(?=lication|roach|rove|roval|ly\b)', 'App'),  # Upplication->Application, Upproach->Approach
    
    # ===== FIX: specific word "WhatsUpp" -> "WhatsApp" =====
    @('WhatsUpp', 'WhatsApp'),
    
    # ===== FIX: Bss -> Ess at word start (Bssential) =====
    @('\bBss', 'Ess'),
    
    # ===== FIX: eed -> need (as standalone word) =====
    @('\beed\b', 'need'),
    @('\bEed\b', 'Need'),
    
    # ===== FIX: setirement -> retirement (specific word, not general "set") =====
    @('\bsetirement\b', 'retirement'),
    @('\bSetirement\b', 'Retirement'),
    @('\bsetired\b', 'retired'),
    @('\bSetired\b', 'Retired'),
    @('\bsetire\b', 'retire'),
    @('\bSetire\b', 'Retire'),
    
    # ===== FIX: omad -> Nomad =====
    @('\bomad\b', 'Nomad'),
    @('\bOmad\b', 'Nomad'),
    
    # ===== FIX: Uvailable -> Available =====
    @('\bUvailable\b', 'Available'),
    
    # ===== FIX: Tou -> You, Tour -> Your =====
    @('\bTou\b', 'You'),
    @('\bTour\b(?!\s+guide)', 'Your'),  # "Your" not "Tour guide" (keep "Tour" as valid word)
    # Actually let me be more careful: only "Tour" at start followed by words suggesting possession
    @('\bTour visa\b', 'Your visa'),
    @('\bTour application\b', 'Your application'),
    @('\bTour document\b', 'Your document'),
    @('\bTour travel\b', 'Your travel'),
    @('\bTour passport\b', 'Your passport'),
    @('\bTour trip\b', 'Your trip'),
    @('\bTour stay\b', 'Your stay'),
    @('\bTour journey\b', 'Your journey'),
    @('\bTour eligibilit\b', 'Your eligibilit'),  # Your eligibility
    @('\bTour chances\b', 'Your chances'),
    @('\bTour guide\b', 'Your guide'),
    @('\bTour next\b', 'Your next'),
    @('\bTour first\b', 'Your first'),
    @('\bTour own\b', 'Your own'),
    @('\bTour best\b', 'Your best'),
    
    # ===== FIX: general cleanup =====
    @('Myy\b', 'My'),
    @('\bMy (\w+) Assistance', 'My Visa Assistance'),  # catch "My X Assistance" -> "My Visa Assistance"
    
    # ===== FIX: "sequest" -> "request" =====
    @('\bsequest\b', 'request'),
    @('\bSequest\b', 'Request')
)

foreach ($dir in $blogDirs) {
    $path = Join-Path $dir "index.html"
    $name = Split-Path $dir -Leaf
    Write-Host "Processing: $name" -ForegroundColor Cyan
    
    $content = Get-Content $path -Raw -Encoding UTF8
    $originalLen = $content.Length
    
    # Split: preserve CSS section untouched
    $styleRegex = [regex]'(<style[^>]*>)(.*?)(</style>)'
    $styleMatch = $styleRegex.Match($content)
    
    if ($styleMatch.Success) {
        $cssPart = $styleMatch.Groups[2].Value  # CSS content (preserved)
        $nonCssBefore = $content.Substring(0, $styleMatch.Index)
        $nonCssAfter = $content.Substring($styleMatch.Index + $styleMatch.Length)
        
        # Fix only non-CSS parts
        $fixedBefore = $nonCssBefore
        $fixedAfter = $nonCssAfter
        $ruleCount = 0
        
        foreach ($rule in $rules) {
            $old = $rule[0]
            $new = $rule[1]
            
            # Count in before section
            $beforeCount = [regex]::Matches($fixedBefore, $old).Count
            if ($beforeCount -gt 0) {
                $fixedBefore = [regex]::Replace($fixedBefore, $old, $new)
                $ruleCount += $beforeCount
            }
            
            # Count in after section
            $afterCount = [regex]::Matches($fixedAfter, $old).Count
            if ($afterCount -gt 0) {
                $fixedAfter = [regex]::Replace($fixedAfter, $old, $new)
                $ruleCount += $afterCount
            }
        }
        
        # Reconstruct: CSS preserved, everything else fixed
        $content = $fixedBefore + $styleMatch.Groups[1].Value + $cssPart + $styleMatch.Groups[3].Value + $fixedAfter
        $fixCount = $ruleCount
    } else {
        # No CSS section found - apply to full file
        $fixCount = 0
        foreach ($rule in $rules) {
            $old = $rule[0]
            $new = $rule[1]
            $count = [regex]::Matches($content, $old).Count
            if ($count -gt 0) {
                $content = [regex]::Replace($content, $old, $new)
                $fixCount += $count
            }
        }
    }
    
    # Write back with UTF-8 encoding without BOM
    $utf8NoBom = New-Object System.Text.UTF8Encoding $false
    [System.IO.File]::WriteAllText($path, $content, $utf8NoBom)
    
    $newLen = $content.Length
    Write-Host ("  Fixed $fixCount issues (size: $originalLen -> $newLen chars)") -ForegroundColor Green
    Write-Host ""
    $totalFixes += $fixCount
}

Write-Host "========================================" -ForegroundColor Yellow
Write-Host "Total fixes across all files: $totalFixes" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Yellow
