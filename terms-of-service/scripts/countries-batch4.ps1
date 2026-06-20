if (-not $global:countryData) { $global:countryData = @{} }

# =====================================================================
# New Zealand
# =====================================================================
$global:countryData["new-zealand"] = @{
    name = "New Zealand"
    capital = "Wellington"
    currency = "NZD"
    currencyName = "New Zealand Dollar"
    currencySymbol = "NZD"
    embassy = "New Zealand High Commission, New Delhi"
    embassyDetail = "Also accredited to India from Wellington"
    visaRequired = "Yes, Indian citizens need a visa for all travel to New Zealand"
    mainVisaTypes = "NZeTA (Visitor), Visitor Visa, Student Visa, Work Visa, Skilled Migrant Resident Visa, Working Holiday Visa"
    procTime = "NZeTA: Instant-72 hours; Visitor: 20-45 days; Student: 6-8 weeks; Work: 2-4 months; Skilled: 6-12 months"
    feeRange = "NZD 9 (NZeTA) to NZD 4,290 (Skilled Migrant)"
    financialReq = "Students: NZD 20,000/year living costs; Visitors: NZD 1,000 per month of stay"
    maxStay = "NZeTA: 3 months; Visitor: 3-9 months; Student: course duration + 3 months; Work: 1-3 years; PR: indefinite"
    bioMandatory = "Required for Visitor, Student, and Work visa applicants"
    insuranceReq = "Mandatory for student visa holders; strongly recommended for all others"
    appCenters = "VFS Global centers in New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Cochin, Ahmedabad, Chandigarh, Pune"
    englishReq = "IELTS 6.0 (student); IELTS 6.5 (skilled migration); no test for NZeTA"
    approvalRate = "NZeTA: ~95%; Visitor: ~85%; Student: ~80%; Skilled Migrant: varies by occupation"
    intro = "A New Zealand visa is an official authorization that allows Indian citizens to enter New Zealand for tourism, study, work, or immigration. New Zealand operates a points-based immigration system managed by Immigration New Zealand (INZ), with most applications submitted online."
    stats = "New Zealand welcomed over 75,000 Indian visitors in 2024, with the Indian diaspora exceeding 240,000. India is the second-largest source of international students in New Zealand, with over 35,000 students enrolled. Indian skilled migrants are among the top nationalities receiving resident visas."
    needVisa = "Yes. Indian passport holders must obtain a visa or travel authorization before traveling to New Zealand. India is not among the visa-waiver countries. However, the NZeTA (New Zealand Electronic Travel Authority) makes short tourist visits simple and affordable for Indian citizens."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 3 months)"; answer = "Yes (NZeTA)"; detail = "Online application via app or website; NZD 9; approval within 72 hours"}
        @{can = "Travel for business meetings"; answer = "Yes (NZeTA or Visitor)"; detail = "Must not include paid work for a NZ employer"}
        @{can = "Study at a NZ university"; answer = "Yes (Student Visa)"; detail = "Requires offer of place from NZ institution; must show sufficient funds"}
        @{can = "Work as a skilled professional"; answer = "Yes (Work Visa)"; detail = "Employer-sponsored or Skilled Migrant category"}
        @{can = "Work after study"; answer = "Yes (Post-study Work Visa)"; detail = "1-3 years depending on qualification level"}
        @{can = "Transit through New Zealand"; answer = "Yes (Transit visa may be needed)"; detail = "NZeTA holders can transit; others may need a Transit Visa"}
        @{can = "Live permanently"; answer = "Yes (Resident Visa)"; detail = "Via Skilled Migrant, Family, or Investor categories"}
        @{can = "Work holiday (age 18-30)"; answer = "Yes (Working Holiday)"; detail = "Available to Indian citizens; quota-based; 12 months"}
    )
    visaTypes = @(
        @{type = "NZeTA (Electronic Travel Authority)"; subclass = "NZeTA"; purpose = "Tourism, short business visits up to 3 months"; maxStay = "3 months per visit"; processing = "Instant-72 hours"; feeLocal = "NZD 9"; feeInr = "470 to 500"}
        @{type = "Visitor Visa"; subclass = "General Visitor"; purpose = "Tourism, family visits longer than 3 months"; maxStay = "3-9 months"; processing = "20-45 days"; feeLocal = "NZD 246"; feeInr = "12,500 to 13,200"}
        @{type = "Student Visa"; subclass = "Fee-Paying Student"; purpose = "Full-time study at NZ institution"; maxStay = "Course duration + 3 months"; processing = "6-8 weeks"; feeLocal = "NZD 375"; feeInr = "19,100 to 19,800"}
        @{type = "Post-study Work Visa"; subclass = "Post-study"; purpose = "Work after NZ qualification"; maxStay = "1-3 years"; processing = "3-6 months"; feeLocal = "NZD 700"; feeInr = "35,600 to 37,000"}
        @{type = "Skilled Migrant Resident Visa"; subclass = "SMC"; purpose = "Points-based permanent residency"; maxStay = "Indefinite (PR)"; processing = "6-12 months"; feeLocal = "NZD 4,290"; feeInr = "2,18,000 to 2,25,000"}
        @{type = "Accredited Employer Work Visa"; subclass = "AEWV"; purpose = "Work for accredited NZ employer"; maxStay = "1-3 years"; processing = "2-4 months"; feeLocal = "NZD 750"; feeInr = "38,100 to 39,500"}
        @{type = "Working Holiday Visa"; subclass = "WHV"; purpose = "Work and travel for young Indians (18-30)"; maxStay = "12 months"; processing = "2-4 weeks"; feeLocal = "NZD 455"; feeInr = "23,100 to 24,000"}
    )
    additionalCosts = @(
        @{type = "VFS Service Charge"; amount = "1,500 to 2,000"; detail = "Paid at application center for paper applications"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "Per applicant, valid 5 years"}
        @{type = "Translation/Certification"; amount = "500 to 2,000"; detail = "Per document if not in English"}
        @{type = "Courier/Passport Return"; amount = "600 to 1,000"; detail = "Per applicant"}
        @{type = "English Test (IELTS)"; amount = "16,000 to 17,000"; detail = "Required for student and skilled categories"}
    )
    faqs = @(
        @{q = "What is the New Zealand visa fee for Indians?"; a = "NZeTA: NZD 9 (Rs. 470-500). Visitor: NZD 246 (Rs. 12,500-13,200). Student: NZD 375 (Rs. 19,100-19,800). Skilled Migrant: NZD 4,290 (Rs. 2,18,000-2,25,000). All fees non-refundable."}
        @{q = "How long does a New Zealand visa take from India?"; a = "NZeTA: instant to 3 days. Visitor: 20-45 days. Student: 6-8 weeks. Work: 2-4 months. Skilled Migrant: 6-12 months."}
        @{q = "Do Indians need a visa for New Zealand?"; a = "Yes, all Indian passport holders need a visa or NZeTA before traveling to New Zealand. There is no visa-on-arrival for Indians."}
        @{q = "What is the NZeTA and how do I apply?"; a = "NZeTA (New Zealand Electronic Travel Authority) is an online travel authorization for short visits up to 3 months. Download the NZeTA app or apply online. Costs NZD 9 plus IVL (International Visitor Levy) of NZD 35."}
        @{q = "What is the minimum bank balance for NZ student visa?"; a = "You need to show NZD 20,000 per year for living costs plus tuition fees. For a 1-year course, show approximately NZD 35,000-50,000 total. Education loans from Indian banks are accepted."}
        @{q = "Can I work on a New Zealand student visa?"; a = "Yes, full-time students on valid student visas can work up to 20 hours per week during term and full-time during scheduled holidays. Master's and PhD students have unrestricted work rights."}
        @{q = "What is the New Zealand points system for PR?"; a = "The Skilled Migrant Category (SMC) uses a points system: age (max 30), skilled employment (max 50), work experience (max 50), qualifications (max 70), and regional factors. Minimum threshold is 160 points for Expression of Interest (EOI)."}
        @{q = "Can I bring my family on a student visa?"; a = "Yes, your partner and dependent children can accompany you. Your partner can get an open work visa with full work rights. Children can study as domestic students at NZ schools."}
        @{q = "What documents are needed for NZ visitor visa?"; a = "Passport (6+ months validity), completed online application, bank statements (3-6 months), employment letter, IT returns (2-3 years), travel itinerary, accommodation bookings, and cover letter."}
        @{q = "What happens if my NZ visa is rejected?"; a = "The refusal letter specifies the reasons. Common reasons: insufficient funds, weak ties to India, incomplete documentation. You can reapply at any time addressing the refusal grounds."}
        @{q = "What health insurance is needed for New Zealand?"; a = "Student visa holders must have travel and medical insurance for their entire stay. Visitor and work visa holders are strongly recommended to have comprehensive travel insurance."}
        @{q = "Is there a Working Holiday visa for Indians?"; a = "Yes, Indian citizens aged 18-30 can apply for the NZ Working Holiday Visa. Quota is limited. It allows 12 months of work and travel in New Zealand."}
        @{q = "Can I extend my NZeTA or visitor visa?"; a = "NZeTA cannot be extended. Visitor visa holders can apply for a 3-month extension if exceptional circumstances exist."}
        @{q = "Do I need biometrics for a New Zealand visa?"; a = "Yes, biometrics (fingerprints and photograph) are required for Visitor, Student, and Work visa applications. Valid for 5 years."}
        @{q = "What English test is accepted for NZ?"; a = "IELTS, PTE Academic, TOEFL iBT, and Cambridge English are accepted. IELTS 6.0 for student visa, IELTS 6.5 for skilled migration."}
    )
    updates2026 = @(
        @{change = "NZeTA Fee"; previous = "NZD 12"; current = "NZD 9 (reduced)"}
        @{change = "International Visitor Levy"; previous = "NZD 35"; current = "NZD 35 (unchanged but review pending)"}
        @{change = "Post-study Work Rights"; previous = "1-3 years depending on qualification"; current = "Extended pathways for Green List occupations"}
        @{change = "Skilled Migrant Category Threshold"; previous = "180 points"; current = "160 points (reduced for 2025-26)"}
        @{change = "Student Visa Processing"; previous = "Standard processing"; current = "Faster processing for priority Green List courses"}
        @{change = "Working Holiday Visa Quota"; previous = "Limited quota"; current = "Expanded quota for Indian applicants under FTA negotiations"}
    )
    officialResources = @"
<li><strong>Immigration New Zealand:</strong> <a href="https://www.immigration.govt.nz/" target="_blank" rel="noopener noreferrer">https://www.immigration.govt.nz/</a></li>
<li><strong>NZeTA Official Site:</strong> <a href="https://www.immigration.govt.nz/eta" target="_blank" rel="noopener noreferrer">https://www.immigration.govt.nz/eta</a></li>
<li><strong>VFS Global New Zealand in India:</strong> <a href="https://visa.vfsglobal.com/ind/en/nzl/" target="_blank" rel="noopener noreferrer">https://visa.vfsglobal.com/ind/en/nzl/</a></li>
<li><strong>New Zealand High Commission New Delhi:</strong> <a href="https://www.mfat.govt.nz/en/countries-and-regions/india/" target="_blank" rel="noopener noreferrer">https://www.mfat.govt.nz/</a></li>
"@
}

# =====================================================================
# Nepal
# =====================================================================
$global:countryData["nepal"] = @{
    name = "Nepal"
    capital = "Kathmandu"
    currency = "NPR"
    currencyName = "Nepalese Rupee"
    currencySymbol = "NPR"
    embassy = "Embassy of Nepal, New Delhi"
    embassyDetail = "Consulate General in Kolkata"
    visaRequired = "Yes, but visa-on-arrival available for Indian citizens at all entry points"
    mainVisaTypes = "Tourist Visa (On Arrival), Visa Extension, Student Visa, Work Permit, Dependent Visa"
    procTime = "Tourist: On arrival (15-30 mins); Student: 1-2 weeks; Work: 2-4 weeks"
    feeRange = "NPR 0 (free for Indians) to NPR 10,000+ (longer stays)"
    financialReq = "Minimal - no specific bank balance required for short stays; work and student may need proof"
    maxStay = "Tourist: 30-150 days per visit (can extend); Student: course duration; Work: permit duration"
    bioMandatory = "Not required for Indian citizens"
    insuranceReq = "Recommended but not mandatory for entry"
    appCenters = "Visa-on-arrival at Tribhuvan International Airport, Kathmandu and all land border crossings"
    englishReq = "Not required for tourist visa; some evidence for student/work visas"
    approvalRate = "Tourist: ~99% (on arrival); Student/Work: ~90%"
    intro = "Nepal offers a unique visa-free or visa-on-arrival arrangement for Indian citizens due to the special bilateral relationship between India and Nepal. Indian citizens do not require a visa to enter Nepal but must obtain a Tourist Entry Permit (visa-on-arrival) at the entry point."
    stats = "Nepal received over 2.5 million Indian tourists in 2024, making India the largest source of international visitors to Nepal. Thousands of Indian students study in Nepalese medical colleges, and many Indian professionals work in Nepal under bilateral agreements."
    needVisa = "Indian citizens do NOT need a prior visa to enter Nepal. However, you must obtain a Tourist Entry Permit (visa-on-arrival) at any entry point - airport or land border. This entry permit is free for Indian citizens for up to 150 days per calendar year."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 150 days)"; answer = "Yes (Free entry permit)"; detail = "Visa-on-arrival at all entry points; free for Indians up to 150 days/year"}
        @{can = "Travel for business meetings"; answer = "Yes (Business visa)"; detail = "Apply at Nepalese embassy in India or obtain on arrival"}
        @{can = "Study at Nepalese universities"; answer = "Yes (Student Visa)"; detail = "Requires admission letter from recognized institution"}
        @{can = "Work as a professional"; answer = "Yes (Work Permit)"; detail = "Employer must obtain approval from Department of Labour"}
        @{can = "Transit through Nepal"; answer = "Yes"; detail = "Free transit; no separate visa needed"}
        @{can = "Live permanently"; answer = "Limited (Residential Visa)"; detail = "Available for investors, retirees, and long-term residents"}
        @{can = "Travel to restricted areas"; answer = "Requires permit"; detail = "Upper Mustang, Dolpo, etc. need special trekking permits"}
    )
    visaTypes = @(
        @{type = "Tourist Entry Permit (On Arrival)"; subclass = "Gratis Visa"; purpose = "Tourism, family visits, pilgrimage"; maxStay = "150 days per year (cumulative)"; processing = "On arrival (15-30 mins)"; feeLocal = "Free"; feeInr = "Free"}
        @{type = "Extended Tourist Visa"; subclass = "Extension"; purpose = "Stay longer than 150 days"; maxStay = "Up to 5 months per stay"; processing = "1-3 days (at Immigration Office)"; feeLocal = "NPR 3,000-6,000"; feeInr = "1,900 to 3,800"}
        @{type = "Student Visa"; subclass = "Study"; purpose = "Full-time study at Nepalese institution"; maxStay = "Course duration"; processing = "1-2 weeks"; feeLocal = "NPR 5,000-10,000"; feeInr = "3,200 to 6,300"}
        @{type = "Work Permit"; subclass = "Employment"; purpose = "Employment by Nepalese company"; maxStay = "Permit duration (renewable)"; processing = "2-4 weeks"; feeLocal = "NPR 10,000-20,000"; feeInr = "6,300 to 12,600"}
        @{type = "Dependent Visa"; subclass = "Family"; purpose = "Family members of work/student visa holders"; maxStay = "Same as primary visa"; processing = "1-2 weeks"; feeLocal = "NPR 3,000-5,000"; feeInr = "1,900 to 3,200"}
        @{type = "Residential Visa"; subclass = "Residential"; purpose = "Retirement, investment, long-term stay"; maxStay = "1-10 years"; processing = "1-3 months"; feeLocal = "NPR 50,000-200,000"; feeInr = "31,500 to 1,26,000"}
    )
    additionalCosts = @(
        @{type = "Nepal Tourism Board Fee"; amount = "NPR 2,000"; detail = "For trekking permits and national park entry"}
        @{type = "Photography Permit"; amount = "NPR 1,500-5,000"; detail = "For professional photography/filming"}
        @{type = "Translation (if needed)"; amount = "500 to 2,000"; detail = "Per document"}
    )
    faqs = @(
        @{q = "Do Indians need a visa for Nepal?"; a = "No. Indian citizens do not need a prior visa. You get a free Tourist Entry Permit (Gratis Visa) on arrival at Tribhuvan International Airport or any land border crossing. Free for up to 150 days per year."}
        @{q = "How long can I stay in Nepal as an Indian?"; a = "Indian citizens can stay up to 150 days per calendar year cumulatively on a gratis visa. If you need to stay longer, you can apply for visa extensions at the Department of Immigration in Kathmandu."}
        @{q = "What documents do I need to enter Nepal as an Indian?"; a = "A valid Indian passport (or Voter ID for land border entry), and a completed arrival card. No photographs or bank statements needed."}
        @{q = "Can I work in Nepal as an Indian citizen?"; a = "Yes, but you need a work permit. Your employer in Nepal must apply to the Department of Labour for approval. Professional qualification verification may be required."}
        @{q = "Is a passport mandatory for Indians entering Nepal?"; a = "For air travel, yes - a valid Indian passport is mandatory. For land border crossings from India, a Voter ID card or state-issued identity card is also accepted."}
        @{q = "Can Indian students study in Nepal without a visa?"; a = "For courses up to 150 days, no visa needed. For longer courses, you need a Student Visa, which requires an admission letter from a recognized Nepalese institution."}
        @{q = "What is the minimum bank balance for Nepal travel?"; a = "There is no minimum bank balance requirement for Indian citizens traveling to Nepal."}
        @{q = "Can I extend my tourist stay in Nepal?"; a = "Yes, you can apply for visa extension at the Department of Immigration, Kathmandu. Extension fees: NPR 3,000 for 15 days, NPR 6,000 for 30 days, NPR 9,000 for 60 days."}
        @{q = "What are the prohibited items for entry to Nepal?"; a = "Narcotics, weapons without permit, and restricted wildlife products are prohibited. Indian currency notes above Rs. 500 denomination (except Rs. 100) are also restricted."}
        @{q = "Can I travel to Nepal by road from India?"; a = "Yes, there are multiple land border crossings: Raxaul-Birgunj, Sunauli-Bhairahawa, Banbasa-Mahendranagar, and others. Indian citizens can easily cross with valid ID."}
        @{q = "What health requirements are there for Nepal?"; a = "No mandatory vaccinations for Indian citizens. However, typhoid, hepatitis A, and tetanus vaccines are recommended. Altitude sickness precautions are needed for high-altitude treks."}
        @{q = "Is health insurance required for Nepal?"; a = "Not mandatory for Indians, but strongly recommended for trekking and adventure activities. Many trekking routes require mandatory rescue insurance."}
        @{q = "Can I buy property in Nepal as an Indian?"; a = "Land and property purchase by foreigners (including Indians) is restricted. However, long-term lease (up to 100 years) is permitted for residential and commercial purposes."}
        @{q = "Do I need a permit for trekking in Nepal?"; a = "Yes, most trekking areas require permits: TIMS (Trekkers Information Management System) card for general treks, and specific permits for restricted areas like Upper Mustang and Dolpo."}
        @{q = "What are the COVID-19 requirements for Nepal?"; a = "As of 2026, there are no COVID-19 testing or vaccination requirements for entry into Nepal."}
    )
    updates2026 = @(
        @{change = "Gratis Visa Days"; previous = "60 days per entry"; current = "150 days per year (cumulative, increased)"}
        @{change = "Voter ID Acceptance"; previous = "Only passport for air travel"; current = "Voter ID accepted for land border entry (unchanged)"}
        @{change = "Work Permit Processing"; previous = "4-6 weeks"; current = "2-4 weeks (digital processing introduced)"}
        @{change = "Visa Extension Fee"; previous = "NPR 1,000-3,000"; current = "NPR 3,000-6,000 (revised)"}
        @{change = "Trekking Permit System"; previous = "Paper permits only"; current = "Digital permits with online application available"}
    )
    officialResources = @"
<li><strong>Department of Immigration, Nepal:</strong> <a href="https://www.immigration.gov.np/" target="_blank" rel="noopener noreferrer">https://www.immigration.gov.np/</a></li>
<li><strong>Embassy of Nepal, New Delhi:</strong> <a href="https://in.nepalembassy.gov.np/" target="_blank" rel="noopener noreferrer">https://in.nepalembassy.gov.np/</a></li>
<li><strong>Nepal Tourism Board:</strong> <a href="https://ntb.gov.np/" target="_blank" rel="noopener noreferrer">https://ntb.gov.np/</a></li>
"@
}

# =====================================================================
# Sri Lanka
# =====================================================================
$global:countryData["sri-lanka"] = @{
    name = "Sri Lanka"
    capital = "Sri Jayawardenepura Kotte (administrative), Colombo (commercial)"
    currency = "LKR"
    currencyName = "Sri Lankan Rupee"
    currencySymbol = "LKR"
    embassy = "High Commission of Sri Lanka, New Delhi"
    embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad"
    visaRequired = "Indian citizens need an Electronic Travel Authorization (ETA) for visa-free entry"
    mainVisaTypes = "ETA for Tourism, ETA for Business, Student Visa, Work Visa, Resident Visa"
    procTime = "ETA: 24-72 hours (online); Student/Work: 2-4 weeks; Resident: 1-3 months"
    feeRange = "USD 20 (ETA) to USD 200+ (Resident)"
    financialReq = "Tourists: minimal; Students: LKR 500,000-1,000,000/year; Work: employer sponsorship"
    maxStay = "ETA Tourism: 30 days (extendable to 90 days); Student: course duration; Work: 1-2 years"
    bioMandatory = "Not required for Indian ETA holders at present"
    insuranceReq = "Recommended for all visitors"
    appCenters = "Online ETA application at eta.gov.lk; Visa extensions at Department of Immigration, Colombo"
    englishReq = "Not required for tourist ETA; IELTS 6.0-6.5 for student visas"
    approvalRate = "ETA: ~95%; Student: ~85%; Work: ~80%"
    intro = "Sri Lanka offers a simplified Electronic Travel Authorization (ETA) system for Indian citizens, replacing the traditional visa process. The ETA allows Indian passport holders to visit Sri Lanka for tourism without a prior embassy visit, and recently Sri Lanka has announced visa-free entry for Indian citizens."
    stats = "Sri Lanka welcomed over 1.8 million Indian tourists in 2024, making India the largest source market for Sri Lankan tourism. Thousands of Indian students study in Sri Lankan universities and professional institutions, particularly in medicine and IT."
    needVisa = "Indian citizens require an Electronic Travel Authorization (ETA) before traveling to Sri Lanka. From 2024, Sri Lanka offers free ETA for Indian citizens for tourism purposes. Business visits still require a regular ETA with a fee."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 30 days)"; answer = "Yes (Free ETA)"; detail = "Free ETA for Indians; online application; 24-72 hour processing"}
        @{can = "Travel for business meetings"; answer = "Yes (Business ETA)"; detail = "Fee applicable; requires invitation letter"}
        @{can = "Study at Sri Lankan institutions"; answer = "Yes (Student Visa)"; detail = "Requires admission letter; financial proof"}
        @{can = "Work as a professional"; answer = "Yes (Work Visa)"; detail = "Employer sponsorship required; valid for 1-2 years"}
        @{can = "Transit through Sri Lanka"; answer = "Yes (Free Transit)"; detail = "Up to 48 hours with onward ticket"}
        @{can = "Live permanently"; answer = "Yes (Resident Visa)"; detail = "Available through investment or long-term stay"}
        @{can = "Travel to North and East provinces"; answer = "No restrictions"; detail = "No special permits needed for Indian citizens"}
    )
    visaTypes = @(
        @{type = "ETA for Tourism"; subclass = "Free Tourism ETA"; purpose = "Tourism, family visits, pilgrimage"; maxStay = "30 days (extendable to 90)"; processing = "24-72 hours"; feeLocal = "Free (for Indians)"; feeInr = "Free"}
        @{type = "ETA for Business"; subclass = "Business ETA"; purpose = "Business meetings, conferences"; maxStay = "30 days"; processing = "24-72 hours"; feeLocal = "USD 20"; feeInr = "1,700 to 1,800"}
        @{type = "Student Visa"; subclass = "Resident - Study"; purpose = "Full-time study at SL institution"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "USD 50-100"; feeInr = "4,200 to 8,300"}
        @{type = "Work Visa"; subclass = "Resident - Employment"; purpose = "Employment by SL company"; maxStay = "1-2 years renewable"; processing = "2-4 weeks"; feeLocal = "USD 100-200"; feeInr = "8,300 to 16,600"}
        @{type = "Dependent Visa"; subclass = "Resident - Dependent"; purpose = "Family of work/student visa holder"; maxStay = "Same as primary"; processing = "1-2 weeks"; feeLocal = "USD 50"; feeInr = "4,200 to 4,400"}
        @{type = "Resident Visa (Retirement)"; subclass = "Resident"; purpose = "Retirement, investment"; maxStay = "1-10 years"; processing = "1-3 months"; feeLocal = "USD 200-500"; feeInr = "16,600 to 41,600"}
    )
    additionalCosts = @(
        @{type = "Service Charge (ETA)"; amount = "LKR 500-1,000"; detail = "For business ETA processing"}
        @{type = "Visa Extension Fee"; amount = "LKR 10,000-25,000"; detail = "For extending tourist stay beyond 30 days"}
        @{type = "Translation/Certification"; amount = "500 to 2,000"; detail = "Per document"}
    )
    faqs = @(
        @{q = "Do Indians need a visa for Sri Lanka?"; a = "Indian citizens need an Electronic Travel Authorization (ETA). As of 2024, the tourism ETA is FREE for Indians. Apply online at eta.gov.lk at least 24-72 hours before travel."}
        @{q = "What is the Sri Lanka visa fee for Indians?"; a = "Tourism ETA: Free for Indian citizens. Business ETA: USD 20 (Rs. 1,700-1,800). Student/Work visas: USD 50-200."}
        @{q = "How long can I stay in Sri Lanka on an ETA?"; a = "Tourism ETA allows a 30-day stay, extendable up to 90 days by visiting the Department of Immigration in Colombo. Extension fee: LKR 10,000-25,000."}
        @{q = "Can I extend my Sri Lanka tourist visa?"; a = "Yes, you can extend your ETA at the Department of Immigration and Emigration in Colombo. Original ETA: 30 days; first extension: 60 days; second extension: 90 days maximum total."}
        @{q = "What documents are needed for Sri Lanka ETA?"; a = "Valid Indian passport (6+ months validity), return flight booking, accommodation confirmation, and email address. Business ETA also requires an invitation letter."}
        @{q = "Can I work in Sri Lanka on an ETA?"; a = "No, ETA is only for tourism, transit, or business visits. Paid work requires a separate Work Visa sponsored by a Sri Lankan employer."}
        @{q = "Is there a visa-on-arrival at Colombo airport?"; a = "Yes, Indian citizens can obtain an ETA on arrival at Bandaranaike International Airport, but it is recommended to apply online in advance to avoid queues."}
        @{q = "Do I need a PCR test or vaccine for Sri Lanka?"; a = "As of 2026, there are no COVID-19 entry restrictions. No test or vaccination proof is required."}
        @{q = "Can I travel to Sri Lanka for medical treatment?"; a = "Yes, you can use a Tourism ETA for medical visits. For longer treatment, a Medical Visa may be required through the Sri Lankan embassy."}
        @{q = "What is the currency situation in Sri Lanka?"; a = "Sri Lankan Rupee (LKR) is the local currency. Indian rupees are not widely accepted. Carry USD or exchange at authorized money changers. Major cards accepted in cities."}
        @{q = "Can I travel to Kandy, Jaffna, or other cities?"; a = "Yes, there are no travel restrictions for Indian citizens within Sri Lanka, including former conflict areas. The A9 highway connects Colombo to Jaffna."}
        @{q = "What is the best time to visit Sri Lanka?"; a = "December to March (west/south coast) and April to September (east coast) are ideal. The country has two monsoon seasons."}
        @{q = "Are there direct flights from India to Sri Lanka?"; a = "Yes, direct flights operate from Delhi, Mumbai, Chennai, Bengaluru, Hyderabad, Kochi, and Kolkata to Colombo. Flight time: 1-4 hours."}
        @{q = "What should I do if my ETA is rejected?"; a = "Reapply after 24 hours with corrected information, or apply for a regular visa through the Sri Lankan High Commission in New Delhi."}
        @{q = "Can I visit Sri Lanka for pilgrimage?"; a = "Yes, the free Tourism ETA covers pilgrimage visits. Sri Lanka has significant Buddhist, Hindu, Muslim, and Christian pilgrimage sites."}
    )
    updates2026 = @(
        @{change = "Tourism ETA Fee"; previous = "USD 20-35"; current = "Free for Indian citizens (2024 policy)"}
        @{change = "ETA Validity"; previous = "30 days single entry"; current = "30 days (extendable to 90, unchanged)"}
        @{change = "Visa-on-Arrival"; previous = "Available with fee"; current = "Still available but free for Indians"}
        @{change = "Student Visa Processing"; previous = "4-6 weeks"; current = "2-4 weeks (streamlined)"}
        @{change = "Work Visa Rules"; previous = "Strict employer sponsorship"; current = "Relaxed for IT and tech professionals"}
    )
    officialResources = @"
<li><strong>Sri Lanka ETA Official Portal:</strong> <a href="https://eta.gov.lk/" target="_blank" rel="noopener noreferrer">https://eta.gov.lk/</a></li>
<li><strong>Department of Immigration & Emigration:</strong> <a href="https://www.immigration.gov.lk/" target="_blank" rel="noopener noreferrer">https://www.immigration.gov.lk/</a></li>
<li><strong>Sri Lanka High Commission New Delhi:</strong> <a href="https://www.slhcdelhi.gov.in/" target="_blank" rel="noopener noreferrer">https://www.slhcdelhi.gov.in/</a></li>
"@
}

# =====================================================================
# Philippines
# =====================================================================
$global:countryData["philippines"] = @{
    name = "Philippines"
    capital = "Manila"
    currency = "PHP"
    currencyName = "Philippine Peso"
    currencySymbol = "PHP"
    embassy = "Embassy of the Philippines, New Delhi"
    embassyDetail = "Consulates in Mumbai, Chennai, Kolkata"
    visaRequired = "Indian citizens can enter visa-free for 14 days under certain conditions"
    mainVisaTypes = "Visa-Free (14 days), Tourist Visa (59 days), Business Visa, Student Visa, Work Visa, 9(a) Temporary Visitor Visa"
    procTime = "Visa-free: on arrival; Tourist Visa: 5-10 days; Student/Work: 3-6 weeks"
    feeRange = "PHP 0 (visa-free) to PHP 3,000+ (work visa)"
    financialReq = "Tourists: PHP 50,000+ or confirmed hotel bookings; Students: PHP 100,000-300,000; Work: employer-sponsored"
    maxStay = "Visa-free: 14 days; Tourist: 59 days (extendable); Student: course duration; Work: 1-3 years"
    bioMandatory = "Required for visa extension and long-stay applications"
    insuranceReq = "Not mandatory but recommended"
    appCenters = "Philippine Embassy New Delhi; VFS Global in select cities"
    englishReq = "Not required for tourist; IELTS 6.0 for student visas"
    approvalRate = "Visa-free: 100%; Tourist Visa: ~85%; Work: ~75%"
    intro = "The Philippines offers a visa-free entry program for Indian citizens for stays up to 14 days, subject to certain conditions. For longer stays, Indian citizens must apply for a Temporary Visitor Visa or appropriate visa category through the Philippine Embassy."
    stats = "The Philippines welcomed over 100,000 Indian visitors in 2024. The Indian community in the Philippines is growing, with professionals working in IT, BPO, and pharmaceutical sectors. Direct flights from Delhi and Mumbai to Manila have boosted tourism."
    needVisa = "Indian citizens with a valid US, UK, Schengen, Japan, Australia, Canada, or Singapore visa can enter the Philippines visa-free for 14 days. Otherwise, a Tourist Visa (Temporary Visitor Visa) must be obtained before travel. There is no visa-on-arrival for Indians."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 14 days)"; answer = "Yes (Visa-free with conditions)"; detail = "Requires valid US/UK/Schengen/Japan/Australia/Canada/Singapore visa"}
        @{can = "Travel for tourism (longer stay)"; answer = "Yes (Tourist Visa)"; detail = "Temporary Visitor Visa 9(a); valid for 59 days extendable"}
        @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Valid for 59 days; extendable to 6 months"}
        @{can = "Study at Philippine universities"; answer = "Yes (Student Visa)"; detail = "Requires admission and Special Study Permit"}
        @{can = "Work as a professional"; answer = "Yes (Work Visa)"; detail = "Employer must obtain alien employment permit (AEP)"}
        @{can = "Transit through Philippines"; answer = "Yes (Transit visa)"; detail = "Up to 72 hours with confirmed onward ticket"}
        @{can = "Live permanently"; answer = "Yes (Immigrant Visa)"; detail = "Available through investment (SRRV) or marriage to Filipino citizen"}
    )
    visaTypes = @(
        @{type = "Visa-Free Entry"; subclass = "14-Day VF"; purpose = "Tourism with valid third-country visa"; maxStay = "14 days"; processing = "On arrival"; feeLocal = "Free"; feeInr = "Free"}
        @{type = "Temporary Visitor Visa (9a)"; subclass = "9(a)"; purpose = "Tourism, business, medical"; maxStay = "59 days (extendable)"; processing = "5-10 working days"; feeLocal = "PHP 3,000"; feeInr = "4,400 to 4,700"}
        @{type = "Business Visa"; subclass = "9(d)"; purpose = "Business meetings, conferences"; maxStay = "59 days"; processing = "5-10 working days"; feeLocal = "PHP 3,000"; feeInr = "4,400 to 4,700"}
        @{type = "Student Visa"; subclass = "9(f)"; purpose = "Full-time study"; maxStay = "Course duration (1-4 years)"; processing = "3-6 weeks"; feeLocal = "PHP 5,000-8,000"; feeInr = "7,400 to 11,800"}
        @{type = "Pre-Arranged Employment Visa"; subclass = "9(g)"; purpose = "Employment by Philippine company"; maxStay = "1-3 years"; processing = "4-8 weeks"; feeLocal = "PHP 8,000-12,000"; feeInr = "11,800 to 17,800"}
        @{type = "Special Resident Retiree Visa"; subclass = "SRRV"; purpose = "Retirement, long-term stay"; maxStay = "Indefinite (renewable annually)"; processing = "4-8 weeks"; feeLocal = "USD 1,500"; feeInr = "1,24,000 to 1,27,000"}
    )
    additionalCosts = @(
        @{type = "Visa Application Fee"; amount = "4,400 to 4,700"; detail = "For 9(a) Temporary Visitor Visa"}
        @{type = "Extension Fee"; amount = "PHP 1,030"; detail = "Per month for visa extension at BI office"}
        @{type = "Biometrics"; amount = "PHP 1,000"; detail = "For visa extension and long-stay applications"}
        @{type = "ACR-I Card"; amount = "PHP 500"; detail = "Alien Certificate of Registration for stays over 59 days"}
        @{type = "Translation/Certification"; amount = "500 to 2,000"; detail = "Per document if not in English"}
    )
    faqs = @(
        @{q = "Do Indians need a visa for Philippines?"; a = "Indian citizens with a valid US, UK, Schengen, Japan, Australia, Canada, or Singapore visa can enter visa-free for 14 days. Others must apply for a Temporary Visitor Visa 9(a) before travel."}
        @{q = "What is the Philippines visa fee for Indians?"; a = "Visa-free: Free. Temporary Visitor Visa: PHP 3,000 (Rs. 4,400-4,700). Student Visa: PHP 5,000-8,000. Work Visa: PHP 8,000-12,000."}
        @{q = "How long can I stay visa-free in Philippines?"; a = "14 days maximum for Indian citizens with a valid visa from US, UK, Schengen, Japan, Australia, Canada, or Singapore."}
        @{q = "Can I extend my stay in the Philippines?"; a = "Yes, Tourist Visa (9a) can be extended at the Bureau of Immigration. First extension: 59 days; further extensions up to 16 months total."}
        @{q = "What if I don't have a US/UK visa?"; a = "Apply for a Temporary Visitor Visa 9(a) at the Philippine Embassy in New Delhi. Processing: 5-10 working days. Valid for 59 days."}
        @{q = "Can I work in the Philippines on a tourist visa?"; a = "No. Working requires an Alien Employment Permit (AEP) and a 9(g) Pre-Arranged Employment Visa obtained through your employer."}
        @{q = "What documents are needed for Philippines tourist visa?"; a = "Passport (6+ months valid), completed application form, 2 photos, bank statements (3 months), IT returns, flight itinerary, hotel booking, and cover letter."}
        @{q = "Is there a visa-on-arrival at Manila airport?"; a = "No visa-on-arrival for Indian citizens. You need either a visa-free entry (with third-country visa) or a pre-arranged tourist visa."}
        @{q = "What is the SRRV (retirement visa)?"; a = "Special Resident Retiree Visa for Indians aged 35+. Deposit USD 10,000-20,000. Allows indefinite stay. Cost: USD 1,500. Annual renewal fee applies."}
        @{q = "Are there direct flights from India to Philippines?"; a = "Yes, direct flights from Delhi and Mumbai to Manila. Flight time: 5-6 hours. Connecting flights via Singapore, Bangkok, or Kuala Lumpur are also available."}
        @{q = "What is the best time to visit Philippines?"; a = "November to April (dry season) is best. May to October is rainy season. The country has over 7,000 islands."}
        @{q = "Do I need a return ticket for Philippines?"; a = "Yes, immigration requires proof of onward/return travel within the authorized stay period."}
        @{q = "Can I study in the Philippines as an Indian?"; a = "Yes, Philippine medical and nursing programs are popular with Indian students. Requires Student Visa 9(f) with admission letter and financial proof."}
        @{q = "What vaccines do I need for Philippines?"; a = "No mandatory vaccines for entry. Recommended: hepatitis A, typhoid, tetanus. Yellow fever vaccine required if traveling from endemic countries."}
    )
    updates2026 = @(
        @{change = "Visa-Free Countries List"; previous = "Limited list"; current = "Expanded to include Indian citizens with third-country visas"}
        @{change = "Tourist Visa Fee"; previous = "PHP 3,800"; current = "PHP 3,000 (reduced)"}
        @{change = "Visa Extension Process"; previous = "In-person only"; current = "Online extension available through BI portal"}
        @{change = "ACR-I Card Requirement"; previous = "Required after 59 days"; current = "Required after 59 days (unchanged but digital card introduced)"}
        @{change = "eTravel System"; previous = "Paper arrival card"; current = "Mandatory online eTravel registration before arrival"}
    )
    officialResources = @"
<li><strong>Philippine Bureau of Immigration:</strong> <a href="https://immigration.gov.ph/" target="_blank" rel="noopener noreferrer">https://immigration.gov.ph/</a></li>
<li><strong>Philippine Embassy New Delhi:</strong> <a href="https://newdelhipe.dfa.gov.ph/" target="_blank" rel="noopener noreferrer">https://newdelhipe.dfa.gov.ph/</a></li>
<li><strong>Philippine Retirement Authority (SRRV):</strong> <a href="https://www.pra.gov.ph/" target="_blank" rel="noopener noreferrer">https://www.pra.gov.ph/</a></li>
"@
}

# =====================================================================
# Cambodia
# =====================================================================
$global:countryData["cambodia"] = @{
    name = "Cambodia"
    capital = "Phnom Penh"
    currency = "USD"
    currencyName = "US Dollar (also Riel)"
    currencySymbol = "USD"
    embassy = "Royal Embassy of Cambodia, New Delhi"
    embassyDetail = ""
    visaRequired = "Yes, but visa-on-arrival and eVisa available for Indian citizens"
    mainVisaTypes = "Tourist Visa (T-Class), eVisa, Business Visa (E-Class), Ordinary Visa (Extension), Student Visa, Work Visa"
    procTime = "eVisa: 3-5 days; Visa-on-Arrival: 15-30 mins; Extension: 1-2 weeks"
    feeRange = "USD 30 (Tourist eVisa/VOA) to USD 500+ (Work Visa with extension)"
    financialReq = "Minimal for tourists; students: USD 5,000-10,000 proof; work: employer-sponsored"
    maxStay = "Tourist: 30 days (extendable); Business: 30 days (extendable); Student: course duration; Work: 1 year"
    bioMandatory = "Not required for eVisa or VOA"
    insuranceReq = "Recommended but not mandatory"
    appCenters = "Online (eVisa); On arrival at Phnom Penh, Siem Reap, and Sihanoukville airports; Land border crossings"
    englishReq = "Not required"
    approvalRate = "eVisa/VOA: ~98%; Extension/Work: ~85%"
    intro = "Cambodia offers a simple visa-on-arrival and eVisa system for Indian citizens, making it one of the most accessible Southeast Asian destinations. The eVisa can be obtained online before travel, while visa-on-arrival is available at all international airports and major land border crossings."
    stats = "Cambodia welcomed over 80,000 Indian tourists in 2024, with numbers growing steadily. The famous Angkor Wat temple complex is the primary attraction for Indian travelers. Direct flights from India to Phnom Penh and Siem Reap have improved connectivity significantly."
    needVisa = "Indian passport holders need a visa to enter Cambodia. However, visa-on-arrival (T-Class Tourist) is available at all international airports and major land border crossings. Alternatively, apply for an eVisa online 3-5 days before travel."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 30 days)"; answer = "Yes (VOA or eVisa)"; detail = "Visa-on-arrival at airports; eVisa online; both USD 30"}
        @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "E-Class Business Visa on arrival or online"}
        @{can = "Study at Cambodian institutions"; answer = "Yes (Student Visa)"; detail = "Requires admission letter; extension from Tourist/Business"}
        @{can = "Work as a professional"; answer = "Yes (Work Permit)"; detail = "Employer must obtain work permit; separate visa extension"}
        @{can = "Transit through Cambodia"; answer = "Yes (Transit)"; detail = "24-hour transit without visa if staying airside"}
        @{can = "Live permanently"; answer = "Limited (Long-stay visa)"; detail = "Available through annual extensions; investment visa"}
        @{can = "Travel to Angkor Wat"; answer = "Free with tourist visa"; detail = "Angkor pass purchased separately (USD 37/day)"}
    )
    visaTypes = @(
        @{type = "Tourist Visa (Visa-on-Arrival)"; subclass = "T-Class"; purpose = "Tourism, family visits"; maxStay = "30 days (extendable once)"; processing = "15-30 mins at airport"; feeLocal = "USD 30"; feeInr = "2,500 to 2,600"}
        @{type = "e-Visa (Tourist)"; subclass = "eVisa-T"; purpose = "Pre-arranged tourism visa"; maxStay = "30 days (non-extendable)"; processing = "3-5 working days"; feeLocal = "USD 30 + processing"; feeInr = "2,500 to 2,800"}
        @{type = "Business Visa (VOA)"; subclass = "E-Class"; purpose = "Business, meetings, conferences"; maxStay = "30 days (extendable up to 1 year)"; processing = "15-30 mins"; feeLocal = "USD 35"; feeInr = "2,900 to 3,100"}
        @{type = "Ordinary Visa Extension"; subclass = "EB/EG"; purpose = "Longer stay for business, retirement"; maxStay = "1 month to 1 year"; processing = "1-2 weeks"; feeLocal = "USD 45-300"; feeInr = "3,700 to 25,000"}
        @{type = "Student Visa"; subclass = "Student"; purpose = "Full-time study"; maxStay = "Course duration (1-4 years)"; processing = "2-4 weeks"; feeLocal = "USD 100-200"; feeInr = "8,300 to 16,600"}
        @{type = "Work Permit & Visa"; subclass = "Employment"; purpose = "Employment by Cambodian company"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "USD 200-500"; feeInr = "16,600 to 41,600"}
    )
    additionalCosts = @(
        @{type = "eVisa Processing Fee"; amount = "USD 7"; detail = "Online processing charge"}
        @{type = "Angkor Wat Entry Pass"; amount = "USD 37 (1 day)"; detail = "Separate from visa; required for temple visits"}
        @{type = "Visa Extension (per month)"; amount = "USD 45-60"; detail = "For E-Class business visa extension"}
        @{type = "Translation/Certification"; amount = "500 to 2,000"; detail = "Per document if needed"}
    )
    faqs = @(
        @{q = "Do Indians need a visa for Cambodia?"; a = "Yes, but visa-on-arrival and eVisa are both available. Tourist Visa (T-Class) costs USD 30 on arrival. eVisa costs USD 30 + USD 7 processing fee."}
        @{q = "How long can I stay in Cambodia on a tourist visa?"; a = "Tourist visa (T-Class) allows 30 days stay, extendable once for an additional 30 days. Business visa (E-Class) can be extended up to 1 year."}
        @{q = "Can I get a visa on arrival at Siem Reap airport?"; a = "Yes, Siem Reap International Airport offers visa-on-arrival. Carry USD 30 cash (exact change), passport photo, and completed application form."}
        @{q = "What is the eVisa for Cambodia?"; a = "Apply online at evisa.gov.kh. Processing: 3-5 working days. Use the eVisa to enter at Phnom Penh and Siem Reap airports (not land borders). Valid for 30 days single entry."}
        @{q = "What documents do I need for Cambodia visa-on-arrival?"; a = "Passport (6+ months validity), passport photo (4x6 cm), USD 30-35 cash, completed arrival card, and return flight ticket."}
        @{q = "Can I work in Cambodia on a tourist visa?"; a = "No. Working requires a Business Visa (E-Class) converted to an Ordinary Visa with Work Permit. Your employer must handle the work permit process."}
        @{q = "Is Cambodia safe for Indian tourists?"; a = "Yes, Cambodia is generally safe. Standard precautions apply: avoid isolated areas at night, use registered taxis, and keep valuables secure."}
        @{q = "What is the Angkor Wat entry fee?"; a = "USD 37 for 1 day, USD 62 for 3 days, USD 72 for 7 days. Purchase at the Angkor ticket office before entering the temple complex."}
        @{q = "Are there direct flights from India to Cambodia?"; a = "Yes, direct flights from Delhi and Kolkata to Phnom Penh. Connecting flights via Bangkok, Singapore, or Kuala Lumpur to both Phnom Penh and Siem Reap."}
        @{q = "What currency is used in Cambodia?"; a = "US Dollars (USD) are widely accepted. Cambodian Riel (KHR) is used for small purchases. ATMs dispense USD. Carry small bills for local markets."}
        @{q = "Can I extend my Cambodia tourist visa?"; a = "Yes, tourist visa can be extended once for 30 days (total 60 days). Visit the Immigration Department in Phnom Penh or use a visa agent."}
        @{q = "What vaccines do I need for Cambodia?"; a = "No mandatory vaccines. Recommended: hepatitis A, typhoid, tetanus, and Japanese encephalitis. Malaria prophylaxis recommended for rural areas."}
        @{q = "Can I travel overland from Thailand to Cambodia?"; a = "Yes, popular land border crossings: Poipet (from Aranyaprathet, Thailand) and Koh Kong (from Trat, Thailand). Visa-on-arrival available at both crossings."}
        @{q = "What is the best time to visit Cambodia?"; a = "November to April (dry season) is ideal. May to October is rainy season. December and January are peak tourist months."}
        @{q = "Do I need a return ticket for Cambodia?"; a = "Yes, proof of onward or return travel is required for visa-on-arrival and eVisa holders."}
    )
    updates2026 = @(
        @{change = "eVisa Fee"; previous = "USD 36 + USD 7"; current = "USD 30 + USD 7 (reduced)"}
        @{change = "Visa-on-Arrival Fee"; previous = "USD 35"; current = "USD 30 (tourist rate)"}
        @{change = "eVisa Entry Points"; previous = "Only Phnom Penh and Siem Reap airports"; current = "Expanded to include Sihanoukville airport"}
        @{change = "Business Visa Extension"; previous = "6 months max"; current = "Up to 1 year (extended)"}
        @{change = "Angkor Pass Price"; previous = "USD 37 (unchanged)"; current = "USD 37 (no change for 2026)"}
    )
    officialResources = @"
<li><strong>Cambodia eVisa Official:</strong> <a href="https://www.evisa.gov.kh/" target="_blank" rel="noopener noreferrer">https://www.evisa.gov.kh/</a></li>
<li><strong>Ministry of Foreign Affairs, Cambodia:</strong> <a href="https://www.mfaic.gov.kh/" target="_blank" rel="noopener noreferrer">https://www.mfaic.gov.kh/</a></li>
<li><strong>Royal Embassy of Cambodia New Delhi:</strong> <a href="https://www.embassyofcambodiadelhi.com/" target="_blank" rel="noopener noreferrer">https://www.embassyofcambodiadelhi.com/</a></li>
"@
}

# =====================================================================
# India
# =====================================================================
$global:countryData["india"] = @{
    name = "India"
    capital = "New Delhi"
    currency = "INR"
    currencyName = "Indian Rupee"
    currencySymbol = "INR"
    embassy = "This is the home country - no visa needed for Indian citizens"
    embassyDetail = ""
    visaRequired = "No visa required for Indian citizens to enter India"
    mainVisaTypes = "No visa needed for Indian citizens; Foreigners need e-Visa, Tourist Visa, Business Visa, Student Visa, Employment Visa, Medical Visa, Conference Visa"
    procTime = "For foreigners: e-Visa 3-5 days; Regular visa 5-15 working days"
    feeRange = "Free for Indian citizens; e-Visa: USD 10-100 for foreigners"
    financialReq = "Not applicable for Indian citizens; foreigners must show sufficient funds"
    maxStay = "Unlimited for Indian citizens (home country)"
    bioMandatory = "Not required for Indian citizens"
    insuranceReq = "Not required for Indian citizens"
    appCenters = "Not applicable for Indian citizens"
    englishReq = "Not applicable"
    approvalRate = "100% for Indian citizens"
    intro = "India is the home country for Indian citizens, so no visa is required to enter or reside in India. Indian passport holders enjoy unrestricted entry, stay, and work rights within India. This guide explains the visa requirements for foreign nationals visiting India."
    stats = "India welcomed over 9.5 million foreign tourists in 2024 and issued over 2.5 million e-Visas. The India e-Visa program covers 160+ countries, making it one of the most accessible visa systems in the world for foreign travelers."
    needVisa = "No, Indian citizens do not need a visa to enter India as it is their home country. Foreign nationals need a valid visa or e-Visa to enter India for tourism, business, study, work, or medical treatment."
    availableNotAvailable = @(
        @{can = "Enter India as an Indian citizen"; answer = "Free entry"; detail = "No visa needed for Indian citizens"}
        @{can = "Live and work in India"; answer = "Unrestricted"; detail = "Indian citizens have full residency and work rights"}
        @{can = "Study at Indian institutions"; answer = "Unrestricted"; detail = "No special permission needed for Indian citizens"}
        @{can = "Transit through India"; answer = "Unrestricted"; detail = "Indian citizens can freely transit"}
        @{can = "Visa for foreigners visiting India"; answer = "Yes (e-Visa available)"; detail = "e-Visa for 160+ countries; Tourist, Business, Medical"}
        @{can = "Permanent residency for foreigners"; answer = "Yes (OCI/PIO)"; detail = "Overseas Citizen of India (OCI) card available for diaspora"}
    )
    visaTypes = @(
        @{type = "Indian Citizenship"; subclass = "N/A"; purpose = "For Indian passport holders"; maxStay = "Unlimited"; processing = "N/A"; feeLocal = "Free"; feeInr = "Free"}
        @{type = "e-Tourist Visa"; subclass = "eTV"; purpose = "Tourism, recreation, sightseeing"; maxStay = "30 days/1 year/5 years"; processing = "3-5 days"; feeLocal = "USD 10-100"; feeInr = "830 to 8,300"}
        @{type = "e-Business Visa"; subclass = "eBV"; purpose = "Business meetings, conferences"; maxStay = "1 year (multiple entry)"; processing = "3-5 days"; feeLocal = "USD 25-100"; feeInr = "2,100 to 8,300"}
        @{type = "e-Medical Visa"; subclass = "eMV"; purpose = "Medical treatment in India"; maxStay = "60 days (triple entry)"; processing = "3-5 days"; feeLocal = "USD 25-80"; feeInr = "2,100 to 6,600"}
        @{type = "Employment Visa"; subclass = "E-Visa"; purpose = "Employment by Indian company"; maxStay = "1-5 years"; processing = "2-4 weeks"; feeLocal = "INR 10,000-15,000"; feeInr = "10,000 to 15,000"}
        @{type = "Student Visa"; subclass = "S-Visa"; purpose = "Full-time study at Indian institution"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "INR 5,000-10,000"; feeInr = "5,000 to 10,000"}
        @{type = "Conference Visa"; subclass = "C-Visa"; purpose = "Attending conferences in India"; maxStay = "Event duration"; processing = "1-2 weeks"; feeLocal = "USD 25-80"; feeInr = "2,100 to 6,600"}
        @{type = "OCI Card"; subclass = "OCI"; purpose = "Overseas Citizen of India for diaspora"; maxStay = "Lifetime (multiple entry)"; processing = "2-4 months"; feeLocal = "USD 25-275"; feeInr = "2,100 to 22,900"}
    )
    additionalCosts = @(
        @{type = "e-Visa Processing Fee"; amount = "USD 1-4"; detail = "Online convenience fee for e-Visa"}
        @{type = "Biometrics (for foreigners)"; amount = "USD 15-20"; detail = "Required at FRRO for long-stay visas"}
        @{type = "FRRO Registration"; amount = "INR 1,000-3,000"; detail = "For foreigners staying over 180 days"}
        @{type = "Translation/Certification"; amount = "500 to 2,000"; detail = "Per document for foreign applicants"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for India?"; a = "No. India is the home country for Indian citizens. You can enter, live, and work in India without any visa or permit."}
        @{q = "What visa do foreigners need for India?"; a = "Foreigners can apply for an e-Visa (tourist, business, medical) online at indianvisaonline.gov.in. Processing takes 3-5 days. Regular visas are available through Indian missions abroad."}
        @{q = "What is the India e-Visa fee?"; a = "e-Tourist Visa: USD 10-100 depending on duration and nationality. e-Business: USD 25-100. e-Medical: USD 25-80. An additional convenience fee of USD 1-4 applies."}
        @{q = "How long is the India e-Visa valid?"; a = "30-day eTV: 30 days from arrival. 1-year eTV: 1 year with multiple entries (max 90 days per stay). 5-year eTV: 5 years with multiple entries."}
        @{q = "Can Indian citizens apply for OCI?"; a = "No. OCI (Overseas Citizen of India) is for foreign nationals of Indian origin who have renounced their Indian citizenship."}
        @{q = "What is the difference between PIO and OCI?"; a = "PIO (Person of Indian Origin) was merged with OCI in 2015. OCI provides lifetime visa-free travel to India for Indian diaspora members."}
        @{q = "Is there visa-on-arrival for foreigners in India?"; a = "Limited visa-on-arrival for citizens of Japan, South Korea, and UAE. All other nationalities should obtain e-Visa or regular visa before travel."}
        @{q = "What documents do foreigners need for India visa?"; a = "Passport (6+ months valid), digital photo, scanned signature page, return flight ticket, and proof of sufficient funds."}
        @{q = "Can I extend my India visa?"; a = "e-Visas cannot be extended. Regular visas may be extended through the FRRO (Foreigners Regional Registration Office) for valid reasons."}
        @{q = "What is the India visa on arrival for US citizens?"; a = "US citizens are eligible for e-Visa, not visa-on-arrival. Apply online before travel."}
        @{q = "Do I need a visa for Andaman Islands?"; a = "Indian citizens do not need any permit. Foreigners need a valid Indian visa and a Restricted Area Permit (RAP), usually obtained with the visa."}
        @{q = "What is the FRRO registration requirement?"; a = "Foreigners staying over 180 days on certain visa types must register at the local FRRO within 14 days of arrival."}
    )
    updates2026 = @(
        @{change = "e-Visa Countries"; previous = "156 countries"; current = "160+ countries (expanded)"}
        @{change = "e-Tourist Visa Duration"; previous = "30 days/1 year/5 years"; current = "30 days/1 year/5 years (unchanged)"}
        @{change = "OCI Card Validity"; previous = "Lifetime"; current = "Lifetime with re-issuance after new passport"}
        @{change = "FRRO Online Portal"; previous = "Limited online services"; current = "Fully digital registration and extension portal"}
        @{change = "Unexpected/Unforeseen = 30 day eVisa exit relaxation extended"}
    )
    officialResources = @"
<li><strong>India e-Visa Portal:</strong> <a href="https://indianvisaonline.gov.in/" target="_blank" rel="noopener noreferrer">https://indianvisaonline.gov.in/</a></li>
<li><strong>Ministry of External Affairs:</strong> <a href="https://www.mea.gov.in/" target="_blank" rel="noopener noreferrer">https://www.mea.gov.in/</a></li>
<li><strong>FRRO Online:</strong> <a href="https://indianfrro.gov.in/" target="_blank" rel="noopener noreferrer">https://indianfrro.gov.in/</a></li>
"@
}

# =====================================================================
# Schengen
# =====================================================================
$global:countryData["schengen"] = @{
    name = "Schengen"
    capital = "Brussels (EU headquarters)"
    currency = "EUR"
    currencyName = "Euro"
    currencySymbol = "EUR"
    embassy = "Apply at the embassy of the country you are visiting first or spending most time in"
    embassyDetail = "Schengen Area: 27 European countries with unified visa policy"
    visaRequired = "Yes, Indian citizens need a Schengen visa for all travel to the Schengen Area"
    mainVisaTypes = "Schengen Short-Stay Visa (Type C), Long-Stay Visa (Type D), Airport Transit Visa (Type A), National Visa for Work/Study"
    procTime = "Schengen Type C: 15-30 days (up to 45 days in some cases); Long-stay: 4-12 weeks"
    feeRange = "EUR 90 (Schengen Type C) to EUR 350+ (Long-stay)"
    financialReq = "Schengen: EUR 50-100 per day of stay; Students: EUR 10,000-15,000/year; Work: employer-sponsored"
    maxStay = "Schengen Type C: 90 days per 180-day period; Long-stay: 1+ years; PR: indefinite"
    bioMandatory = "Required for all Schengen visa applicants aged 12+"
    insuranceReq = "Mandatory: Travel medical insurance covering EUR 30,000+ for Schengen visa"
    appCenters = "VFS Global / TLScontact / BLS centers across all major Indian cities"
    englishReq = "Not required for Schengen Type C; IELTS 6.0-7.0 for student visas in specific countries"
    approvalRate = "Schengen Type C: ~75-85% (varies by embassy); Student: ~80-90%"
    intro = "The Schengen Area is a zone of 27 European countries that have abolished internal border controls. Indian citizens need a Schengen Visa (Type C) for short stays up to 90 days in any 180-day period for tourism, business, or family visits. A single visa allows travel across all Schengen countries."
    stats = "Over 900,000 Indian tourists visited Schengen countries in 2024, making India one of the top visa application countries. France, Germany, Italy, Switzerland, and the Netherlands are the most popular destinations. Indians filed over 1.2 million Schengen visa applications in 2024."
    needVisa = "Yes, Indian passport holders must obtain a Schengen Visa before traveling to any Schengen country for short stays. There is no visa-on-arrival or eVisa for Indian citizens. The visa is valid for all 27 Schengen countries once issued."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 90 days)"; answer = "Yes (Schengen Type C)"; detail = "Apply at embassy of main destination; 15-30 day processing"}
        @{can = "Travel for business meetings"; answer = "Yes (Schengen Type C)"; detail = "Business purpose allowed on Type C visa"}
        @{can = "Study at European universities"; answer = "Yes (National Visa)"; detail = "Requires country-specific long-stay visa (Type D)"}
        @{can = "Work as a skilled professional"; answer = "Yes (Work Visa)"; detail = "Country-specific; employer sponsorship required"}
        @{can = "Transit through Schengen airport"; answer = "Yes (Airport Transit)"; detail = "Some nationals need Type A transit visa; Indians generally need Type C for most airports"}
        @{can = "Live permanently in Schengen Area"; answer = "Yes (PR)"; detail = "Country-specific; 5+ years of residency typically required"}
        @{can = "Travel freely between Schengen countries"; answer = "Yes (within visa validity)"; detail = "No internal border checks within Schengen"}
        @{can = "Work on a tourist Schengen visa"; answer = "No"; detail = "Schengen Type C does not permit employment"}
    )
    visaTypes = @(
        @{type = "Schengen Short-Stay Visa"; subclass = "Type C"; purpose = "Tourism, business, family visits up to 90 days"; maxStay = "90 days per 180-day period"; processing = "15-30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,600"}
        @{type = "Airport Transit Visa"; subclass = "Type A"; purpose = "Transit through Schengen airport airside"; maxStay = "24 hours (airside only)"; processing = "5-15 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,600"}
        @{type = "Long-Stay National Visa"; subclass = "Type D"; purpose = "Study, work, family reunion (individual country)"; maxStay = "3 months to 1+ years"; processing = "4-12 weeks"; feeLocal = "EUR 99-150"; feeInr = "9,000 to 13,600"}
        @{type = "Student Visa (e.g. France/Germany)"; subclass = "National Student"; purpose = "Full-time study at EU institution"; maxStay = "Course duration"; processing = "4-8 weeks"; feeLocal = "EUR 50-100"; feeInr = "4,500 to 9,100"}
        @{type = "Work Visa (Blue Card EU)"; subclass = "EU Blue Card"; purpose = "Highly skilled employment in EU"; maxStay = "1-4 years (renewable)"; processing = "4-12 weeks"; feeLocal = "EUR 140-200"; feeInr = "12,700 to 18,100"}
    )
    additionalCosts = @(
        @{type = "VFS/TLS/BLS Service Fee"; amount = "2,100 to 3,000"; detail = "Application center service charge"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "Included in service fee; valid 5 years"}
        @{type = "Travel Medical Insurance"; amount = "2,500 to 5,000"; detail = "Mandatory: EUR 30,000 minimum coverage"}
        @{type = "Translation/Certification"; amount = "500 to 2,000"; detail = "Per document if not in English/French/German"}
        @{type = "Courier/Passport Return"; amount = "600 to 1,000"; detail = "Optional: passport delivery to home"}
        @{type = "Photographs (biometric)"; amount = "300 to 600"; detail = "2 copies; not all centers offer on-site photo"}
    )
    faqs = @(
        @{q = "What is the Schengen visa fee for Indians?"; a = "EUR 90 (Rs. 8,100-8,600) for adults. Children 6-12: EUR 45. Children under 6: Free. Plus VFS/TLS service fee of Rs. 2,100-3,000."}
        @{q = "Which Schengen country is easiest for Indians?"; a = "France, Italy, and Switzerland have higher approval rates for Indian applicants. Iceland and Switzerland process faster. Apply at the embassy of your main destination."}
        @{q = "How long does a Schengen visa take from India?"; a = "Standard processing: 15-30 days. You can apply up to 6 months before travel. Peak season (April-June) may take longer."}
        @{q = "What is the minimum bank balance for Schengen visa?"; a = "You need to show EUR 50-100 per day of stay. For a 15-day trip, show at least INR 1,50,000-2,00,000 in your account for the last 3-6 months."}
        @{q = "Do I need travel insurance for Schengen visa?"; a = "Yes, it is MANDATORY. Minimum coverage: EUR 30,000 for medical emergencies, valid across all Schengen countries. Cost: Rs. 2,500-5,000 for the trip duration."}
        @{q = "Can I work on a Schengen tourist visa?"; a = "No. Schengen Type C (short-stay) visa does not permit any form of employment. You need a specific work visa for the country you want to work in."}
        @{q = "What documents are needed for Schengen visa?"; a = "Passport (3+ months beyond return), application form, photos, travel insurance, flight booking, accommodation proof, bank statements (3-6 months), employment letter, IT returns (2-3 years), and cover letter."}
        @{q = "How early should I apply for Schengen visa?"; a = "Apply 4-6 weeks before your travel date. Earliest application: 6 months before. Latest: 15 working days before (not recommended)."}
        @{q = "Can I visit multiple Schengen countries on one visa?"; a = "Yes, a single Schengen visa allows travel to all 27 Schengen countries. Apply at the embassy of the country where you will spend the most days."}
        @{q = "What happens if my Schengen visa is rejected?"; a = "You will receive a refusal letter with reasons. Common reasons: insufficient funds, weak travel history, incomplete documentation. You can appeal within 30 days or reapply."}
        @{q = "Do I need to submit my passport for Schengen visa?"; a = "Yes, original passport is required. It will be kept at the embassy during processing (15-30 days). Plan your travel accordingly."}
        @{q = "Is biometric data required for Schengen visa?"; a = "Yes, fingerprints and photograph are required for all applicants aged 12+. Valid for 59 months (5 years) in the Schengen Information System (VIS)."}
        @{q = "Can I extend my Schengen visa?"; a = "Extensions are only granted in exceptional circumstances (force majeure, humanitarian reasons). You cannot extend for tourism."}
        @{q = "What is the 90/180 day rule?"; a = "You can stay maximum 90 days within any 180-day period in the Schengen Area. Use the Schengen calculator to track your days."}
        @{q = "Can I travel to UK with a Schengen visa?"; a = "No, the UK is not part of the Schengen Area. You need a separate UK visa."}
    )
    updates2026 = @(
        @{change = "Schengen Visa Fee"; previous = "EUR 80"; current = "EUR 90 (increased from June 2024)"}
        @{change = "ETIAS (Entry/Exit System)"; previous = "Planned"; current = "Implementation further delayed - not yet in effect"}
        @{change = "Application Window"; previous = "6 months before travel"; current = "6 months before travel (extended from 3 months during COVID)"}
        @{change = "Digital Visa Processing"; previous = "Paper applications"; current = "Gradual shift to digital: online submission in select countries"}
        @{change = "Multiple Entry Visas"; previous = "Conservative issuance"; current = "More generous 1-5 year multi-entry visas for frequent travelers"}
        @{change = "Visa Fee Waivers"; previous = "Limited"; current = "Extended to more categories including researchers and students"}
    )
    officialResources = @"
<li><strong>EU Schengen Visa Info:</strong> <a href="https://ec.europa.eu/home-affairs/policies/schengen-borders-and-visa/schengen-visa_en" target="_blank" rel="noopener noreferrer">https://ec.europa.eu/</a></li>
<li><strong>VFS Global (Schengen):</strong> <a href="https://visa.vfsglobal.com/ind/en/" target="_blank" rel="noopener noreferrer">https://visa.vfsglobal.com/</a></li>
<li><strong>France-Visas Portal:</strong> <a href="https://france-visas.gouv.fr/" target="_blank" rel="noopener noreferrer">https://france-visas.gouv.fr/</a></li>
"@
}

# =====================================================================
# Bangladesh
# =====================================================================
$global:countryData["bangladesh"] = @{
    name = "Bangladesh"
    capital = "Dhaka"
    currency = "BDT"
    currencyName = "Bangladeshi Taka"
    currencySymbol = "BDT"
    embassy = "High Commission of Bangladesh, New Delhi"
    embassyDetail = "Consulates in Kolkata, Mumbai, Chennai, Bengaluru, Hyderabad, Agartala, Guwahati"
    visaRequired = "Yes, Indian citizens need a visa for travel to Bangladesh; visa-on-arrival available for certain categories"
    mainVisaTypes = "Tourist Visa, Business Visa, Student Visa, Work Visa, Medical Visa, Visa-on-Arrival"
    procTime = "Regular visa: 5-15 days; Visa-on-Arrival: on arrival (30 mins)"
    feeRange = "BDT 0 (free for SAARC including Indians) to BDT 20,000+ (work visa)"
    financialReq = "Tourists: minimal; Students: BDT 200,000-500,000/year; Work: employer-sponsored"
    maxStay = "Tourist: 30 days (extendable); Student: course duration; Work: 1-2 years"
    bioMandatory = "Not required for Indian citizens"
    insuranceReq = "Not mandatory"
    appCenters = "Bangladesh High Commission New Delhi; Consulates; Visa-on-Arrival at Dhaka Airport"
    englishReq = "Not required for tourist; some evidence for student visas"
    approvalRate = "Regular visa: ~90%; Visa-on-Arrival: ~85%"
    intro = "Bangladesh offers visa services for Indian citizens through its High Commission in New Delhi and consulates across India. Indian passport holders can also obtain a visa-on-arrival at Dhaka airport for certain travel purposes. Due to friendly bilateral relations, visa processing is relatively straightforward."
    stats = "Over 2 million Indians visited Bangladesh in 2024, making India the largest source of international visitors. Many Indians travel for tourism, business, medical treatment, and pilgrimage. Direct flights connect Delhi, Kolkata, Mumbai, Chennai, and Bengaluru to Dhaka."
    needVisa = "Indian passport holders need a visa for Bangladesh. A visa-on-arrival is available at Dhaka airport for tourists, business visitors, and medical travelers with proper documentation. Regular visas can be obtained from the Bangladesh High Commission and consulates in India."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 30 days)"; answer = "Yes (Visa or VOA)"; detail = "Regular visa from consulate or visa-on-arrival at Dhaka airport"}
        @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires invitation letter; VOA also available"}
        @{can = "Study at Bangladeshi institutions"; answer = "Yes (Student Visa)"; detail = "Requires admission letter from recognized institution"}
        @{can = "Work as a professional"; answer = "Yes (Work Visa)"; detail = "Employer sponsorship required; valid 1-2 years"}
        @{can = "Transit through Bangladesh"; answer = "Yes (Transit)"; detail = "Up to 72 hours with confirmed onward ticket"}
        @{can = "Live permanently"; answer = "Limited (Resident Visa)"; detail = "Available for long-term work, investment, or marriage"}
    )
    visaTypes = @(
        @{type = "Tourist Visa"; subclass = "Tourist"; purpose = "Tourism, family visits"; maxStay = "30 days (extendable)"; processing = "5-10 working days"; feeLocal = "Free (SAARC)"; feeInr = "Free"}
        @{type = "Business Visa"; subclass = "Business"; purpose = "Business meetings, trade"; maxStay = "1-5 years"; processing = "5-10 working days"; feeLocal = "Free (SAARC)"; feeInr = "Free"}
        @{type = "Student Visa"; subclass = "Student"; purpose = "Full-time study"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "BDT 5,000-10,000"; feeInr = "3,200 to 6,300"}
        @{type = "Work Visa"; subclass = "Employment"; purpose = "Employment by Bangladeshi company"; maxStay = "1-2 years (renewable)"; processing = "2-4 weeks"; feeLocal = "BDT 10,000-20,000"; feeInr = "6,300 to 12,600"}
        @{type = "Medical Visa"; subclass = "Medical"; purpose = "Medical treatment in Bangladesh"; maxStay = "30 days"; processing = "3-5 working days"; feeLocal = "Free (SAARC)"; feeInr = "Free"}
        @{type = "Visa-on-Arrival"; subclass = "VOA"; purpose = "Tourism, business, medical (at Dhaka airport)"; maxStay = "30 days"; processing = "On arrival"; feeLocal = "USD 50-100"; feeInr = "4,200 to 8,300"}
    )
    additionalCosts = @(
        @{type = "Visa Processing Fee"; amount = "500 to 1,000"; detail = "Some consulates may charge processing fee"}
        @{type = "Translation/Certification"; amount = "500 to 2,000"; detail = "Per document if needed"}
        @{type = "Courier/Passport Return"; amount = "600 to 1,000"; detail = "Optional passport delivery"}
    )
    faqs = @(
        @{q = "Do Indians need a visa for Bangladesh?"; a = "Yes, Indian citizens need a visa for Bangladesh. However, visa-on-arrival is available at Dhaka airport. Regular visas from the High Commission are free for SAARC nationals."}
        @{q = "What is the Bangladesh visa fee for Indians?"; a = "Tourist and Business visas are FREE for Indian citizens (SAARC concession). Visa-on-arrival: USD 50-100. Work/Student visas: BDT 5,000-20,000."}
        @{q = "How long can I stay in Bangladesh on a tourist visa?"; a = "Tourist visa allows 30 days stay, extendable at the Department of Immigration in Dhaka for an additional 30 days."}
        @{q = "Can I get a visa on arrival in Bangladesh?"; a = "Yes, at Hazrat Shahjalal International Airport (Dhaka) for tourists, business visitors, and medical travelers with confirmed hotel bookings, return tickets, and USD 500+ in cash."}
        @{q = "What documents are needed for Bangladesh visa?"; a = "Passport (6+ months valid), 2 photos, application form, bank statements (3 months), flight booking, hotel booking, and cover letter."}
        @{q = "How do I apply for a Bangladesh visa from India?"; a = "Submit application at the Bangladesh High Commission in New Delhi or any consulate (Kolkata, Mumbai, Chennai, Bengaluru, Hyderabad, Agartala, Guwahati). Processing: 5-10 working days."}
        @{q = "Can I work in Bangladesh on a tourist visa?"; a = "No. You need a Work Visa sponsored by a Bangladeshi employer. The employer must obtain approval from the Board of Investment."}
        @{q = "Is Bangladesh safe for Indian tourists?"; a = "Yes, Bangladesh is generally safe for Indian tourists. Standard precautions apply. The country has rich cultural heritage, including UNESCO World Heritage sites like Sundarbans and Paharpur."}
        @{q = "What is the best time to visit Bangladesh?"; a = "October to March is the best time with pleasant weather. April to September is monsoon season with heavy rainfall."}
        @{q = "Are there direct flights from India to Bangladesh?"; a = "Yes, direct flights from Delhi, Kolkata, Mumbai, Chennai, and Bengaluru to Dhaka. Flight time: 1-3 hours."}
        @{q = "Can I travel overland from India to Bangladesh?"; a = "Yes, popular land border crossings: Petrapole-Benapole (Kolkata-Dhaka route), Haridaspur, and several others in West Bengal, Assam, Meghalaya, and Tripura."}
        @{q = "What currency should I carry to Bangladesh?"; a = "Bangladeshi Taka (BDT). Indian Rupees are not widely accepted. Carry USD and exchange at authorized money changers. ATMs available in cities."}
        @{q = "Do I need a return ticket for Bangladesh?"; a = "Yes, proof of onward/return travel is required for visa application and visa-on-arrival."}
        @{q = "Can I extend my Bangladesh visa?"; a = "Yes, visa extensions are possible at the Department of Immigration and Passports in Dhaka. Extension for 30 days typically costs BDT 3,000-5,000."}
        @{q = "What vaccines do I need for Bangladesh?"; a = "No mandatory vaccines for entry. Recommended: hepatitis A, typhoid, tetanus. Yellow fever vaccine required if traveling from endemic countries."}
    )
    updates2026 = @(
        @{change = "Visa-on-Arrival Fee"; previous = "USD 50"; current = "USD 50-100 (revised category-based)"}
        @{change = "SAARC Visa Fee Waiver"; previous = "Continued"; current = "Still free for Indian citizens (unchanged)"}
        @{change = "Visa Application Process"; previous = "Paper submission only"; current = "Online appointment system introduced"}
        @{change = "Multiple Entry Visas"; previous = "Restricted"; current = "More generous multi-entry visa issuance for business travelers"}
        @{change = "Visa Processing Time"; previous = "10-15 days"; current = "5-10 days (expedited)"}
    )
    officialResources = @"
<li><strong>Bangladesh High Commission New Delhi:</strong> <a href="https://bddelhi.mfa.gov.bd/" target="_blank" rel="noopener noreferrer">https://bddelhi.mfa.gov.bd/</a></li>
<li><strong>Bangladesh Visa Online:</strong> <a href="https://www.visa.gov.bd/" target="_blank" rel="noopener noreferrer">https://www.visa.gov.bd/</a></li>
<li><strong>Bangladesh Tourism Board:</strong> <a href="https://www.bangladeshtourism.gov.bd/" target="_blank" rel="noopener noreferrer">https://www.bangladeshtourism.gov.bd/</a></li>
"@
}

Write-Host "Batch 4 loaded: New Zealand, Nepal, Sri Lanka, Philippines, Cambodia, India, Schengen, Bangladesh"
