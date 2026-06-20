$basePath = 'D:\ahit health\my-visa-assistance\blog'
$files = Get-ChildItem -Path $basePath -Recurse -Filter 'index.html'

foreach ($file in $files) {
    if ($file.Directory.Name -eq 'blog') { continue }
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    
    $issues = @()
    if ($content -match 'Hhe') { $issues += 'Hhe->The' }
    if ($content -match 'Yust') { $issues += 'Yust->Must' }
    if ($content -match 'JHBB') { $issues += 'JHBB->JPEG' }
    if ($content -match 'Bcanned') { $issues += 'Bcanned->Scanned' }
    if ($content -match 'Bmail') { $issues += 'Bmail->Email' }
    if ($content -match 'HDF\b') { $issues += 'HDF->PDF' }
    if ($content -match 'Hage') { $issues += 'Hage->Page' }
    if ($content -match 'ss\.') { $issues += 'ss.->Rs.' }
    if ($content -match 'U5D549') { $issues += 'U5D549->A5D549' }
    if ($content -match 'secent') { $issues += 'secent->Recent' }
    if ($content -match 'seturn') { $issues += 'seturn->Return' }
    
    if ($issues.Count -gt 0) {
        Write-Host ("[DAMAGED] " + $file.Directory.Name + ": " + ($issues -join ', '))
    } else {
        Write-Host ("[CLEAN] " + $file.Directory.Name)
    }
}
