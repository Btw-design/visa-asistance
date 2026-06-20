$files = @(
    'D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process\index.html',
    'D:\ahit health\my-visa-assistance\blog\us-visa-interview-tips-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\visa-document-checklist-2026\index.html'
)

foreach ($fullPath in $files) {
    $lines = Get-Content -Path $fullPath -Encoding UTF8
    Write-Host ("=== " + (Split-Path (Split-Path $fullPath) -Leaf) + " ===")
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match 'ss\.') {
            Write-Host ("Line $($i+1): " + $lines[$i].Trim())
        }
    }
}
