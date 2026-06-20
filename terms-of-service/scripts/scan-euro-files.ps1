$basePath = 'D:\ahit health\my-visa-assistance\blog'
$files = @(
    'india-e-visa-application-process\index.html',
    'schengen-visa-complete-guide-2026\index.html',
    'uk-visa-processing-times-2026\index.html',
    'us-visa-interview-tips-2026\index.html',
    'visa-document-checklist-2026\index.html'
)

$corruptedPattern = @(0xC3, 0xA2, 0xE2, 0x80, 0x9A, 0xC2, 0xAC, 0xC3, 0xA2, 0xE2, 0x82, 0xAC, 0xC2, 0x9D, 0x20)

foreach ($relPath in $files) {
    $fullPath = Join-Path $basePath $relPath
    $bytes = [System.IO.File]::ReadAllBytes($fullPath)
    
    $count = 0
    for ($i = 0; $i -le $bytes.Length - $corruptedPattern.Length; $i++) {
        $isMatch = $true
        for ($j = 0; $j -lt $corruptedPattern.Length; $j++) {
            if ($bytes[$i + $j] -ne $corruptedPattern[$j]) {
                $isMatch = $false
                break
            }
        }
        if ($isMatch) { $count++ }
    }
    
    $euroCount = 0
    for ($i = 0; $i -le $bytes.Length - 3; $i++) {
        if ($bytes[$i] -eq 0xE2 -and $bytes[$i+1] -eq 0x82 -and $bytes[$i+2] -eq 0xAC) { $euroCount++ }
    }
    
    $fileInfo = Get-Item $fullPath
    Write-Host ("$relPath : $($fileInfo.Length) bytes, corruptedPattern=$count, euroSign=$euroCount")
}
