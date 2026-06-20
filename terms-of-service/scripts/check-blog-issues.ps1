# Check blog posts for remaining currency/encoding issues
$basePath = 'D:\ahit health\my-visa-assistance'
$files = Get-ChildItem -Path (Join-Path $basePath 'blog') -Recurse -Filter 'index.html'

foreach ($file in $files) {
    if ($file.Directory.Name -eq 'blog') { continue }
    
    $c = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $issues = @()
    
    # Check for foreign currency symbols/abbreviations
    if ($c -match 'EUR[\s\d]') { $issues += 'EUR' }
    if ($c -match 'USD[\s\d]') { $issues += 'USD' }
    if ($c -match 'PHP[\s\d]') { $issues += 'PHP' }
    if ($c -match 'THB[\s\d]') { $issues += 'THB' }
    if ($c -match 'SGD[\s\d]') { $issues += 'SGD' }
    if ($c -match 'CHF[\s\d]') { $issues += 'CHF' }
    if ($c -match 'GBP[\s\d]') { $issues += 'GBP' }
    if ($c -match 'AUD[\s\d]') { $issues += 'AUD' }
    if ($c -match 'CAD[\s\d]') { $issues += 'CAD' }
    if ($c -match 'NZD[\s\d]') { $issues += 'NZD' }
    if ($c -match 'ZAR[\s\d]') { $issues += 'ZAR' }
    if ($c -match 'KRW[\s\d]') { $issues += 'KRW' }
    if ($c -match 'MYR[\s\d]') { $issues += 'MYR' }
    if ($c -match 'AED[\s\d]') { $issues += 'AED' }
    
    if ($issues.Count -gt 0) {
        Write-Host ("FOREIGN CURRENCY in " + $file.Directory.Name + ": " + ($issues -join ', '))
    }
}

Write-Host "`nCheck complete."
