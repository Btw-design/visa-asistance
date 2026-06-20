# Fix remaining blog corruption
# The "Ã¢" in the file is bytes: C3 83 C2 A2 (two characters: Ã and ¢)
# These should be replaced with " - " (corrupted list markers)
# Also fix remaining word-level corruption

$files = @(
    'D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process\index.html',
    'D:\ahit health\my-visa-assistance\blog\schengen-visa-complete-guide-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\thailand-visa-options-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\uk-visa-processing-times-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\us-visa-interview-tips-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\visa-document-checklist-2026\index.html'
)

$extraFixes = @(
    # Fix the corrupted Ã¢ (C3 83 C2 A2) -> " - "
    @([char]0x00C3, ' - '),
    @([char]0x00A2, ' '),  # The ¢ after Ã becomes trailing space
    
    # Remaining word-level corruption
    @('can embassy', 'an embassy'),
    @('can airport', 'an airport'),
    @('can e-Visa', 'an e-Visa'),
    @('can eligible', 'an eligible'),
    @('can ', 'a '),
    @(' an ', ' an '),  # Keep "an" when not preceded by "c"
    @('<th>ss. ', '<th>Rs. '),
    @('ss. )', 'Rs. )'),
    @(' itizens', 'Citizens'),
    @(' anada', 'Canada'),
    @('Canadaaba', 'Canada'),
    @('CChennai', 'Chennai'),
    @('Uustralia', 'Australia'),
    @('Buide', 'Guide'),
    @('300sB', '300KB'),
    @('JHBB', 'JPEG'),
    @('Bubmit', 'Submit'),
    @('seceive', 'Receive'),
    @(' ote', ' Note'),
    @(' heck', ' Check'),
    @(' omplete', ' Complete'),
    @('Bntry', 'Entry'),
    @('Btates', 'States'),
    @('  he', ' he'),
    @('Upply', 'Apply'),
    @('Hurpose', 'Purpose'),
    @('Uustralia', 'Australia'),
    @('Hrocessing', 'Processing'),
    @('Btandard Hime', 'Standard Time'),
    @('Hag', 'Pag'),
    @('Hassport', 'Passport'),
    @('Hotal', 'Total'),
    @('  ay', ' ay'),
    @('  he', ' he'),
    @('seturn', 'Return'),
    @('secent', 'Recent'),
    @('sequired', 'Required'),
    @('singdom', 'Kingdom'),
    @('sorea', 'Korea')
)

foreach ($fullPath in $files) {
    # First, byte-level fix: replace C3 83 C2 A2 with " - "
    $bytes = [System.IO.File]::ReadAllBytes($fullPath)
    $pattern = [byte[]]@(0xC3, 0x83, 0xC2, 0xA2)  # Ã¢
    $replace = [byte[]]@(0x20, 0x2D, 0x20)  # " - "
    
    $newBytes = New-Object System.Collections.Generic.List[byte]
    $i = 0
    $byteChanges = 0
    while ($i -lt $bytes.Length) {
        $matched = $false
        if ($i -le $bytes.Length - $pattern.Length) {
            $isMatch = $true
            for ($j = 0; $j -lt $pattern.Length; $j++) {
                if ($bytes[$i+$j] -ne $pattern[$j]) { $isMatch = $false; break }
            }
            if ($isMatch) {
                foreach ($b in $replace) { $newBytes.Add($b) }
                $i += $pattern.Length
                $byteChanges++
                $matched = $true
                continue
            }
        }
        $newBytes.Add($bytes[$i])
        $i++
    }
    
    if ($byteChanges -gt 0) {
        [System.IO.File]::WriteAllBytes($fullPath, $newBytes.ToArray())
        Write-Host ("[BYTE FIX] " + (Split-Path $fullPath -Leaf) + " - Fixed $byteChanges Ã¢ patterns")
    }
    
    # Then, text-level fixes
    $content = Get-Content -Path $fullPath -Raw -Encoding UTF8
    $orig = $content
    $changeCount = 0
    
    foreach ($pair in $extraFixes) {
        $before = $content
        $content = $content -replace [regex]::Escape($pair[0]), $pair[1]
        if ($content -ne $before) {
            $changeCount += [regex]::Matches($before, [regex]::Escape($pair[0])).Count
        }
    }
    
    if ($changeCount -gt 0 -or $byteChanges -gt 0) {
        Set-Content -Path $fullPath -Value $content -Encoding UTF8
        Write-Host ("[TEXT FIX] " + (Split-Path $fullPath -Leaf) + " - $changeCount text replacements")
    }
}

Write-Host "`nDone!"
