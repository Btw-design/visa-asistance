$path = 'D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process\index.html'
$bytes = [System.IO.File]::ReadAllBytes($path)

# Find the 'Ã' char (0xC3 0x83)
$found = $false
for ($i = 0; $i -lt $bytes.Length - 1; $i++) {
    if ($bytes[$i] -eq 0xC3 -and ($bytes[$i+1] -eq 0x83 -or $bytes[$i+1] -eq 0xA2)) {
        $start = [Math]::Max(0, $i - 5)
        $end = [Math]::Min($bytes.Length - 1, $i + 10)
        $ctxBytes = [byte[]]($bytes[$start..$end])
        $hex = [System.BitConverter]::ToString($ctxBytes)
        Write-Host ("Found at byte $i : $hex")
        try {
            $text = [System.Text.Encoding]::UTF8.GetString($ctxBytes)
            Write-Host ("  Text: " + $text.Replace("`n"," ").Replace("`r"," "))
        } catch {}
        $found = $true
    }
}

if (-not $found) {
    Write-Host "No C3 83 or C3 A2 bytes found in file"
}

# Search by content text directly
$text = [System.Text.Encoding]::UTF8.GetString($bytes)
if ($text.Contains([char]0x00C3)) {
    Write-Host "Contains Ã (U+00C3)"
}
if ($text.Contains([char]0x00E2)) {
    Write-Host "Contains â (U+00E2)"
}
if ($text.Contains([char]0x00A2)) {
    Write-Host "Contains ¢ (U+00A2)"
}

# Find all non-ASCII characters
for ($i = 0; $i -lt $text.Length; $i++) {
    $c = $text[$i]
    if ($c -gt 127) {
        Write-Host ("Non-ASCII: U+$([int]$c.ToString('X4')) at position $i, context: ..." + $text[([Math]::Max(0, $i-3))..([Math]::Min($text.Length-1, $i+3))] -join '')
        break  # Just show first one
    }
}
