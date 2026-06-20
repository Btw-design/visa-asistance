# Script: add-country-logos-strip.ps1
# Adds the scrolling country logos strip to all HTML pages (except homepage which already has it)

$base = "D:\ahit health\my-visa-assistance"

# The country logos strip HTML to insert
$stripHtml = @"
  <!-- Country Logos Scrolling Strip -->
  <div class="country-logos-strip" role="region" aria-label="Country flags">
    <div class="country-logos-track">
      <a href="/visa-guide/usa-visa" class="country-logo-item"><span class="flag">🇺🇸</span> USA</a>
      <a href="/visa-guide/uk-visa" class="country-logo-item"><span class="flag">🇬🇧</span> UK</a>
      <a href="/visa-guide/canada-visa" class="country-logo-item"><span class="flag">🇨🇦</span> Canada</a>
      <a href="/visa-guide/australia-visa" class="country-logo-item"><span class="flag">🇦🇺</span> Australia</a>
      <a href="/visa-guide/schengen-visa" class="country-logo-item"><span class="flag">🇪🇺</span> Schengen</a>
      <a href="/visa-guide/india-visa" class="country-logo-item"><span class="flag">🇮🇳</span> India</a>
      <a href="/visa-guide/japan-visa" class="country-logo-item"><span class="flag">🇯🇵</span> Japan</a>
      <a href="/visa-guide/china-visa" class="country-logo-item"><span class="flag">🇨🇳</span> China</a>
      <a href="/visa-guide/thailand-visa" class="country-logo-item"><span class="flag">🇹🇭</span> Thailand</a>
      <a href="/visa-guide/uae-visa" class="country-logo-item"><span class="flag">🇦🇪</span> UAE</a>
      <a href="/visa-guide/singapore-visa" class="country-logo-item"><span class="flag">🇸🇬</span> Singapore</a>
      <a href="/visa-guide/malaysia-visa" class="country-logo-item"><span class="flag">🇲🇾</span> Malaysia</a>
      <a href="/visa-guide/germany-visa" class="country-logo-item"><span class="flag">🇩🇪</span> Germany</a>
      <a href="/visa-guide/france-visa" class="country-logo-item"><span class="flag">🇫🇷</span> France</a>
      <a href="/visa-guide/italy-visa" class="country-logo-item"><span class="flag">🇮🇹</span> Italy</a>
      <a href="/visa-guide/spain-visa" class="country-logo-item"><span class="flag">🇪🇸</span> Spain</a>
      <a href="/visa-guide/netherlands-visa" class="country-logo-item"><span class="flag">🇳🇱</span> Netherlands</a>
      <a href="/visa-guide/switzerland-visa" class="country-logo-item"><span class="flag">🇨🇭</span> Switzerland</a>
      <a href="/visa-guide/south-korea-visa" class="country-logo-item"><span class="flag">🇰🇷</span> South Korea</a>
      <a href="/visa-guide/turkey-visa" class="country-logo-item"><span class="flag">🇹🇷</span> Turkey</a>
      <a href="/visa-guide/new-zealand-visa" class="country-logo-item"><span class="flag">🇳🇿</span> New Zealand</a>
      <a href="/visa-guide/south-africa-visa" class="country-logo-item"><span class="flag">🇿🇦</span> South Africa</a>
      <a href="/visa-guide/brazil-visa" class="country-logo-item"><span class="flag">🇧🇷</span> Brazil</a>
      <a href="/visa-guide/egypt-visa" class="country-logo-item"><span class="flag">🇪🇬</span> Egypt</a>
      <a href="/visa-guide/russia-visa" class="country-logo-item"><span class="flag">🇷🇺</span> Russia</a>
      <a href="/visa-guide/indonesia-visa" class="country-logo-item"><span class="flag">🇮🇩</span> Indonesia</a>
      <a href="/visa-guide/vietnam-visa" class="country-logo-item"><span class="flag">🇻🇳</span> Vietnam</a>
      <a href="/visa-guide/philippines-visa" class="country-logo-item"><span class="flag">🇵🇭</span> Philippines</a>
      <a href="/visa-guide/usa-visa" class="country-logo-item"><span class="flag">🇺🇸</span> USA</a>
      <a href="/visa-guide/uk-visa" class="country-logo-item"><span class="flag">🇬🇧</span> UK</a>
      <a href="/visa-guide/canada-visa" class="country-logo-item"><span class="flag">🇨🇦</span> Canada</a>
      <a href="/visa-guide/australia-visa" class="country-logo-item"><span class="flag">🇦🇺</span> Australia</a>
      <a href="/visa-guide/schengen-visa" class="country-logo-item"><span class="flag">🇪🇺</span> Schengen</a>
      <a href="/visa-guide/india-visa" class="country-logo-item"><span class="flag">🇮🇳</span> India</a>
      <a href="/visa-guide/japan-visa" class="country-logo-item"><span class="flag">🇯🇵</span> Japan</a>
      <a href="/visa-guide/china-visa" class="country-logo-item"><span class="flag">🇨🇳</span> China</a>
      <a href="/visa-guide/thailand-visa" class="country-logo-item"><span class="flag">🇹🇭</span> Thailand</a>
      <a href="/visa-guide/uae-visa" class="country-logo-item"><span class="flag">🇦🇪</span> UAE</a>
      <a href="/visa-guide/singapore-visa" class="country-logo-item"><span class="flag">🇸🇬</span> Singapore</a>
      <a href="/visa-guide/malaysia-visa" class="country-logo-item"><span class="flag">🇲🇾</span> Malaysia</a>
      <a href="/visa-guide/germany-visa" class="country-logo-item"><span class="flag">🇩🇪</span> Germany</a>
      <a href="/visa-guide/france-visa" class="country-logo-item"><span class="flag">🇫🇷</span> France</a>
      <a href="/visa-guide/italy-visa" class="country-logo-item"><span class="flag">🇮🇹</span> Italy</a>
      <a href="/visa-guide/spain-visa" class="country-logo-item"><span class="flag">🇪🇸</span> Spain</a>
      <a href="/visa-guide/netherlands-visa" class="country-logo-item"><span class="flag">🇳🇱</span> Netherlands</a>
      <a href="/visa-guide/switzerland-visa" class="country-logo-item"><span class="flag">🇨🇭</span> Switzerland</a>
      <a href="/visa-guide/south-korea-visa" class="country-logo-item"><span class="flag">🇰🇷</span> South Korea</a>
      <a href="/visa-guide/turkey-visa" class="country-logo-item"><span class="flag">🇹🇷</span> Turkey</a>
      <a href="/visa-guide/new-zealand-visa" class="country-logo-item"><span class="flag">🇳🇿</span> New Zealand</a>
      <a href="/visa-guide/south-africa-visa" class="country-logo-item"><span class="flag">🇿🇦</span> South Africa</a>
      <a href="/visa-guide/brazil-visa" class="country-logo-item"><span class="flag">🇧🇷</span> Brazil</a>
      <a href="/visa-guide/egypt-visa" class="country-logo-item"><span class="flag">🇪🇬</span> Egypt</a>
      <a href="/visa-guide/russia-visa" class="country-logo-item"><span class="flag">🇷🇺</span> Russia</a>
      <a href="/visa-guide/indonesia-visa" class="country-logo-item"><span class="flag">🇮🇩</span> Indonesia</a>
      <a href="/visa-guide/vietnam-visa" class="country-logo-item"><span class="flag">🇻🇳</span> Vietnam</a>
      <a href="/visa-guide/philippines-visa" class="country-logo-item"><span class="flag">🇵🇭</span> Philippines</a>
    </div>
  </div>

"@

# Find all HTML files (excluding homepage which already has the strip)
$files = Get-ChildItem "$base" -Filter '*.html' -Recurse | Where-Object {
    $_.FullName -notmatch '\\scripts\\' -and
    $_.FullName -notlike "$base\index.html"
}

$count = 0
foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8

    # Check if it already has the strip
    if ($content -match 'country-logos-strip') {
        Write-Host "SKIP (already has): $($file.FullName.Replace($base,''))"
        continue
    }

    # Check if it has the WhatsApp float anchor
    $whatsappPattern = '<a href="https://wa\.me/919022954619\?text=Hi%20I%20need%20help%20with%20visa%20application" target="_blank" rel="noopener noreferrer" class="whatsapp-float"'

    if ($content -match $whatsappPattern) {
        # Insert strip before the WhatsApp float link
        $newContent = $content -replace $whatsappPattern, ($stripHtml + '${0}')
        Set-Content -Path $file.FullName -Value $newContent -Encoding UTF8 -NoNewLine
        $count++
        Write-Host "ADDED: $($file.FullName.Replace($base,''))"
    } else {
        Write-Host "SKIP (no whatsapp): $($file.FullName.Replace($base,''))"
    }
}

Write-Host "`nDone! Added country logos strip to $count pages."
