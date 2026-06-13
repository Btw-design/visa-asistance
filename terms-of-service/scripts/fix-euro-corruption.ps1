param(
    [string]$FilePath,
    [switch]$Fix
)

# The corrupted euro sign pattern (UTF-8 bytes for the garbled sequence â,¬â€?)
$corruptedPattern = [byte[]]@(0xC3, 0xA2, 0xE2, 0x80, 0x9A, 0xC2, 0xAC, 0xC3, 0xA2, 0xE2, 0x82, 0xAC, 0xC2, 0x9D, 0x20)
$dashReplace = [byte[]]@(0x20, 0x2D, 0x20)  # " - "

# Standalone euro sign € (E2 82 AC)
$euroPattern = [byte[]]@(0xE2, 0x82, 0xAC)
$rsReplace = [byte[]]@(0x52, 0x73, 0x2E)  # "Rs."

$bytes = [System.IO.File]::ReadAllBytes($FilePath)

# Find all match positions
$positions = New-Object System.Collections.Generic.List[int]
$euroPositions = New-Object System.Collections.Generic.List[int]

$i = 0
while ($i -le $bytes.Length - $corruptedPattern.Length) {
    $isMatch = $true
    for ($j = 0; $j -lt $corruptedPattern.Length; $j++) {
        if ($bytes[$i + $j] -ne $corruptedPattern[$j]) { $isMatch = $false; break }
    }
    if ($isMatch) {
        $positions.Add($i)
        $i += $corruptedPattern.Length
    } else {
        $i++
    }
}

# Find standalone euro signs (not part of the larger pattern)
$i = 0
while ($i -le $bytes.Length - 3) {
    # Skip if this position is part of a larger corrupted pattern
    $skip = $false
    foreach ($p in $positions) {
        if ($i -ge $p -and $i -lt ($p + $corruptedPattern.Length)) { $skip = $true; break }
    }
    if (-not $skip -and $bytes[$i] -eq 0xE2 -and $bytes[$i+1] -eq 0x82 -and $bytes[$i+2] -eq 0xAC) {
        $euroPositions.Add($i)
        $i += 3
    } else {
        $i++
    }
}

$total = $positions.Count + $euroPositions.Count

if ($total -eq 0) {
    Write-Host ("[CLEAN] " + $FilePath + " - No issues found")
    return
}

if (-not $Fix) {
    Write-Host ("[ISSUES] " + $FilePath + " - $total issues ($($positions.Count) corrupted pattern, $($euroPositions.Count) standalone euro)")
    return
}

# Build the new byte array
$newBytes = New-Object System.Collections.Generic.List[byte]
$posIdx = 0
$euroIdx = 0
$i = 0

while ($i -lt $bytes.Length) {
    # Check if we're at a corrupted pattern position
    if ($posIdx -lt $positions.Count -and $i -eq $positions[$posIdx]) {
        foreach ($b in $dashReplace) { $newBytes.Add($b) }
        $i += $corruptedPattern.Length
        $posIdx++
        continue
    }
    # Check if we're at a standalone euro position
    if ($euroIdx -lt $euroPositions.Count -and $i -eq $euroPositions[$euroIdx]) {
        foreach ($b in $rsReplace) { $newBytes.Add($b) }
        $i += 3
        $euroIdx++
        continue
    }
    $newBytes.Add($bytes[$i])
    $i++
}

[System.IO.File]::WriteAllBytes($FilePath, $newBytes.ToArray())
Write-Host ("[FIXED] " + $FilePath + " - Fixed $total issues ($($positions.Count) corrupted pattern, $($euroPositions.Count) standalone euro)")
