# Add "Fill the form for details" button next to every WhatsApp CTA
$ErrorActionPreference = "Stop"
$formUrl = "https://docs.google.com/forms/d/e/1FAIpQLSe_cW3T5Zup2-T_ud9ngisCWkwh3dVmQbuGdBS7Lb1c2r9bog/viewform?usp=header"

$formBtn = @'
        <a href="FORM_URL_PLACEHOLDER" target="_blank" rel="noopener noreferrer" class="btn btn-lg" style="background:var(--color-accent);color:var(--color-primary-dark);margin-left:10px;"><i class="bi bi-file-text"></i> Fill the form for details</a>
'@ -replace "FORM_URL_PLACEHOLDER", $formUrl

$formBtnBlock = @'
            <a href="FORM_URL_PLACEHOLDER" target="_blank" rel="noopener noreferrer" class="btn btn-lg" style="background:var(--color-accent);color:var(--color-primary-dark);display:block;text-align:center;"><i class="bi bi-file-text"></i> Fill the form for details</a>
'@ -replace "FORM_URL_PLACEHOLDER", $formUrl

# Find all HTML files
$files = Get-ChildItem -Path "D:\ahit health\my-visa-assistance" -Recurse -Filter "*.html" | Where-Object { $_.DirectoryName -notmatch '\\scripts\\' -and $_.DirectoryName -notmatch '\\.opencode\\' }

$blogCount = 0
$guideCount = 0
$reqCount = 0
$otherCount = 0
$skipped = 0

foreach ($f in $files) {
    $c = Get-Content $f.FullName -Raw -Encoding UTF8
    
    # Determine file type by path
    $isBlog = $f.FullName -match '\\blog\\'
    $isGuide = $f.FullName -match '\\visa-guide\\[^\\]+\\' -and $f.FullName -notmatch '\\visa-guide\\index\\.html$'
    $isRequirements = $f.FullName -match '\\visa-requirements\\[^\\]+\\' -and $f.FullName -notmatch '\\visa-requirements\\index\\.html$'
    $isHomepage = $f.FullName -match '\\index\\.html$' -and $f.DirectoryName -eq 'D:\ahit health\my-visa-assistance'
    
    # Skip files without WhatsApp CTAs (check for the specific button pattern)
    if (-not ($c -match 'background:#25D366.*WhatsApp')) {
        $skipped++
        continue
    }
    
    $original = $c
    $changed = $false
    
    if ($isBlog -or $isHomepage) {
        # Blog pattern: margin-left:10px or inline display in a <p> tag
        # Match WhatsApp Us</a> followed by optional whitespace and </p>
        if ($c -match '(WhatsApp[^<]*</a>)\s*\n\s*(</p>)') {
            $c = $c -replace '(WhatsApp[^<]*</a>)\s*\n\s*(</p>)', "`$1`n$formBtn`n      `$2"
            $changed = $true
            if ($isBlog) { $blogCount++ } else { $otherCount++ }
            Write-Host "  OK (blog): $($f.FullName)"
        } elseif ($c -match '(WhatsApp[^<]*</a>)\s*\n\s*\n\s*(</div>)') {
            # Some blogs might have </div> instead of </p>
            $c = $c -replace '(WhatsApp[^<]*</a>)\s*\n\s*\n\s*(</div>)', "`$1`n$formBtn`n      `$2"
            $changed = $true
            if ($isBlog) { $blogCount++ } else { $otherCount++ }
            Write-Host "  OK (blog div): $($f.FullName)"
        }
    }
    
    if ($isGuide -or $isRequirements) {
        # Guide/Requirements pattern: display:block;text-align:center; in sidebar card
        if ($c -match '(WhatsApp[^<]*</a>)\s*\n\s*(</div>)') {
            $c = $c -replace '(WhatsApp[^<]*</a>)\s*\n\s*(</div>)', "`$1`n$formBtnBlock`n          `$2"
            $changed = $true
            if ($isGuide) { $guideCount++ } else { $reqCount++ }
            Write-Host "  OK (guide/req): $($f.FullName)"
        }
    }
    
    # Fallback for any other pattern
    if (-not $changed) {
        # Try to find WhatsApp button pattern generically
        if ($c -match '(background:#25D366[^>]*>[^<]*</a>)\s*\n') {
            # Check what comes after
            $afterMatch = $Matches[0]
            $afterRest = $c.Substring($c.IndexOf($afterMatch) + $afterMatch.Length)
            # If followed by a tag close, insert form button
            if ($afterRest -match '^\s*(</p>|</div>)') {
                $c = $c -replace '(' + [regex]::Escape($afterMatch) + ')\s*\n\s*(</p>|</div>)', "`$1`n$formBtn`n      `$2"
                $changed = $true
                $otherCount++
                Write-Host "  OK (fallback): $($f.FullName)"
            }
        }
    }
    
    if (-not $changed) {
        Write-Host "  NO MATCH: $($f.FullName)"
        # Show context for debugging
        $idx = $c.IndexOf("background:#25D366")
        if ($idx -ge 0) {
            Write-Host "    Context: $($c.Substring([Math]::Max(0,$idx-50), 200))"
        }
        $skipped++
    } elseif ($c -ne $original) {
        Set-Content $f.FullName -Value $c -Encoding UTF8 -NoNewLine
    }
}

Write-Host "`n=== Summary ==="
Write-Host "Blog posts updated: $blogCount"
Write-Host "Visa guides updated: $guideCount"
Write-Host "Requirements pages updated: $reqCount"
Write-Host "Other pages updated: $otherCount"
Write-Host "Skipped (no WhatsApp CTA): $skipped"
