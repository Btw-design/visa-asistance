# PowerShell script to update inline critical CSS on all HTML pages
param()

$projectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
Set-Location $projectRoot

Write-Host "=== Updating inline critical CSS on all HTML pages ===" -ForegroundColor Cyan

# Read the new inline CSS from a separate file
$newCssFile = Join-Path $projectRoot "scripts\inline-critical.css"
if (-not (Test-Path $newCssFile)) {
    Write-Host "ERROR: inline-critical.css not found at $newCssFile" -ForegroundColor Red
    exit 1
}

$newCriticalCSS = Get-Content -LiteralPath $newCssFile -Raw -Encoding UTF8

# Find all HTML files
$htmlFiles = Get-ChildItem -Path $projectRoot -Filter "*.html" -Recurse | Where-Object {
    $_.FullName -notmatch '\\node_modules\\' -and
    $_.FullName -notmatch '\\.git\\'
}

$count = 0
$errorCount = 0

foreach ($file in $htmlFiles) {
    try {
        $bytes = [System.IO.File]::ReadAllBytes($file.FullName)
        $content = [System.Text.Encoding]::UTF8.GetString($bytes)

        # Check if it has the old inline style block (right after <meta charset)
        $pattern = '(?<=<meta charset="UTF-8">)\s*<style>.*?</style>\s*'
        $matches = [System.Text.RegularExpressions.Regex]::Matches($content, $pattern, [System.Text.RegularExpressions.RegexOptions]::Singleline)

        if ($matches.Count -gt 0) {
            # Replace the matched style block
            $newContent = [System.Text.RegularExpressions.Regex]::Replace($content, $pattern, "`n  <style>$newCriticalCSS</style>`n  ", [System.Text.RegularExpressions.RegexOptions]::Singleline)

            if ($newContent -ne $content) {
                [System.IO.File]::WriteAllText($file.FullName, $newContent, [System.Text.UTF8Encoding]::new($false))
                Write-Host "  [OK] $($file.FullName)" -ForegroundColor Green
                $count++
            } else {
                Write-Host "  [--] $($file.FullName) (no change)" -ForegroundColor Gray
            }
        } else {
            # Check if file has charset but missing style block
            if ($content -match '<meta charset="UTF-8">') {
                $newContent = $content -replace '(?<=<meta charset="UTF-8">)', "`n  <style>$newCriticalCSS</style>"
                [System.IO.File]::WriteAllText($file.FullName, $newContent, [System.Text.UTF8Encoding]::new($false))
                Write-Host "  [+] $($file.FullName) (added style block)" -ForegroundColor Yellow
                $count++
            }
        }
    } catch {
        Write-Host "  [ERR] $($file.FullName): $_" -ForegroundColor Red
        $errorCount++
    }
}

Write-Host ""
Write-Host "=== Complete ===" -ForegroundColor Cyan
Write-Host "Files updated: $count" -ForegroundColor Green
if ($errorCount -gt 0) {
    Write-Host "Errors: $errorCount" -ForegroundColor Red
}
