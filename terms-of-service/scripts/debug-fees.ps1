$c = [io.file]::ReadAllText('D:\ahit health\my-visa-assistance\visa-guide\usa-visa\index.html')
$searchStr = '              <tr><td>Tourist Visa (Standard)</td><td>Varies by nationality</td></tr>'
$searchStr2 = "              <tr><td>Tourist Visa (Standard)</td><td>Varies by nationality</td></tr>"

Write-Host "Search 1 (single quotes):" $c.Contains($searchStr)
Write-Host "Search 2 (double quotes):" $c.Contains($searchStr2)

# Check the actual content around the fee table
$idx = $c.IndexOf("Tourist Visa")
Write-Host "Index of Tourist Visa:" $idx
if ($idx -ge 0) {
    Write-Host "Context (100 chars before to 200 after):"
    $start = [Math]::Max(0, $idx - 100)
    Write-Host $c.Substring($start, [Math]::Min(300, $c.Length - $start))
}

# Check what comes after the fee rows
$idx2 = $c.IndexOf("Express/Priority")
Write-Host "`nIndex of Express/Priority:" $idx2
if ($idx2 -ge 0) {
    Write-Host "Context after Express/Priority:"
    Write-Host $c.Substring($idx2, 150)
}

Write-Host "`n=== Testing the exact join pattern ==="
$oldGuideFees = @(
    '              <tr><td>Tourist Visa (Standard)</td><td>Varies by nationality</td></tr>',
    '              <tr><td>Business Visa</td><td>Varies by nationality</td></tr>',
    '              <tr><td>Student Visa</td><td>Varies by nationality</td></tr>',
    '              <tr><td>Express/Priority Processing</td><td>Additional fee applies</td></tr>'
) -join "`r`n"

Write-Host "Joined pattern length:" $oldGuideFees.Length
Write-Host "File contains joined:" $c.Contains($oldGuideFees)

# Maybe the last row has different text?
$idx3 = $c.IndexOf("Express/Priority")
if ($idx3 -ge 0) {
    Write-Host "`nActual content around Express/Priority:"
    Write-Host $c.Substring($idx3, 100)
}
