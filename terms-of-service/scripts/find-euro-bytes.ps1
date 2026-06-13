$path = 'D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process\index.html'
$bytes = [System.IO.File]::ReadAllBytes($path)

# Find a euro sign (0xE2 0x82 0xAC in UTF-8)
for ($i = 0; $i -lt $bytes.Length - 2; $i++) {
    if ($bytes[$i] -eq 0xE2 -and $bytes[$i+1] -eq 0x82 -and $bytes[$i+2] -eq 0xAC) {
        Write-Host ("Found euro sign at byte $i")
        $start = [Math]::Max(0, $i - 10)
        $end = [Math]::Min($bytes.Length - 1, $i + 30)
        $hex = [System.BitConverter]::ToString($bytes[$start..$end])
        Write-Host ("Surrounding bytes: $hex")
        
        # Also show as text
        $text = [System.Text.Encoding]::UTF8.GetString($bytes, $start, ($end - $start + 1))
        Write-Host ("As text: $text")
    }
}
