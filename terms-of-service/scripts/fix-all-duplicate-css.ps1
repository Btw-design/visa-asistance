# Fix Script: Remove all duplicate CSS blocks from every HTML page
$ErrorActionPreference = 'Stop'
$basePath = 'D:\ahit health\my-visa-assistance'

function Remove-DuplicateCriticalCSS {
    param([string]$content)
    $pattern = '<style>:root{--color-primary:#171299'
    $firstIndex = $content.IndexOf($pattern)
    if ($firstIndex -eq -1) { return $content }
    
    $secondIndex = $content.IndexOf($pattern, $firstIndex + 10)
    if ($secondIndex -eq -1) { return $content }
    
    $closeTag = '</style>'
    $closeIndex = $content.IndexOf($closeTag, $secondIndex)
    if ($closeIndex -eq -1) { return $content }
    
    $removeStart = $secondIndex
    $removeEnd = $closeIndex + $closeTag.Length
    
    Write-Host "  Removed duplicate critical CSS ($($removeEnd - $removeStart) bytes)"
    return $content.Substring(0, $removeStart) + $content.Substring($removeEnd)
}

function Remove-DuplicateContentCSS {
    param([string]$content)
    $positions = @()
    $searchFrom = 0
    while ($true) {
        $styleStart = $content.IndexOf('<style>', $searchFrom)
        if ($styleStart -eq -1) { break }
        $styleEnd = $content.IndexOf('</style>', $styleStart)
        if ($styleEnd -eq -1) { break }
        $blockContent = $content.Substring($styleStart, $styleEnd - $styleStart + 8)
        if ($blockContent -match '\.update-bar') {
            $positions += ,@($styleStart, $styleEnd + 8)
        }
        $searchFrom = $styleEnd + 8
    }
    
    if ($positions.Count -le 1) { return $content }
    $last = $positions[-1]
    Write-Host "  Removed duplicate content CSS ($($last[1] - $last[0]) bytes)"
    return $content.Substring(0, $last[0]) + $content.Substring($last[1])
}

function Fix-BrokenEncoding {
    param([string]$content)
    $original = $content
    
    # Fix common broken Unicode sequences (byte level)
    # These are UTF-8 bytes being read as Latin-1/Win-1252
    # \u20B9 (INR Rupee sign) = E2 82 B9 in UTF-8 -> appears as broken chars
    
    # Replace specific patterns found in blog
    $replacements = @(
        # Broken rupee/euro signs
        @('aA A A', 'Rs. '),
        @('aA-SA', 'Rs. '),
        # Known broken sequences as literal strings
        @([char]0xE2 + [char]0x82 + [char]0xAC,  'Rs. '),  # Euro sign corrupted
        @('EUR', 'Rs. '),
        @('USD', 'Rs. '),
        @('PHP', 'Rs. '),
        @('THB', 'Rs. '),
        @([char]0xC3 + [char]0xA2 + [char]0xE2 + [char]0x82 + [char]0xAC, 'Rs. '),
        @([char]0xC3 + [char]0xA2, ''),
        @([char]0xE2 + [char]0x82 + [char]0xAC, 'Rs. '),
        # Broken curly quotes
        @([char]0xE2 + [char]0x80 + [char]0x99, "'"),
        @([char]0xE2 + [char]0x80 + [char]0x98, "'"),
        @([char]0xE2 + [char]0x80 + [char]0x9C, '"'),
        @([char]0xE2 + [char]0x80 + [char]0x9D, '"'),
        # Broken em dash
        @([char]0xE2 + [char]0x80 + [char]0x93, '-'),
        @([char]0xE2 + [char]0x80 + [char]0x94, '-'),
        # Common mojibake patterns
        @('a,,",', '-'),
        @('a,",', '-'),
        @('a.,"', '...'),
        @([char]0xC3 + [char]0x82, ''),
        @([char]0xC2 + [char]0xA0, ' '),
        @([char]0xC2 + [char]0xAE, ''),
        @([char]0xC3 + [char]0xA9, 'e'),
        @([char]0xC3 + [char]0xA8, 'e')
    )
    
    foreach ($pair in $replacements) {
        $content = $content.Replace($pair[0], $pair[1])
    }
    
    if ($content -ne $original) {
        Write-Host "  Fixed encoding issues"
    }
    
    return $content
}

$files = Get-ChildItem -Path $basePath -Recurse -Filter 'index.html'

$critFixed = 0
$contFixed = 0
$encodeFixed = 0

foreach ($file in $files) {
    $relPath = $file.FullName.Substring($basePath.Length + 1)
    try {
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    } catch {
        Write-Host "Error reading: $relPath"
        continue
    }
    
    $originalLength = $content.Length
    
    # Fix 1: Remove duplicate critical CSS
    $content = Remove-DuplicateCriticalCSS -content $content
    
    # Fix 2: Remove duplicate content CSS
    $content = Remove-DuplicateContentCSS -content $content
    
    # Fix 3: Fix encoding issues
    $content = Fix-BrokenEncoding -content $content
    
    $newLength = $content.Length
    
    if ($newLength -ne $originalLength) {
        try {
            [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.UTF8Encoding]::new($false))
            
            $diff = $originalLength - $newLength
            if ($diff -gt 6000) {
                $critFixed++
                Write-Host "Fixed (critical CSS): $relPath ($diff bytes removed)"
            } elseif ($diff -gt 1000) {
                $contFixed++
                Write-Host "Fixed (content CSS): $relPath ($diff bytes removed)"
            } elseif ($diff -gt 0) {
                $encodeFixed++
                Write-Host "Fixed (encoding): $relPath ($diff bytes removed)"
            } else {
                Write-Host "Fixed: $relPath"
            }
        } catch {
            Write-Host "Error writing: $relPath - $_"
        }
    }
}

Write-Host "`n=== Summary ==="
Write-Host "Duplicate critical CSS fixed: $critFixed"
Write-Host "Duplicate content CSS fixed: $contFixed"
Write-Host "Encoding fixes: $encodeFixed"
