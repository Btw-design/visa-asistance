$files = @(
    'D:\ahit health\my-visa-assistance\blog\us-visa-interview-tips-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\visa-document-checklist-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process\index.html',
    'D:\ahit health\my-visa-assistance\blog\schengen-visa-complete-guide-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\thailand-visa-options-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\uk-visa-processing-times-2026\index.html'
)

$fixes = @(
    # us-visa specific
    @('BB visa', 'US visa'),
    @('the BB', 'the US'),
    @(' a walk', ' can walk'),
    @('seep ', 'Keep '),
    @('2185 ss.', 'Rs. 2,185'),
    
    # schengen/document specific  
    @('Bchengen', 'Schengen'),
    @('Yandatory', 'Mandatory'),
    @('Btrongly', 'Strongly'),
    @('Us a general', 'As a general'),
    
    # ss. -> Rs. (but NOT "success" or legitimate words)
    @('ss.  30,000', 'Rs. 30,000'),
    @('ss.  50-100', 'EUR 50-100'),
    @('ss.  30s', 'Rs. 30K'),
    @('ss.  )', 'Rs. )'),
    @('ss. <', 'Rs. <'),
    @('ss.</', 'Rs.</'),
    @(' "ss.', ' "Rs.'),
    @('\bss\. \d', 'Rs. '),  # ss. followed by space+digit -> Rs. (careful with regex)
    
    # remaining letter fixes
    @(' a India', ' an India'),
    @(' a official', ' an official'),
    @(' a online', ' an online'),
    @(' a important', ' an important'),
    @('\ba\b([\s]+[aeiou])', 'an$1'),
    
    # H -> T (remaining)
    @('Hotal', 'Total'),
    @('Hime', 'Time'),
    @('Hicket', 'Ticket'),
    @('Hravel', 'Travel'),
    @('Hrain', 'Train'),
    @('Hower', 'Power'),
    @('Hable', 'Table'),
    
    # B -> S/E/U (remaining)
    @('Bchool', 'School'),
    @('Bpace', 'Space'),
    @('Bpecific', 'Specific'),
    @('Bpend', 'Spend'),
    @('Bpecial', 'Special'),
    
    # s at start -> R (remaining)
    @('seady', 'Ready'),
    @('secently', 'Recently'),
    @('sequire', 'Require'),
    @('sequirement', 'Requirement'),
    
    # Y -> M (remaining)
    @('Ynline', 'Moline'),
    @('Yanagement', 'Management'),
    @('Yarket', 'Market')
)

foreach ($fullPath in $files) {
    $content = Get-Content -Path $fullPath -Raw -Encoding UTF8
    $orig = $content
    $changes = 0
    
    foreach ($pair in $fixes) {
        $before = $content
        $pattern = $pair[0]
        $replacement = $pair[1]
        
        if ($pattern -match '^\\') {
            # It's a regex pattern
            $content = $content -replace $pattern, $replacement
        } else {
            $content = $content -replace [regex]::Escape($pattern), $replacement
        }
        
        if ($content -ne $before) {
            $changes++
        }
    }
    
    # Extra: fix any remaining ss. patterns that aren't "success" or legitimate words
    $before = $content
    $content = $content -replace '(?<!\w)ss\.(?!\w)', 'Rs.'
    # Wait, this is too aggressive. Let me be more careful.
    # Instead: ss. at the START of a line or after a tag
    $before2 = $content
    $content = $content -replace '(>|^|\s)ss\.(\s)', '${1}Rs.${2}'
    if ($content -ne $before2) { $changes++ }
    
    if ($changes -gt 0) {
        Set-Content -Path $fullPath -Value $content -Encoding UTF8
        Write-Host ("[FIXED] " + (Split-Path (Split-Path $fullPath) -Leaf) + " - $changes changes")
    }
}
