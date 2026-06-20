# Deep check blog posts for mojibake/encoding issues
$basePath = 'D:\ahit health\my-visa-assistance\blog'
$files = Get-ChildItem -Path $basePath -Recurse -Filter 'index.html'

function Has-BadBytes($path) {
    $bytes = [System.IO.File]::ReadAllBytes($path)
    $content = [System.Text.Encoding]::UTF8.GetString($bytes)
    
    # Check for actual Euro sign (U+20AC)
    if ($content.Contains([char]0x20AC)) {
        return "Euro sign found"
    }
    
    # Check for $ sign with non-INR context
    if ($content -match '\$\d') {
        return "WARNING: USD $ sign found"
    }
    
    # Check for known broken sequences in the raw bytes
    for ($i = 0; $i -lt $bytes.Length - 5; $i++) {
        # broken rupee pattern
        if ($bytes[$i] -eq 0xC3 -and $bytes[$i+1] -eq 0xA2 -and 
            $bytes[$i+2] -eq 0xE2 -and $bytes[$i+3] -eq 0x82 -and 
            $bytes[$i+4] -eq 0xAC -and $bytes[$i+5] -eq 0xE2) {
            return "BROKEN: mojibake rupee sign at byte $i"
        }
        
        # high-byte chars
        if ($bytes[$i] -eq 0xC3 -and $bytes[$i+1] -eq 0x82) {
            return "POSSIBLE BUG: 0xC3 0x82 at byte $i"
        }
        
        if ($bytes[$i] -eq 0xC3 -and $bytes[$i+1] -eq 0x83) {
            return "POSSIBLE BUG: 0xC3 0x83 at byte $i"
        }
    }
    
    return $null
}

$issuesFound = $false
foreach ($file in $files) {
    if ($file.Directory.Name -eq 'blog') { continue }
    
    $result = Has-BadBytes $file.FullName
    if ($result) {
        Write-Host ("[ISSUE] " + $file.Directory.Name + "/index.html: " + $result)
        $issuesFound = $true
    }
}

if (-not $issuesFound) {
    Write-Host "All blog posts are clean - no mojibake or encoding issues found." -ForegroundColor Green
}
