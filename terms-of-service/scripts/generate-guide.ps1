<#
.SYNOPSIS
  Builds a complete visa guide HTML page from country data + reusable fragments.
.DESCRIPTION
  Extracts shared HTML fragments (head, header, nav, footer) from the Australia
  template once, then composes each country page by injecting country-specific
  title/meta + hero + generated content body + shared footer.
  Must be dot-sourced; call New-CountryGuidePage for each country.
#>

function New-CountryGuidePage {
    param(
        [hashtable]$C
    )

    # === Helper: INR range from local fee ===
    function Get-InrRange($localFee, $currencyCode) {
        $rates = @{
            USD = 83.2; EUR = 90.5; GBP = 105.8; CAD = 61.5; AUD = 55.0
            NZD = 51.0; SGD = 61.8; MYR = 17.8; THB = 2.35; JPY = 0.57
            KRW = 0.063; CNY = 11.5; PHP = 1.48; ZAR = 4.65; AED = 22.65
            TRY = 2.55; IDR = 0.0053; VND = 0.0034; EGP = 1.72; RUB = 0.92
            BRL = 16.80; MXN = 4.85; LKR = 0.28; NPR = 0.63; KHR = 0.021
            ILS = 22.50; CHF = 92.0
        }
        $rate = $rates[$currencyCode]
        if (-not $rate) { $rate = 80.0 }
        $localFeeNum = 0
        if ($localFee -match '[\d,]+') {
            $localFeeNum = [double]($matches[0] -replace ',', '')
        }
        if ($localFeeNum -eq 0) { return "" }
        $min = [int]($localFeeNum * $rate * 0.95)
        $max = [int]($localFeeNum * $rate * 1.05)
        if ($min -eq $max) { $max = $min + 100 }
        return "Rs. {0:N0} to Rs. {1:N0}" -f $min, $max
    }

    # === Build computed props ===
    $slug = $C.name.ToLower() -replace ' ', '-'
    $slugFolder = $slug + '-visa'
    $h1 = "$($C.name) Visa for Indians 2026: Types, Fees, Process &amp; Requirements"
    $pageTitle = "$($C.name) Visa for Indians 2026: Types, Fees, Process & Requirements - My Visa Assistance"
    $introClean = $C.intro -replace '<[^>]+>', ''
    # Truncate at a word boundary near the limit
    $maxLen = [Math]::Min(200, $introClean.Length)
    $trunc = $introClean.Substring(0, $maxLen)
    $lastSpace = $trunc.LastIndexOf(' ')
    if ($lastSpace -gt 80) { $trunc = $trunc.Substring(0, $lastSpace) }
    $pageDesc = $trunc + " - Fees, processing times, and step-by-step guide."
    
    $maxLen2 = [Math]::Min(160, $introClean.Length)
    $trunc2 = $introClean.Substring(0, $maxLen2)
    $lastSpace2 = $trunc2.LastIndexOf(' ')
    if ($lastSpace2 -gt 60) { $trunc2 = $trunc2.Substring(0, $lastSpace2) }
    $ogDesc = $trunc2 + "."

    $canonical = "https://www.myvisaassistance.com/visa-guide/$slugFolder"
    $reqUrl = "https://www.myvisaassistance.com/visa-requirements/$slug-visa-requirements"

    $C["slug"] = $slug
    $C["slugFolder"] = $slugFolder
    $C["reqUrl"] = $reqUrl
    $C["canonical"] = $canonical
    $C["h1"] = $h1
    $C["pageTitle"] = $pageTitle

    # === Build tables ===
    # Available/Not Available
    $availHtml = ""
    foreach ($item in $C.availableNotAvailable) {
        $availHtml += "              <tr><td>$($item.can)</td><td>$($item.answer)</td><td>$($item.detail)</td></tr>`n"
    }

    # Visa types overview (6 columns) + processing time (4 columns)
    $visaTableHtml = ""
    $procTableHtml = ""
    foreach ($vt in $C.visaTypes) {
        $visaTableHtml += "              <tr><td>$($vt.type)</td><td>$($vt.subclass)</td><td>$($vt.purpose)</td><td>$($vt.maxStay)</td><td>$($vt.processing)</td><td>$($vt.feeLocal)</td></tr>`n"
        $procTableHtml += "              <tr><td>$($vt.type)</td><td>$($vt.subclass)</td><td>$($vt.processing)</td><td>Varies by application volume and completeness</td></tr>`n"
    }

    # Fees two-column (local + INR)
    $feesTableHtml = ""
    foreach ($vt in $C.visaTypes) {
        $inrRange = Get-InrRange -localFee $vt.feeLocal -currencyCode $C.currency
        $feeInrCell = if ($inrRange) { $inrRange } else { $vt.feeInr }
        $feesTableHtml += "              <tr><td>$($vt.type)</td><td>$($vt.subclass)</td><td>$($vt.feeLocal)</td><td>$feeInrCell</td></tr>`n"
    }

    # Additional costs
    $addCostsHtml = ""
    foreach ($ac in $C.additionalCosts) {
        $amt = if ($ac.amount -match '^[A-Z]') { $ac.amount } else { "Rs. " + $ac.amount }
        $addCostsHtml += "              <tr><td>$($ac.type)</td><td>$amt</td><td>$($ac.detail)</td></tr>`n"
    }

    # Document-specific short descriptions
    $docSpecific = ""
    foreach ($vt in $C.visaTypes) {
        $docSpecific += "          <h3>$($vt.type) &mdash; $($vt.subclass)</h3>`n"
        $docSpecific += "          <p><strong>Best for:</strong> $($vt.purpose).</p>`n"
    }

    # FAQ
    $faqHtml = ""
    foreach ($fq in $C.faqs) {
        $qSafe = $fq.q -replace '"', '&quot;'
        $faqHtml += @"
            <div class="faq-item">
              <button class="faq-question" aria-expanded="false">$($fq.q)<span class="faq-icon">+</span></button>
              <div class="faq-answer"><p>$($fq.a)</p></div>
            </div>
"@
    }

    # 2026 Updates
    $updatesHtml = ""
    foreach ($up in $C.updates2026) {
        $updatesHtml += "              <tr><td>$($up.change)</td><td>$($up.previous)</td><td>$($up.current)</td></tr>`n"
    }

    # Process steps (generic)
    $steps = @"
          <p><strong>Step 1: Choose Your Visa Type and Check Eligibility</strong><br>Use the official visa finder or this guide to select the correct visa category. Check eligibility requirements including financial capacity and supporting documents.</p>

          <p><strong>Step 2: Complete the Online Application Form</strong><br>Fill out the online visa application form with accurate personal details, passport information, and travel history. Any discrepancy can lead to refusal.</p>

          <p><strong>Step 3: Pay the Visa Fee</strong><br>Pay the non-refundable visa fee online via credit/debit card. Your bank will apply the current exchange rate plus forex markup.</p>

          <p><strong>Step 4: Schedule and Attend the Visa Interview</strong><br>Book an appointment at the nearest embassy or consulate. Carry all required documents. Be prepared to answer questions about your travel plans, financial status, and ties to India.</p>

          <p><strong>Step 5: Complete Biometrics</strong><br>Provide fingerprints and photograph at the designated application center. Walk-ins are not accepted at most centers.</p>

          <p><strong>Step 6: Wait for Processing and Track Online</strong><br>Processing times vary by visa category. Track your application status online using the reference number provided.</p>

          <p><strong>Step 7: Receive Decision and Collect Passport</strong><br>If approved, your passport will be stamped with the visa or you will receive an electronic authorization. Check the visa conditions carefully.</p>
"@

    # Travel insurance paragraph
    $insuranceText = @"
          <p>Travel insurance is recommended for all visitors to $($C.name):</p>
          <ul>
            <li><strong>Tourist/Business Visitors:</strong> Comprehensive travel insurance covering medical emergencies, trip cancellation, and baggage loss is strongly recommended.</li>
            <li><strong>Students:</strong> Health insurance is mandatory for student visa holders. Coverage must meet the minimum requirements set by the university or immigration authorities.</li>
            <li><strong>Work Visa Holders:</strong> Employer-provided health coverage is typically required.</li>
          </ul>
"@

    # Banking nuances table
    $bankingTable = @"
          <table class="visa-table">
            <thead><tr><th>Bank</th><th>Statement Features</th><th>Accepted?</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>SBI</td><td>Passbook + online statement with branch seal</td><td>Yes</td><td>Most widely accepted. Ensure statements are stamped and signed by branch manager</td></tr>
              <tr><td>HDFC Bank</td><td>Digital statements with QR code verification</td><td>Yes</td><td>Save as PDF with visible bank logo and account holder name</td></tr>
              <tr><td>ICICI Bank</td><td>E-statements with digital signature</td><td>Yes</td><td>Some assessing officers prefer wet-stamped copies</td></tr>
              <tr><td>Axis Bank</td><td>Online statements with transaction details</td><td>Yes</td><td>Add a salary credit highlight for clarity</td></tr>
              <tr><td>Yes Bank / Kotak</td><td>App-generated statements with branch counterfoil</td><td>Yes</td><td>Get branch-stamped versions to avoid delays</td></tr>
              <tr><td>PNB / Canara / BoB</td><td>Passbook-based + supplementary statement</td><td>Yes (may need branch visit)</td><td>Passbook entries with branch seal; request separate statement letter</td></tr>
              <tr><td>Education Loan</td><td>Loan sanction letter + disbursement schedule</td><td>Yes (strongest evidence)</td><td>Education loans demonstrate organized financial planning and third-party verification</td></tr>
            </tbody>
          </table>
"@

    # Sidebar popular visa types
    $sidebarVisaList = ""
    $counter = 0
    foreach ($vt in $C.visaTypes) {
        if ($counter -ge 5) { break }
        $sidebarVisaList += "              <li><a href=`"#fees`">$($vt.type) ($($vt.subclass)) - $($vt.feeLocal)</a></li>`n"
        $counter++
    }

    # === Build the BODY content ===
    $body = @"
  <style>
    .update-bar{background:#f8fafc;border:1px solid #e5e7eb;border-radius:10px;padding:14px 20px;margin-bottom:28px;font-size:0.88rem;color:var(--color-text-light);line-height:1.7;border-left:3px solid var(--color-accent)}
    .update-bar strong{color:var(--color-text);font-weight:600}
    .quick-overview{width:100%;border-collapse:collapse;margin:18px 0 28px;font-size:0.9rem;border-radius:10px;overflow:hidden;border:1px solid #e5e7eb}
    .quick-overview td,.quick-overview th{border:1px solid #f3f4f6;padding:12px 18px;vertical-align:top}
    .quick-overview th{background:#f8fafc;font-weight:700;color:var(--color-primary-dark);width:28%;font-size:0.85rem;text-transform:uppercase;letter-spacing:0.5px}
    .quick-overview td{background:#fff;color:var(--color-text)}
    .info-box{background:#f8fafc;border:1px solid #e5e7eb;border-left:4px solid var(--color-accent);padding:22px 24px;margin:24px 0;border-radius:0 10px 10px 0}
    .info-box h4{margin:0 0 8px;color:var(--color-primary);font-size:1.05rem}
    .info-box p{margin:0 0 8px;color:var(--color-text-light);font-size:0.92rem;line-height:1.7}
    .info-box p:last-child{margin:0}
    .main-content h2{margin-top:2em;margin-bottom:14px;padding-bottom:10px;border-bottom:3px solid var(--color-accent);display:inline-block;font-size:1.5rem;color:var(--color-primary)}
    .main-content h2:first-of-type{margin-top:0}
    .main-content h3{margin-top:1.5em;margin-bottom:10px;font-size:1.15rem;color:var(--color-primary-dark)}
    .visa-table{width:100%;border-collapse:collapse;margin:18px 0 28px;font-size:0.9rem;border-radius:10px;overflow:hidden;border:1px solid #e5e7eb}
    .visa-table thead th{background:#f8fafc;color:var(--color-primary-dark);padding:12px 14px;text-align:left;font-weight:700;font-size:0.85rem;text-transform:uppercase;letter-spacing:0.5px;border-bottom:2px solid var(--color-accent)}
    .visa-table td,.visa-table th{border:1px solid #f3f4f6;padding:12px 14px;vertical-align:top}
    .visa-table tbody td{background:#fff;color:var(--color-text)}
    .visa-table tbody tr:nth-child(even) td{background:#f8fafc}
    .visa-table tbody tr:hover td{background:rgba(165,213,73,0.06)}
    .visa-table-wrapper{overflow-x:auto;-webkit-overflow-scrolling:touch;margin:0 0 10px;border-radius:10px;border:1px solid #e5e7eb}
    .cta-section{background:linear-gradient(135deg,var(--color-bg-alt),rgba(165,213,73,0.06));border:1px solid #e5e7eb;padding:40px;border-radius:16px;margin:44px 0;text-align:center}
    .cta-section h2{color:var(--color-primary);margin:0 0 12px;font-size:1.5rem;border:none;padding:0;display:block}
    .cta-section h2::after{display:none}
    .cta-section p{color:var(--color-text-light);margin:0 auto 22px;font-size:1.05rem;max-width:550px;line-height:1.6}
    .cta-section .btn{background:var(--color-primary);color:var(--color-white);font-weight:600;padding:14px 38px;font-size:1.05rem;border-radius:var(--radius);transition:var(--transition-slow);box-shadow:0 4px 14px rgba(23,18,153,0.25)}
    .cta-section .btn:hover{background:var(--color-primary-light);transform:translateY(-2px);box-shadow:0 6px 20px rgba(23,18,153,0.35)}
    .sidebar-card{background:var(--color-bg-card);border:1px solid var(--color-border-light);border-radius:10px;padding:22px;margin-bottom:20px}
    .sidebar-card h3{margin:0 0 12px;font-size:1.05rem;color:var(--color-primary-dark);border-bottom:2px solid var(--color-accent);padding-bottom:8px}
    .sidebar-card ul{margin:0;padding:0;list-style:none}
    .sidebar-card ul li{padding:8px 0;border-bottom:1px solid var(--color-border-light);font-size:0.9rem}
    .sidebar-card ul li:last-child{border:none}
    .sidebar-card ul li a{color:var(--color-text-light);text-decoration:none;display:flex;align-items:center;gap:6px;transition:var(--transition)}
    .sidebar-card ul li a:hover{color:var(--color-primary);padding-left:4px}
    .sidebar-card ul li a i{color:var(--color-accent);font-size:0.8rem}
    .sidebar-cta{text-align:center;border:2px solid var(--color-accent)!important;background:var(--color-bg-card)}
    .sidebar-cta h3{color:var(--color-primary-dark)}
    .sidebar-cta p{color:var(--color-text-light);font-size:0.9rem}
    .faq-list{margin:18px 0 28px}
    .faq-item{border:1px solid var(--color-border);border-radius:10px;margin-bottom:10px;overflow:hidden;transition:var(--transition)}
    .faq-item:hover{border-color:var(--color-primary-light)}
    .faq-item.active{border-color:var(--color-accent)}
    .faq-question{width:100%;background:var(--color-white);border:none;padding:16px 20px;text-align:left;font-size:0.95rem;font-weight:600;color:var(--color-text);font-family:var(--font-primary);cursor:pointer;display:flex;justify-content:space-between;align-items:center;gap:12px;transition:var(--transition)}
    .faq-question:hover{background:var(--color-bg-alt)}
    .faq-item.active .faq-question{color:var(--color-primary);background:rgba(165,213,73,0.05)}
    .faq-question .faq-icon{font-size:1.2rem;transition:transform 0.35s ease;flex-shrink:0;width:24px;height:24px;display:flex;align-items:center;justify-content:center;border-radius:50%;background:var(--color-bg-alt);color:var(--color-primary-light)}
    .faq-item.active .faq-question .faq-icon{transform:rotate(45deg);background:var(--color-accent);color:var(--color-primary-dark)}
    .faq-answer{max-height:0;overflow:hidden;transition:max-height 0.4s ease, padding 0.3s ease;padding:0 20px;background:var(--color-white)}
    .faq-item.active .faq-answer{max-height:800px;padding:4px 20px 18px}
    .faq-answer p{margin:0;color:var(--color-text-light);font-size:0.92rem;line-height:1.7}
    .country-content{padding:40px 0 60px;background:var(--color-white)}
    .country-content .content-grid{display:grid;grid-template-columns:1fr 300px;gap:36px;align-items:start}
    .country-content .main-content{min-width:0}
    .sidebar{position:sticky;top:calc(var(--header-height) + 24px)}
    .main-content p{color:var(--color-text);font-size:0.95rem;line-height:1.75;margin:0 0 14px}
    .main-content ul{margin:10px 0 18px;padding:0 0 0 0;list-style:none}
    .main-content ul li{color:var(--color-text);font-size:0.95rem;line-height:1.65;margin-bottom:8px;padding:4px 0 4px 24px;position:relative}
    .main-content ul li::before{content:'';position:absolute;left:4px;top:12px;width:8px;height:8px;background:var(--color-accent);border-radius:50%;opacity:0.7}
    .main-content ol{margin:10px 0 18px;padding:0;counter-reset:step-counter;list-style:none}
    .main-content ol li{counter-increment:step-counter;padding:8px 0 8px 36px;position:relative;color:var(--color-text);font-size:0.95rem;line-height:1.65;margin-bottom:8px}
    .main-content ol li::before{content:counter(step-counter);position:absolute;left:0;top:8px;width:26px;height:26px;background:var(--color-accent);color:var(--color-primary-dark);font-size:0.8rem;font-weight:700;border-radius:50%;display:flex;align-items:center;justify-content:center}
    .alert-box{background:linear-gradient(135deg,#fffbeb,rgba(245,158,11,0.05));border-left:4px solid var(--color-warning);padding:20px 22px;border-radius:0 10px 10px 0;margin-bottom:1.5rem}
    .alert-box p{color:var(--color-text);font-size:0.92rem;margin:0}
    @media(max-width:991px){
      .country-content .content-grid{grid-template-columns:1fr;gap:30px}
      .sidebar{position:static}
      .sidebar-card{padding:18px}
      .main-content h2{font-size:1.35rem}
      .country-content{padding:30px 0 50px}
      .sidebar{display:grid;grid-template-columns:1fr 1fr;gap:20px}
    }
    @media(max-width:767px){
      .country-content{padding:20px 0 40px}
      .country-content .content-grid{gap:24px}
      .update-bar{font-size:0.82rem;padding:12px 14px}
      .quick-overview,.visa-table{font-size:0.82rem}
      .quick-overview td,.quick-overview th,.visa-table td,.visa-table th{padding:10px 12px}
      .quick-overview th{width:35%}
      .visa-table thead th{font-size:0.78rem;padding:10px}
      .info-box{padding:16px 18px}
      .info-box h4{font-size:0.95rem}
      .cta-section{padding:24px 18px}
      .cta-section h2{font-size:1.25rem}
      .cta-section .btn{padding:12px 28px;font-size:0.95rem}
      .main-content h2{font-size:1.25rem;margin-top:28px}
      .main-content h3{font-size:1.05rem}
      .main-content p,.main-content ul li,.main-content ol li{font-size:0.9rem}
      .faq-question{font-size:0.9rem;padding:14px 16px}
      .faq-answer{padding:0 16px}
      .faq-item.active .faq-answer{padding:4px 16px 16px}
      .sidebar-card{padding:16px}
      .sidebar{grid-template-columns:1fr}
    }
    @media(max-width:480px){
      .quick-overview th{width:40%}
      .quick-overview td,.quick-overview th,.visa-table td,.visa-table th{padding:8px 10px}
      .update-bar{font-size:0.78rem;padding:10px 12px}
      .cta-section{padding:20px 14px;margin:28px 0}
      .main-content h2{font-size:1.15rem}
    }
  </style>

  <section class="country-content">
    <div class="container">
      <div class="content-grid">
        <div class="main-content">

          <div class="update-bar">
            <strong>Last Updated:</strong> June 2026 | My Visa Assistance &nbsp;|&nbsp;
            <strong>Author:</strong> My Visa Assistance Editorial Team &nbsp;|&nbsp;
            <strong>Reviewed:</strong> June 2026 &nbsp;|&nbsp;
            <strong>Sources Last Verified:</strong> 01 June 2026 &nbsp;|&nbsp;
            <strong>Next Scheduled Review:</strong> December 2026
          </div>

          <div class="info-box">
            <h4>What is a $($C.name) Visa?</h4>
            <p>$($C.intro)</p>
            <p style="margin-bottom:0;"><strong>2026 Updates at a Glance:</strong> See the <a href="#updates2026">Updates table</a> at the end of this guide for all 2026 changes to fees, visa durations, and policies.</p>
          </div>

          <p><strong>Application Mode:</strong> Online + embassy submission. <strong>Currency:</strong> $($C.currencyName) ($($C.currency)). <strong>Embassy:</strong> $($C.embassy). $($C.embassyDetail)</p>

          <h2>Quick Overview</h2>
          <table class="quick-overview">
            <tbody>
              <tr><th>Visa Required?</th><td>$($C.visaRequired)</td></tr>
              <tr><th>Main Visa Types</th><td>$($C.mainVisaTypes)</td></tr>
              <tr><th>Processing Time</th><td>$($C.procTime)</td></tr>
              <tr><th>Visa Fee Range</th><td>$($C.feeRange)</td></tr>
              <tr><th>Financial Requirement</th><td>$($C.financialReq)</td></tr>
              <tr><th>Maximum Stay</th><td>$($C.maxStay)</td></tr>
              <tr><th>Biometrics</th><td>$($C.bioMandatory)</td></tr>
              <tr><th>Health Insurance</th><td>$($C.insuranceReq)</td></tr>
              <tr><th>Application Centers</th><td>$($C.appCenters)</td></tr>
              <tr><th>English Requirement</th><td>$($C.englishReq)</td></tr>
              <tr><th>Approval Rate</th><td>$($C.approvalRate)</td></tr>
            </tbody>
          </table>

          <h2>What is a $($C.name) Visa?</h2>
          <p>$($C.intro)</p>
          <p>$($C.stats)</p>

          <h3>Do Indians Need a Visa for $($C.name)?</h3>
          <p>$($C.needVisa)</p>

          <h3>What Is Available and Not Available</h3>
          <table class="visa-table">
            <thead><tr><th>Can Indians...</th><th>Yes/No</th><th>Details</th></tr></thead>
            <tbody>
$availHtml            </tbody>
          </table>

          <h2>Types of $($C.name) Visas for Indians</h2>
          <p>$($C.name) offers multiple visa pathways for Indian citizens depending on your purpose: short visits, study, work, or permanent residency.</p>

          <table class="visa-table">
            <thead><tr><th>Visa Type</th><th>Subclass</th><th>Purpose</th><th>Max Stay</th><th>Processing</th><th>Fee ($($C.currency))</th></tr></thead>
            <tbody>
$visaTableHtml            </tbody>
          </table>

          <h2 id="fees">$($C.name) Visa Fees for Indians 2026</h2>
          <p>Visa fees vary significantly by category. All fees are non-refundable and subject to change based on exchange rates.</p>

          <table class="visa-table">
            <thead><tr><th>Visa Type</th><th>Subclass</th><th>Fee ($($C.currency))</th><th>Fee (Rs. Approx)</th></tr></thead>
            <tbody>
$feesTableHtml            </tbody>
          </table>

          <h3>Additional Costs</h3>
          <table class="visa-table">
            <thead><tr><th>Cost Type</th><th>Amount (Rs.)</th><th>Details</th></tr></thead>
            <tbody>
$addCostsHtml            </tbody>
          </table>

          <h2>Documents Required for $($C.name) Visa</h2>
          <p>Every $($C.name) visa application requires proof of identity, purpose of visit, and financial capacity.</p>

          <h3>Core Documents (All Visa Types)</h3>
          <ul>
            <li><strong>Valid Indian passport</strong> &mdash; Must have at least 6 months validity beyond intended stay. At least 2 blank pages.</li>
            <li><strong>Digital photograph</strong> &mdash; 2x2 inches (51x51mm), white background, taken within 6 months.</li>
            <li><strong>Completed online application</strong> &mdash; Via the official portal. All details must match your passport exactly.</li>
            <li><strong>Previous visas and travel history</strong> &mdash; Include copies of previous visas and travel stamps.</li>
            <li><strong>Cover letter</strong> &mdash; Explaining purpose of visit, duration, and itinerary.</li>
          </ul>

$docSpecific
          <div class="info-box">
            <h4>Why Financial Evidence Matters</h4>
            <p>Immigration authorities need assurance that you can support yourself without working illegally or relying on public funds. Incomplete or inconsistent financial documentation is a leading cause of refusal for Indian applicants.</p>
          </div>

          <h3>Indian Banking Nuances for $($C.name) Visa</h3>
$bankingTable

          <h2>$($C.name) Visa Application Process for Indians</h2>
          <p>The application process typically involves the following steps:</p>

$steps

          <h2>Processing Time for $($C.name) Visa from India</h2>
          <p>Processing times vary significantly by visa category:</p>

          <table class="visa-table">
            <thead><tr><th>Visa Type</th><th>Subclass</th><th>Processing Time</th><th>Notes</th></tr></thead>
            <tbody>
$procTableHtml            </tbody>
          </table>

          <div class="info-box">
            <h4>Processing Time Note</h4>
            <p>Processing times are estimates and Indian applications may take longer if additional verification is needed. Apply well in advance of your planned travel date.</p>
          </div>

          <h2>Travel Insurance Requirements</h2>
$insuranceText

          <h2 id="faq">Frequently Asked Questions</h2>
          <div class="faq-list" style="max-width:100%;">
$faqHtml
          </div>

          <h2 id="updates2026">$($C.name) Visa Updates 2026 &mdash; What Has Changed</h2>
          <table class="visa-table">
            <thead><tr><th>Change</th><th>Previous</th><th>Current (2026)</th></tr></thead>
            <tbody>
$updatesHtml            </tbody>
          </table>

          <h2>Official Resources</h2>
          <ul>
$($C.officialResources)
          </ul>

          <div class="cta-section">
            <h2>Need Help With Your $($C.name) Visa Application?</h2>
            <p>Our India-focused visa consultants can guide you through the entire $($C.name) visa application process.</p>
            <a href="/contact" class="btn">Contact My Visa Assistance</a>
          </div>

          <p><em>Browse our <a href="/visa-guide/">complete visa guide directory</a> for guides covering 100+ destination countries for Indian passport holders. See also the <a href="$($C.reqUrl)">$($C.name) visa requirements page</a> for a detailed checklist.</em></p>

        </div>

        <aside class="sidebar">
          <div class="sidebar-card">
            <h3>Quick Facts</h3>
            <ul>
              <li><strong>Country:</strong> $($C.name)</li>
              <li><strong>Capital:</strong> $($C.capital)</li>
              <li><strong>Visa Required:</strong> Yes (for Indians)</li>
              <li><strong>Currency:</strong> $($C.currencyName) ($($C.currency))</li>
              <li><strong>Processing:</strong> $($C.procTime)</li>
              <li><strong>Biometrics:</strong> $($C.bioMandatory)</li>
            </ul>
          </div>

          <div class="sidebar-card">
            <h3>Popular Visa Types</h3>
            <ul>
$sidebarVisaList            </ul>
          </div>

          <div class="sidebar-card sidebar-cta">
            <h3>Need Visa Help?</h3>
            <p>Our experts can guide you through the $($C.name) visa process.</p>
            <a href="/contact" class="btn btn-primary" style="margin-bottom:8px;">Get Assistance</a>
            <a href="https://wa.me/919022954619?text=Hi%20I%20need%20help%20with%20$($C.name)%20visa" target="_blank" rel="noopener noreferrer" class="btn btn-lg" style="background:#25D366;color:white;display:block;text-align:center;"><i class="bi bi-whatsapp"></i> WhatsApp Us</a>
          </div>

          <div class="sidebar-card">
            <h3>Related Guides</h3>
            <ul>
              <li><a href="$($C.reqUrl)">$($C.name) Visa Requirements</a></li>
              <li><a href="/visa-guide/">View All Countries</a></li>
            </ul>
          </div>

          <div class="sidebar-card">
            <h3>Share This Guide</h3>
            <p style="font-size:0.85rem;color:var(--color-text-light);">Help others find this information</p>
            <div style="display:flex;gap:10px;margin-top:10px;">
              <a href="https://www.facebook.com/sharer/sharer.php?u=$([System.Uri]::EscapeUriString($canonical))" target="_blank" rel="noopener noreferrer" style="color:#1877F2;font-size:1.5rem;" aria-label="Share on Facebook"><i class="bi bi-facebook"></i></a>
              <a href="https://twitter.com/intent/tweet?text=$([System.Uri]::EscapeUriString($pageTitle))&url=$([System.Uri]::EscapeUriString($canonical))" target="_blank" rel="noopener noreferrer" style="color:#1DA1F2;font-size:1.5rem;" aria-label="Share on Twitter"><i class="bi bi-twitter-x"></i></a>
              <a href="https://wa.me/?text=$([System.Uri]::EscapeUriString($pageTitle))%20$([System.Uri]::EscapeUriString($canonical))" target="_blank" rel="noopener noreferrer" style="color:#25D366;font-size:1.5rem;" aria-label="Share on WhatsApp"><i class="bi bi-whatsapp"></i></a>
              <a href="https://www.linkedin.com/shareArticle?mini=true&url=$([System.Uri]::EscapeUriString($canonical))" target="_blank" rel="noopener noreferrer" style="color:#0A66C2;font-size:1.5rem;" aria-label="Share on LinkedIn"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
        </aside>
      </div>
    </div>
  </section>
"@

    # === Build head section: starting from Australia head, replace only title & meta ===
    $basePath = "D:\ahit health\my-visa-assistance"
    $austContent = Get-Content -LiteralPath "$basePath\visa-guide\australia-visa\index.html" -Raw
    $lines = $austContent -split "`n"

    # Locate boundaries
    $headEnd = -1; $heroEndLine = -1; $footerStart = -1
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match '</head>') { $headEnd = $i }
        if ($lines[$i] -match '<footer class="footer"') { $footerStart = $i }
    }
    # Find the hero closing: </div></div> after country-hero section
    for ($i = 110; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match '<section class="country-content"') { $heroEndLine = $i - 1; break }
    }

    if ($headEnd -lt 0 -or $footerStart -lt 0 -or $heroEndLine -lt 0) {
        Write-Error "Could not parse Australia template boundaries"
        return -1
    }

    # Extract fragments
    $headHtml = ($lines[0..$headEnd] -join "`n")
    $headerHtml = ($lines[($headEnd+1)..$heroEndLine] -join "`n")
    $footerHtml = ($lines[$footerStart..($lines.Count-1)] -join "`n")

    # Replace title, meta, canonical, og tags in head
    $headHtml = $headHtml -replace '<title>[^<]+</title>', "<title>$pageTitle</title>"
    
    $repl = '<meta name="description" content="' + $pageDesc + '">'
    $headHtml = $headHtml -replace '<meta name="description" content="[^"]*">', $repl
    
    $repl = '<meta property="og:title" content="' + $h1 + '">'
    $headHtml = $headHtml -replace '<meta property="og:title" content="[^"]*">', $repl
    
    $repl = '<meta property="og:description" content="' + $ogDesc + '">'
    $headHtml = $headHtml -replace '<meta property="og:description" content="[^"]*">', $repl
    
    $repl = '<meta property="og:url" content="' + $canonical + '">'
    $headHtml = $headHtml -replace '<meta property="og:url" content="[^"]*">', $repl
    
    $repl = '<link rel="canonical" href="' + $canonical + '">'
    $headHtml = $headHtml -replace '<link rel="canonical" href="[^"]*">', $repl

    # Update author
    $headHtml = $headHtml -replace '<meta name="author" content="[^"]*">', '<meta name="author" content="My Visa Assistance Editorial Team">'

    # Replace hero h1 and subtitle
    $headerHtml = $headerHtml -replace '<h1>[^<]+</h1>', "<h1>$h1</h1>"
    $heroP = '<p style="color:rgba(255,255,255,0.85);font-size:1.1rem;">'
    $newHeroP = $heroP + 'Complete guide to ' + $C.name + ' visas for Indian citizens &mdash; covering all visa types with 2026 fees, processing times, and step-by-step application guidance.</p>'
    $headerHtml = $headerHtml -replace '<p style="color:rgba\(255,255,255,0\.85\);font-size:1\.1rem;\">[^<]+</p>', $newHeroP

    # Replace breadcrumb
    $headerHtml = $headerHtml -replace '<span>Australia Visa</span>', "<span>$($C.name) Visa</span>"

    # Combine everything
    $fullHtml = $headHtml + "`n" + $headerHtml + "`n" + $body + "`n" + $footerHtml

    # Write file
    $outPath = "$basePath\visa-guide\$slugFolder\index.html"
    [System.IO.File]::WriteAllText($outPath, $fullHtml, [System.Text.UTF8Encoding]::new($false))

    $size = $fullHtml.Length
    Write-Host "OK  $($C.name) -> $slugFolder ($size chars)"
    return $size
}
