# Fix ALL encoding corruption across the site
# Uses byte-level replacement to fix known mojibake patterns

$base = "D:\ahit health\my-visa-assistance"

# Files known to have corruption
$files = @(
    "$base\blog\budget-friendly-schengen-countries\index.html",
    "$base\blog\multi-country-euro-trip-schengen\index.html",
    "$base\blog\schengen-area-guide\index.html",
    "$base\blog\schengen-main-destination-rule\index.html",
    "$base\embassy-address\index.html",
    "$base\upcoming-events\index.html",
    "$base\visa-guide\australia-visa\index.html"
)

# Define fixes: each is a hashtable with Corrupted (byte[]) and Replacement (string)
$fixList = @()

# Fix 1: Single-level em dash corruption
# Bytes: C3 A2 E2 82 AC E2 80 9D  (text: â+E2+82+AC+E2+80+9D)
# Original: em dash (U+2014)
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0xA2, 0xE2, 0x82, 0xAC, 0xE2, 0x80, 0x9D); Replacement = [char]0x2014 }

# Fix 2: Single-level em dash variant (left double quote ending)
# Bytes: C3 A2 E2 82 AC E2 80 9C
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0xA2, 0xE2, 0x82, 0xAC, 0xE2, 0x80, 0x9C); Replacement = [char]0x2014 }

# Fix 3: Single-level euro sign corruption
# Bytes: C3 A2 E2 80 9A C2 AC  (text: â+E2+80+9A+C2+AC)
# Original: euro sign (U+20AC)
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0xA2, 0xE2, 0x80, 0x9A, 0xC2, 0xAC); Replacement = [char]0x20AC }

# Fix 4: Single-level rupee sign corruption
# Bytes: C3 A2 E2 80 9A C2 B9  (text: â+E2+80+9A+C2+B9)
# Original: rupee sign (U+20B9)
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0xA2, 0xE2, 0x80, 0x9A, 0xC2, 0xB9); Replacement = [char]0x20B9 }

# Fix 5: Single-level degree corruption (misc)
# Bytes: C3 A2 E2 80 B0 CB 86
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0xA2, 0xE2, 0x80, 0xB0, 0xCB, 0x86); Replacement = " " }

# Fix 6: Double-level em dash corruption
# Bytes: C3 83 C2 A2 C3 A2 E2 80 9A C2 AC C3 A2 E2 82 AC C2 9D
# 18 bytes total - double-corrupted em dash
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0x83, 0xC2, 0xA2, 0xC3, 0xA2, 0xE2, 0x80, 0x9A, 0xC2, 0xAC, 0xC3, 0xA2, 0xE2, 0x82, 0xAC, 0xC2, 0x9D); Replacement = (" " + [char]0x2014 + " ") }

# Fix 7: Variant double-level corruption (australia-visa)
# Bytes: C3 83 C2 A2 C3 A2 E2 80 9A C2 AC 22 C2 9D
# 14 bytes total - note the 0x22 (regular double quote) in the middle
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0x83, 0xC2, 0xA2, 0xC3, 0xA2, 0xE2, 0x80, 0x9A, 0xC2, 0xAC, 0x22, 0xC2, 0x9D); Replacement = (" " + [char]0x2014 + " ") }

# Fix 8: Quad corruption variant (australia-visa)
# Bytes: C3 83 C2 A2 22 C2 A0 27
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0x83, 0xC2, 0xA2, 0x22, 0xC2, 0xA0, 0x27); Replacement = (" " + [char]0x2014 + " ") }

# Fix 9: Alternative double-level corruption (embassy-address, upcoming-events)
# Bytes: C3 83 C2 A2 E2 82 AC C3 A2 E2 82 AC C2 9D 20
# Text: Ã+¢+€+â+€++space
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0x83, 0xC2, 0xA2, 0xE2, 0x82, 0xAC, 0xC3, 0xA2, 0xE2, 0x82, 0xAC, 0xC2, 0x9D, 0x20); Replacement = (" " + [char]0x2014 + " ") }

# Fix 10: Alternative variant for australia-visa
# Bytes: C3 83 C2 A2 E2 82 AC 22 C2 9D 20
$fixList += @{ Corrupted = [byte[]]@(0xC3, 0x83, 0xC2, 0xA2, 0xE2, 0x82, 0xAC, 0x22, 0xC2, 0x9D, 0x20); Replacement = (" " + [char]0x2014 + " ") }

$totalFixed = 0

foreach ($filePath in $files) {
    if (-not (Test-Path $filePath)) {
        Write-Host "SKIP: File not found: $filePath"
        continue
    }
    
    $bytes = [System.IO.File]::ReadAllBytes($filePath)
    $originalLen = $bytes.Length
    $modified = $false
    
    foreach ($fix in $fixList) {
        $corrupted = $fix.Corrupted
        $replStr = $fix.Replacement
        $replBytes = [System.Text.Encoding]::UTF8.GetBytes($replStr)
        $corrLen = $corrupted.Length
        
        # Find and replace all occurrences
        $result = New-Object System.Collections.Generic.List[byte]
        $i = 0
        $count = 0
        while ($i -le $bytes.Length - $corrLen) {
            $match = $true
            for ($j = 0; $j -lt $corrLen; $j++) {
                if ($bytes[$i + $j] -ne $corrupted[$j]) {
                    $match = $false
                    break
                }
            }
            if ($match) {
                $result.AddRange($replBytes)
                $i += $corrLen
                $count++
                $modified = $true
            } else {
                $result.Add($bytes[$i])
                $i++
            }
        }
        while ($i -lt $bytes.Length) {
            $result.Add($bytes[$i])
            $i++
        }
        $bytes = $result.ToArray()
        if ($count -gt 0) {
            $hex = [System.BitConverter]::ToString($corrupted)
            Write-Host ("  Fixed $count occurrence(s) of " + $hex.Substring(0, [Math]::Min(23, $hex.Length)) + "...")
        }
    }
    
    if ($modified) {
        [System.IO.File]::WriteAllBytes($filePath, $bytes)
        $totalFixed++
        Write-Host ("FIXED: " + $filePath + " (was $originalLen bytes, now " + $bytes.Length + " bytes)")
    } else {
        Write-Host ("CLEAN: " + $filePath)
    }
}

Write-Host ("`nDone! $totalFixed of " + $files.Count + " files modified.")

# ===== VERIFICATION =====
Write-Host "`n=== VERIFICATION ==="
foreach ($f in $files) {
    $content = [System.IO.File]::ReadAllText($f, [System.Text.Encoding]::UTF8)
    $hasCorruption = $false
    if ($content.Contains([char]0x00C3) -and $content.Contains([char]0x00A2)) {
        # Check if combined in pattern
        $idx = $content.IndexOf([char]0x00C3)
        while ($idx -ge 0 -and $idx -lt $content.Length - 3) {
            if ($idx -lt $content.Length - 1 -and $content[$idx+1] -eq [char]0x00A2) {
                $hasCorruption = $true
                break
            }
            $idx = $content.IndexOf([char]0x00C3, $idx + 1)
        }
    }
    if ($hasCorruption) {
        Write-Host ("  WARNING: Still has corruption markers: " + $f)
    } else {
        Write-Host ("  OK: " + $f)
    }
}

Write-Host "`n=== Checking ALL files for Ã¢ patterns ==="
Get-ChildItem $base -Filter '*.html' -Recurse | ForEach-Object {
    $c = Select-String -Path $_.FullName -Pattern 'Ã¢' -SimpleMatch | Measure-Object
    if ($c.Count -gt 0) { Write-Host ("  REMAINING: " + $c.Count + " matches in " + $_.FullName) }
}
