# Enhance blog SVG infographics with better visual design
$ErrorActionPreference = "Stop"

function Replace-SvgInFile {
  param($FilePath, $OldSvg, $NewSvg)
  $content = Get-Content -Path $FilePath -Raw -Encoding UTF8
  if ($content.Contains($OldSvg)) {
    $content = $content.Replace($OldSvg, $NewSvg)
    Set-Content -Path $FilePath -Value $content -Encoding UTF8 -NoNewLine
    Write-Host "  OK: Replaced SVG in $FilePath"
    return $true
  }
  Write-Host "  WARNING: Old SVG not found in $FilePath"
  return $false
}

# Read old SVGs from backup files
$svg1_old = Get-Content -Path "D:\ahit health\my-visa-assistance\scripts\svg-backups\schengen-area-guide-svg1.html" -Raw
$svg2_old = Get-Content -Path "D:\ahit health\my-visa-assistance\scripts\svg-backups\multi-country-euro-trip-svg1.html" -Raw
$svg3_old = Get-Content -Path "D:\ahit health\my-visa-assistance\scripts\svg-backups\schengen-main-destination-svg1.html" -Raw
$svg4_old = Get-Content -Path "D:\ahit health\my-visa-assistance\scripts\svg-backups\schengen-first-entry-svg1.html" -Raw

# Read remaining blogs' actual SVGs
$content5 = Get-Content -Path "D:\ahit health\my-visa-assistance\blog\schengen-vs-eu-vs-uk\index.html" -Raw -Encoding UTF8
$s5 = $content5.IndexOf('<svg viewBox')
$e5 = $content5.IndexOf('</svg>', $s5) + 6
$svg5_old = $content5.Substring($s5, $e5 - $s5)

$content6 = Get-Content -Path "D:\ahit health\my-visa-assistance\blog\budget-friendly-schengen-countries\index.html" -Raw -Encoding UTF8
$s6 = $content6.IndexOf('<svg viewBox')
$e6 = $content6.IndexOf('</svg>', $s6) + 6
$svg6_old = $content6.Substring($s6, $e6 - $s6)

$content7 = Get-Content -Path "D:\ahit health\my-visa-assistance\blog\henley-passport-index-2026\index.html" -Raw -Encoding UTF8
$s7 = $content7.IndexOf('<svg viewBox')
$e7 = $content7.IndexOf('</svg>', $s7) + 6
$svg7_old = $content7.Substring($s7, $e7 - $s7)

$content8 = Get-Content -Path "D:\ahit health\my-visa-assistance\blog\schengen-visa-bank-balance-guide\index.html" -Raw -Encoding UTF8
$s8 = $content8.IndexOf('<svg viewBox')
$e8 = $content8.IndexOf('</svg>', $s8) + 6
$svg8_old = $content8.Substring($s8, $e8 - $s8)

# ─── 1. schengen-area-guide: Key Facts (already done, skip) ───
Write-Host "1/8 schengen-area-guide - SKIP (already enhanced)"

# ─── 2. multi-country-euro-trip: Quick Facts (already done, skip) ───
Write-Host "2/8 multi-country-euro-trip - SKIP (already enhanced)"

# ─── 3. schengen-main-destination-rule: Flowchart ───
$svg3_new = @"
<svg viewBox="0 0 700 200" xmlns="http://www.w3.org/2000/svg" style="max-width:100%;height:auto;">
  <defs>
    <linearGradient id="g3" x1="0" y1="0" x2="1" y2="1"><stop offset="0%" stop-color="#0a0a52"/><stop offset="100%" stop-color="#171299"/></linearGradient>
  </defs>
  <rect width="700" height="200" rx="12" fill="url(#g3)"/>
  <text x="350" y="30" text-anchor="middle" fill="#A5D549" font-size="17" font-weight="bold" letter-spacing="0.5">Schengen Main Destination Rule — Decision Flowchart</text>
  <rect x="160" y="55" width="380" height="32" rx="16" fill="rgba(165,213,73,0.15)" stroke="#A5D549" stroke-width="1.5"/>
  <text x="350" y="76" text-anchor="middle" fill="#A5D549" font-size="13" font-weight="bold">How many countries are you visiting?</text>
  <text x="195" y="112" text-anchor="middle" fill="#A5D549" font-size="20">&#8595;</text>
  <rect x="20" y="120" width="200" height="55" rx="10" fill="rgba(165,213,73,0.12)" stroke="#A5D549" stroke-width="1"/>
  <text x="120" y="143" text-anchor="middle" fill="#A5D549" font-size="13" font-weight="bold">One Country</text>
  <text x="120" y="162" text-anchor="middle" fill="rgba(255,255,255,0.8)" font-size="11">&#8594; Apply at that country's embassy</text>
  <rect x="250" y="120" width="200" height="55" rx="10" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.15)" stroke-width="1"/>
  <text x="350" y="143" text-anchor="middle" fill="white" font-size="13" font-weight="bold">Multiple Countries</text>
  <text x="350" y="162" text-anchor="middle" fill="rgba(255,255,255,0.8)" font-size="11">&#8595; Compare days per country</text>
  <rect x="480" y="120" width="200" height="55" rx="10" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.15)" stroke-width="1"/>
  <text x="580" y="143" text-anchor="middle" fill="white" font-size="13" font-weight="bold">Equal Days</text>
  <text x="580" y="162" text-anchor="middle" fill="rgba(255,255,255,0.8)" font-size="11">&#8594; First Entry embassy</text>
  <rect x="100" y="185" width="500" height="2" rx="1" fill="rgba(165,213,73,0.3)"/>
</svg>
"@

Write-Host "3/8 schengen-main-destination-rule..."
Replace-SvgInFile -FilePath "D:\ahit health\my-visa-assistance\blog\schengen-main-destination-rule\index.html" -OldSvg $svg3_old -NewSvg $svg3_new

# ─── 4. schengen-first-entry-rule: Comparison ───
$svg4_new = @"
<svg viewBox="0 0 700 220" xmlns="http://www.w3.org/2000/svg" style="max-width:100%;height:auto;">
  <defs>
    <linearGradient id="g4" x1="0" y1="0" x2="1" y2="1"><stop offset="0%" stop-color="#0a0a52"/><stop offset="100%" stop-color="#171299"/></linearGradient>
  </defs>
  <rect width="700" height="220" rx="12" fill="url(#g4)"/>
  <text x="350" y="30" text-anchor="middle" fill="#A5D549" font-size="16" font-weight="bold" letter-spacing="0.5">First Entry Rule vs Main Destination Rule — Comparison</text>
  <rect x="40" y="50" width="300" height="34" rx="8" fill="rgba(165,213,73,0.2)" stroke="#A5D549" stroke-width="1"/>
  <text x="190" y="73" text-anchor="middle" fill="#A5D549" font-size="14" font-weight="bold">Main Destination Rule</text>
  <rect x="360" y="50" width="300" height="34" rx="8" fill="rgba(255,255,255,0.08)" stroke="rgba(255,255,255,0.2)" stroke-width="1"/>
  <text x="510" y="73" text-anchor="middle" fill="white" font-size="14" font-weight="bold">First Entry Rule</text>
  <text x="190" y="108" text-anchor="middle" fill="white" font-size="13">Apply where you spend MOST days</text>
  <text x="510" y="108" text-anchor="middle" fill="white" font-size="13">Apply where you FIRST enter</text>
  <text x="190" y="132" text-anchor="middle" fill="rgba(165,213,73,0.8)" font-size="12">Used when days are UNEQUAL</text>
  <text x="510" y="132" text-anchor="middle" fill="rgba(255,255,255,0.6)" font-size="12">Used when days are EQUAL</text>
  <text x="190" y="156" text-anchor="middle" fill="rgba(255,255,255,0.4)" font-size="11">Primary rule — check this first</text>
  <text x="510" y="156" text-anchor="middle" fill="rgba(255,255,255,0.4)" font-size="11">Fallback — only if days are tied</text>
  <line x1="40" y1="172" x2="660" y2="172" stroke="rgba(255,255,255,0.06)" stroke-width="1"/>
  <text x="350" y="198" text-anchor="middle" fill="#A5D549" font-size="12" font-weight="bold">Both rules ensure every traveller has a clear embassy to apply to</text>
</svg>
"@

Write-Host "4/8 schengen-first-entry-rule..."
Replace-SvgInFile -FilePath "D:\ahit health\my-visa-assistance\blog\schengen-first-entry-rule\index.html" -OldSvg $svg4_old -NewSvg $svg4_new

# ─── 5. schengen-vs-eu-vs-uk: Three-column comparison ───
$svg5_new = @"
<svg viewBox="0 0 700 220" xmlns="http://www.w3.org/2000/svg" style="max-width:100%;height:auto;">
  <defs>
    <linearGradient id="g5" x1="0" y1="0" x2="1" y2="1"><stop offset="0%" stop-color="#0a0a52"/><stop offset="100%" stop-color="#171299"/></linearGradient>
  </defs>
  <rect width="700" height="220" rx="12" fill="url(#g5)"/>
  <text x="350" y="28" text-anchor="middle" fill="#A5D549" font-size="16" font-weight="bold" letter-spacing="0.5">Schengen vs EU vs UK — Quick Comparison</text>
  <line x1="20" y1="42" x2="680" y2="42" stroke="rgba(255,255,255,0.06)" stroke-width="1"/>

  <rect x="15" y="52" width="215" height="150" rx="10" fill="rgba(165,213,73,0.08)" stroke="#A5D549" stroke-width="1.5"/>
  <text x="122" y="80" text-anchor="middle" fill="#A5D549" font-size="18" font-weight="bold">&#9733; Schengen</text>
  <text x="122" y="105" text-anchor="middle" fill="rgba(255,255,255,0.6)" font-size="10">Area</text>
  <text x="122" y="130" text-anchor="middle" fill="white" font-size="20" font-weight="bold">29</text>
  <text x="122" y="150" text-anchor="middle" fill="rgba(255,255,255,0.7)" font-size="10">Countries</text>
  <text x="122" y="175" text-anchor="middle" fill="rgba(255,255,255,0.4)" font-size="9">No internal borders</text>
  <text x="122" y="190" text-anchor="middle" fill="rgba(255,255,255,0.4)" font-size="9">Single visa zone</text>

  <rect x="242" y="52" width="215" height="150" rx="10" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.15)" stroke-width="1"/>
  <text x="350" y="80" text-anchor="middle" fill="white" font-size="18" font-weight="bold">&#9733; EU</text>
  <text x="350" y="105" text-anchor="middle" fill="rgba(255,255,255,0.6)" font-size="10">European Union</text>
  <text x="350" y="130" text-anchor="middle" fill="white" font-size="20" font-weight="bold">27</text>
  <text x="350" y="150" text-anchor="middle" fill="rgba(255,255,255,0.7)" font-size="10">Member States</text>
  <text x="350" y="175" text-anchor="middle" fill="rgba(255,255,255,0.4)" font-size="9">Political &amp; economic</text>
  <text x="350" y="190" text-anchor="middle" fill="rgba(255,255,255,0.4)" font-size="9">Euro currency</text>

  <rect x="470" y="52" width="215" height="150" rx="10" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.15)" stroke-width="1"/>
  <text x="578" y="80" text-anchor="middle" fill="white" font-size="18" font-weight="bold">&#9733; UK</text>
  <text x="578" y="105" text-anchor="middle" fill="rgba(255,255,255,0.6)" font-size="10">United Kingdom</text>
  <text x="578" y="130" text-anchor="middle" fill="white" font-size="20" font-weight="bold">1</text>
  <text x="578" y="150" text-anchor="middle" fill="rgba(255,255,255,0.7)" font-size="10">Country</text>
  <text x="578" y="175" text-anchor="middle" fill="rgba(255,255,255,0.4)" font-size="9">Left EU in 2020</text>
  <text x="578" y="190" text-anchor="middle" fill="rgba(255,255,255,0.4)" font-size="9">Own visa system</text>
</svg>
"@

Write-Host "5/8 schengen-vs-eu-vs-uk..."
Replace-SvgInFile -FilePath "D:\ahit health\my-visa-assistance\blog\schengen-vs-eu-vs-uk\index.html" -OldSvg $svg5_old -NewSvg $svg5_new

# ─── 6. budget-friendly: 5 countries (already good, add subtle enhancements) ───
$svg6_new = @"
<svg viewBox="0 0 800 260" xmlns="http://www.w3.org/2000/svg" style="max-width:100%;height:auto;">
  <defs>
    <linearGradient id="g6" x1="0" y1="0" x2="1" y2="1"><stop offset="0%" stop-color="#0a0a52"/><stop offset="100%" stop-color="#171299"/></linearGradient>
  </defs>
  <rect width="800" height="260" rx="12" fill="url(#g6)"/>
  <text x="400" y="35" text-anchor="middle" fill="#A5D549" font-size="18" font-weight="bold" letter-spacing="0.5">5 Budget-Friendly Schengen Countries — Daily Budget (Rs.)</text>
  <rect x="20" y="60" width="140" height="175" rx="10" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <rect x="50" y="80" width="80" height="50" rx="6" fill="#CE1126"/>
  <text x="90" y="108" text-anchor="middle" fill="white" font-size="10" font-weight="bold">HUNGARY</text>
  <rect x="30" y="148" width="120" height="30" rx="6" fill="#A5D549"/>
  <text x="90" y="168" text-anchor="middle" fill="#0a0a52" font-size="13" font-weight="bold">&#8377;3,500-4,500</text>
  <text x="90" y="198" text-anchor="middle" fill="white" opacity="0.7" font-size="10">Budapest</text>
  <text x="90" y="215" text-anchor="middle" fill="white" opacity="0.5" font-size="9">Thermal baths</text>
  <rect x="175" y="60" width="140" height="175" rx="10" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <rect x="205" y="80" width="80" height="50" rx="6" fill="#DC143C"/>
  <text x="245" y="108" text-anchor="middle" fill="white" font-size="10" font-weight="bold">POLAND</text>
  <rect x="185" y="148" width="120" height="30" rx="6" fill="#A5D549"/>
  <text x="245" y="168" text-anchor="middle" fill="#0a0a52" font-size="13" font-weight="bold">&#8377;3,000-4,000</text>
  <text x="245" y="198" text-anchor="middle" fill="white" opacity="0.7" font-size="10">Krakow, Warsaw</text>
  <text x="245" y="215" text-anchor="middle" fill="white" opacity="0.5" font-size="9">WWII museums</text>
  <rect x="330" y="60" width="140" height="175" rx="10" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <rect x="360" y="80" width="80" height="50" rx="6" fill="#11457E"/>
  <text x="400" y="108" text-anchor="middle" fill="white" font-size="10" font-weight="bold">CZECH REP.</text>
  <rect x="340" y="148" width="120" height="30" rx="6" fill="#A5D549"/>
  <text x="400" y="168" text-anchor="middle" fill="#0a0a52" font-size="13" font-weight="bold">&#8377;3,500-4,500</text>
  <text x="400" y="198" text-anchor="middle" fill="white" opacity="0.7" font-size="10">Prague</text>
  <text x="400" y="215" text-anchor="middle" fill="white" opacity="0.5" font-size="9">Beer culture</text>
  <rect x="485" y="60" width="140" height="175" rx="10" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <rect x="515" y="80" width="80" height="50" rx="6" fill="#006600"/>
  <text x="555" y="108" text-anchor="middle" fill="white" font-size="10" font-weight="bold">PORTUGAL</text>
  <rect x="495" y="148" width="120" height="30" rx="6" fill="#A5D549"/>
  <text x="555" y="168" text-anchor="middle" fill="#0a0a52" font-size="13" font-weight="bold">&#8377;4,000-5,000</text>
  <text x="555" y="198" text-anchor="middle" fill="white" opacity="0.7" font-size="10">Lisbon, Porto</text>
  <text x="555" y="215" text-anchor="middle" fill="white" opacity="0.5" font-size="9">Pasteis de nata</text>
  <rect x="640" y="60" width="140" height="175" rx="10" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <rect x="670" y="80" width="80" height="50" rx="6" fill="#0D5EAF"/>
  <text x="710" y="108" text-anchor="middle" fill="white" font-size="10" font-weight="bold">GREECE</text>
  <rect x="650" y="148" width="120" height="30" rx="6" fill="#A5D549"/>
  <text x="710" y="168" text-anchor="middle" fill="#0a0a52" font-size="13" font-weight="bold">&#8377;3,500-4,500</text>
  <text x="710" y="198" text-anchor="middle" fill="white" opacity="0.7" font-size="10">Athens</text>
  <text x="710" y="215" text-anchor="middle" fill="white" opacity="0.5" font-size="9">Island hopping</text>
</svg>
"@

Write-Host "6/8 budget-friendly..."
Replace-SvgInFile -FilePath "D:\ahit health\my-visa-assistance\blog\budget-friendly-schengen-countries\index.html" -OldSvg $svg6_old -NewSvg $svg6_new

# ─── 7. henley-passport-index: India ranking (already good, enhance) ───
$svg7_new = @"
<svg viewBox="0 0 700 240" xmlns="http://www.w3.org/2000/svg" style="max-width:100%;height:auto;">
  <defs>
    <linearGradient id="g7" x1="0" y1="0" x2="1" y2="1"><stop offset="0%" stop-color="#0a0a52"/><stop offset="100%" stop-color="#171299"/></linearGradient>
  </defs>
  <rect width="700" height="240" rx="12" fill="url(#g7)"/>
  <text x="350" y="30" text-anchor="middle" fill="#A5D549" font-size="18" font-weight="bold" letter-spacing="0.5">Henley Passport Index 2026 — India at a Glance</text>
  <rect x="60" y="55" width="260" height="80" rx="10" fill="rgba(255,255,255,0.08)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="190" y="80" text-anchor="middle" fill="#A5D549" font-size="32" font-weight="bold">~85th</text>
  <text x="190" y="105" text-anchor="middle" fill="white" font-size="13" font-weight="600">Global Rank</text>
  <text x="190" y="122" text-anchor="middle" fill="rgba(255,255,255,0.5)" font-size="10">Improving steadily since 2015</text>
  <rect x="380" y="55" width="260" height="80" rx="10" fill="rgba(255,255,255,0.08)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="510" y="80" text-anchor="middle" fill="#A5D549" font-size="32" font-weight="bold">~60+</text>
  <text x="510" y="105" text-anchor="middle" fill="white" font-size="13" font-weight="600">Visa-Free / VoA</text>
  <text x="510" y="122" text-anchor="middle" fill="rgba(255,255,255,0.5)" font-size="10">Includes eVisa and visa on arrival</text>
  <line x1="60" y1="145" x2="640" y2="145" stroke="rgba(255,255,255,0.1)" stroke-width="1"/>
  <rect x="60" y="160" width="180" height="34" rx="8" fill="rgba(165,213,73,0.12)" stroke="#A5D549" stroke-width="0.5"/>
  <text x="150" y="181" text-anchor="middle" fill="white" font-size="11" font-weight="600">Singapore (195+)</text>
  <rect x="260" y="160" width="180" height="34" rx="8" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.12)" stroke-width="0.5"/>
  <text x="350" y="181" text-anchor="middle" fill="white" font-size="11">Afghanistan (~26)</text>
  <rect x="460" y="160" width="180" height="34" rx="8" fill="rgba(165,213,73,0.12)" stroke="#A5D549" stroke-width="0.5"/>
  <text x="550" y="181" text-anchor="middle" fill="white" font-size="11">+ Schengen = +29</text>
  <text x="350" y="220" text-anchor="middle" fill="rgba(255,255,255,0.35)" font-size="9">Source: Henley &amp; Partners / IATA — 2026</text>
</svg>
"@

Write-Host "7/8 henley-passport-index..."
Replace-SvgInFile -FilePath "D:\ahit health\my-visa-assistance\blog\henley-passport-index-2026\index.html" -OldSvg $svg7_old -NewSvg $svg7_new

# ─── 8. bank-balance: Daily requirements ───
$svg8_new = @"
<svg viewBox="0 0 750 240" xmlns="http://www.w3.org/2000/svg" style="max-width:100%;height:auto;">
  <defs>
    <linearGradient id="g8" x1="0" y1="0" x2="1" y2="1"><stop offset="0%" stop-color="#0a0a52"/><stop offset="100%" stop-color="#171299"/></linearGradient>
  </defs>
  <rect width="750" height="240" rx="12" fill="url(#g8)"/>
  <text x="375" y="30" text-anchor="middle" fill="#A5D549" font-size="16" font-weight="bold" letter-spacing="0.5">Schengen Visa Bank Balance Guide 2026</text>
  <text x="375" y="48" text-anchor="middle" fill="rgba(255,255,255,0.5)" font-size="11">Minimum Daily Requirements by Country</text>
  <rect x="15" y="65" width="170" height="55" rx="8" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="100" y="87" text-anchor="middle" fill="#A5D549" font-size="15" font-weight="bold">Switzerland</text>
  <text x="100" y="107" text-anchor="middle" fill="white" font-size="13">&#8364;100 / day</text>
  <rect x="200" y="65" width="170" height="55" rx="8" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="285" y="87" text-anchor="middle" fill="#A5D549" font-size="15" font-weight="bold">France</text>
  <text x="285" y="107" text-anchor="middle" fill="white" font-size="13">&#8364;65 / day</text>
  <rect x="385" y="65" width="170" height="55" rx="8" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="470" y="87" text-anchor="middle" fill="#A5D549" font-size="15" font-weight="bold">Spain</text>
  <text x="470" y="107" text-anchor="middle" fill="white" font-size="13">&#8364;60 / day</text>
  <rect x="570" y="65" width="165" height="55" rx="8" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="652" y="87" text-anchor="middle" fill="#A5D549" font-size="15" font-weight="bold">Netherlands</text>
  <text x="652" y="107" text-anchor="middle" fill="white" font-size="13">&#8364;55 / day</text>
  <rect x="15" y="135" width="170" height="55" rx="8" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="100" y="157" text-anchor="middle" fill="#A5D549" font-size="15" font-weight="bold">Italy</text>
  <text x="100" y="177" text-anchor="middle" fill="white" font-size="13">&#8364;50 / day</text>
  <rect x="200" y="135" width="170" height="55" rx="8" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="285" y="157" text-anchor="middle" fill="#A5D549" font-size="15" font-weight="bold">Greece</text>
  <text x="285" y="177" text-anchor="middle" fill="white" font-size="13">&#8364;50 / day</text>
  <rect x="385" y="135" width="170" height="55" rx="8" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="470" y="157" text-anchor="middle" fill="#A5D549" font-size="15" font-weight="bold">Germany</text>
  <text x="470" y="177" text-anchor="middle" fill="white" font-size="13">&#8364;45 / day</text>
  <rect x="570" y="135" width="165" height="55" rx="8" fill="rgba(255,255,255,0.06)" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
  <text x="652" y="157" text-anchor="middle" fill="#A5D549" font-size="15" font-weight="bold">Portugal</text>
  <text x="652" y="177" text-anchor="middle" fill="white" font-size="13">&#8364;40 / day</text>
  <rect x="150" y="205" width="450" height="24" rx="12" fill="rgba(165,213,73,0.1)" stroke="#A5D549" stroke-width="0.5"/>
  <text x="375" y="222" text-anchor="middle" fill="rgba(255,255,255,0.7)" font-size="11">General guideline: &#8364;50-&#8364;100 per day per person</text>
</svg>
"@

Write-Host "8/8 bank-balance..."
Replace-SvgInFile -FilePath "D:\ahit health\my-visa-assistance\blog\schengen-visa-bank-balance-guide\index.html" -OldSvg $svg8_old -NewSvg $svg8_new

Write-Host "`nDone! All blog SVGs enhanced."
