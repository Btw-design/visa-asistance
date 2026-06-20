$path = 'D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process\index.html'
$bytes = [System.IO.File]::ReadAllBytes($path)

# Find the 'Ã¢' pattern (looking for C3 A2 bytes)
$found = $false
for ($i = 0; $i -lt $bytes.Length - 1; $i++) {
    if ($bytes[$i] -eq 0xC3 -and $bytes[$i+1] -eq 0xA2) {
        # Show context
        $start = [Math]::Max(0, $i - 10)
        $end = [Math]::Min($bytes.Length - 1, $i + 20)
        $ctxBytes = [byte[]]($bytes[$start..$end])
        $hex = [System.BitConverter]::ToString($ctxBytes)
        Write-Host ("'ã' at byte $i : $hex")
        $text = [System.Text.Encoding]::UTF8.GetString($ctxBytes)
        Write-Host ("  Text: $text")
        $found = $true
    }
}

if (-not $found) {
    Write-Host "No C3 A2 bytes found in file"
}

# Also find 'ss.' pattern
$content = Get-Content -Path $path -Raw -Encoding UTF8
$lines = $content -split "`n"
for ($l = 0; $l -lt $lines.Count; $l++) {
    if ($lines[$l] -match 'ss\.') {
        Write-Host ("Line $($l+1): " + $lines[$l].Trim())
    }
}
