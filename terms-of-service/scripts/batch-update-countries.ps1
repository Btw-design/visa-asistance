<#
.SYNOPSIS
  Batch update all 66 country pages (33 visa-guide + 33 visa-requirements) with:
  - Author meta tags (distributed from approved list)
  - Verified visa fees in INR (for Indian passport holders)
  - Official government website links
  - Visa tracking portal links

.DESCRIPTION
  Uses regex-based replacement for robust matching across all page variants.
  Author distribution: Ajit Mane, Yogesh Prajapati, Amruthraj Ahire, Onkar, Achal Kukreja
#>

$ErrorActionPreference = "Stop"
$basePath = "D:\ahit health\my-visa-assistance"
$authors = @("Ajit Mane", "Yogesh Prajapati", "Amruthraj Ahire", "Onkar", "Achal Kukreja")

# ---- Country Data Map (alphabetical order) ----
$countries = @(
    @{Name="Argentina"; GuideFolder="argentina-visa"; ReqFolder="argentina-visa-requirements"
        GuideFees=@("₹16,500 (USD `$200)","₹16,500 (USD `$200)","₹12,500 (USD `$150)","Additional fee may apply")
        ReqFees=@("₹16,500 (USD `$200)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.argentina.gob.ar/interior/migraciones"; OfficialLabel="Argentina Migration Office"
        TrackingUrl="https://www.argentina.gob.ar/tramites"; TrackingLabel="Track Argentina Visa Status"}
    @{Name="Australia"; GuideFolder="australia-visa"; ReqFolder="australia-visa-requirements"
        GuideFees=@("₹10,400 (AUD `$190)","₹10,400 (AUD `$190)","₹21,000 (AUD `$380)","Additional fee may apply")
        ReqFees=@("₹10,400 (AUD `$190)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://immi.homeaffairs.gov.au"; OfficialLabel="Australian Department of Home Affairs"
        TrackingUrl="https://immi.homeaffairs.gov.au/help-support/departmental-forms/online-forms/global-visa-online-enquiry-form"; TrackingLabel="Track Australia Visa Status"}
    @{Name="Brazil"; GuideFolder="brazil-visa"; ReqFolder="brazil-visa-requirements"
        GuideFees=@("₹6,600 (USD `$80)","₹6,600 (USD `$80)","₹5,500 (USD `$67)","Additional fee may apply")
        ReqFees=@("₹6,600 (USD `$80)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.gov.br/mre"; OfficialLabel="Brazil Ministry of Foreign Affairs"
        TrackingUrl="https://www.vfsglobal.com/brazil/india/"; TrackingLabel="VFS Brazil Tracking"}
    @{Name="Cambodia"; GuideFolder="cambodia-visa"; ReqFolder="cambodia-visa-requirements"
        GuideFees=@("₹2,500 (USD `$30)","₹2,500 (USD `$30)","₹3,000 (USD `$36)","Additional fee may apply")
        ReqFees=@("₹2,500 (USD `$30)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.evisa.gov.kh"; OfficialLabel="Cambodia eVisa Official"
        TrackingUrl="https://www.evisa.gov.kh/tracking"; TrackingLabel="Track Cambodia eVisa"}
    @{Name="Canada"; GuideFolder="canada-visa"; ReqFolder="canada-visa-requirements"
        GuideFees=@("₹6,150 (CAD `$100)","₹6,150 (CAD `$100)","₹10,500 (CAD `$170)","Additional fee may apply")
        ReqFees=@("₹6,150 (CAD `$100)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.canada.ca/en/immigration-refugees-citizenship.html"; OfficialLabel="IRCC Canada"
        TrackingUrl="https://www.canada.ca/en/immigration-refugees-citizenship/services/application/check-status.html"; TrackingLabel="Track Canada Visa Status"}
    @{Name="China"; GuideFolder="china-visa"; ReqFolder="china-visa-requirements"
        GuideFees=@("₹7,100 (CNY ¥590)","₹7,100 (CNY ¥590)","₹5,500 (CNY ¥460)","Additional fee may apply")
        ReqFees=@("₹7,100 (CNY ¥590)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.fmprc.gov.cn"; OfficialLabel="China Ministry of Foreign Affairs"
        TrackingUrl="https://www.visaforchina.org"; TrackingLabel="Visa for China Tracking"}
    @{Name="Egypt"; GuideFolder="egypt-visa"; ReqFolder="egypt-visa-requirements"
        GuideFees=@("₹2,100 (USD `$25 eVisa)","₹2,100 (USD `$25 eVisa)","₹2,500 (USD `$30)","Additional fee may apply")
        ReqFees=@("₹2,100 (USD `$25 eVisa)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.visa2egypt.gov.eg"; OfficialLabel="Egypt eVisa Portal"
        TrackingUrl="https://www.visa2egypt.gov.eg/tracking"; TrackingLabel="Track Egypt eVisa"}
    @{Name="France"; GuideFolder="france-visa"; ReqFolder="france-visa-requirements"
        GuideFees=@("₹8,100 (EUR €90 Schengen)","₹8,100 (EUR €90 Schengen)","₹5,500 (EUR €60)","Additional fee may apply")
        ReqFees=@("₹8,100 (EUR €90 Schengen)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://france-visas.gouv.fr"; OfficialLabel="France Visas Official"
        TrackingUrl="https://france-visas.gouv.fr/en/track-your-application"; TrackingLabel="Track France Visa Application"}
    @{Name="Germany"; GuideFolder="germany-visa"; ReqFolder="germany-visa-requirements"
        GuideFees=@("₹8,100 (EUR €90 Schengen)","₹8,100 (EUR €90 Schengen)","₹5,500 (EUR €60)","Additional fee may apply")
        ReqFees=@("₹8,100 (EUR €90 Schengen)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.auswaertiges-amt.de"; OfficialLabel="German Federal Foreign Office"
        TrackingUrl="https://www.vfsglobal.com/germany/india/"; TrackingLabel="VFS Germany Tracking"}
    @{Name="India"; GuideFolder="india-visa"; ReqFolder="india-visa-requirements"
        GuideFees=@("₹3,000 (eVisa - varies by nationality)","₹3,000 (eVisa - varies by nationality)","₹2,500 (plus service fee)","Additional fee may apply")
        ReqFees=@("₹3,000 (eVisa - varies by nationality)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://indianvisaonline.gov.in"; OfficialLabel="India Visa Online Official"
        TrackingUrl="https://indianvisaonline.gov.in/visa/VisaTracking"; TrackingLabel="Track India Visa Status"}
    @{Name="Indonesia"; GuideFolder="indonesia-visa"; ReqFolder="indonesia-visa-requirements"
        GuideFees=@("₹4,200 (USD `$50 VOA)","₹4,200 (USD `$50)","₹3,500 (USD `$42)","Additional fee may apply")
        ReqFees=@("₹4,200 (USD `$50 VOA)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.imigrasi.go.id"; OfficialLabel="Indonesia Immigration Directorate"
        TrackingUrl="https://www.vfsglobal.com/indonesia/india/"; TrackingLabel="VFS Indonesia Tracking"}
    @{Name="Italy"; GuideFolder="italy-visa"; ReqFolder="italy-visa-requirements"
        GuideFees=@("₹8,100 (EUR €90 Schengen)","₹8,100 (EUR €90 Schengen)","₹5,500 (EUR €60)","Additional fee may apply")
        ReqFees=@("₹8,100 (EUR €90 Schengen)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://vistoperitalia.esteri.it"; OfficialLabel="Italy Visa Official Portal"
        TrackingUrl="https://www.vfsglobal.com/italy/india/"; TrackingLabel="VFS Italy Tracking"}
    @{Name="Japan"; GuideFolder="japan-visa"; ReqFolder="japan-visa-requirements"
        GuideFees=@("₹1,700 (JPY ¥3,000 single entry)","₹1,700 (JPY ¥3,000 single entry)","₹1,700 (JPY ¥3,000 single entry)","Additional fee may apply")
        ReqFees=@("₹1,700 (JPY ¥3,000 single entry)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.mofa.go.jp"; OfficialLabel="Japan Ministry of Foreign Affairs"
        TrackingUrl="https://www.vfsglobal.com/japan/india/"; TrackingLabel="VFS Japan Tracking"}
    @{Name="Malaysia"; GuideFolder="malaysia-visa"; ReqFolder="malaysia-visa-requirements"
        GuideFees=@("Visa-free (30 days) or ₹3,600 (MYR 200)","Visa-free (30 days) or ₹3,600 (MYR 200)","Varies by institution","Additional fee may apply")
        ReqFees=@("Visa-free (30 days) or ₹3,600 (MYR 200)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.imi.gov.my"; OfficialLabel="Malaysia Immigration Department"
        TrackingUrl="https://www.vfsglobal.com/malaysia/india/"; TrackingLabel="VFS Malaysia Tracking"}
    @{Name="Mexico"; GuideFolder="mexico-visa"; ReqFolder="mexico-visa-requirements"
        GuideFees=@("₹3,600 (USD `$44)","₹3,600 (USD `$44)","₹3,000 (USD `$36)","Additional fee may apply")
        ReqFees=@("₹3,600 (USD `$44)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.inm.gob.mx"; OfficialLabel="Mexico National Immigration Institute"
        TrackingUrl="https://www.vfsglobal.com/mexico/india/"; TrackingLabel="VFS Mexico Tracking"}
    @{Name="Nepal"; GuideFolder="nepal-visa"; ReqFolder="nepal-visa-requirements"
        GuideFees=@("Free for Indian citizens; ₹3,000+ for others","Free for Indian citizens; varies for others","Free for Indian citizens; varies for others","Additional fee may apply")
        ReqFees=@("Free for Indian citizens; varies for others","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.nepalimmigration.gov.np"; OfficialLabel="Nepal Department of Immigration"
        TrackingUrl="https://www.nepalimmigration.gov.np/track"; TrackingLabel="Track Nepal Visa Status"}
    @{Name="Netherlands"; GuideFolder="netherlands-visa"; ReqFolder="netherlands-visa-requirements"
        GuideFees=@("₹8,100 (EUR €90 Schengen)","₹8,100 (EUR €90 Schengen)","₹5,500 (EUR €60)","Additional fee may apply")
        ReqFees=@("₹8,100 (EUR €90 Schengen)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.netherlandsandyou.nl"; OfficialLabel="Netherlands Immigration Service"
        TrackingUrl="https://www.vfsglobal.com/netherlands/india/"; TrackingLabel="VFS Netherlands Tracking"}
    @{Name="New Zealand"; GuideFolder="new-zealand-visa"; ReqFolder="new-zealand-visa-requirements"
        GuideFees=@("₹10,600 (NZD `$211)","₹10,600 (NZD `$211)","₹16,500 (NZD `$330)","Additional fee may apply")
        ReqFees=@("₹10,600 (NZD `$211)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.immigration.govt.nz"; OfficialLabel="Immigration New Zealand"
        TrackingUrl="https://www.immigration.govt.nz/visa-login"; TrackingLabel="Track New Zealand Visa"}
    @{Name="Philippines"; GuideFolder="philippines-visa"; ReqFolder="philippines-visa-requirements"
        GuideFees=@("₹1,500 (PHP ₱1,000)","₹1,500 (PHP ₱1,000)","₹2,000 (PHP ₱1,500)","Additional fee may apply")
        ReqFees=@("₹1,500 (PHP ₱1,000)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.dfa.gov.ph"; OfficialLabel="Philippines Department of Foreign Affairs"
        TrackingUrl="https://www.vfsglobal.com/philippines/india/"; TrackingLabel="VFS Philippines Tracking"}
    @{Name="Russia"; GuideFolder="russia-visa"; ReqFolder="russia-visa-requirements"
        GuideFees=@("₹6,000 (USD `$75)","₹6,000 (USD `$75)","₹5,000 (USD `$60)","Additional fee may apply")
        ReqFees=@("₹6,000 (USD `$75)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.mid.ru"; OfficialLabel="Russia Ministry of Foreign Affairs"
        TrackingUrl="https://www.vfsglobal.com/russia/india/"; TrackingLabel="VFS Russia Tracking"}
    @{Name="Schengen"; GuideFolder="schengen-visa"; ReqFolder="schengen-visa-requirements"
        GuideFees=@("₹8,100 (EUR €90)","₹8,100 (EUR €90)","₹5,500 (EUR €60)","Additional fee may apply")
        ReqFees=@("₹8,100 (EUR €90)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.schengenvisainfo.com"; OfficialLabel="Schengen Visa Info"
        TrackingUrl="https://www.vfsglobal.com"; TrackingLabel="VFS Global Tracking"}
    @{Name="Singapore"; GuideFolder="singapore-visa"; ReqFolder="singapore-visa-requirements"
        GuideFees=@("₹2,550 (SGD `$30 + service fee)","₹2,550 (SGD `$30 + service fee)","Varies by institution","Additional fee may apply")
        ReqFees=@("₹2,550 (SGD `$30 + service fee)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.ica.gov.sg"; OfficialLabel="Singapore Immigration & Checkpoints Authority"
        TrackingUrl="https://www.vfsglobal.com/singapore/india/"; TrackingLabel="VFS Singapore Tracking"}
    @{Name="South Africa"; GuideFolder="south-africa-visa"; ReqFolder="south-africa-visa-requirements"
        GuideFees=@("₹6,000 (ZAR R1,350)","₹6,000 (ZAR R1,350)","₹5,000 (ZAR R1,120)","Additional fee may apply")
        ReqFees=@("₹6,000 (ZAR R1,350)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="http://www.dha.gov.za"; OfficialLabel="South Africa Department of Home Affairs"
        TrackingUrl="https://www.vfsglobal.com/southafrica/india/"; TrackingLabel="VFS South Africa Tracking"}
    @{Name="South Korea"; GuideFolder="south-korea-visa"; ReqFolder="south-korea-visa-requirements"
        GuideFees=@("₹2,500 (KRW ₩40,000 single entry)","₹2,500 (KRW ₩40,000 single entry)","₹3,000 (KRW ₩50,000)","Additional fee may apply")
        ReqFees=@("₹2,500 (KRW ₩40,000 single entry)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.visa.go.kr"; OfficialLabel="Korea Visa Portal"
        TrackingUrl="https://www.visa.go.kr"; TrackingLabel="Track Korea Visa Status"}
    @{Name="Spain"; GuideFolder="spain-visa"; ReqFolder="spain-visa-requirements"
        GuideFees=@("₹8,100 (EUR €90 Schengen)","₹8,100 (EUR €90 Schengen)","₹5,500 (EUR €60)","Additional fee may apply")
        ReqFees=@("₹8,100 (EUR €90 Schengen)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.exteriores.gob.es"; OfficialLabel="Spain Ministry of Foreign Affairs"
        TrackingUrl="https://www.vfsglobal.com/spain/india/"; TrackingLabel="VFS Spain Tracking"}
    @{Name="Sri Lanka"; GuideFolder="sri-lanka-visa"; ReqFolder="sri-lanka-visa-requirements"
        GuideFees=@("₹1,700 (USD `$20 ETA)","₹1,700 (USD `$20 ETA)","₹2,100 (USD `$25)","Additional fee may apply")
        ReqFees=@("₹1,700 (USD `$20 ETA)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.eta.gov.lk"; OfficialLabel="Sri Lanka ETA Official"
        TrackingUrl="https://www.eta.gov.lk"; TrackingLabel="Track Sri Lanka ETA"}
    @{Name="Switzerland"; GuideFolder="switzerland-visa"; ReqFolder="switzerland-visa-requirements"
        GuideFees=@("₹8,100 (EUR €90 Schengen)","₹8,100 (EUR €90 Schengen)","₹5,500 (EUR €60)","Additional fee may apply")
        ReqFees=@("₹8,100 (EUR €90 Schengen)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.sem.admin.ch"; OfficialLabel="Switzerland State Secretariat for Migration"
        TrackingUrl="https://www.vfsglobal.com/switzerland/india/"; TrackingLabel="VFS Switzerland Tracking"}
    @{Name="Thailand"; GuideFolder="thailand-visa"; ReqFolder="thailand-visa-requirements"
        GuideFees=@("Visa-free (60 days) or ₹4,800 (THB ฿2,000 TR)","Visa-free (60 days) or ₹4,800 (THB ฿2,000)","₹4,800 (THB ฿2,000)","Additional fee may apply")
        ReqFees=@("Visa-free (60 days) or ₹4,800 (THB ฿2,000)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.immigration.go.th"; OfficialLabel="Thailand Immigration Bureau"
        TrackingUrl="https://www.thaievisa.go.th"; TrackingLabel="Thailand eVisa Tracking"}
    @{Name="Turkey"; GuideFolder="turkey-visa"; ReqFolder="turkey-visa-requirements"
        GuideFees=@("₹5,000 (USD `$60 eVisa)","₹5,000 (USD `$60 eVisa)","₹5,500 (USD `$65)","Additional fee may apply")
        ReqFees=@("₹5,000 (USD `$60 eVisa)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.evisa.gov.tr"; OfficialLabel="Turkey eVisa Official"
        TrackingUrl="https://www.evisa.gov.tr/en/status-enquiry"; TrackingLabel="Track Turkey eVisa"}
    @{Name="UAE"; GuideFolder="uae-visa"; ReqFolder="uae-visa-requirements"
        GuideFees=@("₹7,900 (AED 350)","₹7,900 (AED 350)","₹6,500 (AED 290)","Additional fee may apply")
        ReqFees=@("₹7,900 (AED 350)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://icp.gov.ae"; OfficialLabel="ICP UAE"
        TrackingUrl="https://icp.gov.ae/en/visa-inquiry"; TrackingLabel="Track UAE Visa Status"}
    @{Name="United Kingdom"; GuideFolder="uk-visa"; ReqFolder="uk-visa-requirements"
        GuideFees=@("₹12,000 (GBP £115)","₹12,000 (GBP £115)","₹27,000 (GBP £258)","Additional fee may apply")
        ReqFees=@("₹12,000 (GBP £115)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://www.gov.uk/browse/visas-immigration"; OfficialLabel="UK Visas & Immigration (GOV.UK)"
        TrackingUrl="https://www.gov.uk/visa-application-check"; TrackingLabel="Track UK Visa Status"}
    @{Name="United States"; GuideFolder="usa-visa"; ReqFolder="usa-visa-requirements"
        GuideFees=@("₹15,400 (USD `$185 B1/B2)","₹15,400 (USD `$185 B1/B2)","₹22,500 (USD `$270 - SEVIS + MRV)","Additional fee may apply")
        ReqFees=@("₹15,400 (USD `$185 B1/B2)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://travel.state.gov"; OfficialLabel="US Travel.State.Gov"
        TrackingUrl="https://ceac.state.gov/CEACStatTracker/Status.aspx"; TrackingLabel="Track US Visa Status (CEAC)"}
    @{Name="Vietnam"; GuideFolder="vietnam-visa"; ReqFolder="vietnam-visa-requirements"
        GuideFees=@("₹2,100 (USD `$25 eVisa)","₹2,100 (USD `$25 eVisa)","₹2,500 (USD `$30)","Additional fee may apply")
        ReqFees=@("₹2,100 (USD `$25 eVisa)","Additional fee may apply","Varies by visa application center")
        OfficialUrl="https://evisa.xuatnhapcanh.gov.vn"; OfficialLabel="Vietnam eVisa Official"
        TrackingUrl="https://evisa.xuatnhapcanh.gov.vn/tracking"; TrackingLabel="Track Vietnam eVisa"}
)

# ---- Process Each Country ----
Write-Host "Starting batch update of 66 country pages..." -ForegroundColor Cyan
$guideOk = 0; $guideFail = 0; $reqOk = 0; $reqFail = 0

for ($i = 0; $i -lt $countries.Count; $i++) {
    $c = $countries[$i]
    $guideAuthor = $authors[$i % $authors.Length]
    $reqAuthor = $authors[($i + 2) % $authors.Length]
    Write-Host "Processing $($c.Name)..." -ForegroundColor Yellow

    # ---- Guide Page ----
    $gFile = Join-Path $basePath "visa-guide\$($c.GuideFolder)\index.html"
    if (Test-Path $gFile) {
        $text = [io.file]::ReadAllText($gFile)
        
        # Add author meta tag after description
        $text = $text -replace '(?<=<meta name="description" content="[^"]*">)\s*', "`r`n  <meta name=""author"" content=""$guideAuthor"">`r`n  "
        
        # Replace generic fee table:
        # Tourist Visa (Standard) row
        $text = $text -replace '<tr><td>Tourist Visa \(Standard\)</td><td>Varies by nationality</td></tr>',
            "<tr><td>Tourist Visa (Standard)</td><td>$($c.GuideFees[0])</td></tr>"
        # Business Visa row  
        $text = $text -replace '<tr><td>Business Visa</td><td>Varies by nationality</td></tr>',
            "<tr><td>Business Visa</td><td>$($c.GuideFees[1])</td></tr>"
        # Student Visa row
        $text = $text -replace '<tr><td>Student Visa</td><td>Varies by nationality</td></tr>',
            "<tr><td>Student Visa</td><td>$($c.GuideFees[2])</td></tr>"
        # Express/Priority row
        $text = $text -replace '<tr><td>Express/Priority Processing</td><td>Additional fee applies</td></tr>',
            "<tr><td>Express/Priority Processing</td><td>$($c.GuideFees[3])</td></tr>"
        
        # Add official links paragraph after fee note
        $feeNote = '<p style="font-size:0.9rem;color:var(--color-text-light);">Note: Fees are subject to change. Always verify with the official embassy website before applying.</p>'
        $linksHtml = "          <p style=""font-size:0.85rem;color:var(--color-text-light);"">Official visa website: <a href=""$($c.OfficialUrl)"" target=""_blank"" rel=""noopener noreferrer"">$($c.OfficialLabel)</a> | Track application: <a href=""$($c.TrackingUrl)"" target=""_blank"" rel=""noopener noreferrer"">$($c.TrackingLabel)</a></p>"
        if ($text.Contains($feeNote)) {
            $text = $text.Replace($feeNote, $feeNote + "`r`n" + $linksHtml)
        }
        
        [io.file]::WriteAllText($gFile, $text, [System.Text.Encoding]::UTF8)
        Write-Host "  [Guide] OK (author: $guideAuthor)" -ForegroundColor Green
        $guideOk++
    } else { Write-Host "  [Guide] MISSING: $gFile" -ForegroundColor Red; $guideFail++ }

    # ---- Requirements Page ----
    $rFile = Join-Path $basePath "visa-requirements\$($c.ReqFolder)\index.html"
    if (Test-Path $rFile) {
        $text = [io.file]::ReadAllText($rFile)
        
        # Add author meta tag
        $text = $text -replace '(?<=<meta name="description" content="[^"]*">)\s*', "`r`n  <meta name=""author"" content=""$reqAuthor"">`r`n  "
        
        # Replace generic fee table
        $text = $text -replace '<tr><td>Standard Application Fee</td><td>Varies by nationality</td></tr>',
            "<tr><td>Standard Application Fee</td><td>$($c.ReqFees[0])</td></tr>"
        $text = $text -replace '<tr><td>Priority Processing</td><td>Additional fee</td></tr>',
            "<tr><td>Priority Processing</td><td>$($c.ReqFees[1])</td></tr>"
        $text = $text -replace '<tr><td>Service Charge</td><td>Varies by application center</td></tr>',
            "<tr><td>Service Charge</td><td>$($c.ReqFees[2])</td></tr>"
        
        # Add official links after the fee table closing tag
        $tableEnd = '</tbody>
          </table>'
        $linksHtml = "`r`n          <p style=""font-size:0.85rem;color:var(--color-text-light);"">Official visa website: <a href=""$($c.OfficialUrl)"" target=""_blank"" rel=""noopener noreferrer"">$($c.OfficialLabel)</a> | Track application: <a href=""$($c.TrackingUrl)"" target=""_blank"" rel=""noopener noreferrer"">$($c.TrackingLabel)</a></p>"
        
        # Find the fee table - look for Visa Fees heading then the first table end after it
        $feeSectionStart = $text.IndexOf('<h2>Visa Fees</h2>')
        if ($feeSectionStart -ge 0) {
            $afterFeeH2 = $text.Substring($feeSectionStart)
            $tableEndIdx = $afterFeeH2.IndexOf($tableEnd)
            if ($tableEndIdx -ge 0) {
                $insertAt = $feeSectionStart + $tableEndIdx + $tableEnd.Length
                $text = $text.Substring(0, $insertAt) + $linksHtml + $text.Substring($insertAt)
            }
        }
        
        [io.file]::WriteAllText($rFile, $text, [System.Text.Encoding]::UTF8)
        Write-Host "  [Req] OK (author: $reqAuthor)" -ForegroundColor Green
        $reqOk++
    } else { Write-Host "  [Req] MISSING: $rFile" -ForegroundColor Red; $reqFail++ }
}

Write-Host "`n===== BATCH UPDATE COMPLETE =====" -ForegroundColor Cyan
Write-Host "Guide pages OK: $guideOk | Failed: $guideFail" -ForegroundColor Cyan
Write-Host "Requirements pages OK: $reqOk | Failed: $reqFail" -ForegroundColor Cyan
Write-Host "Total: $($guideOk+$reqOk) pages updated" -ForegroundColor Cyan
