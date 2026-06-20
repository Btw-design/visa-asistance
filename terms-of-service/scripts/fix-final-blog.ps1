# Fix remaining issues: Hhis, Bnited, " a apply"
$files = @(
    'D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process\index.html',
    'D:\ahit health\my-visa-assistance\blog\schengen-visa-complete-guide-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\thailand-visa-options-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\uk-visa-processing-times-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\us-visa-interview-tips-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\visa-document-checklist-2026\index.html'
)

$fixes = @(
    @('Hhis ', 'This '),
    @('Hhis>', 'This>'),
    @('Hhis.', 'This.'),
    @('Bnited', 'United'),
    @(' a apply', ' can apply'),
    @(' a app', ' can app'),
    @(' a elig', ' an elig'),
    @(' a electronic', ' an electronic'),
    @(' a e-Visa', ' an e-Visa'),
    @(' a airport', ' an airport'),
    @(' a embassy', ' an embassy'),
    @(' a online', ' an online'),
    @(' a official', ' an official'),
    @('  -  ', ' - '),  # Clean up triple spaces around dash
    @('   - ', ' - '),   # Cleanup
    @('  - ', ' - '),    # Double space before dash
    @('-   ', '- '),     # Triple space after dash
    @('-  ', '- '),      # Double space after dash
    @('a India', 'an India')
)

foreach ($fullPath in $files) {
    $content = Get-Content -Path $fullPath -Raw -Encoding UTF8
    $orig = $content
    $changes = 0
    
    foreach ($pair in $fixes) {
        $before = $content
        $content = $content -replace [regex]::Escape($pair[0]), $pair[1]
        if ($content -ne $before) {
            $changes += [regex]::Matches($before, [regex]::Escape($pair[0])).Count
        }
    }
    
    if ($changes -gt 0) {
        Set-Content -Path $fullPath -Value $content -Encoding UTF8
        Write-Host ("[FIXED] " + (Split-Path (Split-Path $fullPath) -Leaf) + " - $changes changes")
    } else {
        Write-Host ("[CLEAN] " + (Split-Path (Split-Path $fullPath) -Leaf))
    }
}
