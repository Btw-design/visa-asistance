$path = 'D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process\index.html'
$lines = Get-Content -Path $path -Encoding UTF8
for ($i = 0; $i -lt $lines.Count; $i++) {
    if ($lines[$i] -match "[\x{20AC}]") {
        Write-Host ("Line $($i+1): " + $lines[$i].Trim())
        break
    }
}
