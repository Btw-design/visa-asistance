$base = "D:\ahit health\my-visa-assistance"

# Find all guide and requirements files
$files = @()
$files += Get-ChildItem -Path (Join-Path $base "visa-guide") -Recurse -Filter "index.html"
$files += Get-ChildItem -Path (Join-Path $base "visa-requirements") -Recurse -Filter "index.html"

$fixed = 0
foreach ($f in $files) {
    $content = [io.file]::ReadAllText($f.FullName)
    $changed = $false
    
    # Fix duplicate author tags: remove all but the first
    $authorPattern = '<meta name="author" content="[^"]*">'
    $matches = [regex]::Matches($content, $authorPattern)
    if ($matches.Count -gt 1) {
        Write-Host "$($f.FullName): Removing $($matches.Count - 1) duplicate author tags"
        # Keep only the first match
        for ($i = $matches.Count - 1; $i -ge 1; $i--) {
            $content = $content.Remove($matches[$i].Index, $matches[$i].Length)
        }
        $changed = $true
    }
    
    # Fix duplicate link lines: remove duplicates of the Official visa website paragraph
    $linkPattern = '<p style="font-size:0.85rem;color:var\(--color-text-light\);">Official visa website:.*?</p>'
    $matches = [regex]::Matches($content, $linkPattern)
    if ($matches.Count -gt 1) {
        Write-Host "$($f.FullName): Removing $($matches.Count - 1) duplicate link paragraphs"
        # Keep only the first match
        for ($i = $matches.Count - 1; $i -ge 1; $i--) {
            $content = $content.Remove($matches[$i].Index, $matches[$i].Length)
        }
        $changed = $true
    }
    
    if ($changed) {
        [io.file]::WriteAllText($f.FullName, $content, [System.Text.Encoding]::UTF8)
        $fixed++
    }
}
Write-Host "Cleaned up $fixed files"
