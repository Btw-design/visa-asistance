# Remove all WhatsApp CTAs across the entire website
$ErrorActionPreference = "Stop"

$files = Get-ChildItem -Path "D:\ahit health\my-visa-assistance" -Recurse -Filter "*.html" | Where-Object { $_.DirectoryName -notmatch '\\scripts\\' -and $_.DirectoryName -notmatch '\\.opencode\\' }

$totalFiles = 0
$cssFloatRemoved = 0
$cssScrollRemoved = 0
$cssMobileRemoved = 0
$htmlFloatRemoved = 0
$htmlCtaRemoved = 0
$htmlShareRemoved = 0
$htmlFooterRemoved = 0

foreach ($f in $files) {
    $c = Get-Content $f.FullName -Raw -Encoding UTF8
    $original = $c
    $changed = $false

    # ─── 1. CSS: Remove .whatsapp-float rule (desktop) ───
    $waFloatDesktop = '.whatsapp-float{position:fixed;bottom:100px;right:28px;z-index:999;width:56px;height:56px;background:#25D366;color:var(--color-white);border:none;border-radius:50%;font-size:1.6rem;display:flex;align-items:center;justify-content:center;box-shadow:0 4px 20px rgba(37,211,102,0.4);text-decoration:none;transition:all 0.3s ease}'
    if ($c.Contains($waFloatDesktop)) {
        $c = $c.Replace($waFloatDesktop, '')
        $cssFloatRemoved++
        $changed = $true
    }

    # ─── 2. CSS: Remove .whatsapp-float:hover rule ───
    $waFloatHover = '.whatsapp-float:hover{transform:scale(1.1);color:var(--color-white)}'
    if ($c.Contains($waFloatHover)) {
        $c = $c.Replace($waFloatHover, '')
        $changed = $true
    }

    # ─── 3. CSS: Remove .whatsapp-float~.scroll-top rule (desktop) ───
    $waScrollDesktop = '.whatsapp-float~.scroll-top{bottom:calc(100px + 64px + env(safe-area-inset-bottom,0px))}'
    if ($c.Contains($waScrollDesktop)) {
        $c = $c.Replace($waScrollDesktop, '')
        $cssScrollRemoved++
        $changed = $true
    }

    # ─── 4. CSS: Mobile media query whatsapp rules ───
    # These are inside the @media(max-width:767px) block
    # Remove .whatsapp-float{width:48px;height:48px;font-size:1.3rem;bottom:80px;right:16px}
    $waMobileFloat = '.whatsapp-float{width:48px;height:48px;font-size:1.3rem;bottom:80px;right:16px}'
    if ($c.Contains($waMobileFloat)) {
        $c = $c.Replace($waMobileFloat, '')
        $changed = $true
    }

    # Remove .whatsapp-float .whatsapp-tooltip{display:none}
    $waMobileTooltip = '.whatsapp-float .whatsapp-tooltip{display:none}'
    if ($c.Contains($waMobileTooltip)) {
        $c = $c.Replace($waMobileTooltip, '')
        $changed = $true
    }

    # Remove .whatsapp-float~.scroll-top{bottom:calc(80px + 56px)}
    $waMobileScroll = '.whatsapp-float~.scroll-top{bottom:calc(80px + 56px)}'
    if ($c.Contains($waMobileScroll)) {
        $c = $c.Replace($waMobileScroll, '')
        $cssMobileRemoved++
        $changed = $true
    }

    # Also handle variation with + env(safe-area-inset-bottom,0px) in mobile
    $waMobileScroll2 = '.whatsapp-float~.scroll-top{bottom:calc(80px + 56px + env(safe-area-inset-bottom,0px))}'
    if ($c.Contains($waMobileScroll2)) {
        $c = $c.Replace($waMobileScroll2, '')
        $cssMobileRemoved++
        $changed = $true
    }

    # Handle whatsapp-tooltip CSS if standalone
    $waTooltipCss = '.whatsapp-tooltip{position:absolute;right:calc(100% + 12px);top:50%;transform:translateY(-50%);background:#333;color:white;padding:6px 12px;border-radius:6px;font-size:0.8rem;white-space:nowrap;pointer-events:none;opacity:0;transition:opacity 0.2s ease}'
    if ($c.Contains($waTooltipCss)) {
        $c = $c.Replace($waTooltipCss, '')
        $changed = $true
    }
    # Alternative tooltip CSS
    $waTooltipCss2 = '.whatsapp-tooltip{position:absolute;right:calc(100% + 12px);top:50%;transform:translateY(-50%);background:#1f2937;color:white;padding:5px 10px;border-radius:4px;font-size:0.75rem;white-space:nowrap;pointer-events:none;opacity:0;transition:opacity .2s}'
    if ($c.Contains($waTooltipCss2)) {
        $c = $c.Replace($waTooltipCss2, '')
        $changed = $true
    }
    # Another alternative
    $waTooltipCss3 = '.whatsapp-tooltip{position:absolute;right:calc(100% + 12px);top:50%;transform:translateY(-50%);background:#1f2937;color:white;padding:5px 10px;border-radius:4px;font-size:.75rem;white-space:nowrap;pointer-events:none;opacity:0;transition:opacity .2s}'
    if ($c.Contains($waTooltipCss3)) {
        $c = $c.Replace($waTooltipCss3, '')
        $changed = $true
    }

    # ─── 5. HTML: Remove WhatsApp float button ───
    # Pattern: <a href="https://wa.me/919022954619?text=..." ...class="whatsapp-float"...>...</a>
    $waFloatPatterns = @(
        '<a href="https://wa.me/919022954619?text=Hi%20I%20need%20help%20with%20visa%20application" target="_blank" rel="noopener noreferrer" class="whatsapp-float" aria-label="Chat on WhatsApp" title="Chat with us on WhatsApp">',
        '<a href="https://wa.me/919022954619?text=Hi%20I%20need%20help%20with%20visa%20application" target="_blank" rel="noopener noreferrer" class="whatsapp-float" aria-label="Chat on WhatsApp" title="Chat with us on WhatsApp">'
    )
    foreach ($pat in $waFloatPatterns) {
        $idx = $c.IndexOf($pat)
        if ($idx -ge 0) {
            $closeIdx = $c.IndexOf('</a>', $idx)
            if ($closeIdx -ge 0) {
                $fullFloat = $c.Substring($idx, $closeIdx - $idx + 4)
                $c = $c.Replace($fullFloat, '')
                $htmlFloatRemoved++
                $changed = $true
            }
        }
    }

    # ─── 6. HTML: Remove WhatsApp Us / WhatsUpp Bs CTA buttons ───
    # These are inside <p> tags in blog CTAs or sidebar cards in guides
    # Pattern: <a href="https://wa.me/919022954619?text=..." ...><i class="bi bi-whatsapp"></i> WhatsApp Us</a>
    $ctaIdx = $c.IndexOf('bi bi-whatsapp')
    while ($ctaIdx -ge 0) {
        # Check if this is a CTA button (wa.me/919022954619?text=) - not a share (wa.me/?text=)
        $contextBefore = $c.Substring([Math]::Max(0,$ctaIdx-150), 150)
        $afterCta = $c.Substring($ctaIdx, 100)
        
        # Check if it has wa.me/919022954619?text= (CTA pattern) - NOT wa.me/?text= (share pattern)
        $isCtaButton = $false
        $ctaCheckIdx = $c.LastIndexOf('href="https://wa.me/', $ctaIdx)
        if ($ctaCheckIdx -ge 0 -and $ctaIdx - $ctaCheckIdx -lt 200) {
            $hrefContent = $c.Substring($ctaCheckIdx, [Math]::Min(80, $c.Length - $ctaCheckIdx))
            if ($hrefContent.Contains('wa.me/919022954619?text=') -and -not $hrefContent.Contains('wa.me/?text=')) {
                $isCtaButton = $true
            }
        }
        
        if ($isCtaButton) {
            # Find the full <a> tag
            $aStart = $c.LastIndexOf('<a ', $ctaIdx)
            $aEnd = $c.IndexOf('</a>', $ctaIdx)
            if ($aStart -ge 0 -and $aEnd -ge 0) {
                $fullTag = $c.Substring($aStart, $aEnd - $aStart + 4)
                # Check if there's a newline before - remove the preceding newline/whitespace too
                $beforeTag = $c.Substring(0, $aStart)
                $trailingNewline = ''
                if ($beforeTag -match '(\s+)$') {
                    $trailingNewline = $Matches[1]
                }
                $c = $c.Replace($trailingNewline + $fullTag, '')
                $htmlCtaRemoved++
                $changed = $true
            }
        }
        
        # Find next occurrence
        $nextIdx = $c.IndexOf('bi bi-whatsapp', $ctaIdx + 1)
        if ($nextIdx -eq $ctaIdx) { break }
        $ctaIdx = $nextIdx
    }

    # ─── 7. HTML: Remove WhatsApp share buttons ───
    # Pattern: <a href="https://wa.me/?text=..." ... style="color:#25D366;font-size:1.5rem;" ...><i class="bi bi-whatsapp"></i></a>
    $shareIdx = $c.IndexOf('bi bi-whatsapp')
    while ($shareIdx -ge 0) {
        $isShareBtn = $false
        $shareCheckIdx = $c.LastIndexOf('href="https://wa.me/', $shareIdx)
        if ($shareCheckIdx -ge 0 -and $shareIdx - $shareCheckIdx -lt 200) {
            $hrefContent = $c.Substring($shareCheckIdx, [Math]::Min(80, $c.Length - $shareCheckIdx))
            if ($hrefContent.Contains('wa.me/?text=')) {
                $isShareBtn = $true
            }
        }
        
        if ($isShareBtn) {
            $aStart = $c.LastIndexOf('<a ', $shareIdx)
            $aEnd = $c.IndexOf('</a>', $shareIdx)
            if ($aStart -ge 0 -and $aEnd -ge 0) {
                $fullTag = $c.Substring($aStart, $aEnd - $aStart + 4)
                # Remove preceding whitespace/newline too
                $beforeShare = $c.Substring(0, $aStart)
                $trailingNewline = ''
                if ($beforeShare -match '(\s+)$') {
                    $trailingNewline = $Matches[1]
                }
                $c = $c.Replace($trailingNewline + $fullTag, '')
                $htmlShareRemoved++
                $changed = $true
            }
        }
        
        $nextIdx = $c.IndexOf('bi bi-whatsapp', $shareIdx + 1)
        if ($nextIdx -eq $shareIdx) { break }
        $shareIdx = $nextIdx
    }

    # ─── 8. HTML: Remove footer WhatsApp contact links ───
    # Pattern: <li><a href="https://wa.me/919022954619" ...><i class="bi bi-whatsapp"></i> WhatsApp: +91 90229 54619</a></li>
    $footerWa = '<i class="bi bi-whatsapp"></i> WhatsApp: +91 90229 54619'
    $footerIdx = $c.IndexOf($footerWa)
    if ($footerIdx -ge 0) {
        $liStart = $c.LastIndexOf('<li', $footerIdx)
        $liEnd = $c.IndexOf('</li>', $footerIdx)
        if ($liStart -ge 0 -and $liEnd -ge 0) {
            $fullLi = $c.Substring($liStart, $liEnd - $liStart + 5)
            # Remove preceding newline/whitespace too
            $beforeLi = $c.Substring(0, $liStart)
            $trailingNewline = ''
            if ($beforeLi -match '(\s+)$') {
                $trailingNewline = $Matches[1]
            }
            $c = $c.Replace($trailingNewline + $fullLi, '')
            $htmlFooterRemoved++
            $changed = $true
        }
    }

    if ($changed) {
        Set-Content $f.FullName -Value $c -Encoding UTF8 -NoNewLine
        $totalFiles++
    }
}

Write-Host "=== WhatsApp Removal Summary ==="
Write-Host "Files modified: $totalFiles"
Write-Host "CSS rules removed:"
Write-Host "  .whatsapp-float (desktop): $cssFloatRemoved"
Write-Host "  .whatsapp-float:hover: removed"
Write-Host "  .whatsapp-float~.scroll-top (desktop): $cssScrollRemoved"
Write-Host "  Mobile whatsapp rules: $cssMobileRemoved"
Write-Host "HTML elements removed:"
Write-Host "  WhatsApp float buttons: $htmlFloatRemoved"
Write-Host "  WhatsApp Us CTA buttons: $htmlCtaRemoved"
Write-Host "  WhatsApp share buttons: $htmlShareRemoved"
Write-Host "  Footer WhatsApp links: $htmlFooterRemoved"
