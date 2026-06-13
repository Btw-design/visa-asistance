if (-not $global:countryData) { $global:countryData = @{} }

# ============================================================
# Country: Canada
# ============================================================
$global:countryData["canada"] = @{
    name = "Canada"
    capital = "Ottawa"
    currency = "CAD"
    currencyName = "Canadian Dollar"
    currencySymbol = "CAD"
    embassy = "7/8 Shantipath, Chanakyapuri, New Delhi 110021"
    embassyDetail = "Consulates in Mumbai, Chandigarh, Bengaluru, and Kolkata"
    visaRequired = "Yes, all Indian passport holders need a visa to enter Canada."
    mainVisaTypes = "Visitor Visa, Student Visa, Work Permit, Business Visa, Super Visa, Transit Visa"
    procTime = "15 to 60 days depending on visa type and application volume"
    feeRange = "CAD 100 to CAD 230 depending on visa type"
    financialReq = "Proof of sufficient funds to cover stay, typically CAD 10,000 per year for students plus tuition"
    maxStay = "Up to 6 months for visitors; up to 5 years for study/work permits"
    bioMandatory = "Yes, biometrics (fingerprints and photo) mandatory for all Indian applicants aged 14-79"
    insuranceReq = "Not mandatory for visitors but strongly recommended; mandatory for Super Visa (min CAD 100,000 coverage)"
    appCenters = "New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Chandigarh, Pune, Ahmedabad, Hyderabad, Kochi, Bhopal, Jaipur, Lucknow, Surat, Nagpur, Coimbatore, Jalandhar, Goa"
    englishReq = "Proof of English proficiency (IELTS/TOEFL) required for study and work visas"
    approvalRate = "Approximately 60-70% for visitor visas from India"
    intro = "Canada offers a range of visa options for Indian citizens including visitor visas, study permits, and work permits. The country is a popular destination for Indian students and skilled workers due to its immigration-friendly policies."
    stats = "Over 300,000 Indians visit Canada annually. India is the largest source country for international students in Canada with over 300,000 Indian students. Canada issued over 3,00,000 study permits to Indians in the last year."
    needVisa = "Yes, Indian citizens require a visa to enter Canada. There is no visa-free access or visa-on-arrival facility for Indian passport holders."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 6 months)"; answer = "Yes (Visitor Visa)"; detail = "Apply for a Temporary Resident Visa (TRV) for tourism purposes"}
        @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Business visitors can attend meetings and conferences without a work permit"}
        @{can = "Study at a university"; answer = "Yes (Study Permit)"; detail = "Must have admission letter from a Designated Learning Institution (DLI)"}
        @{can = "Work as a skilled professional"; answer = "Yes (Work Permit)"; detail = "Requires a job offer and Labour Market Impact Assessment (LMIA)"}
        @{can = "Transit without visa"; answer = "No"; detail = "Indian citizens require a visa even for transiting through Canadian airports"}
        @{can = "Live permanently"; answer = "Yes (Permanent Residence)"; detail = "Apply through Express Entry, Provincial Nominee Programs, or family sponsorship"}
        @{can = "Visit family members"; answer = "Yes (Super Visa)"; detail = "Parents and grandparents of Canadian citizens can apply for a Super Visa valid for 10 years"}
        @{can = "Work while studying"; answer = "Yes"; detail = "Full-time students can work up to 20 hours per week off-campus without a separate work permit"}
    )
    visaTypes = @(
        @{type = "Visitor Visa (TRV)"; subclass = "Temporary Resident Visa"; purpose = "Tourism, visiting family, business meetings"; maxStay = "Up to 6 months"; processing = "15 to 45 days"; feeLocal = "CAD 100"; feeInr = "6,100 to 6,200"}
        @{type = "Study Permit"; subclass = "Study Permit"; purpose = "Academic study at a DLI"; maxStay = "Duration of program plus 90 days"; processing = "30 to 60 days"; feeLocal = "CAD 150"; feeInr = "9,100 to 9,200"}
        @{type = "Work Permit"; subclass = "Employer-specific Work Permit"; purpose = "Skilled employment in Canada"; maxStay = "Up to 3 years"; processing = "30 to 90 days"; feeLocal = "CAD 155"; feeInr = "9,400 to 9,500"}
        @{type = "Super Visa"; subclass = "Parent/Grandparent Super Visa"; purpose = "Extended visits to family in Canada"; maxStay = "Up to 5 years per visit"; processing = "30 to 60 days"; feeLocal = "CAD 100"; feeInr = "6,100 to 6,200"}
        @{type = "Business Visa"; subclass = "Business Visitor"; purpose = "Business meetings, conferences, training"; maxStay = "Up to 6 months"; processing = "15 to 30 days"; feeLocal = "CAD 100"; feeInr = "6,100 to 6,200"}
    )
    additionalCosts = @(
        @{type = "Biometrics Fee"; amount = "CAD 85"; detail = "Per applicant, valid for 10 years"}
        @{type = "VFS Service Charge"; amount = "2,200 to 2,500"; detail = "Paid at the visa application centre"}
        @{type = "Medical Examination"; amount = "5,000 to 10,000"; detail = "Required for study and work permits"}
        @{type = "Translation & Notarization"; amount = "500 to 2,000"; detail = "Per document if not in English or French"}
        @{type = "Courier Service"; amount = "600 to 1,000"; detail = "For passport return by courier"}
    )
    faqs = @(
        @{q = "What is the visa fee for Canada from India?"; a = "A visitor visa costs CAD 100 (approximately Rs. 6,100). Study permits are CAD 150 (Rs. 9,100) and work permits are CAD 155 (Rs. 9,400). Biometrics fee of CAD 85 (Rs. 5,200) is additional."}
        @{q = "How long does Canada visa processing take in India?"; a = "Processing times vary by visa type and application volume. Visitor visas typically take 15 to 45 days, study permits 30 to 60 days, and work permits 30 to 90 days. Check IRCC current processing times online."}
        @{q = "Do I need to provide biometrics for Canada visa?"; a = "Yes, biometrics are mandatory for all Indian applicants aged 14 to 79. You must visit a VFS Global application centre to provide fingerprints and photograph. Biometrics are valid for 10 years."}
        @{q = "What is the minimum bank balance required for a Canada visitor visa?"; a = "There is no fixed minimum amount, but you should show sufficient funds to cover your stay. For a 2-week trip, Indian applicants typically show Rs. 5 to 10 lakh in bank statements. For students, proof of first year tuition plus CAD 10,000 living costs is required."}
        @{q = "Can I work in Canada on a visitor visa?"; a = "No, a visitor visa (TRV) does not permit employment in Canada. You must apply for a valid work permit to work legally. Working without authorisation can lead to deportation and a ban."}
        @{q = "How long does a Canada visitor visa remain valid?"; a = "A visitor visa is typically valid for up to 10 years or until passport expiry, whichever is earlier. Each visit allows a stay of up to 6 months. The immigration officer at the port of entry determines your stay duration."}
        @{q = "Can I study in Canada without IELTS?"; a = "Most Canadian institutions require IELTS or TOEFL scores. However, some institutions offer pathways through their own English tests or if you have studied in English-medium schools. Check with your chosen DLI for alternatives."}
        @{q = "What is the Canada Super Visa for parents?"; a = "The Super Visa allows parents and grandparents of Canadian citizens or PRs to stay up to 5 years per visit. Requirements include proof of relationship, medical insurance of minimum CAD 100,000, and proof of Canadian host meeting income thresholds."}
        @{q = "Is there a visa-on-arrival for Indians in Canada?"; a = "No, there is no visa-on-arrival facility. Indian citizens must obtain a visa or Electronic Travel Authorization (eTA) before boarding a flight to Canada. eTA is only available for citizens of visa-exempt countries."}
        @{q = "What is the Canada PR pathway for Indian students?"; a = "After completing a study program in Canada, Indian students can apply for a Post-Graduation Work Permit (PGWP) valid for up to 3 years. Canadian work experience gained through PGWP helps qualify for Express Entry permanent residence programs."}
        @{q = "Can I apply for Canada visa online?"; a = "Yes, all Canada visa applications are submitted online through the IRCC portal. After submission, you must visit a VFS centre for biometrics. Some applicants may need to submit their passport to the visa office."}
        @{q = "What documents are needed for a Canada tourist visa?"; a = "Required documents include valid passport, completed application form, photographs, proof of funds (bank statements, ITR), travel itinerary, flight and hotel bookings, employment letter, leave approval, and property documents. Additional documents may be requested."}
        @{q = "How can I check Canada visa status?"; a = "You can check your visa application status online through the IRCC portal using your application number. VFS Global also provides tracking for passport submission and return."}
        @{q = "Is medical insurance required for Canada?"; a = "Medical insurance is not mandatory for visitor visas but is strongly recommended as healthcare in Canada is expensive for visitors. For the Super Visa, medical insurance with minimum CAD 100,000 coverage is mandatory."}
    )
    updates2026 = @(
        @{change = "Visa Fee Increase"; previous = "CAD 85"; current = "CAD 100"}
        @{change = "Biometrics Validity"; previous = "10 years"; current = "10 years (unchanged)"}
        @{change = "SDS Stream for Students"; previous = "Active"; current = "Replaced by streamlined processing"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.canada.ca/immigration.html' target='_blank'>Canada Immigration & Citizenship</a></li><li><strong>VFS Global:</strong> <a href='https://www.vfsglobal.ca/canada/india' target='_blank'>VFS Canada India</a></li><li><strong>IRCC Processing Times:</strong> <a href='https://www.canada.ca/en/immigration-refugees-citizenship/services/application/check-processing-times.html' target='_blank'>Check Processing Times</a></li>"
}

# ============================================================
# Country: United Kingdom
# ============================================================
$global:countryData["uk"] = @{
    name = "UK"
    capital = "London"
    currency = "GBP"
    currencyName = "Pound Sterling"
    currencySymbol = "GBP"
    embassy = "Shantipath, Chanakyapuri, New Delhi 110021"
    embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Chandigarh, Goa"
    visaRequired = "Yes, Indian citizens need a visa for most purposes of travel to the UK."
    mainVisaTypes = "Standard Visitor Visa, Student Visa, Skilled Worker Visa, Business Visa, Transit Visa, Family Visa, Youth Mobility Scheme"
    procTime = "3 to 8 weeks depending on visa type and service selected"
    feeRange = "GBP 100 to GBP 1,500 depending on visa type"
    financialReq = "Proof of sufficient funds: visitors need to cover stay; students need tuition plus GBP 1,334/month (London) or GBP 1,023/month (outside)"
    maxStay = "Up to 6 months for visitors; up to 5 years for study/work permits"
    bioMandatory = "Yes, biometrics (fingerprints and photo) required at UK Visa Application Centre"
    insuranceReq = "Not mandatory for visitors; NHS surcharge is mandatory for stays over 6 months (currently GBP 776 per year)"
    appCenters = "New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Chandigarh, Pune, Ahmedabad, Kochi, Jalandhar, Goa"
    englishReq = "Proof of English proficiency required for student and work visas; IELTS SELT or equivalent"
    approvalRate = "Approximately 85-90% for visitor visas from India"
    intro = "The United Kingdom offers diverse visa options for Indian travellers including tourist, business, study and work visas. The UK operates its own immigration system separate from the Schengen Area, with specific requirements and processing for Indian applicants."
    stats = "Over 500,000 Indians visit the UK annually. India is the second largest source of international students in the UK with over 140,000 Indian students. The UK issued over 2,50,000 visit visas to Indians in the last year."
    needVisa = "Yes, Indian passport holders need a visa to enter the United Kingdom for any purpose including tourism, business, study, and work."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 6 months)"; answer = "Yes (Standard Visitor Visa)"; detail = "Apply for a Standard Visitor Visa for tourism, visiting family, or short study"}
        @{can = "Travel for business meetings"; answer = "Yes (Standard Visitor Visa)"; detail = "Business visitors can attend meetings, conferences, and training"}
        @{can = "Study at a university"; answer = "Yes (Student Visa)"; detail = "Requires CAS from a licensed sponsor and proof of English proficiency"}
        @{can = "Work as a skilled professional"; answer = "Yes (Skilled Worker Visa)"; detail = "Requires a job offer from a licensed sponsor and minimum salary threshold"}
        @{can = "Transit without visa"; answer = "Yes (Transit Visa)"; detail = "Airside transit visa required if changing airports or passing through UK border control"}
        @{can = "Live permanently"; answer = "Yes (Indefinite Leave to Remain)"; detail = "Available after 5 years of residence through work, family, or investment routes"}
        @{can = "Work while studying"; answer = "Yes"; detail = "Full-time students can work up to 20 hours per week during term time"}
        @{can = "Visit for medical treatment"; answer = "Yes (Medical Visitor Visa)"; detail = "Allows entry for private medical treatment in the UK"}
    )
    visaTypes = @(
        @{type = "Standard Visitor Visa"; subclass = "Short-term Visit"; purpose = "Tourism, family visits, business, medical"; maxStay = "Up to 6 months"; processing = "15 to 30 days"; feeLocal = "GBP 115"; feeInr = "12,000 to 12,100"}
        @{type = "Student Visa"; subclass = "Tier 4 (General)"; purpose = "Full-time study at a UK institution"; maxStay = "Duration of course plus 2-4 months"; processing = "15 to 30 days"; feeLocal = "GBP 490"; feeInr = "51,000 to 51,200"}
        @{type = "Skilled Worker Visa"; subclass = "Tier 2"; purpose = "Skilled employment with licensed sponsor"; maxStay = "Up to 5 years"; processing = "15 to 30 days"; feeLocal = "GBP 719"; feeInr = "75,000 to 75,200"}
        @{type = "Youth Mobility Scheme"; subclass = "Tier 5 (YMS)"; purpose = "Work and travel for young adults"; maxStay = "2 years"; processing = "15 to 30 days"; feeLocal = "GBP 298"; feeInr = "31,000 to 31,200"}
        @{type = "Health and Care Worker Visa"; subclass = "Skilled Worker Health"; purpose = "Medical professionals working in NHS"; maxStay = "Up to 5 years"; processing = "15 to 30 days"; feeLocal = "GBP 284"; feeInr = "29,700 to 29,900"}
        @{type = "Innovator Visa"; subclass = "Start-up/Innovator"; purpose = "Entrepreneurs with innovative business ideas"; maxStay = "3 years"; processing = "15 to 30 days"; feeLocal = "GBP 1,036"; feeInr = "1,08,000 to 1,08,200"}
    )
    additionalCosts = @(
        @{type = "Immigration Health Surcharge"; amount = "GBP 776 per year"; detail = "Mandatory for stays over 6 months, paid upfront"}
        @{type = "VFS Service Fee"; amount = "2,000 to 3,000"; detail = "Paid at visa application centre"}
        @{type = "Priority Processing"; amount = "GBP 500"; detail = "5 working day priority service"}
        @{type = "Super Priority Processing"; amount = "GBP 800"; detail = "Next working day decision"}
        @{type = "Biometrics"; amount = "Included in visa fee"; detail = "Fingerprints and photo at application centre"}
    )
    faqs = @(
        @{q = "What is the UK visa fee from India?"; a = "Standard Visitor Visa costs GBP 115 (approx Rs. 12,000). Student Visa is GBP 490 (Rs. 51,000) and Skilled Worker Visa is GBP 719 (Rs. 75,000). Health surcharge of GBP 776 per year is extra for stays over 6 months."}
        @{q = "How long does UK visa processing take?"; a = "Standard processing takes 15 to 30 working days. Priority service (GBP 500) gives a decision in 5 working days. Super Priority (GBP 800) gives a decision by the next working day. Processing times may vary during peak seasons."}
        @{q = "Do Indian citizens need visa for UK transit?"; a = "If you transit through UK border control or change airports, you need a Transit Visa (GBP 64). Direct airside transit within the same airport may not require a visa. Check the UK gov website for your specific transit route."}
        @{q = "What is the minimum bank balance for UK student visa?"; a = "You must show funds for first year tuition plus living costs: GBP 1,334 per month for London (max 9 months) and GBP 1,023 per month outside London. Funds must be held for at least 28 consecutive days."}
        @{q = "Can I work in the UK on a visitor visa?"; a = "No, a Standard Visitor Visa does not permit work. You cannot take employment, including unpaid work. You may attend business meetings, conferences, and training. For paid work, you need a Skilled Worker Visa or appropriate work permit."}
        @{q = "How long can I stay in UK on visitor visa?"; a = "Standard visitor visa allows stay of up to 6 months per visit. The visa is usually valid for 2 to 10 years allowing multiple entries. Each visit is subject to the 6-month limit and immigration officer discretion."}
        @{q = "What is the UK Immigration Health Surcharge?"; a = "The IHS is mandatory for visa applicants staying over 6 months. It costs GBP 776 per year for students and GBP 1,035 per year for other visa types. It gives access to NHS services during your stay."}
        @{q = "Is IELTS required for UK student visa?"; a = "Yes, for a UK Student Visa you need a Secure English Language Test (SELT) like IELTS for UKVI or PTE Academic UKVI. Minimum scores vary by institution and course level, typically IELTS 6.0 to 7.0."}
        @{q = "Can I switch from visitor visa to work visa in UK?"; a = "You cannot switch from a Standard Visitor Visa to a work visa from within the UK. You must leave the UK and apply for a Skilled Worker Visa from India. This rule applies to most visa categories."}
        @{q = "What is the UK Youth Mobility Scheme for Indians?"; a = "India is not currently on the Youth Mobility Scheme list, so Indian citizens aged 18-30 cannot apply for this visa. The scheme is available for citizens of Australia, New Zealand, Canada, Japan and certain other countries."}
        @{q = "How much is the UK visa fee in rupees?"; a = "Visitor visa: approx Rs. 12,000; Student visa: approx Rs. 51,000; Skilled Worker visa: approx Rs. 75,000. Immigration Health Surcharge adds roughly Rs. 81,000 per year. VFS service fees add Rs. 2,000 to 3,000 extra."}
        @{q = "What documents are needed for a UK tourist visa?"; a = "Required documents: valid passport, completed online application, photographs, bank statements (6 months), ITR (3 years), employment letter, leave approval, travel itinerary, flight and hotel bookings. Additional documents may be requested."}
        @{q = "Can I apply for UK visa online from India?"; a = "Yes, all UK visa applications are submitted online through the UK Visas and Immigration website. After submission, you book an appointment at a UK Visa Application Centre for biometrics and document submission."}
        @{q = "What is the UK visa approval rate for Indians?"; a = "The UK visitor visa approval rate for Indian applicants is approximately 85-90%. Student visa approval rates are even higher at around 95%. Providing complete documentation and strong financial proof improves chances."}
    )
    updates2026 = @(
        @{change = "Visitor Visa Fee"; previous = "GBP 100"; current = "GBP 115"}
        @{change = "IHS Surcharge"; previous = "GBP 624 per year"; current = "GBP 776 per year"}
        @{change = "Student Visa Fee"; previous = "GBP 363"; current = "GBP 490"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.gov.uk/government/organisations/uk-visas-and-immigration' target='_blank'>UK Visas and Immigration</a></li><li><strong>VFS Global:</strong> <a href='https://www.vfsglobal.co.uk/india' target='_blank'>VFS UK India</a></li><li><strong>Check Visa Processing Times:</strong> <a href='https://www.gov.uk/visa-processing-times' target='_blank'>UKVI Processing Times</a></li>"
}

# ============================================================
# Country: France
# ============================================================
$global:countryData["france"] = @{
    name = "France"
    capital = "Paris"
    currency = "EUR"
    currencyName = "Euro"
    currencySymbol = "EUR"
    embassy = "2/50-E, Shantipath, Chanakyapuri, New Delhi 110021"
    embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Pondicherry"
    visaRequired = "Yes, Indian citizens need a Schengen visa to visit France."
    mainVisaTypes = "Short Stay Schengen Visa, Long Stay Visa, Student Visa, Work Visa, Business Visa, Transit Visa"
    procTime = "15 to 30 days for Schengen visa; up to 60 days for long stay"
    feeRange = "EUR 90 to EUR 120 for Schengen visa; varies for long stay"
    financialReq = "Minimum EUR 65 per day of stay for short stay; proof of tuition plus living costs for students"
    maxStay = "90 days per 180-day period for Schengen; up to 1 year for long stay"
    bioMandatory = "Yes, biometrics (fingerprints and photo) required for all Schengen visa applicants"
    insuranceReq = "Yes, travel medical insurance mandatory with minimum EUR 30,000 coverage for Schengen visa"
    appCenters = "New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Pune, Ahmedabad, Kochi, Chandigarh, Goa"
    englishReq = "Not required for short stay; French language proficiency may be needed for study/work visas"
    approvalRate = "Approximately 80-85% for Indian Schengen visa applicants"
    intro = "France is part of the Schengen Area, allowing Indian travellers with a French Schengen visa to visit 27 European countries. Indian citizens need to apply at the French consulate if France is the primary destination or the first point of entry."
    stats = "Over 200,000 Indians visit France annually. France is one of the most visited Schengen countries by Indians. The number of Indian tourists to France has grown steadily with improved air connectivity and visa facilitation."
    needVisa = "Yes, Indian passport holders need a Schengen visa to enter France for any purpose including tourism, business, and transit."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 90 days)"; answer = "Yes (Schengen Visa)"; detail = "Schengen visa allows travel to France and all 27 Schengen countries"}
        @{can = "Travel for business meetings"; answer = "Yes (Schengen Business Visa)"; detail = "Business Schengen visa for meetings, conferences, and negotiations"}
        @{can = "Study at a university"; answer = "Yes (Long Stay Student Visa)"; detail = "Requires admission letter from a French institution and proof of funds"}
        @{can = "Work as a skilled professional"; answer = "Yes (Work Visa)"; detail = "Requires a work permit and job offer from a French employer"}
        @{can = "Transit without visa"; answer = "No"; detail = "Transit visa required for airport transit in Schengen area for Indians"}
        @{can = "Live permanently"; answer = "Yes (Carte de Sejour)"; detail = "Long-term residence permit available after 5 years of continuous residence"}
        @{can = "Visit for cultural events"; answer = "Yes (Short Stay Visa)"; detail = "Schengen visa covers tourism, cultural visits, and sports events"}
        @{can = "Travel for medical treatment"; answer = "Yes (Schengen Visa)"; detail = "Medical tourism allowed; may need additional documents about treatment"}
    )
    visaTypes = @(
        @{type = "Short Stay Schengen Visa"; subclass = "Schengen Type C"; purpose = "Tourism, business, transit, family visit"; maxStay = "90 days per 180-day period"; processing = "15 to 30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
        @{type = "Long Stay Visa"; subclass = "Visa de Long Sejour"; purpose = "Study, work, family reunion, long stay"; maxStay = "Up to 1 year renewable"; processing = "30 to 60 days"; feeLocal = "EUR 99"; feeInr = "8,900 to 9,000"}
        @{type = "Student Visa"; subclass = "VLS-TS Etudiant"; purpose = "Pursue higher education in France"; maxStay = "Duration of studies (1-5 years)"; processing = "15 to 45 days"; feeLocal = "EUR 50"; feeInr = "4,500 to 4,600"}
        @{type = "Work Visa"; subclass = "VLS-TS Salarie"; purpose = "Employment with a French company"; maxStay = "Up to 1 year renewable"; processing = "30 to 60 days"; feeLocal = "EUR 99"; feeInr = "8,900 to 9,000"}
        @{type = "Business Schengen Visa"; subclass = "Schengen Type C"; purpose = "Business meetings, conferences, trade fairs"; maxStay = "90 days per 180-day period"; processing = "15 to 30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
    )
    additionalCosts = @(
        @{type = "VFS Service Fee"; amount = "2,200 to 2,700"; detail = "Paid at visa application centre"}
        @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory with EUR 30,000 coverage"}
        @{type = "Biometrics"; amount = "Included in visa fee"; detail = "Fingerprints and photo at application centre"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if not in French or English"}
    )
    faqs = @(
        @{q = "What is the France Schengen visa fee from India?"; a = "The Schengen visa fee is EUR 90 (approx Rs. 8,100) for adults. Children aged 6-12 pay EUR 45. Children under 6 are free. Long stay visas cost EUR 99 (approx Rs. 8,900). VFS service fees are extra."}
        @{q = "How long does France visa processing take in India?"; a = "Standard processing takes 15 to 30 calendar days. During peak seasons it may take up to 45 days. It is advisable to apply at least 4-6 weeks before your planned travel. Some applications may be referred to other Schengen states."}
        @{q = "What is the minimum bank balance for France tourist visa?"; a = "You need to show at least EUR 65 (approx Rs. 5,800) per day of stay as per French guidelines. For a 10-day trip, you should show around Rs. 2-3 lakh in bank statements. Property documents and ITR also strengthen the application."}
        @{q = "Can I visit other Schengen countries with a France visa?"; a = "Yes, a France-issued Schengen visa allows you to travel to all 27 Schengen countries including Germany, Italy, Spain, Netherlands, Switzerland, and others. You must enter France first or spend the most days in France."}
        @{q = "Do I need travel insurance for France visa?"; a = "Yes, travel medical insurance is mandatory for all Schengen visa applications. The insurance must cover minimum EUR 30,000 (approx Rs. 27 lakh) for medical emergencies, repatriation, and be valid throughout the Schengen area."}
        @{q = "How long can I stay in France on Schengen visa?"; a = "A Schengen visa allows a maximum stay of 90 days within any 180-day period. The visa may be valid for single entry, double entry, or multiple entries. Overstaying can lead to bans and future visa rejections."}
        @{q = "Can I study in France without knowing French?"; a = "Yes, many French universities offer programs taught in English, especially at the Masters and PhD levels. However, basic French is recommended for daily life. For undergraduate programs, French proficiency is usually required (B2 level minimum)."}
        @{q = "What documents are required for France tourist visa?"; a = "Key documents: valid passport (with 3 months validity beyond return), Schengen visa application form, photographs, round trip flight booking, hotel reservation, travel insurance, bank statements (6 months), ITR (3 years), employment letter, leave approval."}
        @{q = "How early can I apply for France Schengen visa?"; a = "You can apply up to 6 months before your intended travel date. It is recommended to apply at least 4-6 weeks in advance, especially during peak tourist season (May-September). Processing is usually completed within 15-30 days."}
        @{q = "Is there a visa-on-arrival for Indians in France?"; a = "No, there is no visa-on-arrival facility for Indian citizens. A Schengen visa must be obtained from the French consulate or VFS centre before travelling. Visas cannot be obtained at the border."}
        @{q = "What is the France student visa process for Indians?"; a = "First, get admission to a French institution. Apply for Campus France verification (Etudes en France process), pay application fees, submit visa application at VFS, attend interview if required, provide biometrics, and wait for processing (15-45 days)."}
        @{q = "Can I work in France on a student visa?"; a = "Yes, international students in France can work up to 964 hours per year (approximately 60% of full-time). This is equivalent to about 20 hours per week. You need a valid student visa and residence permit."}
        @{q = "What happens if my France visa is rejected?"; a = "If rejected, you will receive a formal rejection notice with reasons. You can appeal within 30 days through the French consulate. Alternatively, you may reapply addressing the rejection reasons. Common reasons include insufficient funds and weak travel history."}
        @{q = "How much does France visa cost in rupees?"; a = "Schengen visa: approx Rs. 8,100 (EUR 90). VFS service fee: Rs. 2,200-2,700. Travel insurance: Rs. 1,500-3,000. Total approximate cost: Rs. 12,000-14,000 for a standard application."}
    )
    updates2026 = @(
        @{change = "Schengen Visa Fee"; previous = "EUR 80"; current = "EUR 90"}
        @{change = "Application Window"; previous = "3 months before travel"; current = "6 months before travel"}
        @{change = "Digitalisation of Process"; previous = "Paper applications"; current = "Digital application system rollout"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://france-visas.gouv.fr/' target='_blank'>France Visas Official Portal</a></li><li><strong>VFS Global:</strong> <a href='https://www.vfsglobal.com/france/india' target='_blank'>VFS France India</a></li><li><strong>Campus France India:</strong> <a href='https://www.inde.campusfrance.org/' target='_blank'>Campus France India</a></li>"
}

# ============================================================
# Country: Germany
# ============================================================
$global:countryData["germany"] = @{
    name = "Germany"
    capital = "Berlin"
    currency = "EUR"
    currencyName = "Euro"
    currencySymbol = "EUR"
    embassy = "6/50G, Shantipath, Chanakyapuri, New Delhi 110021"
    embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Pune, Goa"
    visaRequired = "Yes, Indian citizens need a Schengen visa to enter Germany."
    mainVisaTypes = "Schengen Visa, National Visa, Student Visa, Work Visa, Job Seeker Visa, Family Reunion Visa"
    procTime = "15 to 30 days for Schengen; 30 to 90 days for national visa"
    feeRange = "EUR 90 for Schengen; EUR 75 for national visa"
    financialReq = "For students: EUR 11,208 blocked account for 2025-26; for visitors: approx EUR 65 per day"
    maxStay = "90 days per 180-day period for Schengen; up to 1 year for national visa"
    bioMandatory = "Yes, biometric data (10 fingerprints and photo) required for all visa categories"
    insuranceReq = "Yes, travel health insurance with minimum EUR 30,000 coverage mandatory for Schengen visa"
    appCenters = "New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Pune, Ahmedabad, Kochi, Chandigarh, Goa"
    englishReq = "Proof of English or German proficiency required for student and work visas; IELTS or TestDaF/Goethe"
    approvalRate = "Approximately 85-90% for Indian Schengen visa applicants"
    intro = "Germany is a key Schengen member known for its strong economy, world-class education system, and robust visa pathways for Indian citizens. It offers excellent opportunities for students, skilled workers, researchers, and tourists."
    stats = "Over 150,000 Indians visit Germany annually. India is among the top source countries for international students in Germany with over 40,000 students. Germany also attracts significant numbers of skilled IT and engineering professionals from India."
    needVisa = "Yes, Indian passport holders need a visa for all purposes of travel to Germany including tourism, business, study, and work."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 90 days)"; answer = "Yes (Schengen Visa)"; detail = "Schengen Type C visa for tourism across Germany and Schengen area"}
        @{can = "Travel for business meetings"; answer = "Yes (Schengen Business Visa)"; detail = "For attending trade fairs, business meetings, and conferences"}
        @{can = "Study at a university"; answer = "Yes (Student Visa)"; detail = "Requires university admission and proof of financial resources"}
        @{can = "Work as a skilled professional"; answer = "Yes (EU Blue Card)"; detail = "For highly qualified workers with a job offer and minimum salary"}
        @{can = "Transit without visa"; answer = "No"; detail = "Airport transit visa required for Indian citizens in most Schengen airports"}
        @{can = "Live permanently"; answer = "Yes (Niederlassungserlaubnis)"; detail = "Settlement permit after 2-5 years of residence in Germany"}
        @{can = "Search for a job"; answer = "Yes (Job Seeker Visa)"; detail = "6-month visa to search for employment in Germany"}
        @{can = "Participate in vocational training"; answer = "Yes (Training Visa)"; detail = "For vocational education and training programs in Germany"}
    )
    visaTypes = @(
        @{type = "Schengen Visa"; subclass = "Type C"; purpose = "Tourism, business, transit, family visit"; maxStay = "90 days per 180-day period"; processing = "15 to 30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
        @{type = "National Visa"; subclass = "Type D"; purpose = "Study, work, family reunion, long stay"; maxStay = "Up to 1 year"; processing = "30 to 90 days"; feeLocal = "EUR 75"; feeInr = "6,700 to 6,800"}
        @{type = "Student Visa"; subclass = "Student Applicant Visa"; purpose = "University studies in Germany"; maxStay = "Duration of studies (2-5 years)"; processing = "30 to 60 days"; feeLocal = "EUR 75"; feeInr = "6,700 to 6,800"}
        @{type = "EU Blue Card"; subclass = "Blue Card EU"; purpose = "Highly skilled employment"; maxStay = "Up to 4 years"; processing = "30 to 60 days"; feeLocal = "EUR 75"; feeInr = "6,700 to 6,800"}
        @{type = "Job Seeker Visa"; subclass = "Job Search Visa"; purpose = "Search for employment in Germany"; maxStay = "6 months"; processing = "15 to 30 days"; feeLocal = "EUR 75"; feeInr = "6,700 to 6,800"}
        @{type = "Research Visa"; subclass = "Researcher Mobility"; purpose = "Research and academic work"; maxStay = "Up to 2 years"; processing = "15 to 30 days"; feeLocal = "EUR 75"; feeInr = "6,700 to 6,800"}
    )
    additionalCosts = @(
        @{type = "VFS Service Fee"; amount = "2,200 to 2,700"; detail = "Paid at visa application centre"}
        @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory with EUR 30,000 coverage"}
        @{type = "Blocked Account Setup"; amount = "3,000 to 5,000"; detail = "Required for student visa (EUR 11,208 deposit)"}
        @{type = "Translation & Apostille"; amount = "1,000 to 3,000"; detail = "Per document if required"}
    )
    faqs = @(
        @{q = "What is the Germany visa fee from India?"; a = "Schengen visa costs EUR 90 (approx Rs. 8,100). National visa (Type D) costs EUR 75 (approx Rs. 6,700). VFS service fee of Rs. 2,200 to 2,700 is additional. Children 6-12 pay EUR 45 for Schengen visa."}
        @{q = "How long does German visa processing take?"; a = "Schengen visas typically process in 15 to 30 calendar days. National visas for study/work take 30 to 90 days. Processing may take longer during peak seasons (June-September). Apply at least 6-8 weeks before travel."}
        @{q = "What is blocked account for Germany student visa?"; a = "Indian students must open a blocked account (Sperrkonto) with EUR 11,208 (as of 2025-26) demonstrating sufficient funds for one year. The amount is released in monthly installments of EUR 934. Popular providers include Fintiba, Expatrio, and Coracle."}
        @{q = "Do I need IELTS for German student visa?"; a = "If your course is taught in English, IELTS or TOEFL is required. Minimum IELTS 6.0-6.5 typically. For German-taught programs, you need TestDaF or Goethe certification (usually B2/C1 level). Some universities have their own language requirements."}
        @{q = "What is the Germany Job Seeker Visa?"; a = "The Job Seeker Visa allows Indians to stay in Germany for up to 6 months to search for employment. Requirements include a recognised degree, 5+ years work experience, proof of funds (approx EUR 1,500/month) and German language skills."}
        @{q = "Can I work in Germany on a study visa?"; a = "Yes, international students can work up to 120 full days or 240 half days per year. After 6 months, you can take any job. Students can also work as student assistants (Werkstudent) for up to 20 hours per week."}
        @{q = "What is the minimum bank balance for Germany tourist visa?"; a = "There is no fixed amount, but you should show EUR 65 per day of stay as per German guidelines. For a 10-day trip, bank balance of Rs. 2-3 lakh is recommended along with ITR, property documents, and a strong travel history."}
        @{q = "Can I visit other Schengen countries with a Germany visa?"; a = "Yes, a German Schengen visa permits travel to all 27 Schengen countries. Your itinerary must show that you will spend the most days in Germany or enter Germany first. The visa allows free movement within the Schengen zone."}
        @{q = "What documents are needed for a Germany tourist visa?"; a = "Key documents: valid passport, filled application form, photos, round trip flight reservation, hotel booking, travel insurance (EUR 30,000 coverage), bank statements (6 months), ITR (3 years), employment letter, leave approval, NOC from employer."}
        @{q = "How long can I stay in Germany on a Schengen visa?"; a = "Maximum stay is 90 days within any 180-day period. The visa may be valid for single, double, or multiple entries. Overstaying even by one day can result in future visa rejections or entry bans."}
        @{q = "Is there a visa-on-arrival for Indians in Germany?"; a = "No visa-on-arrival facility exists for Indian citizens. You must obtain a Schengen visa before travelling. Visas cannot be obtained at German airports or borders."}
        @{q = "What is EU Blue Card Germany?"; a = "The EU Blue Card is for highly skilled non-EU workers. Requirements: recognised university degree, job offer with minimum salary of EUR 48,300 (2025) or EUR 43,800 for shortage occupations (IT, engineering, medicine). Valid for up to 4 years."}
        @{q = "How to check Germany visa application status?"; a = "You can track your visa application through the VFS Global website using your reference number. For Schengen visas, status is usually available within 15-30 days. The German embassy may contact you for additional documents or interview."}
        @{q = "What is the Germany visa approval rate for Indians?"; a = "The approval rate for Indian Schengen visa applicants is approximately 85-90%. Student visa approval rates are higher at around 90-95%. Providing complete documentation and strong financial proof significantly improves chances."}
    )
    updates2026 = @(
        @{change = "Schengen Visa Fee"; previous = "EUR 80"; current = "EUR 90"}
        @{change = "Blocked Account Amount"; previous = "EUR 11,904"; current = "EUR 11,208"}
        @{change = "Blue Card Salary Threshold"; previous = "EUR 45,300"; current = "EUR 48,300"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.germany-visa.org/' target='_blank'>Germany Visa Portal</a></li><li><strong>VFS Global:</strong> <a href='https://www.vfsglobal.com/germany/india' target='_blank'>VFS Germany India</a></li><li><strong>DAAD India:</strong> <a href='https://www.daad.in/' target='_blank'>German Academic Exchange Service</a></li>"
}

# ============================================================
# Country: Italy
# ============================================================
$global:countryData["italy"] = @{
    name = "Italy"
    capital = "Rome"
    currency = "EUR"
    currencyName = "Euro"
    currencySymbol = "EUR"
    embassy = "50-E, Shantipath, Chanakyapuri, New Delhi 110021"
    embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Goa"
    visaRequired = "Yes, Indian passport holders need a Schengen visa to enter Italy."
    mainVisaTypes = "Schengen Visa, National Visa, Student Visa, Work Visa, Family Reunion, Elective Residence Visa"
    procTime = "15 to 30 days for Schengen visa; 30 to 60 days for national visa"
    feeRange = "EUR 90 for Schengen visa; EUR 116 for national visa"
    financialReq = "Minimum EUR 50 per day for short stay; for students minimum EUR 6,000 per year living costs"
    maxStay = "90 days per 180-day period for Schengen; up to 1 year for national visa"
    bioMandatory = "Yes, biometrics (10 fingerprints and photo) mandatory for all Schengen visa applicants"
    insuranceReq = "Yes, mandatory travel health insurance with minimum EUR 30,000 coverage for Schengen visas"
    appCenters = "New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Pune, Ahmedabad, Kochi, Chandigarh"
    englishReq = "Proof of Italian or English language proficiency may be required for study and work visas"
    approvalRate = "Approximately 80-85% for Indian Schengen visa applicants"
    intro = "Italy is a Schengen member state offering a range of visa options for Indian travellers including tourism, business, study, and work. Italian visas also allow access to all Schengen countries under the 90/180-day rule."
    stats = "Over 120,000 Indians visit Italy annually. Italy is a popular destination for Indian tourists attracted by its historical sites, cuisine, and cultural heritage. The number of Indian students in Italy is growing steadily with increasing English-taught programs."
    needVisa = "Yes, Indian passport holders require a visa to enter Italy for any purpose including tourism, business, study, and work."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 90 days)"; answer = "Yes (Schengen Visa)"; detail = "Type C Schengen visa for tourism across Italy and Schengen area"}
        @{can = "Travel for business meetings"; answer = "Yes (Schengen Business Visa)"; detail = "For attending meetings, conferences, and business events"}
        @{can = "Study at a university"; answer = "Yes (Student Visa)"; detail = "Requires university admission and proof of financial means"}
        @{can = "Work as a skilled professional"; answer = "Yes (Work Visa)"; detail = "Requires a job offer and work permit clearance"}
        @{can = "Transit without visa"; answer = "No"; detail = "Airport transit visa required for Indians in Italy"}
        @{can = "Live permanently"; answer = "Yes (Permesso di Soggiorno)"; detail = "Long-term residence after 5 years of continuous legal stay"}
        @{can = "Retire in Italy"; answer = "Yes (Elective Residence Visa)"; detail = "For retirees with sufficient passive income"}
        @{can = "Participate in religious pilgrimages"; answer = "Yes (Schengen Visa)"; detail = "Covered under tourism Schengen visa for religious visits"}
    )
    visaTypes = @(
        @{type = "Schengen Visa"; subclass = "Type C"; purpose = "Tourism, business, transit, family visit"; maxStay = "90 days per 180-day period"; processing = "15 to 30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
        @{type = "National Visa"; subclass = "Type D"; purpose = "Work, family reunion, study, long stay"; maxStay = "Up to 1 year renewable"; processing = "30 to 60 days"; feeLocal = "EUR 116"; feeInr = "10,400 to 10,500"}
        @{type = "Student Visa"; subclass = "Type D for Study"; purpose = "University courses and higher education"; maxStay = "Duration of studies (1-5 years)"; processing = "15 to 45 days"; feeLocal = "EUR 50"; feeInr = "4,500 to 4,600"}
        @{type = "Work Visa"; subclass = "Lavoro Subordinato"; purpose = "Employment in Italy"; maxStay = "Up to 2 years renewable"; processing = "30 to 90 days"; feeLocal = "EUR 116"; feeInr = "10,400 to 10,500"}
        @{type = "Elective Residence Visa"; subclass = "Residenza Elettiva"; purpose = "Retirees with passive income"; maxStay = "1 year renewable"; processing = "30 to 60 days"; feeLocal = "EUR 116"; feeInr = "10,400 to 10,500"}
    )
    additionalCosts = @(
        @{type = "VFS Service Fee"; amount = "2,200 to 2,700"; detail = "Paid at visa application centre"}
        @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory with EUR 30,000 coverage"}
        @{type = "Biometrics Fee"; amount = "Included in visa fee"; detail = "Fingerprints and photo captured at centre"}
        @{type = "Translation & Notarization"; amount = "500 to 2,000"; detail = "Per document if not in Italian"}
    )
    faqs = @(
        @{q = "What is the Italy visa fee from India?"; a = "Schengen visa costs EUR 90 (approx Rs. 8,100) for adults. National visa (Type D) costs EUR 116 (approx Rs. 10,400). Student visa costs EUR 50 (approx Rs. 4,500). Children 6-12 pay EUR 45 for Schengen visa."}
        @{q = "How long does Italy visa processing take?"; a = "Schengen visas are processed in 15 to 30 calendar days. National visas take 30 to 60 days. Apply at least 4-6 weeks before travel. During peak season (April-October), processing may take longer."}
        @{q = "What is minimum bank balance for Italy tourist visa?"; a = "Italian authorities recommend showing EUR 50-60 per day of stay. For a 10-day trip, a bank balance of Rs. 2-3 lakh is recommended along with IT returns, property documents, and proof of employment."}
        @{q = "Can I visit other Schengen countries with an Italy visa?"; a = "Yes, an Italian Schengen visa allows travel to all 27 Schengen countries. You should enter Italy first or spend the most days in Italy. This is known as the main destination rule for Schengen applications."}
        @{q = "Do I need travel insurance for Italy visa?"; a = "Yes, Schengen visa requires travel medical insurance covering at least EUR 30,000 (approx Rs. 27 lakh) for medical emergencies, accident, and repatriation. The insurance must be valid throughout the Schengen area."}
        @{q = "What documents are needed for Italy tourist visa?"; a = "Required documents: valid passport, Schengen application form, photographs, round trip flight booking, hotel reservation, travel insurance, bank statements (6 months), ITR (3 years), employment letter, leave approval, NOC."}
        @{q = "How long is Italy Schengen visa valid for?"; a = "Validity depends on your travel history and purpose. First-time applicants usually get 3-6 month validity. Frequent travellers may get 1-5 year multiple-entry visas. Each visit is limited to 90 days per 180-day period."}
        @{q = "Can I study in Italy without knowing Italian?"; a = "Yes, several Italian universities offer English-taught programs, especially at Masters and PhD levels. For Italian-taught programs, B2 level Italian (CILS or CELI certification) is typically required."}
        @{q = "What is Italy Elective Residence Visa?"; a = "This visa is for individuals who want to reside in Italy without working, such as retirees. You must show substantial passive income (rental, pension, investments). Minimum annual income requirement is approximately EUR 31,000."}
        @{q = "Can I work on Italy student visa?"; a = "Yes, international students in Italy can work up to 20 hours per week during studies and full-time during holidays. A valid residence permit is required. Total annual work limit is 1,040 hours."}
        @{q = "How to apply for Italy visa from India?"; a = "Book an appointment through VFS Global or BLS Italy (depending on location), submit online application, pay fees, provide biometrics, submit documents, attend interview if required, and wait for processing. Check VFS website for appointment availability."}
        @{q = "What is the Italy visa rejection rate for Indians?"; a = "The rejection rate for Indian Schengen applicants is approximately 15-20%. Common reasons: insufficient funds, weak travel history, incomplete documentation, and doubtful intention to return to India."}
        @{q = "Is there visa-on-arrival for Indians in Italy?"; a = "No, Indian citizens cannot get a visa on arrival in Italy. A valid Schengen visa must be obtained before travel. Visas cannot be issued at Italian airports or borders."}
    )
    updates2026 = @(
        @{change = "Schengen Visa Fee"; previous = "EUR 80"; current = "EUR 90"}
        @{change = "Electronic Travel Authorisation"; previous = "Not applicable"; current = "ETIAS expected rollout postponed"}
        @{change = "National Visa Fee"; previous = "EUR 100"; current = "EUR 116"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.esteri.it/en/italy-and-the-world/visa/' target='_blank'>Italian Ministry of Foreign Affairs</a></li><li><strong>VFS Global:</strong> <a href='https://www.vfsglobal.com/italy/india' target='_blank'>VFS Italy India</a></li><li><strong>Study in Italy:</strong> <a href='https://www.study-in-italy.it/' target='_blank'>Study in Italy Portal</a></li>"
}

# ============================================================
# Country: Spain
# ============================================================
$global:countryData["spain"] = @{
    name = "Spain"
    capital = "Madrid"
    currency = "EUR"
    currencyName = "Euro"
    currencySymbol = "EUR"
    embassy = "12, Prithviraj Road, New Delhi 110011"
    embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad"
    visaRequired = "Yes, Indian passport holders need a visa for Spain as it is a Schengen member."
    mainVisaTypes = "Schengen Visa, Student Visa, Work Visa, Golden Visa, Non-Lucrative Visa, Transit Visa"
    procTime = "15 to 30 days for Schengen; 30 to 60 days for national visa"
    feeRange = "EUR 90 for Schengen; varies for national and golden visas"
    financialReq = "For tourists: EUR 100 per day with minimum EUR 900 for stay; students: EUR 600 per month"
    maxStay = "90 days per 180-day period for Schengen; long stay varies"
    bioMandatory = "Yes, biometric data collection mandatory for all visa applicants"
    insuranceReq = "Yes, travel insurance with at least EUR 30,000 coverage mandatory for Schengen visa"
    appCenters = "New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh, Kochi"
    englishReq = "English proficiency may be needed for study; Spanish language preferred for work visas"
    approvalRate = "Approximately 85-90% for Indian Schengen visa applicants"
    intro = "Spain is a Schengen member offering diverse visa pathways for Indian travellers including tourism, study, work, and investment-based residency. Spanish visas provide access to all Schengen countries under uniform rules."
    stats = "Over 100,000 Indians visit Spain annually. Spain is increasingly popular among Indian tourists and students. The number of Indian residents in Spain has grown significantly with increased economic ties between the two countries."
    needVisa = "Yes, Indian citizens need a visa to enter Spain for any purpose including tourism, business, study, and work."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 90 days)"; answer = "Yes (Schengen Visa)"; detail = "Type C visa for tourism across Spain and Schengen countries"}
        @{can = "Travel for business meetings"; answer = "Yes (Schengen Visa)"; detail = "Business Schengen visa for meetings, conferences, and negotiating contracts"}
        @{can = "Study at a university"; answer = "Yes (Student Visa)"; detail = "Requires admission letter from a Spanish educational institution"}
        @{can = "Work as a skilled professional"; answer = "Yes (Work Visa)"; detail = "Requires a job offer and work permit from Spanish authorities"}
        @{can = "Transit without visa"; answer = "No"; detail = "Indians need an airport transit visa at Spanish airports"}
        @{can = "Live permanently"; answer = "Yes (Residencia Larga Duracion)"; detail = "Long-term residence after 5 years continuous legal stay"}
        @{can = "Retire in Spain without working"; answer = "Yes (Non-Lucrative Visa)"; detail = "For retirees with sufficient passive income"}
        @{can = "Invest in property for residency"; answer = "Yes (Golden Visa)"; detail = "Residence by investment in real estate (minimum EUR 500,000)"}
    )
    visaTypes = @(
        @{type = "Schengen Visa"; subclass = "Type C"; purpose = "Tourism, business, family visit, transit"; maxStay = "90 days per 180-day period"; processing = "15 to 30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
        @{type = "Student Visa"; subclass = "Type D"; purpose = "Full-time study in Spain"; maxStay = "Duration of course (up to 1 year renewable)"; processing = "30 to 60 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
        @{type = "Work Visa"; subclass = "Trabajo por Cuenta Ajena"; purpose = "Salaried employment in Spain"; maxStay = "Up to 1 year renewable"; processing = "30 to 90 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
        @{type = "Golden Visa"; subclass = "Residence by Investment"; purpose = "Real estate investment (EUR 500,000+)"; maxStay = "1 year initial, renewable"; processing = "20 to 40 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
        @{type = "Non-Lucrative Visa"; subclass = "Residencia No Lucrativa"; purpose = "Retirees with passive income"; maxStay = "1 year renewable"; processing = "30 to 60 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
    )
    additionalCosts = @(
        @{type = "VFS Service Fee"; amount = "2,200 to 2,700"; detail = "Paid at visa application centre"}
        @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory Schengen travel insurance"}
        @{type = "Biometrics"; amount = "Included in visa fee"; detail = "Fingerprints and photo at centre"}
        @{type = "Legalisation & Translation"; amount = "1,000 to 3,000"; detail = "Per document if required"}
    )
    faqs = @(
        @{q = "What is the Spain visa fee from India?"; a = "Schengen visa costs EUR 90 (approx Rs. 8,100) for adults. Children 6-12 pay EUR 45. VFS service charges of Rs. 2,200-2,700 apply. National visa (Type D) also costs EUR 90."}
        @{q = "How long does Spain visa processing take?"; a = "Standard Schengen visa processing takes 15 to 30 calendar days. It can extend up to 45 days in some cases. Apply at least 4-6 weeks before your planned travel date. National visas may take up to 60 days."}
        @{q = "What is the minimum bank balance for Spain tourist visa?"; a = "Spain requires EUR 100 per day with a minimum of EUR 900 regardless of stay duration. For a 10-day trip, you should show around Rs. 2.5-3 lakh in bank statements plus ITR and other assets."}
        @{q = "Can I visit other Schengen countries with Spain visa?"; a = "Yes, a Spanish Schengen visa allows travel to all 27 Schengen countries. The main destination rule applies: you must spend the most days in Spain or enter Spain first."}
        @{q = "Do I need insurance for Spain visa?"; a = "Yes, travel medical insurance with minimum EUR 30,000 coverage is mandatory for all Schengen visa applications. It must cover medical emergencies, hospitalisation, and repatriation throughout the Schengen area."}
        @{q = "What is Spain Golden Visa for Indians?"; a = "The Golden Visa grants residency to non-EU investors who invest minimum EUR 500,000 in Spanish real estate. It allows the investor and family to live and work in Spain with minimal physical presence requirements."}
        @{q = "What is Spain Non-Lucrative Visa?"; a = "This visa is for individuals who want to reside in Spain without working. You need sufficient passive income (approximately EUR 2,400 per month based on IPREM). It is popular among Indian retirees and digital nomads."}
        @{q = "Can I work on a Spain student visa?"; a = "Yes, international students in Spain can work up to 20 hours per week during studies. Work must be compatible with studies and cannot interfere with academic schedule. A work authorisation is needed."}
        @{q = "What documents are required for Spain tourist visa?"; a = "Key documents: valid passport (3 months validity beyond return), completed application, photos, flight itinerary, hotel booking, travel insurance, bank statements (6 months), ITR (3 years), employment letter, leave approval."}
        @{q = "How to get an appointment for Spain visa in India?"; a = "Book appointment through BLS International (Spain's outsourced partner) or VFS Global depending on jurisdiction. Slots are limited and fill quickly, especially during summer. Book 4-6 weeks in advance."}
        @{q = "Can I apply for Spanish citizenship after 5 years?"; a = "Non-EU citizens generally need 10 years of legal residence to apply for Spanish citizenship. However, Ibero-American countries and certain others have reduced 2-year requirement, but India is not in this category."}
        @{q = "What is the Spain visa rejection rate for Indians?"; a = "Approximately 10-15% rejection rate for Indian Schengen applicants. Common reasons include insufficient funds, unclear travel itinerary, weak employment ties to India, and previous visa violations."}
        @{q = "Is IELTS required for Spain student visa?"; a = "If your program is taught in English, IELTS/TOEFL scores may be required. For Spanish-taught programs, DELE or SIELE certification (usually B1/B2 level) is needed. Requirements vary by institution."}
    )
    updates2026 = @(
        @{change = "Schengen Visa Fee"; previous = "EUR 80"; current = "EUR 90"}
        @{change = "Golden Visa Changes"; previous = "Property investment EUR 500,000"; current = "Under review for potential modification"}
        @{change = "BLS Service Charges"; previous = "Rs. 2,000"; current = "Rs. 2,200"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.exteriores.gob.es/en/ServiciosAlCiudadano/Paginas/Visados.aspx' target='_blank'>Spanish Ministry of Foreign Affairs</a></li><li><strong>BLS Spain:</strong> <a href='https://www.blsspainvisa.com/india/' target='_blank'>BLS Spain Visa India</a></li><li><strong>Study in Spain:</strong> <a href='https://www.spain.info/en/' target='_blank'>Spain Tourism & Study Info</a></li>"
}

# ============================================================
# Country: Netherlands
# ============================================================
$global:countryData["netherlands"] = @{
    name = "Netherlands"
    capital = "Amsterdam"
    currency = "EUR"
    currencyName = "Euro"
    currencySymbol = "EUR"
    embassy = "6/50F, Shantipath, Chanakyapuri, New Delhi 110021"
    embassyDetail = "Consulates in Mumbai, Chennai, Bengaluru, Hyderabad, Ahmedabad, Kolkata"
    visaRequired = "Yes, Indian passport holders need a Schengen visa to visit the Netherlands."
    mainVisaTypes = "Schengen Short Stay Visa, Long Stay Visa, Student Visa, Work Visa, Business Visa, Orientation Year Visa"
    procTime = "15 to 30 days for Schengen; 30 to 90 days for long stay"
    feeRange = "EUR 90 for Schengen; EUR 210 for long stay (MVV)"
    financialReq = "Visitors: EUR 55 per day; Students: EUR 1,035 per month living costs"
    maxStay = "90 days per 180-day period for Schengen; up to 5 years for long stay"
    bioMandatory = "Yes, biometrics (fingerprints and photo) mandatory for all Schengen visa applications"
    insuranceReq = "Yes, mandatory travel health insurance with EUR 30,000 minimum coverage"
    appCenters = "New Delhi, Mumbai, Chennai, Bengaluru, Hyderabad, Ahmedabad, Kolkata, Pune, Kochi, Chandigarh"
    englishReq = "English proficiency required for study (IELTS 6.0+) and work visas"
    approvalRate = "Approximately 80-85% for Indian Schengen visa applicants"
    intro = "The Netherlands is a Schengen country offering Indian citizens multiple visa pathways including tourism, business, study, and highly skilled migration. The Netherlands is known for its English-friendly environment and strong economic ties with India."
    stats = "Over 80,000 Indians visit the Netherlands annually. The Netherlands hosts a growing community of Indian students and tech professionals. The country has streamlined visa processes for Indian nationals through the Schengen framework."
    needVisa = "Yes, Indian citizens need a visa to enter the Netherlands for tourism, business, study, or work."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 90 days)"; answer = "Yes (Schengen Visa)"; detail = "Schengen Type C visa for tourism across Netherlands and Schengen"}
        @{can = "Travel for business meetings"; answer = "Yes (Schengen Visa)"; detail = "Business visits, meetings, and conferences covered by Schengen visa"}
        @{can = "Study at a university"; answer = "Yes (Student Visa)"; detail = "Requires admission and proof of funds for living expenses"}
        @{can = "Work as a skilled professional"; answer = "Yes (Highly Skilled Migrant)"; detail = "Requires a job offer from a recognised sponsor"}
        @{can = "Transit without visa"; answer = "No"; detail = "Air Schengen transit visa required for Indian citizens"}
        @{can = "Live permanently"; answer = "Yes (Permanent Residence)"; detail = "Available after 5 years of continuous legal residence"}
        @{can = "Work as a freelancer"; answer = "Yes (Freelancer Visa)"; detail = "For self-employed individuals with Dutch client base"}
        @{can = "Search for a job after studies"; answer = "Yes (Orientation Year Visa)"; detail = "1-year visa for graduates to find employment in Netherlands"}
    )
    visaTypes = @(
        @{type = "Schengen Short Stay Visa"; subclass = "Type C"; purpose = "Tourism, business, family visit, transit"; maxStay = "90 days per 180-day period"; processing = "15 to 30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
        @{type = "MVV Long Stay Visa"; subclass = "Type D"; purpose = "Study, work, family reunion, residence"; maxStay = "Up to 1 year renewable"; processing = "30 to 90 days"; feeLocal = "EUR 210"; feeInr = "18,900 to 19,000"}
        @{type = "Student Visa"; subclass = "MVV + VVR"; purpose = "Full-time higher education"; maxStay = "Duration of studies (1-5 years)"; processing = "30 to 60 days"; feeLocal = "EUR 210"; feeInr = "18,900 to 19,000"}
        @{type = "Highly Skilled Migrant Visa"; subclass = "Kennismigrant"; purpose = "Skilled employment with recognised sponsor"; maxStay = "Up to 5 years"; processing = "15 to 30 days"; feeLocal = "EUR 210"; feeInr = "18,900 to 19,000"}
        @{type = "Orientation Year Visa"; subclass = "Zoekjaar"; purpose = "Job search after graduation"; maxStay = "1 year"; processing = "15 to 30 days"; feeLocal = "EUR 210"; feeInr = "18,900 to 19,000"}
        @{type = "Business Schengen Visa"; subclass = "Type C"; purpose = "Business meetings, conferences, trade"; maxStay = "90 days per 180-day period"; processing = "15 to 30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
    )
    additionalCosts = @(
        @{type = "VFS Service Fee"; amount = "2,200 to 2,700"; detail = "Paid at visa application centre"}
        @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory with EUR 30,000 coverage"}
        @{type = "Biometrics"; amount = "Included in visa fee"; detail = "Fingerprints and photo captured at centre"}
        @{type = "Legalised Documents"; amount = "1,000 to 3,000"; detail = "For long stay visa applications"}
    )
    faqs = @(
        @{q = "What is the Netherlands visa fee from India?"; a = "Schengen visa costs EUR 90 (approx Rs. 8,100). Long stay visa (MVV) costs EUR 210 (approx Rs. 18,900). VFS service fees of Rs. 2,200-2,700 are extra. Student visa is the same as MVV fee."}
        @{q = "How long does Netherlands visa processing take?"; a = "Schengen visa takes 15 to 30 calendar days. MVV visa takes 30 to 90 days. Apply at least 6 weeks before travel for Schengen and 3 months for Long Stay. Processing may extend during peak seasons."}
        @{q = "What is the minimum bank balance for Netherlands tourist visa?"; a = "Netherlands authorities require EUR 55 per day of stay. For a 10-day trip, show at least EUR 550 (approx Rs. 49,000) plus return ticket and accommodation. In practice, Indian applicants show Rs. 2-3 lakh."}
        @{q = "Can I visit other Schengen countries with Netherlands visa?"; a = "Yes, a Netherlands-issued Schengen visa allows travel to all 27 Schengen countries. You must have your main destination or first entry point in the Netherlands. Free movement within Schengen is permitted."}
        @{q = "What is the Orientation Year Visa (Zoekjaar)?"; a = "This visa allows graduates from top universities worldwide (including Indian IITs) to stay in Netherlands for 1 year to find employment. Requirements include graduation within the last 3 years and meeting specific ranking criteria."}
        @{q = "Do I need IELTS for Netherlands student visa?"; a = "Yes, most Dutch universities require IELTS (minimum 6.0-6.5) or TOEFL for English-taught programs. The Netherlands has the highest number of English-taught programs in continental Europe."}
        @{q = "What is the Highly Skilled Migrant Scheme?"; a = "The scheme allows Dutch companies recognised as sponsors to hire skilled non-EU workers. Minimum salary thresholds (2025): EUR 3,909/month for 30+ age, EUR 2,866/month for under 30. No work permit needed if employed by recognised sponsor."}
        @{q = "Can I work while studying in Netherlands?"; a = "Yes, students can work up to 16 hours per week during studies and full-time during June, July, and August. A work permit is required. Your employer arranges this. The Netherlands also offers a post-study work visa."}
        @{q = "What documents are needed for Netherlands tourist visa?"; a = "Required documents: passport (valid 3+ months beyond return), filled application, photos, flight booking, hotel confirmation, travel insurance, bank statements (6 months), ITR (3 years), salary slips (3 months), employer letter."}
        @{q = "How early can I apply for Netherlands visa?"; a = "You can apply up to 6 months before travel (recently changed from 3 months). Minimum 15 days before travel. It is recommended to apply 4-6 weeks in advance."}
        @{q = "What is Netherlands Freelancer Visa?"; a = "The Dutch Freelancer Visa (Statuut Zelfstandige) is for self-employed individuals. You need to show your services have an innovative character, serve a Dutch market need, and you have sufficient income. Accredited by the Netherlands Enterprise Agency."}
        @{q = "Is there a visa-on-arrival for Indians in Netherlands?"; a = "No visa-on-arrival for Indian citizens. A valid Schengen visa must be obtained in advance from the Netherlands embassy or VFS centre. Border entry without a visa is not permitted."}
        @{q = "What is the Netherlands visa approval rate?"; a = "Approximate approval rate is 80-85% for Indian Schengen applicants. Strong applications with complete documentation, good travel history, and sufficient funds have higher success rates."}
    )
    updates2026 = @(
        @{change = "Schengen Visa Fee"; previous = "EUR 80"; current = "EUR 90"}
        @{change = "Highly Skilled Migrant Threshold"; previous = "EUR 3,672/month"; current = "EUR 3,909/month"}
        @{change = "Application Window"; previous = "3 months before travel"; current = "6 months before travel"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.netherlandsandyou.nl/' target='_blank'>Netherlands and You - Visa Info</a></li><li><strong>VFS Global:</strong> <a href='https://www.vfsglobal.com/netherlands/india' target='_blank'>VFS Netherlands India</a></li><li><strong>Study in Holland:</strong> <a href='https://www.studyinholland.nl/' target='_blank'>Study in Holland Portal</a></li>"
}

# ============================================================
# Country: Switzerland
# ============================================================
$global:countryData["switzerland"] = @{
    name = "Switzerland"
    capital = "Bern"
    currency = "CHF"
    currencyName = "Swiss Franc"
    currencySymbol = "CHF"
    embassy = "Nyaya Marg, Chanakyapuri, New Delhi 110021"
    embassyDetail = "Consulates in Mumbai, Chennai, Bengaluru, Hyderabad, Kolkata, Goa"
    visaRequired = "Yes, Indian citizens need a Schengen visa to enter Switzerland."
    mainVisaTypes = "Schengen Visa, National Visa, Student Visa, Work Visa, Business Visa, Retirement Visa"
    procTime = "15 to 30 days for Schengen; 30 to 90 days for national visa"
    feeRange = "EUR 90 for Schengen; CHF 120 for national visa"
    financialReq = "For visitors: CHF 100 per day; for students: CHF 1,500-2,000 per month living costs"
    maxStay = "90 days per 180-day period for Schengen; up to 1 year for national visa"
    bioMandatory = "Yes, biometrics (10 fingerprints and photo) required for all Schengen visa applicants"
    insuranceReq = "Yes, travel health insurance mandatory with minimum EUR 30,000 coverage for Schengen visa"
    appCenters = "New Delhi, Mumbai, Chennai, Bengaluru, Hyderabad, Kolkata, Pune, Ahmedabad, Chandigarh, Kochi, Goa"
    englishReq = "Proof of English or German/French/Italian proficiency for study and work visas"
    approvalRate = "Approximately 75-85% for Indian Schengen visa applicants"
    intro = "Switzerland is a Schengen member state offering Indian citizens various visa options for tourism, study, work, and residence. Though not an EU member, Switzerland participates in the Schengen Area allowing free movement with other Schengen countries."
    stats = "Over 150,000 Indians visit Switzerland annually. Switzerland is a premier destination for Indian tourists seeking Alpine experiences. The country also attracts Indian students for its world-class hospitality and business schools."
    needVisa = "Yes, Indian passport holders need a valid Schengen visa to enter Switzerland for any purpose."
    availableNotAvailable = @(
        @{can = "Travel for tourism (up to 90 days)"; answer = "Yes (Schengen Visa)"; detail = "Schengen Type C visa for tourism across Switzerland and Schengen"}
        @{can = "Travel for business meetings"; answer = "Yes (Schengen Visa)"; detail = "Business Schengen visa for corporate meetings and conferences"}
        @{can = "Study at a university"; answer = "Yes (Student Visa)"; detail = "Requires admission from a Swiss university and proof of financial means"}
        @{can = "Work as a skilled professional"; answer = "Yes (Work Visa)"; detail = "Requires a job offer and work permit from cantonal authorities"}
        @{can = "Transit without visa"; answer = "No"; detail = "Airport transit visa required for Indian citizens at Swiss airports"}
        @{can = "Live permanently"; answer = "Yes (Permit C)"; detail = "Settlement permit after 5-10 years of residence in Switzerland"}
        @{can = "Retire in Switzerland"; answer = "No"; detail = "Switzerland does not have a dedicated retirement visa for non-EU nationals"}
        @{can = "Work as a researcher"; answer = "Yes (Researcher Visa)"; detail = "For scientific research at Swiss institutions and universities"}
    )
    visaTypes = @(
        @{type = "Schengen Visa"; subclass = "Type C"; purpose = "Tourism, business, family visit, transit"; maxStay = "90 days per 180-day period"; processing = "15 to 30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
        @{type = "National Visa"; subclass = "Type D"; purpose = "Study, work, family reunion"; maxStay = "Up to 1 year renewable"; processing = "30 to 90 days"; feeLocal = "CHF 120"; feeInr = "11,000 to 11,200"}
        @{type = "Student Visa"; subclass = "Type D for Study"; purpose = "University education in Switzerland"; maxStay = "Duration of studies (1-5 years)"; processing = "30 to 60 days"; feeLocal = "CHF 120"; feeInr = "11,000 to 11,200"}
        @{type = "Work Visa"; subclass = "Type B Permit"; purpose = "Employment in Switzerland"; maxStay = "Up to 5 years renewable"; processing = "30 to 90 days"; feeLocal = "CHF 120"; feeInr = "11,000 to 11,200"}
        @{type = "Business Schengen Visa"; subclass = "Type C"; purpose = "Business meetings, negotiations, fairs"; maxStay = "90 days per 180-day period"; processing = "15 to 30 days"; feeLocal = "EUR 90"; feeInr = "8,100 to 8,200"}
    )
    additionalCosts = @(
        @{type = "VFS Service Fee"; amount = "2,200 to 2,700"; detail = "Paid at visa application centre"}
        @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory with EUR 30,000 coverage"}
        @{type = "Biometrics"; amount = "Included in visa fee"; detail = "Fingerprints and photo captured at centre"}
        @{type = "Document Translation"; amount = "1,000 to 3,000"; detail = "Per document if not in English, French, German, or Italian"}
    )
    faqs = @(
        @{q = "What is the Switzerland visa fee from India?"; a = "Schengen visa costs EUR 90 (approx Rs. 8,100). National visa for study/work costs CHF 120 (approx Rs. 11,000). VFS service charges of Rs. 2,200-2,700 apply. Children 6-12 pay EUR 45 for Schengen."}
        @{q = "How long does Switzerland visa processing take?"; a = "Schengen visa processing takes 15 to 30 calendar days. National visa (Type D) can take 30 to 90 days depending on the canton involved. Apply at least 6-8 weeks before travel. Peak seasons (summer, winter) may be slower."}
        @{q = "What is the minimum bank balance for Switzerland tourist visa?"; a = "Swiss authorities recommend CHF 100 (approx Rs. 9,400) per day of stay. For a 7-day trip, show at least CHF 700 or equivalent in bank statements. Indian applicants typically show Rs. 2-3 lakh with ITR and other assets."}
        @{q = "Can I visit other Schengen countries with a Switzerland visa?"; a = "Yes, Switzerland is part of the Schengen area. A Swiss Schengen visa allows travel to all 27 Schengen countries. Main destination rule applies: spend most days in Switzerland or enter Switzerland first."}
        @{q = "Do I need travel insurance for Switzerland visa?"; a = "Yes, travel medical insurance with minimum EUR 30,000 coverage is mandatory for all Schengen visa applications. Insurance must cover medical emergencies, hospitalisation, accident, and repatriation."}
        @{q = "Can I work in Switzerland on a student visa?"; a = "Yes, international students can work up to 15 hours per week during semesters and full-time during holidays after residing in Switzerland for 6 months. Some cantons have additional restrictions. Prior authorisation may be needed."}
        @{q = "What is the Switzerland student visa process for Indians?"; a = "First, secure admission at a Swiss university or institute. Apply for a student visa at the Swiss embassy in New Delhi or VFS centre. Provide proof of admission, funds (CHF 1,500-2,000 per month), health insurance, and accommodation. Processing takes 30-60 days."}
        @{q = "Is IELTS needed for Switzerland student visa?"; a = "Yes, for English-taught programs, IELTS 6.0-7.0 or TOEFL equivalent is required. For German/French/Italian programs, language proficiency at B2/C1 level is needed. Requirements vary by institution and canton."}
        @{q = "What documents are required for Switzerland tourist visa?"; a = "Key documents: passport valid 3+ months beyond return, completed Schengen application, photos, flight reservation, hotel booking, travel insurance, bank statements (6 months), ITR (3 years), employment letter, NOC, and leave approval."}
        @{q = "How long can I stay in Switzerland on a Schengen visa?"; a = "Maximum stay is 90 days within any 180-day period. The visa may be valid for single, double, or multiple entries. Overstaying is a serious offence and can lead to fines, deportation, and future Schengen visa bans."}
        @{q = "Is there a retirement visa for Switzerland?"; a = "No, Switzerland does not have a dedicated retirement or non-lucrative visa for non-EU citizens. Swiss residency for non-working purposes is extremely difficult to obtain. The Golden Visa or retirement options available in other European countries are not available here."}
        @{q = "What is the Switzerland visa rejection rate for Indians?"; a = "Approximately 15-25% rejection rate for Indian Schengen applicants. Common rejection reasons: insufficient funds, weak travel history, incomplete documentation, and concerns about returning to India."}
        @{q = "Can I work in Switzerland with a Schengen visa?"; a = "No, a Schengen visa does not permit employment. You need a specific Swiss work visa and residence permit (Type B or L permit). The employer must prove no suitable Swiss/EU candidate is available for the role."}
        @{q = "How much does a Switzerland study visa cost in rupees?"; a = "National visa fee: CHF 120 (approx Rs. 11,000). VFS service fee: Rs. 2,200-2,700. Mandatory health insurance: Rs. 3,000-5,000. Total approximately Rs. 17,000-19,000 not including proof of funds requirements."}
    )
    updates2026 = @(
        @{change = "Schengen Visa Fee"; previous = "EUR 80"; current = "EUR 90"}
        @{change = "National Visa Fee"; previous = "CHF 100"; current = "CHF 120"}
        @{change = "VFS Service Fee"; previous = "Rs. 2,000"; current = "Rs. 2,200"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.sem.admin.ch/sem/en/home.html' target='_blank'>State Secretariat for Migration SEM</a></li><li><strong>VFS Global:</strong> <a href='https://www.vfsglobal.com/switzerland/india' target='_blank'>VFS Switzerland India</a></li><li><strong>SWISSNEX:</strong> <a href='https://www.swissnexindia.org/' target='_blank'>Swissnex India - Education & Research</a></li>"
}
