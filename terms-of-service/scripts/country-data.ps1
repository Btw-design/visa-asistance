$countryData = @{
    usa = @{
        name = "USA"; capital = "Washington, D.C."; currency = "USD"; currencyName = "US Dollar"
        embassy = "U.S. Embassy, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Hyderabad, Bengaluru"
        visaRequired = "Yes, Indian citizens need a visa for all travel to the United States"
        mainVisaTypes = "B1/B2 Visitor Visa, F1 Student Visa, H1B Work Visa, L1 Intracompany Transfer, O1 Extraordinary Ability, J1 Exchange Visitor, EB-5 Investor Visa"
        procTime = "B1/B2: 60-150 days; F1: 2-4 weeks; H1B: 2-6 months; L1: 2-4 months"
        feeRange = "USD 20 (ESTA) to USD 3,345 (EB-5)"
        financialReq = "Variable — Students: USD 30,000-60,000/year; Visitors: USD 3,000-10,000 per stay"
        maxStay = "B1/B2: 6 months; F1: course + OPT; H1B: 3-6 years; J1: program duration"
        bioMandatory = "Required for all visa categories at designated application centers"
        insuranceReq = "Mandatory for J1 visa holders; strongly recommended for all others"
        appCenters = "USTravelDocs centers in New Delhi, Mumbai, Chennai, Kolkata, Hyderabad, Bengaluru"
        englishReq = "IELTS 6.5-7.0 (student); TOEFL 80-100; no test for B1/B2"
        approvalRate = "B1/B2: ~75%; F1: ~85%; H1B: ~35% (lottery-based)"
        intro = "A US visa is an official document or electronic authorization that allows Indian citizens to enter the United States for tourism, study, work, or immigration. The US operates a non-immigrant and immigrant visa system managed by the Department of State (DOS) through its embassies and consulates worldwide."
        stats = "The United States welcomed over 1.2 million Indian visitors in 2024, making India one of the fastest-growing source markets. The Indian diaspora in the US exceeds 4.5 million, the second-largest immigrant group. Over 2,60,000 Indian students are currently enrolled in US universities, making India the second-largest source of international students."
        needVisa = "Yes. Indian passport holders must obtain a visa before traveling to the United States for any purpose except visa-free transit under specific conditions. India is not part of the Visa Waiver Program (VWP). However, certain categories like the B1/B2 visa have multiple-entry validity up to 10 years."
        availableNotAvailable = @(
            @{can = "Travel for tourism (up to 6 months)"; answer = "Yes (B1/B2)"; detail = "In-person interview required; 10-year validity typical for Indians"}
            @{can = "Travel for business meetings"; answer = "Yes (B1/B2)"; detail = "Must not include US-based employment or salary"}
            @{can = "Study at a US university"; answer = "Yes (F1)"; detail = "Requires I-20 from SEVP-approved institution, SEVIS fee payment"}
            @{can = "Work as a skilled professional"; answer = "Yes (H1B)"; detail = "Lottery-based; 85,000 cap/year; employer must sponsor"}
            @{can = "Work after graduation (OPT)"; answer = "Yes (F1 OPT)"; detail = "12 months STEM extension available for qualified degrees"}
            @{can = "Transit through the US"; answer = "Yes (C1 Transit)"; detail = "Required for transiting through US to another country"}
            @{can = "Live permanently in the US"; answer = "Yes (Green Card)"; detail = "Via employment (EB), family, diversity lottery, or investment"}
            @{can = "Travel to Canada/Mexico with US visa"; answer = "May need separate visa"; detail = "US visa does not grant entry to Canada or Mexico"}
        )
        visaTypes = @(
            @{type = "Visitor Visa (B1/B2)"; subclass = "B1/B2"; purpose = "Tourism, business, medical treatment"; maxStay = "6 months"; processing = "60-150 days"; feeLocal = "USD 185"; feeInr = "15,400 to 15,600"}
            @{type = "Student Visa"; subclass = "F1"; purpose = "Full-time academic study"; maxStay = "Course + OPT (12-36 months)"; processing = "2-4 weeks (after interview)"; feeLocal = "USD 350"; feeInr = "29,100 to 29,500"}
            @{type = "Exchange Visitor Visa"; subclass = "J1"; purpose = "Exchange programs, research, training"; maxStay = "Program duration"; processing = "2-4 weeks"; feeLocal = "USD 220"; feeInr = "18,300 to 18,600"}
            @{type = "Work Visa (Specialty)"; subclass = "H1B"; purpose = "Specialty occupation employment"; maxStay = "3-6 years"; processing = "2-6 months"; feeLocal = "USD 1,710-2,210"; feeInr = "1,42,000 to 1,84,000"}
            @{type = "Intracompany Transfer"; subclass = "L1"; purpose = "Manager/executive or specialized knowledge"; maxStay = "5-7 years"; processing = "2-4 months"; feeLocal = "USD 1,460"; feeInr = "1,21,500 to 1,23,000"}
            @{type = "Extraordinary Ability"; subclass = "O1"; purpose = "Individuals with extraordinary ability"; maxStay = "3 years"; processing = "2-4 months"; feeLocal = "USD 1,460"; feeInr = "1,21,500 to 1,23,000"}
            @{type = "Treaty Investor"; subclass = "E2"; purpose = "Investors from treaty countries"; maxStay = "2-5 years"; processing = "2-4 months"; feeLocal = "USD 1,460"; feeInr = "1,21,500 to 1,23,000"}
            @{type = "Transit Visa"; subclass = "C1"; purpose = "Transit through US en route"; maxStay = "29 days"; processing = "60-90 days"; feeLocal = "USD 160"; feeInr = "13,300 to 13,500"}
            @{type = "Immigrant Visa (EB)"; subclass = "EB-2/3/5"; purpose = "Employment-based permanent residency"; maxStay = "Indefinite (PR)"; processing = "12-24 months"; feeLocal = "USD 3,345"; feeInr = "2,78,000 to 2,82,000"}
        )
        additionalCosts = @(
            @{type = "MRV Fee (Visa Application)"; amount = "13,300 to 15,600"; detail = "Non-refundable, paid before interview"}
            @{type = "SEVIS Fee (Students)"; amount = "8,200 to 9,100"; detail = "Mandatory for F1/J1 visa applicants"}
            @{type = "Biometrics/Application Center"; amount = "1,500 to 2,000"; detail = "Paid at designated USTravelDocs center"}
            @{type = "Health Examination"; amount = "3,000 to 10,000"; detail = "Panel physician required for immigrant visas"}
            @{type = "English Test (IELTS/TOEFL)"; amount = "16,000 to 18,000"; detail = "Required for F1/J1 applicants"}
            @{type = "Translation/Certification"; amount = "500 to 2,000"; detail = "Per document if not in English"}
            @{type = "Courier/Passport Return"; amount = "600 to 1,000"; detail = "Per applicant after visa approval"}
        )
    }

    argentina = @{
        name = "Argentina"; capital = "Buenos Aires"; currency = "ARS"; currencyName = "Argentine Peso"
        embassy = "Embassy of Argentina, New Delhi"; embassyDetail = "Consulate in Mumbai"
        visaRequired = "Yes, Indian citizens need a visa for tourism and business travel to Argentina"
        mainVisaTypes = "Tourist Visa, Business Visa, Work Visa, Student Visa, Transit Visa"
        procTime = "Tourist: 10-15 working days; Business: 10-15 working days; Work: 30-60 days"
        feeRange = "USD 150 to USD 500 depending on category"
        financialReq = "Bank statements for last 3-6 months; minimum balance INR 1,00,000 recommended"
        maxStay = "Tourist: 90 days; Business: 90 days; Work: 1-2 years"
        bioMandatory = "Required for all visa categories; 10 fingerprints and photograph"
        insuranceReq = "Mandatory - travel insurance with minimum EUR 30,000 coverage"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad"
        englishReq = "Not required for tourist/business visas; proof of Spanish/English may be needed for study"
        approvalRate = "Approximately 85-90% for Indian applicants with complete documents"
        intro = "Argentina offers a range of visas for Indian citizens depending on the purpose of visit. The country is known for its rich cultural heritage, tango, and natural wonders like Patagonia and Iguazu Falls."
        stats = "Argentina received over 50,000 Indian visitors in 2024, showing a 25% growth from the previous year. The Indian community in Argentina is small but growing, with many professionals in the IT and pharmaceutical sectors."
        needVisa = "Yes, Indian passport holders must obtain a visa before traveling to Argentina for any purpose. There is no visa-on-arrival or e-visa facility for Indian citizens."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Tourist Visa)"; detail = "10-15 working days processing; valid for 90 days"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires invitation letter from Argentine company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires enrollment letter from Argentine institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Employer must obtain approval from Argentine immigration"}
            @{can = "Transit without visa"; answer = "No"; detail = "Transit visa required for connecting flights"}
            @{can = "Live permanently"; answer = "Yes (Residency)"; detail = "After 2 years of temporary residency, can apply for permanent"}
        )
        visaTypes = @(
            @{type = "Tourist Visa"; subclass = "TV"; purpose = "Tourism and family visits"; maxStay = "90 days"; processing = "10-15 working days"; feeLocal = "ARS 15,000"; feeInr = "11,500 to 12,500"}
            @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings, conferences"; maxStay = "90 days"; processing = "10-15 working days"; feeLocal = "ARS 15,000"; feeInr = "11,500 to 12,500"}
            @{type = "Work Visa"; subclass = "WV"; purpose = "Employment in Argentina"; maxStay = "1-2 years"; processing = "30-60 days"; feeLocal = "ARS 35,000"; feeInr = "27,000 to 28,500"}
            @{type = "Student Visa"; subclass = "SV"; purpose = "Academic study programs"; maxStay = "Course duration"; processing = "15-30 days"; feeLocal = "ARS 12,000"; feeInr = "9,500 to 10,500"}
            @{type = "Transit Visa"; subclass = "TRV"; purpose = "Transit through Argentina"; maxStay = "5 days"; processing = "5-10 working days"; feeLocal = "ARS 8,000"; feeInr = "6,000 to 7,000"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "6,000 to 12,500"; detail = "Non-refundable, varies by visa type"}
            @{type = "VFS Service Charge"; amount = "1,200 to 1,500"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "800 to 1,200"; detail = "Included in service charge for some centers"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if not in Spanish"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return courier fee"}
        )
        faqs = @(
            @{q = "Do Indian passport holders need a visa for Argentina?"; a = "Yes, all Indian passport holders must obtain a visa before traveling to Argentina for any purpose including tourism, business, or study."}
            @{q = "What is the processing time for an Argentina tourist visa?"; a = "The standard processing time is 10-15 working days from the date of application submission at VFS Global."}
            @{q = "Can I apply for an Argentina visa online?"; a = "No, Argentina does not offer an e-visa for Indian citizens. Applications must be submitted in person at VFS Global centers."}
            @{q = "What documents are required for an Argentina tourist visa?"; a = "Valid passport, completed application form, recent photographs, bank statements (3 months), travel itinerary, hotel bookings, flight reservations, and travel insurance."}
            @{q = "Is travel insurance mandatory for Argentina?"; a = "Yes, travel insurance with minimum coverage of EUR 30,000 is mandatory for all visa applicants."}
            @{q = "Can I work in Argentina on a tourist visa?"; a = "No, working on a tourist visa is strictly prohibited. You must obtain a separate work visa."}
            @{q = "What is the validity of an Argentina tourist visa?"; a = "The tourist visa is typically valid for 90 days from the date of issue, with single or multiple entries depending on the application."}
            @{q = "Do I need to submit biometrics for Argentina visa?"; a = "Yes, biometric data (10 fingerprints and photograph) must be submitted at the VFS Global center during application."}
            @{q = "Can I extend my stay in Argentina?"; a = "Extensions are possible but must be applied for at the Argentine immigration office (DNM) before your current visa expires."}
            @{q = "Is there a visa-on-arrival for Indian citizens in Argentina?"; a = "No, there is no visa-on-arrival facility for Indian passport holders traveling to Argentina."}
            @{q = "How much bank balance is required for Argentina visa?"; a = "A minimum balance of INR 1,00,000 to 2,00,000 is recommended, along with 3-6 months of bank statements."}
            @{q = "Can I visit other South American countries with an Argentina visa?"; a = "An Argentina visa does not grant automatic entry to other South American countries. Separate visas may be required."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "ARS 12,000"; current = "ARS 15,000 (tourist visa)"}
            @{change = "Processing change"; previous = "15 working days"; current = "10-15 working days"}
            @{change = "Document change"; previous = "3 months bank statements"; current = "6 months bank statements recommended"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.cancilleria.gob.ar' target='_blank'>Argentine Ministry of Foreign Affairs</a></li>"
    }


    brazil = @{
        name = "Brazil"; capital = "Brasilia"; currency = "BRL"; currencyName = "Brazilian Real"
        embassy = "Embassy of Brazil, New Delhi"; embassyDetail = "Consulates in Mumbai, Bengaluru, Chennai, Goa"
        visaRequired = "Yes, Indian citizens need a visa for tourism and other purposes to Brazil"
        mainVisaTypes = "Tourist Visa, Business Visa, Work Visa, Student Visa, Transit Visa, Temporary Visa"
        procTime = "Tourist: 7-15 working days; Business: 7-15 working days; Work: 30-60 days"
        feeRange = "USD 80 to USD 600 depending on category"
        financialReq = "Bank statements for last 3 months; minimum balance INR 50,000 recommended for tourists"
        maxStay = "Tourist: 90 days; Business: 90 days; Work: up to 2 years"
        bioMandatory = "Required for all visa applicants at VFS Global centers"
        insuranceReq = "Not mandatory but strongly recommended for all travelers"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh"
        englishReq = "Not required for tourist/business visas; may be needed for student visas"
        approvalRate = "Approximately 90% for Indian applicants with proper documentation"
        intro = "Brazil offers a variety of visa options for Indian citizens. The country is famous for its Carnival, Amazon rainforest, and vibrant culture. Indian travelers need to apply for a visa before traveling to Brazil."
        stats = "Brazil witnessed a 30% increase in Indian tourist arrivals in 2024. The Indian community in Brazil numbers around 4,000, primarily working in IT, pharmaceuticals, and the diamond trade."
        needVisa = "Yes, Indian passport holders require a visa for all travel purposes to Brazil. E-visa is not currently available for Indian citizens."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Tourist Visa)"; detail = "7-15 working days; valid for 90 days"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires letter from Brazilian company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires enrollment proof from Brazilian institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires work contract approved by Brazilian labor ministry"}
            @{can = "Transit without visa"; answer = "No"; detail = "Transit visa needed for connecting flights"}
            @{can = "Live permanently"; answer = "Yes (Permanent Visa)"; detail = "After 4 years of temporary residency"}
        )
        visaTypes = @(
            @{type = "Tourist Visa"; subclass = "VITUR"; purpose = "Tourism, leisure, family visits"; maxStay = "90 days"; processing = "7-15 working days"; feeLocal = "BRL 300"; feeInr = "4,500 to 5,000"}
            @{type = "Business Visa"; subclass = "VINEG"; purpose = "Business meetings, conferences"; maxStay = "90 days"; processing = "7-15 working days"; feeLocal = "BRL 300"; feeInr = "4,500 to 5,000"}
            @{type = "Work Visa"; subclass = "VITEM V"; purpose = "Employment in Brazil"; maxStay = "2 years"; processing = "30-60 days"; feeLocal = "BRL 600"; feeInr = "9,000 to 10,000"}
            @{type = "Student Visa"; subclass = "VITEM IV"; purpose = "Academic study programs"; maxStay = "Course duration"; processing = "15-30 days"; feeLocal = "BRL 300"; feeInr = "4,500 to 5,000"}
            @{type = "Transit Visa"; subclass = "VITRAN"; purpose = "Transit through Brazilian airports"; maxStay = "10 days"; processing = "5-10 working days"; feeLocal = "BRL 200"; feeInr = "3,000 to 3,500"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "3,000 to 10,000"; detail = "Varies by visa type and nationality"}
            @{type = "VFS Service Charge"; amount = "1,200 to 1,500"; detail = "Mandatory service fee"}
            @{type = "Biometrics"; amount = "800 to 1,200"; detail = "At VFS Global center"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if not in Portuguese"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Brazil?"; a = "Yes, Indian citizens need a visa for all travel purposes to Brazil. There is no visa-free entry or e-visa facility available."}
            @{q = "How long does it take to get a Brazil tourist visa?"; a = "Processing typically takes 7-15 working days from the date of submission at the application center."}
            @{q = "What documents are required for a Brazil visa?"; a = "Valid passport with 6 months validity, completed application form, photographs, bank statements, travel itinerary, hotel bookings, and flight reservations."}
            @{q = "Is biometric data required for Brazil visa?"; a = "Yes, all applicants need to provide fingerprints and photograph at the VFS Global center."}
            @{q = "Can I extend my Brazil tourist visa?"; a = "Yes, extensions are possible at the Federal Police office in Brazil for up to 90 additional days."}
            @{q = "Do I need travel insurance for Brazil?"; a = "Travel insurance is not mandatory but is strongly recommended given the cost of medical care in Brazil."}
            @{q = "Can I work in Brazil with a tourist visa?"; a = "No, working on a tourist visa is illegal. You must obtain a work visa before starting employment."}
            @{q = "What is the fee for Brazil visa?"; a = "The tourist and business visa fee is approximately BRL 300, plus VFS service charges."}
            @{q = "Is there a visa-on-arrival for Indians in Brazil?"; a = "No, there is no visa-on-arrival facility for Indian passport holders."}
            @{q = "How much bank balance is required?"; a = "A minimum balance of INR 50,000-1,00,000 with 3 months bank statements is recommended."}
            @{q = "Can I visit other Mercosur countries with Brazil visa?"; a = "A Brazil visa may allow visa-free entry to other Mercosur countries for short stays."}
            @{q = "What is the Brazil visa validity?"; a = "Tourist visas are typically valid for 90 days, with single or multiple entries."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "BRL 250"; current = "BRL 300 (tourist visa)"}
            @{change = "Processing change"; previous = "10-15 working days"; current = "7-15 working days"}
            @{change = "Document change"; previous = "No biometric requirement"; current = "Biometrics mandatory for all"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.gov.br/mre' target='_blank'>Brazilian Ministry of Foreign Affairs</a></li>"
    }


    cambodia = @{
        name = "Cambodia"; capital = "Phnom Penh"; currency = "KHR"; currencyName = "Cambodian Riel"
        embassy = "Embassy of Cambodia, New Delhi"; embassyDetail = "Also covers Bangladesh, Nepal, Sri Lanka"
        visaRequired = "Yes, Indian citizens can get visa-on-arrival or e-visa for Cambodia"
        mainVisaTypes = "Tourist Visa (Visa-on-Arrival), E-Visa, Business Visa, Ordinary Visa, Retirement Visa"
        procTime = "E-Visa: 3-5 working days; Visa-on-Arrival: 15-30 minutes; Business: 5-7 working days"
        feeRange = "USD 30 to USD 300 depending on visa type"
        financialReq = "Minimal - proof of sufficient funds for stay duration suggested"
        maxStay = "Tourist: 30 days; Business: 30 days; Ordinary: 1 year"
        bioMandatory = "Not required for tourist visa; required for work and long-stay visas"
        insuranceReq = "Not mandatory but strongly recommended"
        appCenters = "E-visa online or visa-on-arrival at airports; some categories at Cambodian Embassy in New Delhi"
        englishReq = "Not required for any visa category"
        approvalRate = "High - estimated 95% for tourist e-visa and visa-on-arrival"
        intro = "Cambodia is one of the easiest destinations for Indian travelers with visa-on-arrival and e-visa facilities. Home to the magnificent Angkor Wat temple complex, Cambodia offers a rich cultural experience for Indian tourists."
        stats = "Cambodia welcomed over 80,000 Indian tourists in 2024, a significant increase from previous years. Direct flights from India have boosted tourism and business travel between the two nations."
        needVisa = "Yes, but Indian citizens can obtain a visa-on-arrival at international checkpoints or apply for an e-visa online before travel. Both options are straightforward."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (E-Visa or VOA)"; detail = "E-visa online or visa-on-arrival at airports"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Can be obtained as visa-on-arrival or e-visa"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires enrollment from Cambodian institution"}
            @{can = "Work"; answer = "Yes (Work Permit)"; detail = "Requires Ordinary visa + work permit from Ministry of Labor"}
            @{can = "Transit without visa"; answer = "No"; detail = "Visa required even for transit"}
            @{can = "Live permanently"; answer = "Yes (Long Stay)"; detail = "Renewable ordinary visa; permanent residency available after 5+ years"}
        )
        visaTypes = @(
            @{type = "E-Visa (Tourist)"; subclass = "T"; purpose = "Tourism and leisure"; maxStay = "30 days"; processing = "3-5 working days"; feeLocal = "USD 36"; feeInr = "3,000 to 3,200"}
            @{type = "Visa-on-Arrival (Tourist)"; subclass = "T"; purpose = "Tourism at entry point"; maxStay = "30 days"; processing = "15-30 minutes"; feeLocal = "USD 30"; feeInr = "2,500 to 2,700"}
            @{type = "Business Visa (E-Visa)"; subclass = "E"; purpose = "Business meetings, conferences"; maxStay = "30 days"; processing = "3-5 working days"; feeLocal = "USD 36"; feeInr = "3,000 to 3,200"}
            @{type = "Ordinary Visa"; subclass = "EB"; purpose = "Work, study, long-term stay"; maxStay = "1 year"; processing = "5-7 working days"; feeLocal = "USD 290"; feeInr = "24,000 to 24,500"}
        )
        additionalCosts = @(
            @{type = "E-Visa Fee"; amount = "2,500 to 3,200"; detail = "Paid online during application"}
            @{type = "Visa-on-Arrival Fee"; amount = "2,500 to 2,700"; detail = "Paid in USD at entry point"}
            @{type = "Passport Photo"; amount = "100 to 300"; detail = "If applying at embassy"}
            @{type = "Translation"; amount = "500 to 1,500"; detail = "Per document if needed"}
            @{type = "Courier"; amount = "500 to 800"; detail = "If applying via embassy"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Cambodia?"; a = "Yes, but Indian citizens can easily get a visa-on-arrival at international airports or apply for an e-visa online."}
            @{q = "How much does a Cambodia e-visa cost?"; a = "The Cambodia e-visa costs USD 36 (approximately INR 3,000) plus a small processing fee."}
            @{q = "Can I get a visa-on-arrival in Cambodia as an Indian?"; a = "Yes, Indian passport holders can get a visa-on-arrival at Phnom Penh, Siem Reap, and Sihanoukville airports."}
            @{q = "How long can I stay in Cambodia on a tourist visa?"; a = "The maximum stay is 30 days, which can be extended for an additional 30 days at the immigration office."}
            @{q = "What documents are needed for Cambodia e-visa?"; a = "Valid passport with 6 months validity, digital passport photo, and a valid email address for the e-visa."}
            @{q = "Is Cambodia visa free for Indian passport holders?"; a = "No, but the visa-on-arrival and e-visa options make it very convenient compared to other countries."}
            @{q = "Can I work in Cambodia on a tourist visa?"; a = "No, you need an Ordinary visa (EB) and a work permit to work legally in Cambodia."}
            @{q = "Can I extend my Cambodia tourist visa?"; a = "Yes, tourist visas can be extended once for an additional 30 days at the immigration department."}
            @{q = "Do children need a separate visa?"; a = "Yes, every traveler including infants needs their own visa to enter Cambodia."}
            @{q = "Is travel insurance required for Cambodia?"; a = "Not mandatory but strongly recommended for medical emergencies and trip cancellations."}
            @{q = "What is the difference between e-visa and visa-on-arrival?"; a = "E-visa is applied online before travel and costs USD 36. Visa-on-arrival costs USD 30 and is obtained at the airport upon arrival."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "USD 30 (e-visa)"; current = "USD 36 (e-visa)"}
            @{change = "Processing change"; previous = "3 working days"; current = "3-5 working days"}
            @{change = "Document change"; previous = "One photo required"; current = "Digital photo upload only"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.evisa.gov.kh' target='_blank'>Cambodia E-Visa Official Website</a></li>"
    }

    canada = @{
        name = "Canada"; capital = "Ottawa"; currency = "CAD"; currencyName = "Canadian Dollar"
        embassy = "High Commission of Canada, New Delhi"; embassyDetail = "Consulates in Mumbai, Bengaluru, Chandigarh, Chennai, Kolkata"
        visaRequired = "Yes, Indian citizens need a visa or eTA for travel to Canada"
        mainVisaTypes = "Visitor Visa (TRV), Study Permit, Work Permit, Super Visa, Business Visitor, Transit Visa"
        procTime = "Visitor: 30-60 days; Study: 8-12 weeks; Work: 8-16 weeks; Super Visa: 30-60 days"
        feeRange = "CAD 100 to CAD 1,500 depending on category"
        financialReq = "Visitors: CAD 2,500/month; Students: CAD 20,635/year + tuition; proof of funds mandatory"
        maxStay = "Visitor: 6 months; Study: course + 3 years PGWP; Work: 1-3 years; Super Visa: 2 years"
        bioMandatory = "Required for all visa and permit applicants at VAC centers"
        insuranceReq = "Mandatory for Super Visa (min CAD 100,000); recommended for all others"
        appCenters = "Canada Visa Application Centres (VAC) in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Chandigarh, Ahmedabad, Pune, Jalandhar"
        englishReq = "IELTS 6.0-6.5 (study); CLB 5-7 (work); no test for visitor visa"
        approvalRate = "Visitor: ~60-70%; Study: ~70-75%; Work: ~70-80%; Super Visa: ~80%"
        intro = "Canada offers diverse immigration and visa pathways for Indian citizens. Known for its welcoming immigration policies, Canada is a top destination for Indian students and skilled workers seeking quality education and permanent residency."
        stats = "Canada had over 3,20,000 Indian students in 2024, making India the largest source of international students. The Indian diaspora in Canada exceeds 1.8 million. Over 1,30,000 Indian visitors visited Canada in 2024."
        needVisa = "Yes, Indian passport holders need a visa for all travel purposes to Canada. Only Indian citizens with a valid US visa or who have held a Canadian visa in the last 10 years may qualify for simplified processing."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Visitor Visa/TRV)"; detail = "30-60 days processing; typically 10-year multiple entry"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visitor)"; detail = "Must not enter Canadian labor market"}
            @{can = "Study at Canadian institution"; answer = "Yes (Study Permit)"; detail = "Requires acceptance letter from DLI; proof of funds"}
            @{can = "Work as a skilled professional"; answer = "Yes (Work Permit)"; detail = "LMIA or LMIA-exempt; Express Entry pathway available"}
            @{can = "Transit through Canada"; answer = "Yes (Transit Visa)"; detail = "Required unless visa-exempt nationality"}
            @{can = "Live permanently"; answer = "Yes (PR via Express Entry)"; detail = "CRS-based; also PNP, family sponsorship, study-to-PR pathways"}
        )
        visaTypes = @(
            @{type = "Visitor Visa (TRV)"; subclass = "V-1"; purpose = "Tourism, family visits, business"; maxStay = "6 months"; processing = "30-60 days"; feeLocal = "CAD 100"; feeInr = "6,100 to 6,300"}
            @{type = "Study Permit"; subclass = "S-1"; purpose = "Full-time academic study"; maxStay = "Course + 3 years PGWP"; processing = "8-12 weeks"; feeLocal = "CAD 150"; feeInr = "9,150 to 9,400"}
            @{type = "Work Permit (LMIA)"; subclass = "W-1"; purpose = "Employment with LMIA"; maxStay = "1-3 years"; processing = "8-16 weeks"; feeLocal = "CAD 155"; feeInr = "9,500 to 9,700"}
            @{type = "Super Visa"; subclass = "SV"; purpose = "Parents/grandparents of PR/citizens"; maxStay = "2 years"; processing = "30-60 days"; feeLocal = "CAD 100"; feeInr = "6,100 to 6,300"}
            @{type = "Transit Visa"; subclass = "TRN"; purpose = "Transit through Canada"; maxStay = "48 hours"; processing = "15-30 days"; feeLocal = "CAD 100"; feeInr = "6,100 to 6,300"}
            @{type = "IEC Working Holiday"; subclass = "IEC"; purpose = "Youth work and travel"; maxStay = "1-2 years"; processing = "4-8 weeks"; feeLocal = "CAD 162"; feeInr = "9,900 to 10,200"}
            @{type = "Permanent Residence (Express Entry)"; subclass = "PR"; purpose = "Skilled worker immigration"; maxStay = "Indefinite"; processing = "6-12 months"; feeLocal = "CAD 1,365"; feeInr = "83,000 to 85,000"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "6,100 to 9,500"; detail = "Non-refundable, varies by visa type"}
            @{type = "Biometrics"; amount = "5,100 to 5,300"; detail = "Required at VAC for all applicants aged 14-79"}
            @{type = "Medical Examination"; amount = "5,000 to 8,000"; detail = "Required for study/work/PR applicants"}
            @{type = "English Test (IELTS/CELPIP)"; amount = "16,000 to 18,000"; detail = "Required for study/work/PR"}
            @{type = "Police Clearance"; amount = "500 to 1,500"; detail = "Required for work/PR applicants"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in English/French"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return service"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Canada?"; a = "Yes, Indian passport holders need a Temporary Resident Visa (TRV) or eTA to travel to Canada for any purpose."}
            @{q = "How long does Canada visitor visa processing take from India?"; a = "Processing typically takes 30-60 days. However, processing times vary by application volume and season."}
            @{q = "What is the Canada visitor visa fee for Indians?"; a = "The fee is CAD 100 per person (approximately INR 6,100) plus biometrics fee of CAD 85."}
            @{q = "Is biometric data required for Canada visa?"; a = "Yes, all applicants aged 14-79 must provide biometrics at a Visa Application Centre."}
            @{q = "What is the IELTS score required for Canada study?"; a = "Most institutions require IELTS 6.5 overall with no band less than 6.0. SDS pathway requires IELTS 6.0 overall."}
            @{q = "Can I work in Canada on a visitor visa?"; a = "No, working on a visitor visa is not permitted. You need a valid work permit."}
            @{q = "How long can I stay in Canada on a tourist visa?"; a = "The standard stay is 6 months. Border officer determines the exact duration."}
            @{q = "What is the Canada Super Visa for parents?"; a = "The Super Visa allows parents and grandparents of Canadian citizens/PRs to stay for up to 2 years."}
            @{q = "How much bank balance is required for Canada visitor visa?"; a = "You should show adequate funds for your stay, typically CAD 2,500-5,000 per month of stay."}
            @{q = "Is travel insurance mandatory for Canada?"; a = "It is mandatory for Super Visa (minimum CAD 100,000 coverage) and strongly recommended for others."}
            @{q = "What is the Canada study permit processing time?"; a = "Study permit processing from India takes 8-12 weeks under regular processing, faster under SDS."}
            @{q = "Can I apply for Canada PR while studying?"; a = "Yes, Canadian study experience can help qualify for PR through Express Entry or Provincial Nominee Programs."}
            @{q = "Do I need an interview for Canada visitor visa?"; a = "Interviews are not required in most cases. Some applicants may be called for an interview."}
            @{q = "How long is Canada visitor visa valid?"; a = "Visitor visas are typically issued with 10-year validity with multiple entries for Indian applicants."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "CAD 100"; current = "CAD 100 (no change for visitor visa)"}
            @{change = "Processing change"; previous = "40-80 days"; current = "30-60 days (improved)"}
            @{change = "Document change"; previous = "Paper applications"; current = "Most applications now digital via IRCC portal"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.canada.ca/en/immigration-refugees-citizenship.html' target='_blank'>IRCC Official Website</a></li>"
    }


    china = @{
        name = "China"; capital = "Beijing"; currency = "CNY"; currencyName = "Chinese Yuan"
        embassy = "Embassy of China, New Delhi"; embassyDetail = "Consulates in Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad"
        visaRequired = "Yes, Indian citizens need a visa for all travel to China"
        mainVisaTypes = "Tourist Visa (L), Business Visa (M), Student Visa (X1/X2), Work Visa (Z), Transit Visa (G), Family Visa (Q1/Q2)"
        procTime = "Tourist: 4-7 working days; Business: 4-7 working days; Work: 2-4 weeks; Student: 2-4 weeks"
        feeRange = "INR 4,500 to INR 15,000 depending on category and urgency"
        financialReq = "Bank statements for 3-6 months; minimum INR 1,00,000 recommended for tourists"
        maxStay = "Tourist (L): 30-60 days; Student (X1): 180+ days; Work (Z): 1-5 years"
        bioMandatory = "Required for all visa categories at visa application centers"
        insuranceReq = "Not mandatory for tourist visa; mandatory for study and work visas"
        appCenters = "China Visa Application Service Centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Ahmedabad"
        englishReq = "Not required for tourist/business; may be needed for student visa applications"
        approvalRate = "Approximately 85-90% for Indian applicants with complete documentation"
        intro = "China visa requirements for Indian citizens vary by travel purpose. China is a major economic partner and popular destination for Indian tourists, students, and business travelers."
        stats = "China is among the top 10 outbound destinations for Indian travelers. Over 2,00,000 Indians visited China in 2024. The Indian community in China exceeds 50,000, primarily in Guangzhou, Shanghai, and Beijing."
        needVisa = "Yes, Indian passport holders must obtain a visa before traveling to mainland China. Hong Kong and Macau have separate visa policies."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (L Visa)"; detail = "4-7 working days processing; single/double entry"}
            @{can = "Travel for business meetings"; answer = "Yes (M Visa)"; detail = "Requires invitation letter from Chinese company"}
            @{can = "Study"; answer = "Yes (X1/X2 Visa)"; detail = "Long-term (X1) or short-term (X2) study"}
            @{can = "Work"; answer = "Yes (Z Visa)"; detail = "Requires work permit from Chinese authorities"}
            @{can = "Transit without visa"; answer = "Limited"; detail = "24-144 hour transit without visa in select cities"}
            @{can = "Live permanently"; answer = "Yes (D Visa)"; detail = "After 5+ years of residence; strict criteria"}
        )
        visaTypes = @(
            @{type = "Tourist Visa"; subclass = "L"; purpose = "Tourism, family visits"; maxStay = "30-60 days"; processing = "4-7 working days"; feeLocal = "CNY 580"; feeInr = "7,000 to 7,500"}
            @{type = "Business Visa"; subclass = "M"; purpose = "Business meetings, trade"; maxStay = "30-60 days"; processing = "4-7 working days"; feeLocal = "CNY 580"; feeInr = "7,000 to 7,500"}
            @{type = "Student Visa (Long-term)"; subclass = "X1"; purpose = "Study >180 days"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "CNY 580"; feeInr = "7,000 to 7,500"}
            @{type = "Work Visa"; subclass = "Z"; purpose = "Employment in China"; maxStay = "1-5 years"; processing = "2-4 weeks"; feeLocal = "CNY 580"; feeInr = "7,000 to 7,500"}
            @{type = "Transit Visa"; subclass = "G"; purpose = "Transit through China"; maxStay = "24-144 hours"; processing = "3-5 working days"; feeLocal = "CNY 350"; feeInr = "4,000 to 4,500"}
            @{type = "Family Visa"; subclass = "Q2"; purpose = "Family reunion (short-term)"; maxStay = "90-180 days"; processing = "4-7 working days"; feeLocal = "CNY 580"; feeInr = "7,000 to 7,500"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "4,000 to 7,500"; detail = "Based on visa type and number of entries"}
            @{type = "Service Center Charge"; amount = "800 to 1,500"; detail = "Paid at application center"}
            @{type = "Urgent Processing"; amount = "2,000 to 4,000"; detail = "1-3 working day express service"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if not in Chinese"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for China?"; a = "Yes, Indian passport holders need a visa for all travel to mainland China. Visa-free transit is available in select cities for 24-144 hours."}
            @{q = "How long does China visa processing take?"; a = "Standard processing takes 4-7 working days. Express service (1-3 days) is available at extra cost."}
            @{q = "What is the China visa fee for Indians?"; a = "The standard fee is approximately CNY 580 (INR 7,000) plus service center charges."}
            @{q = "Is biometric data required for China visa?"; a = "Yes, since 2021, all visa applicants must provide fingerprints at the application center."}
            @{q = "Do I need an invitation letter for China tourist visa?"; a = "Not mandatory but helpful. For business visa (M), an invitation letter from a Chinese company is required."}
            @{q = "Can I get a visa-on-arrival in China?"; a = "No, visa-on-arrival is not available for Indian citizens at any Chinese entry point."}
            @{q = "What documents are needed for China tourist visa?"; a = "Valid passport, application form, photos, hotel bookings, flight itinerary, bank statements, and travel insurance."}
            @{q = "How long can I stay in China on a tourist visa?"; a = "Typically 30-60 days. The exact duration is determined by the visa officer."}
            @{q = "Can I visit Hong Kong with a China visa?"; a = "Hong Kong has a separate visa policy. Indian citizens can get visa-on-arrival in Hong Kong for 14 days."}
            @{q = "Is travel insurance required for China?"; a = "Not mandatory for tourist visa but strongly recommended. Required for student and work visa applicants."}
            @{q = "How much bank balance is required?"; a = "A minimum balance of INR 1,00,000-2,00,000 with 6 months bank statements is recommended."}
            @{q = "What is the China transit without visa policy?"; a = "Indians can transit without visa for 24 hours in major cities or 144 hours in select regions."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "CNY 500"; current = "CNY 580 (standard visa)"}
            @{change = "Processing change"; previous = "4-5 working days"; current = "4-7 working days"}
            @{change = "Document change"; previous = "Paper photos accepted"; current = "Digital photo required for all"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.visaforchina.org' target='_blank'>China Visa Application Service Center</a></li>"
    }

    egypt = @{
        name = "Egypt"; capital = "Cairo"; currency = "EGP"; currencyName = "Egyptian Pound"
        embassy = "Embassy of Egypt, New Delhi"; embassyDetail = "Consulate in Mumbai"
        visaRequired = "Yes, Indian citizens can obtain visa-on-arrival or e-visa for Egypt"
        mainVisaTypes = "Tourist Visa, Visa-on-Arrival, E-Visa, Business Visa, Student Visa, Work Visa"
        procTime = "E-Visa: 3-7 working days; Visa-on-Arrival: 15-20 minutes; Embassy: 7-10 working days"
        feeRange = "USD 25 to USD 300 depending on category"
        financialReq = "Minimal for tourist visa; bank statements for 3 months recommended"
        maxStay = "Tourist: 30 days; E-Visa: 30 days; Student: course duration"
        bioMandatory = "Not required for tourist visa-on-arrival; required for embassy applications"
        insuranceReq = "Not mandatory but strongly recommended"
        appCenters = "VFS Global centers and directly at Egyptian Embassy in New Delhi; e-visa online"
        englishReq = "Not required for any visa category"
        approvalRate = "High - estimated 90-95% for tourist visas"
        intro = "Egypt offers convenient visa options for Indian citizens including visa-on-arrival and e-visa facilities. A land of ancient pyramids, the Nile, and rich history, Egypt is a popular destination for Indian tourists."
        stats = "Egypt saw over 1,50,000 Indian visitors in 2024, a 40% increase from 2023. Direct flights from Delhi and Mumbai have contributed to the growing interest among Indian travelers."
        needVisa = "Yes, Indian citizens need a visa for Egypt but can conveniently obtain a visa-on-arrival at major airports or apply for an e-visa online before travel."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (VOA or E-Visa)"; detail = "Visa-on-arrival at airports or e-visa online"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires company invitation letter"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires admission from Egyptian institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires work permit from Egyptian authorities"}
            @{can = "Transit without visa"; answer = "No"; detail = "Visa required even for transit"}
            @{can = "Live permanently"; answer = "Limited"; detail = "Permanent residency is difficult to obtain"}
        )
        visaTypes = @(
            @{type = "Visa-on-Arrival"; subclass = "VOA"; purpose = "Tourism at entry point"; maxStay = "30 days"; processing = "15-20 minutes"; feeLocal = "USD 25"; feeInr = "2,100 to 2,300"}
            @{type = "E-Visa (Tourist)"; subclass = "EV"; purpose = "Tourism, pre-arranged"; maxStay = "30 days"; processing = "3-7 working days"; feeLocal = "USD 30"; feeInr = "2,500 to 2,700"}
            @{type = "Business Visa"; subclass = "B"; purpose = "Business meetings, conferences"; maxStay = "30 days"; processing = "7-10 working days"; feeLocal = "USD 100"; feeInr = "8,300 to 8,600"}
            @{type = "Student Visa"; subclass = "S"; purpose = "Academic study"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "USD 150"; feeInr = "12,500 to 13,000"}
            @{type = "Work Visa"; subclass = "W"; purpose = "Employment in Egypt"; maxStay = "1-3 years"; processing = "4-8 weeks"; feeLocal = "USD 200"; feeInr = "16,600 to 17,200"}
        )
        additionalCosts = @(
            @{type = "Visa Fee"; amount = "2,100 to 17,200"; detail = "Depends on visa type and application method"}
            @{type = "Service Charge (Embassy)"; amount = "500 to 1,000"; detail = "For embassy applications"}
            @{type = "Passport Photos"; amount = "100 to 300"; detail = "Two recent photos required"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if needed"}
            @{type = "Courier"; amount = "500 to 1,000"; detail = "For mailed applications"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Egypt?"; a = "Yes, Indian passport holders need a visa. You can get a visa-on-arrival at Cairo airport for USD 25 or apply for an e-visa online."}
            @{q = "Is Egypt visa-on-arrival available for Indians?"; a = "Yes, Indian citizens can get a 30-day tourist visa-on-arrival at Cairo, Luxor, Hurghada, and Sharm El Sheikh airports."}
            @{q = "How much does Egypt e-visa cost?"; a = "The Egypt e-visa for tourism costs USD 30 (approximately INR 2,500) and takes 3-7 working days."}
            @{q = "What documents are needed for Egypt visa-on-arrival?"; a = "Valid passport with 6 months validity, return flight ticket, hotel booking confirmation, and USD 25 in cash."}
            @{q = "How long can I stay in Egypt on a tourist visa?"; a = "The tourist visa allows a maximum stay of 30 days. Extensions are possible at immigration offices."}
            @{q = "Can I work in Egypt on a tourist visa?"; a = "No, working on a tourist visa is illegal. A separate work visa is required."}
            @{q = "Is travel insurance required for Egypt?"; a = "Not mandatory but strongly recommended for medical emergencies and trip cancellations."}
            @{q = "Can I visit multiple times with an Egypt e-visa?"; a = "The e-visa is typically single-entry. Multiple-entry e-visas are available at a higher fee."}
            @{q = "What is the best way to get an Egypt visa for Indians?"; a = "The visa-on-arrival at the airport is the most convenient option. The e-visa is better for avoiding queues."}
            @{q = "Do children need a separate Egypt visa?"; a = "Yes, every traveler including infants needs their own visa to enter Egypt."}
            @{q = "Can I get a visa to Egypt from the Indian embassy?"; a = "Yes, you can apply at the Egyptian Embassy in New Delhi for a visa before travel."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "USD 25 (VOA)"; current = "USD 25 (VOA) no change"}
            @{change = "Processing change"; previous = "5-7 working days"; current = "3-7 working days (e-visa)"}
            @{change = "Document change"; previous = "No photo required for VOA"; current = "Digital photo upload for e-visa"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.egyptvisa.com' target='_blank'>Egypt Official Visa Portal</a></li>"
    }

    france = @{
        name = "France"; capital = "Paris"; currency = "EUR"; currencyName = "Euro"
        embassy = "Embassy of France, New Delhi"; embassyDetail = "Consulates in Mumbai, Bengaluru, Kolkata, Chennai, Hyderabad, Pondicherry"
        visaRequired = "Yes, Indian citizens need a Schengen visa for travel to France"
        mainVisaTypes = "Short Stay Schengen Visa, Long Stay Visa, Student Visa, Work Visa, Business Visa, Family Visa"
        procTime = "Short Stay: 15-30 days; Long Stay: 2-4 weeks; Student: 2-4 weeks"
        feeRange = "EUR 80 to EUR 350 depending on category"
        financialReq = "EUR 65-120 per day of stay; bank statements for 3 months required"
        maxStay = "Schengen: 90 days in 180-day period; Long Stay: up to 1 year"
        bioMandatory = "Required for all Schengen visa applicants at VFS centers"
        insuranceReq = "Mandatory - travel insurance with minimum EUR 30,000 coverage for Schengen"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh, Kochi, Goa"
        englishReq = "Not required for short stay; may be required for study/work visas (IELTS 5.5-6.5)"
        approvalRate = "Approximately 80-85% for Indian applicants with complete documents"
        intro = "France is part of the Schengen Area and issues Schengen visas for short stays up to 90 days. Indian travelers need a visa for all purposes, and France is one of the most popular European destinations for Indian tourists."
        stats = "France welcomed over 3,50,000 Indian visitors in 2024, making India a key tourism market. Over 10,000 Indian students are studying in France, with numbers growing steadily each year."
        needVisa = "Yes, Indian passport holders need a Schengen visa for France. France is not part of the visa-waiver program for Indian citizens."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Schengen Visa)"; detail = "15-30 days processing; 90 days stay in 180-day window"}
            @{can = "Travel for business meetings"; answer = "Yes (Schengen Business)"; detail = "Requires invitation letter from French company"}
            @{can = "Study"; answer = "Yes (Long Stay Student)"; detail = "Requires admission from French institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires work contract and authorization"}
            @{can = "Transit without visa"; answer = "No"; detail = "Schengen transit visa required for airport transit"}
            @{can = "Live permanently"; answer = "Yes (Residence Permit)"; detail = "After 5 years of continuous residence"}
        )
        visaTypes = @(
            @{type = "Short Stay Schengen"; subclass = "C"; purpose = "Tourism, business, family visit"; maxStay = "90 days in 180-day period"; processing = "15-30 days"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
            @{type = "Long Stay Visa"; subclass = "D"; purpose = "Stay >90 days"; maxStay = "1 year"; processing = "2-4 weeks"; feeLocal = "EUR 99"; feeInr = "8,900 to 9,200"}
            @{type = "Student Visa"; subclass = "VLS-TS"; purpose = "Academic study programs"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "EUR 50"; feeInr = "4,500 to 4,700"}
            @{type = "Work Visa"; subclass = "D"; purpose = "Salaried employment"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "EUR 99"; feeInr = "8,900 to 9,200"}
            @{type = "Business Schengen"; subclass = "C"; purpose = "Business meetings, conferences"; maxStay = "90 days in 180-day period"; processing = "15-30 days"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
            @{type = "Talent Passport"; subclass = "Passeport Talent"; purpose = "Skilled professionals, investors"; maxStay = "4 years"; processing = "4-8 weeks"; feeLocal = "EUR 99"; feeInr = "8,900 to 9,200"}
        )
        additionalCosts = @(
            @{type = "Schengen Visa Fee"; amount = "7,200 to 7,500"; detail = "Standard fee for adults"}
            @{type = "VFS Service Charge"; amount = "2,500 to 3,000"; detail = "Mandatory at application center"}
            @{type = "Biometrics"; amount = "Included in service charge"; detail = "10 fingerprints at VFS center"}
            @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory, minimum EUR 30,000 coverage"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in French/English"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return courier"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for France?"; a = "Yes, Indian passport holders need a Schengen visa for France. Apply at least 3 weeks before travel."}
            @{q = "How long does France Schengen visa processing take?"; a = "Processing typically takes 15-30 days. The standard is 15 calendar days but can extend to 45 days."}
            @{q = "What is the France visa fee for Indians?"; a = "The Schengen visa fee is EUR 80 (approximately INR 7,200) plus VFS service charges of INR 2,500-3,000."}
            @{q = "Is biometric data required for France visa?"; a = "Yes, all Schengen visa applicants must provide biometric data (10 fingerprints and photograph) at VFS."}
            @{q = "Is travel insurance mandatory for France Schengen visa?"; a = "Yes, travel insurance with minimum coverage of EUR 30,000 is mandatory for all Schengen visa applicants."}
            @{q = "How long can I stay in France on a Schengen visa?"; a = "The maximum stay is 90 days within any 180-day period."}
            @{q = "Can I work on a France Schengen visa?"; a = "No, working is not permitted on a Schengen short-stay visa. A work visa is required."}
            @{q = "What documents are needed for France tourist visa?"; a = "Valid passport, application form, photos, flight bookings, hotel reservations, travel insurance, bank statements, and employment proof."}
            @{q = "Can I visit other Schengen countries with a France visa?"; a = "Yes, a France-issued Schengen visa allows you to travel to all 27 Schengen countries."}
            @{q = "How much bank balance is required for France visa?"; a = "You need to show EUR 65-120 per day of stay in funds. For a 10-day trip, show approximately INR 60,000-1,00,000."}
            @{q = "What is the France student visa process?"; a = "Apply after receiving admission from Campus France-approved institution. Processing takes 2-4 weeks."}
            @{q = "Can I extend my France tourist visa?"; a = "Extensions are only possible in exceptional circumstances (force majeure, humanitarian reasons)."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "EUR 80"; current = "EUR 80 (Schengen fee stable)"}
            @{change = "Processing change"; previous = "15-45 days"; current = "15-30 days (improved)"}
            @{change = "Document change"; previous = "Paper application"; current = "Digital application form required"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://france-visas.gouv.fr' target='_blank'>France Visas Official Portal</a></li>"
    }

    germany = @{
        name = "Germany"; capital = "Berlin"; currency = "EUR"; currencyName = "Euro"
        embassy = "Embassy of Germany, New Delhi"; embassyDetail = "Consulates in Mumbai, Bengaluru, Chennai, Kolkata, Hyderabad, Pune, Ahmedabad"
        visaRequired = "Yes, Indian citizens need a Schengen visa for travel to Germany"
        mainVisaTypes = "Short Stay Schengen Visa, Student Visa, Work Visa, Job Seeker Visa, Business Visa, Family Reunion Visa"
        procTime = "Short Stay: 15-30 days; Student: 4-8 weeks; Work: 4-12 weeks"
        feeRange = "EUR 80 to EUR 110 depending on category"
        financialReq = "EUR 45-92 per day; students must show blocked account of EUR 11,208 for 2024"
        maxStay = "Schengen: 90 days in 180-day period; Student: course + 18 months job search"
        bioMandatory = "Required for all visa applicants at VFS/VAC centers"
        insuranceReq = "Mandatory - travel insurance for Schengen; health insurance for students/residents"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh, Kochi, Panaji"
        englishReq = "Not required for short stay; IELTS 6.0-6.5 for English-taught programs; German A1-B1 for work"
        approvalRate = "Approximately 85-90% for Indian applicants with complete documentation"
        intro = "Germany is a leading European destination for Indian students and professionals. As part of the Schengen Area, Germany issues short-stay Schengen visas for tourism and business, along with national visas for study and work."
        stats = "Germany hosted over 2,00,000 Indian tourists in 2024. Over 42,000 Indian students were enrolled in German universities in 2024, making India the largest source of international students in Germany."
        needVisa = "Yes, Indian passport holders need a Schengen visa for short stays and a national visa for long stays in Germany."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Schengen Visa)"; detail = "15-30 days processing; 90 days in 180 days"}
            @{can = "Travel for business meetings"; answer = "Yes (Schengen Business)"; detail = "Requires invitation letter from German firm"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires university admission and blocked account"}
            @{can = "Work"; answer = "Yes (EU Blue Card/Work Visa)"; detail = "Requires job offer and qualification recognition"}
            @{can = "Transit without visa"; answer = "No"; detail = "Airport transit visa required in some cases"}
            @{can = "Live permanently"; answer = "Yes (PR)"; detail = "After 21-33 months on Blue Card; 5 years otherwise"}
        )
        visaTypes = @(
            @{type = "Short Stay Schengen"; subclass = "C"; purpose = "Tourism, business, family"; maxStay = "90 days in 180-day period"; processing = "15-30 days"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
            @{type = "Student Visa"; subclass = "D"; purpose = "University studies"; maxStay = "Course + 18 months"; processing = "4-8 weeks"; feeLocal = "EUR 75"; feeInr = "6,700 to 7,000"}
            @{type = "Student Applicant Visa"; subclass = "D"; purpose = "University application"; maxStay = "9 months"; processing = "4-8 weeks"; feeLocal = "EUR 75"; feeInr = "6,700 to 7,000"}
            @{type = "Work Visa (EU Blue Card)"; subclass = "D"; purpose = "Skilled employment"; maxStay = "4 years (renewable)"; processing = "4-12 weeks"; feeLocal = "EUR 75"; feeInr = "6,700 to 7,000"}
            @{type = "Job Seeker Visa"; subclass = "D"; purpose = "Job search in Germany"; maxStay = "6 months"; processing = "4-8 weeks"; feeLocal = "EUR 75"; feeInr = "6,700 to 7,000"}
            @{type = "Family Reunion Visa"; subclass = "D"; purpose = "Join family in Germany"; maxStay = "1-3 years"; processing = "4-12 weeks"; feeLocal = "EUR 75"; feeInr = "6,700 to 7,000"}
        )
        additionalCosts = @(
            @{type = "Schengen/National Visa Fee"; amount = "6,700 to 7,500"; detail = "Non-refundable application fee"}
            @{type = "VFS Service Charge"; amount = "2,500 to 3,000"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "Included in service charge"; detail = "Required at VAC"}
            @{type = "Blocked Account (Students)"; amount = "1,10,000 to 1,20,000"; detail = "Mandatory for student visa applicants"}
            @{type = "Health Insurance"; amount = "8,000 to 12,000"; detail = "Required for students and workers"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in German/English"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Germany?"; a = "Yes, Indian passport holders need a Schengen visa for short stays and a national visa for long stays."}
            @{q = "How long does Germany Schengen visa processing take?"; a = "Standard processing is 15-30 days. Student and work visas take 4-12 weeks."}
            @{q = "What is the Germany visa fee for Indians?"; a = "Schengen visa is EUR 80 (INR 7,200). National visa (study/work) is EUR 75 (INR 6,700)."}
            @{q = "Is a blocked account mandatory for German student visa?"; a = "Yes, Indian students must open a blocked account with EUR 11,208 (INR 10,00,000+) for the 2024-25 academic year."}
            @{q = "What is the IELTS requirement for German student visa?"; a = "For English-taught programs, IELTS 6.0-6.5 is typically required. German-taught programs need B1-C1 German."}
            @{q = "Can I work in Germany on a tourist visa?"; a = "No, working on a tourist visa is strictly prohibited. A work visa or EU Blue Card is required."}
            @{q = "How long can I stay in Germany on a Schengen visa?"; a = "Maximum 90 days within any 180-day period."}
            @{q = "Is travel insurance mandatory for Germany visa?"; a = "Yes, travel insurance with minimum EUR 30,000 coverage is mandatory for all Schengen applications."}
            @{q = "What is the Germany Job Seeker Visa?"; a = "A 6-month visa allowing Indian professionals to search for employment in Germany. Requires a German degree or recognized qualification."}
            @{q = "How much bank balance is needed for Germany tourist visa?"; a = "You need to show EUR 45-92 per day. For a 10-day trip, show approximately INR 50,000-80,000."}
            @{q = "What documents are needed for Germany tourist visa?"; a = "Valid passport, application form, photos, travel insurance, flight bookings, hotel reservations, bank statements, and employment proof."}
            @{q = "Can I get PR in Germany after studying?"; a = "Yes, after completing studies, you can get an 18-month job search visa. After 2 years of work, you may qualify for PR."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "EUR 80"; current = "EUR 80 (Schengen fee unchanged)"}
            @{change = "Processing change"; previous = "4-10 weeks (student)"; current = "4-8 weeks (student improved)"}
            @{change = "Document change"; previous = "EUR 11,208 blocked amount"; current = "EUR 11,208 (same, adjusted annually)"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.germany-visa.org' target='_blank'>Germany Visa Information</a></li>"
    }


    india = @{
        name = "India"; capital = "New Delhi"; currency = "INR"; currencyName = "Indian Rupee"
        embassy = "Not applicable - India is the home country"; embassyDetail = "Indian passport holders do not need a visa for India"
        visaRequired = "Not applicable for Indian citizens (home country)"
        mainVisaTypes = "India issues visas to foreign nationals: e-Tourist Visa, e-Business Visa, e-Medical Visa, Conference Visa, Employment Visa, Student Visa"
        procTime = "E-Visa: 24-72 hours; Regular: 7-15 working days"
        feeRange = "USD 10 to USD 100 depending on e-visa type and duration"
        financialReq = "Varies by visa type; proof of sufficient funds recommended"
        maxStay = "E-Tourist: 30 days-5 years (double entry or multiple entry)"
        bioMandatory = "Required for regular visa applicants; not required for e-visa holders"
        insuranceReq = "Not mandatory but recommended for medical emergencies"
        appCenters = "BLS International centers worldwide; e-visa online portal"
        englishReq = "Not required for foreign nationals unless applying for study/work"
        approvalRate = "High for most visa categories"
        intro = "India is the home country for Indian passport holders, who do not require a visa to enter, live, or work in India. This section is for informational purposes about visas India issues to foreign nationals."
        stats = "India's tourism sector welcomed over 9.5 million foreign tourists in 2024. The country offers e-visa facilities to citizens of over 160 countries for tourism, business, and medical purposes."
        needVisa = "No. Indian citizens do not need a visa to enter India. An Indian passport is proof of citizenship and allows unrestricted entry."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Not needed (Indian citizen)"; detail = "Indians can freely travel to India without visa"}
            @{can = "Travel for business meetings"; answer = "Not needed"; detail = "No visa required for Indian citizens"}
            @{can = "Study"; answer = "Not needed"; detail = "Indian citizens can study anywhere in India"}
            @{can = "Work"; answer = "Not needed"; detail = "No work visa required for Indian citizens"}
            @{can = "Transit without visa"; answer = "Not needed"; detail = "Indians can transit freely in India"}
            @{can = "Live permanently"; answer = "Not needed"; detail = "India is home country for Indian citizens"}
        )
        visaTypes = @(
            @{type = "e-Tourist Visa (30 days)"; subclass = "eTV"; purpose = "Tourism and recreation"; maxStay = "30 days (double entry)"; processing = "24-72 hours"; feeLocal = "USD 10"; feeInr = "830 to 850"}
            @{type = "e-Tourist Visa (1 year)"; subclass = "eTV"; purpose = "Tourism and recreation"; maxStay = "365 days (multiple entry)"; processing = "24-72 hours"; feeLocal = "USD 25"; feeInr = "2,080 to 2,100"}
            @{type = "e-Business Visa"; subclass = "eBV"; purpose = "Business activities"; maxStay = "365 days (multiple entry)"; processing = "24-72 hours"; feeLocal = "USD 25"; feeInr = "2,080 to 2,100"}
            @{type = "e-Medical Visa"; subclass = "eMV"; purpose = "Medical treatment"; maxStay = "60 days (triple entry)"; processing = "24-72 hours"; feeLocal = "USD 25"; feeInr = "2,080 to 2,100"}
            @{type = "Employment Visa"; subclass = "E"; purpose = "Employment in India"; maxStay = "1-5 years"; processing = "7-30 working days"; feeLocal = "USD 100"; feeInr = "8,300 to 8,500"}
            @{type = "Student Visa"; subclass = "S"; purpose = "Study in India"; maxStay = "Course duration"; processing = "7-15 working days"; feeLocal = "USD 75"; feeInr = "6,200 to 6,400"}
        )
        additionalCosts = @(
            @{type = "E-Visa Fee"; amount = "830 to 8,500"; detail = "Paid online during application"}
            @{type = "Service Charge (BLS)"; amount = "500 to 1,500"; detail = "For in-person applications"}
            @{type = "Biometrics"; amount = "500 to 800"; detail = "For regular visa applications"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if needed"}
            @{type = "Courier"; amount = "300 to 600"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indian citizens need a visa for India?"; a = "No, Indian citizens do not need a visa to enter India. An Indian passport is sufficient for entry."}
            @{q = "What if my Indian passport expires while abroad?"; a = "You can apply for a new passport at the nearest Indian embassy or consulate."}
            @{q = "Can I work in India without a visa?"; a = "Yes, Indian citizens can work anywhere in India without any visa restrictions."}
            @{q = "What documents do I need to enter India as a citizen?"; a = "A valid Indian passport or other acceptable travel document is sufficient."}
            @{q = "Can foreigners get a visa for India?"; a = "Yes, foreigners can apply for e-visas online or regular visas at Indian embassies worldwide."}
            @{q = "What is the India e-visa for foreign tourists?"; a = "The e-Tourist Visa allows citizens of over 160 countries to visit India for tourism for 30 days to 5 years."}
            @{q = "How much does India e-visa cost for foreigners?"; a = "It costs USD 10 for a 30-day e-TV, USD 25 for 1-year, and USD 80 for 5-year e-visa."}
            @{q = "How long does India e-visa processing take?"; a = "Processing takes 24-72 hours. It is recommended to apply 4-7 days before travel."}
        )
        updates2026 = @(
            @{change = "E-Visa Fee Update"; previous = "USD 10 (30-day)"; current = "USD 10 (no change)"}
            @{change = "Processing change"; previous = "72 hours"; current = "24-72 hours (faster processing)"}
            @{change = "Document change"; previous = "Photo upload required"; current = "Digital photo with white background only"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://indianvisaonline.gov.in' target='_blank'>India Visa Online Portal</a></li>"
    }

    indonesia = @{
        name = "Indonesia"; capital = "Jakarta"; currency = "IDR"; currencyName = "Indonesian Rupiah"
        embassy = "Embassy of Indonesia, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata"
        visaRequired = "Yes, Indian citizens can get visa-on-arrival or e-visa for Indonesia"
        mainVisaTypes = "Visa-on-Arrival, E-Visa (B1/B2), Business Visa, Work Visa, Student Visa, Social-Cultural Visa"
        procTime = "VOA: 10-15 minutes; E-Visa: 2-5 working days; Social/Business: 5-10 working days"
        feeRange = "USD 35 to USD 500 depending on category"
        financialReq = "Minimal for tourist visas; proof of funds may be required for longer stays"
        maxStay = "VOA/E-Visa: 30 days (extendable by 30 days); Social: 60 days; Work: 1 year"
        bioMandatory = "Not required for VOA/e-visa; required for work and social visas"
        insuranceReq = "Not mandatory but recommended"
        appCenters = "Embassy in New Delhi; e-visa online; VOA at major airports and seaports"
        englishReq = "Not required for any visa category"
        approvalRate = "Very high - estimated 95%+ for tourist visas"
        intro = "Indonesia is one of the most accessible destinations for Indian travelers with visa-on-arrival and e-visa options. Bali, Jakarta, and Yogyakarta are popular destinations for Indian tourists."
        stats = "Indonesia attracted over 6,00,000 Indian tourists in 2024, making India a top source market. Bali alone received over 3,00,000 Indian visitors. Direct flights connect major Indian cities to Bali and Jakarta."
        needVisa = "Yes, but Indian citizens can obtain a visa-on-arrival at major entry points or apply for an e-visa online before travel."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (VOA or E-Visa)"; detail = "VOA at airports/seaports or e-visa online"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires invitation from Indonesian company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires admission from Indonesian institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires work permit from Manpower Ministry"}
            @{can = "Transit without visa"; answer = "No"; detail = "Visa required for transit through Indonesia"}
            @{can = "Live permanently"; answer = "Limited"; detail = "Permanent residency after 5+ years of continuous residence"}
        )
        visaTypes = @(
            @{type = "Visa-on-Arrival"; subclass = "VOA"; purpose = "Tourism, business visit"; maxStay = "30 days (extendable)"; processing = "10-15 minutes"; feeLocal = "IDR 500,000"; feeInr = "2,700 to 3,000"}
            @{type = "E-Visa (B1)"; subclass = "B1"; purpose = "Tourism and social visit"; maxStay = "30 days (extendable)"; processing = "2-5 working days"; feeLocal = "IDR 500,000"; feeInr = "2,700 to 3,000"}
            @{type = "E-Visa (B2)"; subclass = "B2"; purpose = "Business and government visit"; maxStay = "60 days"; processing = "2-5 working days"; feeLocal = "IDR 1,000,000"; feeInr = "5,400 to 5,700"}
            @{type = "Social-Cultural Visa"; subclass = "B-211"; purpose = "Social visit, cultural exchange"; maxStay = "60 days (extendable)"; processing = "5-10 working days"; feeLocal = "IDR 1,500,000"; feeInr = "8,100 to 8,500"}
            @{type = "Work Visa"; subclass = "C-312"; purpose = "Employment in Indonesia"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "IDR 5,000,000"; feeInr = "27,000 to 28,000"}
        )
        additionalCosts = @(
            @{type = "Visa Fee"; amount = "2,700 to 28,000"; detail = "Depends on visa type"}
            @{type = "Service Charge"; amount = "500 to 1,000"; detail = "For embassy applications"}
            @{type = "Extension Fee"; amount = "3,000 to 4,000"; detail = "For 30-day extension of VOA"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if needed"}
            @{type = "Courier"; amount = "500 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Indonesia?"; a = "Yes, but Indian passport holders can get a visa-on-arrival at major entry points for USD 35 or apply for an e-visa online."}
            @{q = "Is Indonesia visa-on-arrival available for Indians?"; a = "Yes, visa-on-arrival is available at major airports including Bali, Jakarta, Surabaya, and Yogyakarta."}
            @{q = "How much does Indonesia visa cost?"; a = "VOA and e-visa cost IDR 500,000 (approximately INR 2,700). Business visa costs IDR 1,000,000 (INR 5,400)."}
            @{q = "How long can I stay in Indonesia on a tourist visa?"; a = "30 days, extendable once for an additional 30 days at immigration offices in Indonesia."}
            @{q = "Can I extend my Indonesia VOA?"; a = "Yes, you can extend your VOA once for 30 days at any immigration office in Indonesia."}
            @{q = "What documents are needed for Indonesia VOA?"; a = "Valid passport with 6 months validity and a return flight ticket."}
            @{q = "Can I work in Indonesia on a tourist visa?"; a = "No, working on a tourist visa or VOA is illegal. A work visa is required."}
            @{q = "Is Bali visa-free for Indian passport holders?"; a = "No, Indian citizens need a VOA or e-visa to enter Bali."}
            @{q = "What is the Indonesia e-visa process?"; a = "Apply online at the official immigration website, upload documents, pay the fee, and receive the visa by email."}
            @{q = "Do children need a separate visa?"; a = "Yes, every traveler including infants needs their own visa."}
            @{q = "How much bank balance is required?"; a = "There is no minimum balance requirement for VOA, but proof of funds may be requested."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "IDR 500,000"; current = "IDR 500,000 (no change)"}
            @{change = "Processing change"; previous = "3-5 working days (e-visa)"; current = "2-5 working days"}
            @{change = "Document change"; previous = "Physical photo"; current = "Digital photo upload"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.imigrasi.go.id' target='_blank'>Indonesia Directorate General of Immigration</a></li>"
    }


    italy = @{
        name = "Italy"; capital = "Rome"; currency = "EUR"; currencyName = "Euro"
        embassy = "Embassy of Italy, New Delhi"; embassyDetail = "Consulates in Mumbai, Kolkata, Bengaluru, Chennai, Hyderabad, Ahmedabad, Panaji, Pune"
        visaRequired = "Yes, Indian citizens need a Schengen visa for travel to Italy"
        mainVisaTypes = "Short Stay Schengen Visa, Long Stay Visa, Student Visa, Work Visa, Business Visa, Family Visa, Elective Residence Visa"
        procTime = "Short Stay: 15-30 days; Long Stay: 2-8 weeks; Student: 2-4 weeks; Work: 4-12 weeks"
        feeRange = "EUR 80 to EUR 250 depending on category"
        financialReq = "EUR 51-68 per day for tourism; bank statements for 3-6 months required"
        maxStay = "Schengen: 90 days in 180-day period; Long Stay: up to 1 year"
        bioMandatory = "Required for all visa applicants at VFS centers"
        insuranceReq = "Mandatory - travel insurance with minimum EUR 30,000 coverage for Schengen"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh, Kochi, Panaji"
        englishReq = "Not required for tourist visa; may be required for student visa (IELTS 5.5-6.5)"
        approvalRate = "Approximately 80-85% for Indian applicants with complete documentation"
        intro = "Italy is a popular Schengen destination for Indian tourists and students. Known for its rich history, art, cuisine, and fashion, Italy attracts thousands of Indian visitors annually."
        stats = "Italy welcomed over 2,50,000 Indian visitors in 2024. The Indian student population in Italy has grown to over 8,000, drawn by affordable education and art programs."
        needVisa = "Yes, Indian passport holders need a Schengen visa for short stays and a national visa for long stays in Italy."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Schengen Visa)"; detail = "15-30 days processing; 90 days in 180-day window"}
            @{can = "Travel for business meetings"; answer = "Yes (Schengen Business)"; detail = "Requires invitation from Italian company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires university admission and financial proof"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Subject to quota (Decreto Flussi) for non-EU workers"}
            @{can = "Transit without visa"; answer = "No"; detail = "Airport transit visa required for some connections"}
            @{can = "Live permanently"; answer = "Yes (Long-Term Residency)"; detail = "After 5 years of continuous legal residence"}
        )
        visaTypes = @(
            @{type = "Short Stay Schengen"; subclass = "C"; purpose = "Tourism, business, family visit"; maxStay = "90 days in 180-day period"; processing = "15-30 days"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
            @{type = "Student Visa"; subclass = "D"; purpose = "University studies"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "EUR 50"; feeInr = "4,500 to 4,700"}
            @{type = "Work Visa"; subclass = "D"; purpose = "Subordinate employment"; maxStay = "2 years (renewable)"; processing = "4-12 weeks"; feeLocal = "EUR 116"; feeInr = "10,400 to 10,700"}
            @{type = "Elective Residence Visa"; subclass = "D"; purpose = "Retirees with passive income"; maxStay = "1 year (renewable)"; processing = "4-12 weeks"; feeLocal = "EUR 116"; feeInr = "10,400 to 10,700"}
            @{type = "Self-Employment Visa"; subclass = "D"; purpose = "Freelance and business"; maxStay = "2 years (renewable)"; processing = "4-12 weeks"; feeLocal = "EUR 116"; feeInr = "10,400 to 10,700"}
            @{type = "Family Reunion Visa"; subclass = "D"; purpose = "Join family in Italy"; maxStay = "2 years (renewable)"; processing = "4-12 weeks"; feeLocal = "EUR 116"; feeInr = "10,400 to 10,700"}
        )
        additionalCosts = @(
            @{type = "Schengen Visa Fee"; amount = "7,200 to 7,500"; detail = "Standard fee for adults"}
            @{type = "VFS Service Charge"; amount = "2,500 to 3,000"; detail = "Mandatory service fee"}
            @{type = "Biometrics"; amount = "Included in service charge"; detail = "10 fingerprints at VFS"}
            @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory EUR 30,000 coverage"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in Italian/English"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Italy?"; a = "Yes, Indian passport holders need a Schengen visa for short stays and a national visa for study or work."}
            @{q = "How long does Italy Schengen visa processing take?"; a = "Standard processing is 15-30 days. It can extend to 45 days during peak season."}
            @{q = "What is the Italy visa fee for Indians?"; a = "Schengen visa fee is EUR 80 (INR 7,200). National visa fee is EUR 116 (INR 10,400)."}
            @{q = "Is biometric data required for Italy visa?"; a = "Yes, all applicants aged 12+ must provide fingerprints at the VFS center."}
            @{q = "Is travel insurance mandatory for Italy?"; a = "Yes, travel insurance with minimum EUR 30,000 coverage is mandatory for Schengen applications."}
            @{q = "How long can I stay in Italy on a Schengen visa?"; a = "Maximum 90 days within any 180-day period."}
            @{q = "What documents are needed for Italy tourist visa?"; a = "Valid passport, application form, photos, flight bookings, hotel reservations, travel insurance, bank statements, and employment proof."}
            @{q = "Can I work on an Italy Schengen visa?"; a = "No, working is not permitted on a Schengen visa. A work visa is required."}
            @{q = "How much bank balance is needed for Italy tourist visa?"; a = "You need EUR 51-68 per day. For a 10-day trip, approximately INR 50,000-60,000."}
            @{q = "What is the Italy student visa process?"; a = "Apply after receiving university admission. Processing takes 2-4 weeks. Pre-enrollment via Universitaly is required."}
            @{q = "Can I visit other Schengen countries with Italy visa?"; a = "Yes, an Italy-issued Schengen visa allows travel to all 27 Schengen countries."}
            @{q = "What is the Italy Elective Residence Visa?"; a = "For non-EU citizens with passive income who want to live in Italy without working. Requires proof of substantial income."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "EUR 80"; current = "EUR 80 (no change)"}
            @{change = "Processing change"; previous = "15-45 days"; current = "15-30 days"}
            @{change = "Document change"; previous = "Paper applications"; current = "Digital application via VFS portal"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://vistoperitalia.esteri.it' target='_blank'>Italy Visa Official Portal</a></li>"
    }

    japan = @{
        name = "Japan"; capital = "Tokyo"; currency = "JPY"; currencyName = "Japanese Yen"
        embassy = "Embassy of Japan, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Ahmedabad, Hyderabad"
        visaRequired = "Yes, Indian citizens need a visa for all travel to Japan"
        mainVisaTypes = "Tourist Visa, Business Visa, Student Visa, Work Visa, Working Holiday Visa, Transit Visa"
        procTime = "Tourist: 5-7 working days; Business: 5-7 working days; Student: 1-2 weeks; Work: 2-4 weeks"
        feeRange = "INR 500 to INR 3,000 depending on visa type"
        financialReq = "Bank statements for 3-6 months; minimum INR 1,00,000 recommended for tourists"
        maxStay = "Tourist: 15-30 days; Student: course duration; Work: 1-5 years"
        bioMandatory = "Not currently required for short-stay; required for work and long-stay visas"
        insuranceReq = "Not mandatory but strongly recommended"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Ahmedabad, Chandigarh, Pune, Kochi, Goa"
        englishReq = "Not required for tourist/business; may be needed for student visas (JLPT for Japanese programs)"
        approvalRate = "Approximately 80-85% for Indian applicants with complete documentation"
        intro = "Japan visa process for Indian citizens is straightforward but requires careful document preparation. Japan is a popular destination for Indian tourists interested in its unique culture, technology, and natural beauty."
        stats = "Japan welcomed over 2,00,000 Indian visitors in 2024, a record high. The Indian community in Japan has grown to 40,000, with many professionals in IT and finance sectors."
        needVisa = "Yes, Indian passport holders must obtain a visa before traveling to Japan for any purpose. There is no visa-on-arrival or e-visa facility for Indian citizens."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Tourist Visa)"; detail = "5-7 working days; single or multiple entry"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires letter from Japanese company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires admission from Japanese institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires Certificate of Eligibility (COE)"}
            @{can = "Transit without visa"; answer = "Limited"; detail = "Sameday transit if continuing to/from same airport"}
            @{can = "Live permanently"; answer = "Yes (PR)"; detail = "After 10 years of continuous residence"}
        )
        visaTypes = @(
            @{type = "Tourist Visa (Single)"; subclass = "S"; purpose = "Tourism and sightseeing"; maxStay = "15-30 days"; processing = "5-7 working days"; feeLocal = "JPY 3,000"; feeInr = "1,700 to 1,900"}
            @{type = "Tourist Visa (Multiple)"; subclass = "M"; purpose = "Multiple tourism visits"; maxStay = "15-30 days per visit"; processing = "5-7 working days"; feeLocal = "JPY 6,000"; feeInr = "3,400 to 3,600"}
            @{type = "Business Visa"; subclass = "S/M"; purpose = "Business meetings, conferences"; maxStay = "15-90 days"; processing = "5-7 working days"; feeLocal = "JPY 3,000"; feeInr = "1,700 to 1,900"}
            @{type = "Student Visa"; subclass = "College"; purpose = "Study at Japanese institution"; maxStay = "Course duration"; processing = "1-2 weeks"; feeLocal = "JPY 3,000"; feeInr = "1,700 to 1,900"}
            @{type = "Work Visa (Engineer)"; subclass = "Engineer"; purpose = "Engineering/IT employment"; maxStay = "1-5 years"; processing = "2-4 weeks"; feeLocal = "JPY 3,000"; feeInr = "1,700 to 1,900"}
            @{type = "Transit Visa"; subclass = "T"; purpose = "Transit through Japan"; maxStay = "15 days"; processing = "3-5 working days"; feeLocal = "JPY 700"; feeInr = "400 to 500"}
        )
        additionalCosts = @(
            @{type = "Visa Fee"; amount = "400 to 3,600"; detail = "Based on visa type and number of entries"}
            @{type = "VFS Service Charge"; amount = "1,200 to 1,500"; detail = "Paid at application center"}
            @{type = "Certificate of Eligibility"; amount = "0"; detail = "No fee but processing takes 1-3 months (work/study)"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if not in English/Japanese"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Japan?"; a = "Yes, Indian passport holders need a visa for all travel to Japan. There is no visa-on-arrival or visa waiver for Indian citizens."}
            @{q = "How long does Japan visa processing take?"; a = "Standard processing is 5-7 working days from submission at the VFS center."}
            @{q = "What is the Japan visa fee for Indians?"; a = "Single-entry visa is JPY 3,000 (INR 1,700). Multiple-entry visa is JPY 6,000 (INR 3,400)."}
            @{q = "How long is a Japan tourist visa valid?"; a = "Single-entry visas are valid for 3 months. Multiple-entry visas can be valid for 1-5 years."}
            @{q = "What documents are needed for Japan tourist visa?"; a = "Valid passport, application form, photo, flight itinerary, hotel bookings, bank statements, income tax returns, employment certificate."}
            @{q = "Is biometric data required for Japan visa?"; a = "Currently not required for short-stay visas. Fingerprints are taken on arrival in Japan for all visitors."}
            @{q = "Can I work in Japan on a tourist visa?"; a = "No, working on a tourist visa is illegal. A work visa with Certificate of Eligibility is required."}
            @{q = "How long can I stay in Japan on a tourist visa?"; a = "Typically 15-30 days. Longer stays may be granted based on itinerary."}
            @{q = "What is the minimum bank balance for Japan visa?"; a = "A minimum of INR 1,00,000-2,00,000 in bank statements for the last 3-6 months is recommended."}
            @{q = "Is travel insurance required for Japan?"; a = "Not mandatory but strongly recommended given the high cost of medical care in Japan."}
            @{q = "Can I get a multiple-entry Japan visa?"; a = "Yes, if you have a travel history to Japan or other developed countries, or sufficient financial standing."}
            @{q = "What is the Japan working holiday visa?"; a = "Available for Indian citizens aged 18-30 under a bilateral agreement. Allows work and travel for up to 1 year."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "JPY 3,000"; current = "JPY 3,000 (no change)"}
            @{change = "Processing change"; previous = "5-7 working days"; current = "5-7 working days"}
            @{change = "Document change"; previous = "Paper application"; current = "Online application form now accepted"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.mofa.go.jp/j-visa/' target='_blank'>Ministry of Foreign Affairs of Japan</a></li>"
    }


    malaysia = @{
        name = "Malaysia"; capital = "Kuala Lumpur"; currency = "MYR"; currencyName = "Malaysian Ringgit"
        embassy = "Embassy of Malaysia, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru"
        visaRequired = "Yes, Indian citizens need a visa but can apply for e-visa or get visa-on-arrival"
        mainVisaTypes = "E-Visa, Visa-on-Arrival, Business Visa, Student Visa, Work Visa, Malaysia My Second Home (MM2H)"
        procTime = "E-Visa: 24-48 hours; VOA: 15-20 minutes; Business: 3-5 working days; Student: 2-4 weeks"
        feeRange = "MYR 100 to MYR 500 depending on category"
        financialReq = "Minimal for tourist e-visa; bank statements for 3 months recommended"
        maxStay = "E-Visa: 30 days; VOA: 15 days; Student: course duration; Work: 1-5 years"
        bioMandatory = "Not required for e-visa; required for long-stay visas"
        insuranceReq = "Not mandatory but recommended"
        appCenters = "Online e-visa portal; Malaysian missions in New Delhi, Mumbai, Chennai; VOA at select entry points"
        englishReq = "Not required for any visa category"
        approvalRate = "Very high - estimated 95% for e-visa applications"
        intro = "Malaysia offers convenient visa options for Indian travelers including a straightforward e-visa system. Known for its diverse culture, modern cities, and beautiful islands, Malaysia is a popular destination for Indian tourists."
        stats = "Malaysia welcomed over 2,00,000 Indian tourists in 2024. The Indian diaspora in Malaysia is approximately 2 million, making it one of the largest Indian communities in Southeast Asia."
        needVisa = "Yes, Indian passport holders need a visa for Malaysia. However, the e-visa process is quick and can be done entirely online."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (E-Visa)"; detail = "24-48 hours processing; 30 days stay"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires invitation from Malaysian company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires admission from Malaysian institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires employment pass from Immigration"}
            @{can = "Transit without visa"; answer = "Yes"; detail = "120 hours transit without visa for certain nationals"}
            @{can = "Live permanently"; answer = "Yes (MM2H/PR)"; detail = "MM2H program or PR after 5+ years residence"}
        )
        visaTypes = @(
            @{type = "E-Visa (Tourist)"; subclass = "eVisa"; purpose = "Tourism and social visits"; maxStay = "30 days"; processing = "24-48 hours"; feeLocal = "MYR 110"; feeInr = "1,900 to 2,100"}
            @{type = "Visa-on-Arrival"; subclass = "VOA"; purpose = "Tourism (selected entry points)"; maxStay = "15 days"; processing = "15-20 minutes"; feeLocal = "MYR 200"; feeInr = "3,500 to 3,700"}
            @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings, conferences"; maxStay = "30-90 days"; processing = "3-5 working days"; feeLocal = "MYR 200"; feeInr = "3,500 to 3,700"}
            @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time academic study"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "MYR 360"; feeInr = "6,200 to 6,500"}
            @{type = "Work Visa (Employment Pass)"; subclass = "EP"; purpose = "Professional employment"; maxStay = "1-5 years"; processing = "4-8 weeks"; feeLocal = "MYR 500"; feeInr = "8,600 to 9,000"}
        )
        additionalCosts = @(
            @{type = "E-Visa Fee"; amount = "1,900 to 2,100"; detail = "Paid online during application"}
            @{type = "VOA Fee"; amount = "3,500 to 3,700"; detail = "Paid in cash at entry point"}
            @{type = "Service Charge"; amount = "200 to 500"; detail = "For embassy applications"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if needed"}
            @{type = "Courier"; amount = "500 to 1,000"; detail = "Passport return for embassy applications"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Malaysia?"; a = "Yes, Indian passport holders need a visa for Malaysia. The e-visa is the most convenient option, processed in 24-48 hours."}
            @{q = "How much does Malaysia e-visa cost?"; a = "The Malaysia e-visa costs MYR 110 (approximately INR 2,000)."}
            @{q = "How long can I stay in Malaysia on an e-visa?"; a = "The e-visa allows a maximum stay of 30 days with single entry."}
            @{q = "Can I get a visa-on-arrival in Malaysia?"; a = "Yes, visa-on-arrival is available at certain entry points for Indian citizens, but it is more expensive and allows only 15 days stay."}
            @{q = "What documents are needed for Malaysia e-visa?"; a = "Valid passport with 6 months validity, digital passport photo, flight itinerary, hotel booking, and bank statement."}
            @{q = "Is Malaysia visa-free for Indian passport holders?"; a = "No, but the e-visa process is quick and entirely online."}
            @{q = "Can I work in Malaysia on a tourist visa?"; a = "No, working on a tourist visa is illegal. An employment pass is required."}
            @{q = "What is the Malaysia My Second Home (MM2H) program?"; a = "A long-stay program for foreign nationals, including Indians, with financial requirements of MYR 1,000,000+ in fixed deposits."}
            @{q = "Do children need a separate visa?"; a = "Yes, every traveler including infants needs their own e-visa."}
            @{q = "Is transit without visa allowed in Malaysia?"; a = "Yes, transit without visa is allowed for up to 120 hours at KLIA and other major airports."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "MYR 100"; current = "MYR 110 (e-visa)"}
            @{change = "Processing change"; previous = "24-72 hours"; current = "24-48 hours (faster)"}
            @{change = "Document change"; previous = "Physical photo upload"; current = "Digital photo only"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://malaysiavisa.imi.gov.my' target='_blank'>Malaysia Immigration E-Visa Portal</a></li>"
    }

    mexico = @{
        name = "Mexico"; capital = "Mexico City"; currency = "MXN"; currencyName = "Mexican Peso"
        embassy = "Embassy of Mexico, New Delhi"; embassyDetail = "Consulates in Mumbai, Bengaluru"
        visaRequired = "Yes, Indian citizens need a visa for travel to Mexico"
        mainVisaTypes = "Tourist Visa, Business Visa, Student Visa, Work Visa, Transit Visa, Temporary Resident Visa"
        procTime = "Tourist: 5-15 working days; Business: 5-15 working days; Temporary: 4-8 weeks"
        feeRange = "USD 48 to USD 200 depending on category"
        financialReq = "Bank statements for 3 months; minimum INR 1,00,000 recommended for tourists"
        maxStay = "Tourist: 180 days; Business: 180 days; Temporary: 1-4 years"
        bioMandatory = "Required for all visa categories at application centers"
        insuranceReq = "Not mandatory but strongly recommended"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh"
        englishReq = "Not required for tourist/business visas"
        approvalRate = "Approximately 75-80% for Indian applicants with complete documentation"
        intro = "Mexico requires Indian citizens to obtain a visa before traveling for tourism, business, or other purposes. Known for its ancient ruins, vibrant culture, and beautiful beaches, Mexico is an emerging destination for Indian travelers."
        stats = "Mexico received over 60,000 Indian visitors in 2024, growing 20% year-on-year. The Indian community in Mexico is around 8,000, with professionals in IT, automotive, and pharmaceutical industries."
        needVisa = "Yes, Indian passport holders must obtain a visa before traveling to Mexico. However, a valid US visa may allow visa-free entry to Mexico."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Tourist Visa)"; detail = "5-15 working days; up to 180 days stay"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires invitation from Mexican company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires admission from Mexican institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires job offer and labor market test"}
            @{can = "Transit without visa"; answer = "No"; detail = "Transit visa required for connecting flights"}
            @{can = "Live permanently"; answer = "Yes (Permanent Residency)"; detail = "After 4 years of temporary residency"}
        )
        visaTypes = @(
            @{type = "Tourist Visa"; subclass = "TV"; purpose = "Tourism, leisure, family visits"; maxStay = "180 days"; processing = "5-15 working days"; feeLocal = "USD 48"; feeInr = "4,000 to 4,200"}
            @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings, conferences"; maxStay = "180 days"; processing = "5-15 working days"; feeLocal = "USD 48"; feeInr = "4,000 to 4,200"}
            @{type = "Student Visa"; subclass = "SV"; purpose = "Academic study programs"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "USD 48"; feeInr = "4,000 to 4,200"}
            @{type = "Work Visa"; subclass = "WV"; purpose = "Employment in Mexico"; maxStay = "1-4 years"; processing = "4-8 weeks"; feeLocal = "USD 150"; feeInr = "12,500 to 13,000"}
            @{type = "Temporary Resident Visa"; subclass = "TR"; purpose = "Retirement, investment, non-work activities"; maxStay = "1-4 years"; processing = "4-8 weeks"; feeLocal = "USD 200"; feeInr = "16,600 to 17,200"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "4,000 to 17,200"; detail = "Based on visa type"}
            @{type = "VFS Service Charge"; amount = "1,200 to 1,500"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "800 to 1,200"; detail = "Included in service fee"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in Spanish"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Mexico?"; a = "Yes, Indian passport holders need a visa for Mexico. However, holders of a valid US visa may enter Mexico visa-free."}
            @{q = "How long does Mexico visa processing take?"; a = "Processing takes 5-15 working days from the date of application submission."}
            @{q = "What is the Mexico visa fee for Indians?"; a = "The tourist visa fee is USD 48 (approximately INR 4,000) plus VFS service charges."}
            @{q = "Can I enter Mexico with a US visa?"; a = "Yes, Indian citizens with a valid US visa can enter Mexico visa-free for tourism or business for up to 180 days."}
            @{q = "What documents are needed for Mexico tourist visa?"; a = "Valid passport, application form, photos, flight bookings, hotel reservations, bank statements, and employment proof."}
            @{q = "How long can I stay in Mexico on a tourist visa?"; a = "The tourist visa allows a maximum stay of 180 days, granted at the discretion of the immigration officer."}
            @{q = "Is biometric data required for Mexico visa?"; a = "Yes, all applicants need to provide fingerprints and a photograph at the application center."}
            @{q = "Can I work in Mexico on a tourist visa?"; a = "No, working on a tourist visa is not permitted. A work visa is required."}
            @{q = "How much bank balance is needed for Mexico visa?"; a = "A minimum balance of INR 1,00,000-2,00,000 with 3 months bank statements is recommended."}
            @{q = "Is travel insurance required for Mexico?"; a = "Not mandatory but strongly recommended for medical emergencies."}
            @{q = "Can I extend my stay in Mexico?"; a = "Extensions are possible but must be applied for at the Instituto Nacional de Migracion before your stay expires."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "USD 48"; current = "USD 48 (no change)"}
            @{change = "Processing change"; previous = "7-15 working days"; current = "5-15 working days"}
            @{change = "Document change"; previous = "Manual form"; current = "Digital application form"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.gob.mx/sre' target='_blank'>Mexico Secretaria de Relaciones Exteriores</a></li>"
    }


    nepal = @{
        name = "Nepal"; capital = "Kathmandu"; currency = "NPR"; currencyName = "Nepalese Rupee"
        embassy = "Embassy of Nepal, New Delhi"; embassyDetail = "Consulate in Kolkata; visa-on-arrival at Kathmandu airport"
        visaRequired = "No, Indian citizens do not need a visa for Nepal (visa-free entry)"
        mainVisaTypes = "Not applicable for Indians (visa-free); Tourist Visa (for other nationals), Trekking Permit, Work Permit, Study Permit"
        procTime = "Not applicable for Indian citizens - visa-free entry on arrival"
        feeRange = "Free for Indian citizens"
        financialReq = "No financial requirements for Indian citizens"
        maxStay = "Unlimited for Indian citizens (right to live and work)"
        bioMandatory = "Not required for Indian citizens"
        insuranceReq = "Not required but recommended"
        appCenters = "Not required for Indians; visa-on-arrival at all entry points"
        englishReq = "Not required"
        approvalRate = "100% for Indian citizens - no visa needed"
        intro = "Nepal is one of the few countries where Indian citizens can travel visa-free and stay indefinitely. Indian citizens have similar rights to Nepali citizens under the bilateral Treaty of Peace and Friendship."
        stats = "Nepal hosts millions of Indian tourists annually, with over 8 million Indian visitors in 2024. Nepal is the top international destination for Indian travelers due to its proximity and cultural ties."
        needVisa = "No. Indian citizens do not need a visa to enter Nepal. An Indian passport or voter ID is sufficient for entry."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "No visa needed"; detail = "Visa-free entry for Indian citizens"}
            @{can = "Travel for business meetings"; answer = "No visa needed"; detail = "Indian citizens can freely travel for business"}
            @{can = "Study"; answer = "No visa needed"; detail = "Indian students can study in Nepal without visa"}
            @{can = "Work"; answer = "No visa needed"; detail = "Indians can work in Nepal without a work visa"}
            @{can = "Transit without visa"; answer = "No visa needed"; detail = "Indians can freely transit through Nepal"}
            @{can = "Live permanently"; answer = "No visa needed"; detail = "Indian citizens can live in Nepal indefinitely"}
        )
        visaTypes = @(
            @{type = "Visa-Free Entry (Indians)"; subclass = "N/A"; purpose = "Tourism, business, work, study, residence"; maxStay = "Unlimited"; processing = "On arrival"; feeLocal = "NPR 0"; feeInr = "0"}
            @{type = "Tourist Visa (Other Nationals)"; subclass = "TV"; purpose = "Tourism for non-Indian passport holders"; maxStay = "150 days per year"; processing = "15-30 minutes"; feeLocal = "USD 30"; feeInr = "2,500 to 2,700"}
            @{type = "Trekking Permit"; subclass = "TIMs"; purpose = "Trekking in restricted areas"; maxStay = "Permit duration"; processing = "1-2 days"; feeLocal = "NPR 2,000"; feeInr = "1,200 to 1,300"}
            @{type = "Work Permit"; subclass = "WP"; purpose = "Foreign nationals working in Nepal"; maxStay = "1 year (renewable)"; processing = "2-4 weeks"; feeLocal = "USD 200"; feeInr = "16,600 to 17,200"}
        )
        additionalCosts = @(
            @{type = "Visa Fee (Indians)"; amount = "0"; detail = "No visa fee for Indian citizens"}
            @{type = "Trekkers Information Management Fee"; amount = "1,200 to 1,300"; detail = "For trekking in Nepal (TIMs card)"}
            @{type = "Entry Fee (Passport check)"; amount = "200 to 500"; detail = "For non-Indians at entry points"}
            @{type = "Extension Fee"; amount = "0"; detail = "No fee for Indians"}
            @{type = "Courier"; amount = "0"; detail = "Not applicable for Indians"}
        )
        faqs = @(
            @{q = "Do Indian citizens need a visa for Nepal?"; a = "No, Indian citizens do not need a visa to enter Nepal. You can enter with a valid Indian passport or voter ID card."}
            @{q = "How long can Indians stay in Nepal?"; a = "Indian citizens can stay in Nepal indefinitely. There is no restriction on the duration of stay."}
            @{q = "Can Indians work in Nepal?"; a = "Yes, Indians can work in Nepal without a work visa or work permit."}
            @{q = "What documents do Indians need to enter Nepal?"; a = "A valid Indian passport OR a government-issued voter ID card with photograph."}
            @{q = "Can Indians own property in Nepal?"; a = "There are some restrictions, but generally Indian citizens have favorable rights under the bilateral treaty."}
            @{q = "Is there any fee for Indians entering Nepal?"; a = "No, entry is completely free for Indian citizens."}
            @{q = "Can Indians study in Nepal without a visa?"; a = "Yes, Indian students can study in Nepal without any visa or permit."}
            @{q = "Do Indians need a passport to enter Nepal?"; a = "An Indian passport is recommended, but a voter ID card is also accepted for entry."}
            @{q = "Can I drive my Indian vehicle to Nepal?"; a = "Yes, with proper documentation including registration, insurance, and a carnet de passage."}
            @{q = "Is there a limit on how many times I can enter Nepal?"; a = "No, Indian citizens can enter Nepal any number of times without restriction."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "Free"; current = "Free (no change for Indians)"}
            @{change = "Processing change"; previous = "On arrival"; current = "On arrival (no change)"}
            @{change = "Document change"; previous = "Passport or voter ID"; current = "Passport or voter ID (no change)"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.nepalimmigration.gov.np' target='_blank'>Nepal Department of Immigration</a></li>"
    }

    netherlands = @{
        name = "Netherlands"; capital = "Amsterdam"; currency = "EUR"; currencyName = "Euro"
        embassy = "Embassy of the Netherlands, New Delhi"; embassyDetail = "Consulates in Mumbai, Bengaluru, Ahmedabad, Chennai, Hyderabad, Kolkata"
        visaRequired = "Yes, Indian citizens need a Schengen visa for travel to the Netherlands"
        mainVisaTypes = "Short Stay Schengen Visa, Long Stay Visa (MVV), Student Visa, Work Visa, Business Visa, Family Reunion Visa"
        procTime = "Short Stay: 15-30 days; Long Stay (MVV): 2-4 weeks; Student: 2-4 weeks"
        feeRange = "EUR 80 to EUR 210 depending on category"
        financialReq = "EUR 55 per day for tourism; students: EUR 13,000+ per year for living expenses"
        maxStay = "Schengen: 90 days in 180-day period; MVV: 1 year (renewable)"
        bioMandatory = "Required for all visa applicants at VFS centers"
        insuranceReq = "Mandatory - travel insurance with minimum EUR 30,000 coverage for Schengen"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh, Kochi"
        englishReq = "Not required for tourist visa; IELTS 6.0-6.5 for student visa; A2-B1 Dutch for integration"
        approvalRate = "Approximately 80-85% for Indian applicants with complete documentation"
        intro = "The Netherlands is a popular Schengen destination for Indian tourists and students. The country offers excellent education, a strong economy, and a high quality of life."
        stats = "The Netherlands welcomed over 1,50,000 Indian visitors in 2024. Over 5,000 Indian students are enrolled in Dutch universities, with numbers growing due to English-taught programs."
        needVisa = "Yes, Indian passport holders need a Schengen visa for short stays and a long-stay visa (MVV) for stays exceeding 90 days."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Schengen Visa)"; detail = "15-30 days processing; 90 days in 180-day period"}
            @{can = "Travel for business meetings"; answer = "Yes (Schengen Business)"; detail = "Requires invitation from Dutch company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires university admission; orientation year after"}
            @{can = "Work"; answer = "Yes (GVVA/Work Visa)"; detail = "Requires work permit or as highly skilled migrant"}
            @{can = "Transit without visa"; answer = "No"; detail = "Airport transit visa may be required"}
            @{can = "Live permanently"; answer = "Yes (PR)"; detail = "After 5 years of continuous legal residence"}
        )
        visaTypes = @(
            @{type = "Short Stay Schengen"; subclass = "C"; purpose = "Tourism, business, family visit"; maxStay = "90 days in 180-day period"; processing = "15-30 days"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
            @{type = "MVV (Long Stay)"; subclass = "MVV"; purpose = "Stay >90 days"; maxStay = "1 year (renewable)"; processing = "2-4 weeks"; feeLocal = "EUR 210"; feeInr = "18,900 to 19,200"}
            @{type = "Student Visa"; subclass = "MVV+VVR"; purpose = "University studies"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "EUR 210"; feeInr = "18,900 to 19,200"}
            @{type = "Highly Skilled Migrant"; subclass = "GVVA"; purpose = "Skilled employment"; maxStay = "1-5 years"; processing = "2-4 weeks"; feeLocal = "EUR 210"; feeInr = "18,900 to 19,200"}
            @{type = "Work Visa"; subclass = "GVVA"; purpose = "Regular employment"; maxStay = "1-3 years"; processing = "4-8 weeks"; feeLocal = "EUR 210"; feeInr = "18,900 to 19,200"}
            @{type = "Family Reunion"; subclass = "MVV"; purpose = "Join family in Netherlands"; maxStay = "1 year (renewable)"; processing = "2-4 weeks"; feeLocal = "EUR 210"; feeInr = "18,900 to 19,200"}
        )
        additionalCosts = @(
            @{type = "Schengen Visa Fee"; amount = "7,200 to 7,500"; detail = "For short stay applications"}
            @{type = "MVV Fee"; amount = "18,900 to 19,200"; detail = "For long stay applications"}
            @{type = "VFS Service Charge"; amount = "2,500 to 3,000"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "Included in service charge"; detail = "Required at VFS"}
            @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory for Schengen"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in English/Dutch"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for the Netherlands?"; a = "Yes, Indian passport holders need a Schengen visa for short stays and an MVV for long stays."}
            @{q = "How long does Netherlands Schengen visa processing take?"; a = "Processing takes 15-30 days. Maximum 45 days in exceptional cases."}
            @{q = "What is the Netherlands visa fee for Indians?"; a = "Schengen visa is EUR 80 (INR 7,200). MVV is EUR 210 (INR 18,900)."}
            @{q = "Is biometric data required for Netherlands visa?"; a = "Yes, all applicants aged 12+ must provide fingerprints at the VFS center."}
            @{q = "Is travel insurance mandatory for Netherlands?"; a = "Yes, travel insurance with minimum EUR 30,000 coverage is mandatory for Schengen."}
            @{q = "How long can I stay in the Netherlands on a Schengen visa?"; a = "Maximum 90 days within any 180-day period."}
            @{q = "What documents are needed for Netherlands tourist visa?"; a = "Valid passport, application form, photos, flight bookings, hotel reservations, travel insurance, bank statements, and employment proof."}
            @{q = "Can I work in the Netherlands on a Schengen visa?"; a = "No, working is not permitted. A Highly Skilled Migrant or work visa is needed."}
            @{q = "How much bank balance is needed for Netherlands tourist visa?"; a = "You need EUR 55 per day. For a 10-day trip, approximately INR 50,000."}
            @{q = "What is the orientation year visa for graduates?"; a = "Indians who completed a master's or PhD in the Netherlands can get a 1-year orientation visa to search for work."}
            @{q = "Can I get PR after studying in the Netherlands?"; a = "After 5 years of continuous residence, you may apply for permanent residency."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "EUR 80"; current = "EUR 80 (no change)"}
            @{change = "Processing change"; previous = "15-45 days"; current = "15-30 days"}
            @{change = "Document change"; previous = "Paper form"; current = "Online application required"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.netherlandsworldwide.nl/visas' target='_blank'>Netherlands Worldwide Visa Information</a></li>"
    }


    newzealand = @{
        name = "New Zealand"; capital = "Wellington"; currency = "NZD"; currencyName = "New Zealand Dollar"
        embassy = "High Commission of New Zealand, New Delhi"; embassyDetail = "Consulate in Mumbai"
        visaRequired = "Yes, Indian citizens need a visa for all travel to New Zealand"
        mainVisaTypes = "Visitor Visa, Student Visa, Work Visa, Working Holiday Visa, Business Visitor Visa, Resident Visa"
        procTime = "Visitor: 25-40 days; Student: 6-8 weeks; Work: 6-12 weeks"
        feeRange = "NZD 165 to NZD 4,500 depending on category"
        financialReq = "NZD 1,000 per month for tourism; students: NZD 20,000 per year + tuition"
        maxStay = "Visitor: 3-9 months; Student: course + 3 years post-study work; Work: 1-3 years"
        bioMandatory = "Required for all visa applicants at VAC centers"
        insuranceReq = "Mandatory for international students; strongly recommended for all"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh"
        englishReq = "IELTS 6.0-6.5 (student); no test for visitor visa"
        approvalRate = "Approximately 75-85% for Indian applicants with complete documentation"
        intro = "New Zealand is a popular destination for Indian students and tourists. The country offers high-quality education, stunning landscapes, and a welcoming immigration system with clear pathways to residency."
        stats = "New Zealand welcomed over 70,000 Indian visitors in 2024. The Indian student population in NZ exceeds 20,000, making India the second-largest source of international students. The Indian diaspora numbers around 2,40,000."
        needVisa = "Yes, Indian passport holders need a visa for all travel purposes to New Zealand. There is no visa-waiver or e-visa for Indian citizens."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Visitor Visa)"; detail = "25-40 days processing; up to 9 months stay"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visitor)"; detail = "Requires invitation from NZ company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires Offer of Place from NZ institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires job offer and skills assessment"}
            @{can = "Transit without visa"; answer = "No"; detail = "Transit visa required for connecting flights"}
            @{can = "Live permanently"; answer = "Yes (Resident Visa)"; detail = "Via Skilled Migrant, Straight to Residence, or other pathways"}
        )
        visaTypes = @(
            @{type = "Visitor Visa"; subclass = "VV"; purpose = "Tourism, family visits, business"; maxStay = "3-9 months"; processing = "25-40 days"; feeLocal = "NZD 165"; feeInr = "7,700 to 8,000"}
            @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time academic study"; maxStay = "Course + 3 years PSWV"; processing = "6-8 weeks"; feeLocal = "NZD 330"; feeInr = "15,400 to 15,700"}
            @{type = "Post-Study Work Visa"; subclass = "PSWV"; purpose = "Work after study"; maxStay = "1-3 years"; processing = "4-8 weeks"; feeLocal = "NZD 330"; feeInr = "15,400 to 15,700"}
            @{type = "Work Visa (Accredited Employer)"; subclass = "AEWV"; purpose = "Employment with accredited employer"; maxStay = "1-3 years"; processing = "6-12 weeks"; feeLocal = "NZD 370"; feeInr = "17,200 to 17,600"}
            @{type = "Working Holiday Visa"; subclass = "WHV"; purpose = "Travel and work for youth"; maxStay = "12 months"; processing = "4-8 weeks"; feeLocal = "NZD 165"; feeInr = "7,700 to 8,000"}
            @{type = "Skilled Migrant Resident"; subclass = "SMC"; purpose = "Permanent residency for skilled workers"; maxStay = "Indefinite"; processing = "8-12 months"; feeLocal = "NZD 3,290"; feeInr = "1,53,000 to 1,55,000"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "7,700 to 1,55,000"; detail = "Depends on visa type"}
            @{type = "VFS Service Charge"; amount = "1,200 to 1,500"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "Required at VAC"}
            @{type = "Medical Examination"; amount = "5,000 to 8,000"; detail = "Required for long-stay visas"}
            @{type = "English Test (IELTS)"; amount = "16,000 to 18,000"; detail = "Required for students and migrants"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in English"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for New Zealand?"; a = "Yes, Indian passport holders need a visa for all travel purposes to New Zealand."}
            @{q = "How long does New Zealand visitor visa processing take?"; a = "Processing takes 25-40 days. Applying well in advance is recommended."}
            @{q = "What is the New Zealand visa fee for Indians?"; a = "Visitor visa is NZD 165 (INR 7,700). Student visa is NZD 330 (INR 15,400)."}
            @{q = "Is biometric data required for New Zealand visa?"; a = "Yes, all applicants must provide biometrics (fingerprints and photograph) at the VAC."}
            @{q = "What is the IELTS requirement for New Zealand student visa?"; a = "IELTS 6.0 overall with no band below 5.5 is typically required for undergraduate programs."}
            @{q = "Can I work in New Zealand on a visitor visa?"; a = "No, working on a visitor visa is not permitted. A work visa is required."}
            @{q = "How long can I stay in New Zealand on a visitor visa?"; a = "Typically 3-9 months. The exact duration is determined by Immigration New Zealand."}
            @{q = "How much bank balance is required for New Zealand visitor visa?"; a = "NZD 1,000 per month of stay, evidenced by bank statements for the last 3-6 months."}
            @{q = "Is travel insurance required for New Zealand?"; a = "Not mandatory for visitor visa but strongly recommended. Mandatory for international students."}
            @{q = "What is the post-study work visa in New Zealand?"; a = "After completing studies, graduates can work for 1-3 years depending on qualification level."}
            @{q = "Can I apply for New Zealand PR from India?"; a = "Yes, through the Skilled Migrant Category or Straight to Residence visa for qualified professionals."}
            @{q = "What is the Working Holiday Visa for Indians?"; a = "Open to Indian citizens aged 18-30 for up to 12 months of work and travel."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "NZD 165"; current = "NZD 165 (visitor visa no change)"}
            @{change = "Processing change"; previous = "30-50 days"; current = "25-40 days (improved)"}
            @{change = "Document change"; previous = "Paper applications"; current = "Digital applications required"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.immigration.govt.nz' target='_blank'>Immigration New Zealand</a></li>"
    }

    philippines = @{
        name = "Philippines"; capital = "Manila"; currency = "PHP"; currencyName = "Philippine Peso"
        embassy = "Embassy of the Philippines, New Delhi"; embassyDetail = "Consulate in Chennai, Kolkata, Mumbai"
        visaRequired = "Yes, Indian citizens need a visa for travel to the Philippines"
        mainVisaTypes = "Tourist Visa, Business Visa, Student Visa, Work Visa, 9A Temporary Visitor Visa, 13A Permanent Resident Visa"
        procTime = "Tourist: 5-10 working days; Business: 5-10 working days; Work: 4-8 weeks"
        feeRange = "USD 25 to USD 500 depending on category"
        financialReq = "Bank statements for 3 months; minimum INR 50,000 recommended for tourists"
        maxStay = "Tourist: 30-59 days; Student: course duration; Work: 1-3 years"
        bioMandatory = "Required for visa extension and long-stay visas"
        insuranceReq = "Not mandatory but recommended"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Ahmedabad, Chandigarh"
        englishReq = "Not required; English is an official language of the Philippines"
        approvalRate = "Approximately 85-90% for Indian applicants with complete documentation"
        intro = "The Philippines offers tropical beaches, English-speaking environment, and growing economic opportunities for Indian travelers and workers. Indian citizens need a visa before traveling to the Philippines."
        stats = "The Philippines welcomed over 80,000 Indian visitors in 2024. The Indian community in the Philippines is around 60,000, with many professionals in IT, finance, and business process outsourcing."
        needVisa = "Yes, Indian passport holders must obtain a visa before traveling to the Philippines for any purpose."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Tourist Visa)"; detail = "5-10 working days; up to 59 days stay"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires invitation from Philippine company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires admission from Philippine institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires Alien Employment Permit"}
            @{can = "Transit without visa"; answer = "No"; detail = "Transit visa required for connecting flights"}
            @{can = "Live permanently"; answer = "Yes (13A Visa)"; detail = "Marriage to Filipino citizen or long-term residency"}
        )
        visaTypes = @(
            @{type = "Tourist Visa"; subclass = "9A"; purpose = "Tourism, leisure, family visits"; maxStay = "30-59 days"; processing = "5-10 working days"; feeLocal = "PHP 3,000"; feeInr = "4,300 to 4,600"}
            @{type = "Business Visa"; subclass = "9A"; purpose = "Business meetings, conferences"; maxStay = "30-59 days"; processing = "5-10 working days"; feeLocal = "PHP 3,000"; feeInr = "4,300 to 4,600"}
            @{type = "Student Visa"; subclass = "9F"; purpose = "Academic study programs"; maxStay = "Course duration"; processing = "4-8 weeks"; feeLocal = "PHP 5,000"; feeInr = "7,100 to 7,400"}
            @{type = "Work Visa"; subclass = "9G"; purpose = "Employment in Philippines"; maxStay = "1-3 years"; processing = "4-8 weeks"; feeLocal = "PHP 8,000"; feeInr = "11,400 to 11,800"}
            @{type = "Permanent Resident (Marriage)"; subclass = "13A"; purpose = "Spouse of Filipino citizen"; maxStay = "Indefinite"; processing = "4-6 months"; feeLocal = "PHP 10,000"; feeInr = "14,300 to 14,700"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "4,300 to 14,700"; detail = "Based on visa type"}
            @{type = "VFS Service Charge"; amount = "1,200 to 1,500"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "500 to 800"; detail = "For visa extension"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if needed"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for the Philippines?"; a = "Yes, Indian passport holders need a visa before traveling to the Philippines."}
            @{q = "How long does Philippines visa processing take?"; a = "Tourist visa processing takes 5-10 working days from the date of submission."}
            @{q = "What is the Philippines visa fee for Indians?"; a = "Tourist visa fee is approximately PHP 3,000 (INR 4,300) plus service charges."}
            @{q = "How long can I stay in the Philippines on a tourist visa?"; a = "The initial stay is 30 days, extendable up to 59 days."}
            @{q = "Can I extend my Philippines tourist visa?"; a = "Yes, you can extend your stay at the Bureau of Immigration office in the Philippines."}
            @{q = "What documents are needed for Philippines tourist visa?"; a = "Valid passport, application form, photos, flight bookings, hotel reservations, bank statements, and employment proof."}
            @{q = "Is English widely spoken in the Philippines?"; a = "Yes, English is an official language and widely spoken, making it easy for Indian travelers."}
            @{q = "Can I work in the Philippines on a tourist visa?"; a = "No, working on a tourist visa is illegal. A 9G work visa is required."}
            @{q = "How much bank balance is required?"; a = "A minimum balance of INR 50,000-1,00,000 with 3 months bank statements is recommended."}
            @{q = "Is travel insurance required for Philippines?"; a = "Not mandatory but recommended for medical emergencies."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "PHP 3,000"; current = "PHP 3,000 (no change)"}
            @{change = "Processing change"; previous = "5-10 working days"; current = "5-10 working days"}
            @{change = "Document change"; previous = "Paper application"; current = "Online application available"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.immigration.gov.ph' target='_blank'>Philippines Bureau of Immigration</a></li>"
    }


    russia = @{
        name = "Russia"; capital = "Moscow"; currency = "RUB"; currencyName = "Russian Ruble"
        embassy = "Embassy of the Russian Federation, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Hyderabad, Goa, Thiruvananthapuram"
        visaRequired = "Yes, Indian citizens need a visa for travel to Russia"
        mainVisaTypes = "Tourist Visa, Business Visa, Student Visa, Work Visa, Transit Visa, Humanitarian Visa, E-Visa"
        procTime = "Tourist: 7-10 working days; Business: 10-15 working days; E-Visa: 4-5 calendar days; Student: 2-4 weeks"
        feeRange = "USD 50 to USD 400 depending on category and urgency"
        financialReq = "Minimum RUB 25,000 per day equivalent; bank statements for 3 months recommended"
        maxStay = "Tourist: 30 days; Business: 90 days in 180-day period; Student: course duration"
        bioMandatory = "Not required for most visa categories currently"
        insuranceReq = "Mandatory - travel health insurance for the entire stay in Russia"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Ahmedabad, Chandigarh, Goa, Thiruvananthapuram, Pune"
        englishReq = "Not required for tourist/business visas"
        approvalRate = "Approximately 85-90% for Indian applicants with complete documentation"
        intro = "Russia offers diverse visa options for Indian citizens including a convenient e-visa for certain regions. From Moscow to St Petersburg and the Far East, Russia attracts Indian tourists, students, and business travelers."
        stats = "Russia received over 1,00,000 Indian visitors in 2024. The Indian community in Russia exceeds 25,000, including a significant number of students studying medicine and engineering."
        needVisa = "Yes, Indian passport holders need a visa for Russia. However, an e-visa is available for travel to select regions including St Petersburg and the Far East."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Tourist Visa or E-Visa)"; detail = "E-visa for select regions; regular visa for others"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires invitation from Russian company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires invitation from Russian institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires work permit authorization"}
            @{can = "Transit without visa"; answer = "Limited"; detail = "72-hour transit permitted for some ferry/air routes"}
            @{can = "Live permanently"; answer = "Yes (Temporary/Permanent Residency)"; detail = "After 1 year temporary + 5 years permanent residence"}
        )
        visaTypes = @(
            @{type = "Tourist Visa"; subclass = "TV"; purpose = "Tourism and leisure"; maxStay = "30 days"; processing = "7-10 working days"; feeLocal = "RUB 3,500"; feeInr = "3,200 to 3,500"}
            @{type = "E-Visa"; subclass = "EV"; purpose = "Tourism, business to select regions"; maxStay = "16 days"; processing = "4-5 calendar days"; feeLocal = "USD 50"; feeInr = "4,200 to 4,400"}
            @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings, conferences"; maxStay = "90 days in 180-day period"; processing = "10-15 working days"; feeLocal = "RUB 4,500"; feeInr = "4,100 to 4,400"}
            @{type = "Student Visa"; subclass = "SV"; purpose = "Academic study programs"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "RUB 3,500"; feeInr = "3,200 to 3,500"}
            @{type = "Work Visa"; subclass = "WV"; purpose = "Employment in Russia"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "RUB 6,000"; feeInr = "5,500 to 5,800"}
            @{type = "Transit Visa"; subclass = "TRV"; purpose = "Transit through Russia"; maxStay = "10 days"; processing = "5-7 working days"; feeLocal = "RUB 2,000"; feeInr = "1,800 to 2,000"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "1,800 to 5,800"; detail = "Based on visa type"}
            @{type = "Invitation Letter"; amount = "1,500 to 3,000"; detail = "Required for tourist/business visa"}
            @{type = "VFS Service Charge"; amount = "1,200 to 1,500"; detail = "Paid at application center"}
            @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory for entire stay"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in Russian"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Russia?"; a = "Yes, Indian passport holders need a visa for Russia. An e-visa is available for select regions."}
            @{q = "How long does Russia visa processing take?"; a = "Tourist visa: 7-10 working days. E-visa: 4-5 calendar days. Business visa: 10-15 working days."}
            @{q = "What is the Russia visa fee for Indians?"; a = "Tourist visa: RUB 3,500 (INR 3,200). E-visa: USD 50 (INR 4,200)."}
            @{q = "Is an invitation letter required for Russia visa?"; a = "Yes, a tourist voucher and invitation letter from a Russian tour operator or hotel are required."}
            @{q = "What is the Russia e-visa and who can use it?"; a = "E-visa is available for travel to St Petersburg, Leningrad region, and Far East regions. Valid for 16 days."}
            @{q = "Is travel insurance mandatory for Russia?"; a = "Yes, medical travel insurance valid in Russia is mandatory for the entire stay."}
            @{q = "How long can I stay in Russia on a tourist visa?"; a = "Maximum 30 days with a single-entry tourist visa."}
            @{q = "What documents are needed for Russia tourist visa?"; a = "Valid passport, application form, photo, tourist voucher, invitation letter, and travel insurance."}
            @{q = "Can I work in Russia on a tourist visa?"; a = "No, working on a tourist visa is illegal. A work visa is required."}
            @{q = "How much bank balance is required?"; a = "RUB 25,000 per day equivalent in foreign currency is recommended."}
            @{q = "Is biometric data required for Russia visa?"; a = "Not currently required for most visa categories from India."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "USD 50 (e-visa)"; current = "USD 50 (no change)"}
            @{change = "Processing change"; previous = "7-14 working days"; current = "7-10 working days (tourist improved)"}
            @{change = "Document change"; previous = "E-visa limited regions"; current = "E-visa expanded to more regions"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.vfsglobal.com/russia/india/' target='_blank'>Russia Visa Information - VFS Global</a></li>"
    }

    schengen = @{
        name = "Schengen"; capital = "Not applicable"; currency = "EUR"; currencyName = "Euro"
        embassy = "Depends on country of application"; embassyDetail = "Apply at embassy of main destination Schengen country"
        visaRequired = "Yes, Indian citizens need a uniform Schengen visa for travel to the Schengen Area"
        mainVisaTypes = "Uniform Schengen Visa (USV), Type A (Airport Transit), Type C (Short Stay), Type D (National Long Stay)"
        procTime = "15-45 calendar days; can extend to 60 days in individual cases"
        feeRange = "EUR 80 to EUR 200 depending on category"
        financialReq = "EUR 50-120 per day depending on the country; bank statements for 3 months"
        maxStay = "90 days in any 180-day period for Schengen visa"
        bioMandatory = "Required for all Schengen visa applicants at VFS centers"
        insuranceReq = "Mandatory - travel insurance with minimum EUR 30,000 coverage across Schengen area"
        appCenters = "VFS Global centers across 11 cities in India including Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh, Kochi, Goa"
        englishReq = "Not required for tourist/business visas"
        approvalRate = "Varies by country; overall approximately 80-85% for Indian applicants"
        intro = "The Schengen Area comprises 27 European countries that have abolished internal borders. A single Schengen visa allows Indian citizens to travel freely across all member states for up to 90 days."
        stats = "The Schengen Area received over 7,00,000 Indian visa applications in 2024. France, Germany, Italy, Switzerland, and Netherlands are the top Schengen destinations for Indian travelers."
        needVisa = "Yes, Indian passport holders need a uniform Schengen visa for travel to any country in the Schengen Area."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Schengen Type C)"; detail = "15-45 days processing; 90 days in 180-day period"}
            @{can = "Travel for business meetings"; answer = "Yes (Schengen Business)"; detail = "Requires invitation letter from Schengen company"}
            @{can = "Study (short term)"; answer = "Yes (Schengen Type C)"; detail = "For courses <90 days"}
            @{can = "Study (long term)"; answer = "National Visa (Type D)"; detail = "Requires admission from institution in specific country"}
            @{can = "Work"; answer = "National Visa (Type D)"; detail = "Work permit required from specific country"}
            @{can = "Transit through Schengen airport"; answer = "Yes (Type A)"; detail = "Required for transiting through Schengen airports"}
            @{can = "Live permanently"; answer = "No (via Schengen)"; detail = "Long-stay residence requires national visa/renunciation of the relevant country"}
            @{can = "Visit multiple Schengen countries"; answer = "Yes (Uniform Visa)"; detail = "Schengen visa allows travel across all 27 member states"}
        )
        visaTypes = @(
            @{type = "Uniform Schengen Visa (Type C)"; subclass = "C"; purpose = "Tourism, business, short visits"; maxStay = "90 days in 180-day period"; processing = "15-45 days"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
            @{type = "Airport Transit Visa (Type A)"; subclass = "A"; purpose = "Transit through Schengen airports"; maxStay = "24 hours in airport"; processing = "15-30 days"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
            @{type = "National Long-Stay Visa (Type D)"; subclass = "D"; purpose = "Study, work, family reunion >90 days"; maxStay = "Up to 1 year"; processing = "4-12 weeks"; feeLocal = "EUR 99-116"; feeInr = "8,900 to 10,500"}
            @{type = "Limited Territorial Visa (LTV)"; subclass = "LTV"; purpose = "Travel only to specific Schengen states"; maxStay = "90 days in 180-day period"; processing = "15-30 days"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
        )
        additionalCosts = @(
            @{type = "Schengen Visa Fee"; amount = "7,200 to 7,500"; detail = "Standard fee for adults (EUR 80)"}
            @{type = "VFS Service Charge"; amount = "2,500 to 3,000"; detail = "Per application"}
            @{type = "Biometrics"; amount = "Included in service charge"; detail = "10 fingerprints at VFS center"}
            @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory EUR 30,000 coverage"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if needed"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "What is a Schengen visa?"; a = "A Schengen visa is a short-stay visa allowing Indian citizens to travel to 27 European countries for up to 90 days."}
            @{q = "Do Indians need a Schengen visa?"; a = "Yes, Indian passport holders need a Schengen visa for travel to any Schengen country."}
            @{q = "Which countries are in the Schengen Area?"; a = "27 countries including France, Germany, Italy, Spain, Netherlands, Switzerland, Sweden, Norway, Denmark, Finland, Austria, Belgium, and others."}
            @{q = "How long does Schengen visa processing take?"; a = "Standard processing is 15 calendar days. Can extend to 45 days in individual cases."}
            @{q = "What is the Schengen visa fee?"; a = "EUR 80 (INR 7,200) for adults. Children aged 6-12 pay EUR 40. Under 6 are free."}
            @{q = "Is travel insurance mandatory for Schengen visa?"; a = "Yes, travel insurance with minimum EUR 30,000 coverage is mandatory for all Schengen applications."}
            @{q = "Which country should I apply to?"; a = "Apply to the country where you will spend the most days. If equal days, apply to the country of first entry."}
            @{q = "Can I extend my Schengen visa?"; a = "Extensions are only possible in exceptional circumstances like force majeure or humanitarian reasons."}
            @{q = "How much bank balance is required for Schengen visa?"; a = "EUR 50-120 per day depending on the country. For 10 days, approximately INR 50,000-1,00,000."}
            @{q = "Is biometric data required?"; a = "Yes, all applicants aged 12+ must provide fingerprints at the application center."}
            @{q = "Can I work on a Schengen visa?"; a = "No, working is not permitted on a Schengen visa. A national work visa is required."}
            @{q = "What is the Schengen visa validity?"; a = "Validity can range from 1 month to 5 years depending on the applicant's travel history and purpose."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "EUR 80"; current = "EUR 80 (no change)"}
            @{change = "Processing change"; previous = "15-30 days"; current = "15-45 days (new regulations)"}
            @{change = "Document change"; previous = "Paper application"; current = "Digital application form required from 2025"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.schengenvisainfo.com' target='_blank'>Schengen Visa Information</a></li>"
    }


    singapore = @{
        name = "Singapore"; capital = "Singapore"; currency = "SGD"; currencyName = "Singapore Dollar"
        embassy = "High Commission of Singapore, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad"
        visaRequired = "Yes, Indian citizens need a visa for travel to Singapore"
        mainVisaTypes = "E-Visa (Electronic Visa), Tourist Visa, Business Visa, Student Visa, Work Visa (EP/SP/Work Permit), LTVP Visit Pass"
        procTime = "E-Visa: 3-5 working days; Tourist: 5-7 working days; Work: 2-6 weeks; Student: 4-8 weeks"
        feeRange = "SGD 30 to SGD 200 depending on category"
        financialReq = "Minimal for tourist e-visa; bank statements for 3 months recommended"
        maxStay = "Tourist/E-Visa: 30 days; Social Visit Pass: 30-90 days; Work: 1-3 years"
        bioMandatory = "Not required for short-term visits; required for work passes and long-term visits"
        insuranceReq = "Not mandatory but recommended; mandatory for work pass holders"
        appCenters = "Online via authorized agents; embassies for some categories; ICA for long-term visits"
        englishReq = "Not required; English is an official language of Singapore"
        approvalRate = "Approximately 85-90% for Indian e-visa applications with proper sponsorship"
        intro = "Singapore has a straightforward visa process for Indian citizens through authorized agents. As a global hub for business, education, and tourism, Singapore consistently ranks among the top destinations for Indian travelers."
        stats = "Singapore welcomed over 10,00,000 Indian visitors in 2024, making India one of the largest source markets. The Indian diaspora in Singapore exceeds 6,50,000, the largest ethnic group after Chinese and Malays."
        needVisa = "Yes, Indian passport holders need a visa for Singapore. Applications must be submitted through authorized visa agents or a local sponsor in Singapore."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (E-Visa)"; detail = "3-5 working days via authorized agent; 30 days stay"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires letter from Singapore company"}
            @{can = "Study"; answer = "Yes (Student Pass)"; detail = "Requires admission from Singapore institution"}
            @{can = "Work"; answer = "Yes (EP/SP/WP)"; detail = "Requires job offer and approval from MOM"}
            @{can = "Transit without visa"; answer = "Yes"; detail = "96-hour VFTF for Indian citizens with certain conditions"}
            @{can = "Live permanently"; answer = "Yes (PR)"; detail = "After 6 months on EP/SP; via application to ICA"}
        )
        visaTypes = @(
            @{type = "E-Visa (Electronic)"; subclass = "eVisa"; purpose = "Tourism, business, social"; maxStay = "30 days"; processing = "3-5 working days"; feeLocal = "SGD 30"; feeInr = "1,800 to 2,000"}
            @{type = "Student Pass"; subclass = "STP"; purpose = "Full-time study"; maxStay = "Course duration"; processing = "4-8 weeks"; feeLocal = "SGD 90"; feeInr = "5,500 to 5,800"}
            @{type = "Employment Pass"; subclass = "EP"; purpose = "Professional employment"; maxStay = "1-3 years"; processing = "2-6 weeks"; feeLocal = "SGD 105"; feeInr = "6,400 to 6,700"}
            @{type = "S Pass"; subclass = "SP"; purpose = "Mid-skilled employment"; maxStay = "1-2 years"; processing = "2-4 weeks"; feeLocal = "SGD 100"; feeInr = "6,100 to 6,400"}
            @{type = "Long-Term Visit Pass"; subclass = "LTVP"; purpose = "Family of EP/SP holders"; maxStay = "1-2 years"; processing = "4-8 weeks"; feeLocal = "SGD 60"; feeInr = "3,700 to 3,900"}
            @{type = "Permanent Residence"; subclass = "PR"; purpose = "Permanent residency"; maxStay = "Indefinite"; processing = "6-12 months"; feeLocal = "SGD 100"; feeInr = "6,100 to 6,400"}
        )
        additionalCosts = @(
            @{type = "Visa Agent Fee"; amount = "1,000 to 2,000"; detail = "Mandatory - e-visa must be applied via authorized agent"}
            @{type = "E-Visa Processing Fee"; amount = "1,800 to 2,000"; detail = "Government visa fee"}
            @{type = "Medical Examination"; amount = "3,000 to 6,000"; detail = "Required for work/student passes"}
            @{type = "Translation"; amount = "500 to 1,500"; detail = "Per document if needed"}
            @{type = "Courier"; amount = "500 to 800"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Singapore?"; a = "Yes, Indian passport holders need a visa for Singapore. E-visa can be applied through authorized agents."}
            @{q = "How long does Singapore e-visa processing take?"; a = "Processing takes 3-5 working days. Applications must be submitted by an authorized agent."}
            @{q = "What is the Singapore visa fee?"; a = "The visa fee is SGD 30 (INR 1,800) plus agent service charges of INR 1,000-2,000."}
            @{q = "Can I get a visa-on-arrival in Singapore?"; a = "No, visa-on-arrival is not available for Indian citizens. Apply for an e-visa before travel."}
            @{q = "What is the 96-hour transit without visa?"; a = "Indian citizens can transit visa-free for 96 hours if holding a valid visa from USA, UK, Australia, Canada, Japan, Switzerland, or Schengen countries."}
            @{q = "What documents are needed for Singapore visa?"; a = "Valid passport, application form, photo, flight itinerary, hotel booking, bank statements, and local contact details."}
            @{q = "How long can I stay in Singapore on an e-visa?"; a = "Typically 30 days. The duration is determined by the immigration officer at entry."}
            @{q = "Can I work in Singapore on a tourist visa?"; a = "No, working on a tourist visa is illegal. You need an Employment Pass or S Pass."}
            @{q = "Is English spoken in Singapore?"; a = "Yes, English is the main working language of Singapore."}
            @{q = "How much bank balance is required for Singapore visa?"; a = "A minimum balance of INR 50,000-1,00,000 is typically recommended."}
            @{q = "Can I extend my stay in Singapore?"; a = "Extensions are possible but must be applied for online via ICA before your visa expires."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "SGD 30"; current = "SGD 30 (no change)"}
            @{change = "Processing change"; previous = "3-7 working days"; current = "3-5 working days"}
            @{change = "Document change"; previous = "Physical photos"; current = "Digital photo upload via agent portal"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.ica.gov.sg' target='_blank'>Singapore Immigration & Checkpoints Authority</a></li>"
    }

    southafrica = @{
        name = "South Africa"; capital = "Pretoria"; currency = "ZAR"; currencyName = "South African Rand"
        embassy = "High Commission of South Africa, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad"
        visaRequired = "Yes, Indian citizens need a visa for all travel to South Africa"
        mainVisaTypes = "Tourist Visa, Business Visa, Student Visa, Work Visa, Transit Visa, Critical Skills Visa, Retired Persons Visa"
        procTime = "Tourist: 10-15 working days; Business: 10-15 working days; Work: 4-12 weeks; Critical Skills: 8-12 weeks"
        feeRange = "ZAR 425 to ZAR 2,000 depending on category"
        financialReq = "Bank statements for 3 months; minimum INR 50,000 per month of stay suggested"
        maxStay = "Tourist: 90 days; Business: 90 days; Work: 2-5 years"
        bioMandatory = "Required for all visa categories at VFS centers (10 fingerprints)"
        insuranceReq = "Not mandatory but strongly recommended"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Ahmedabad, Pune, Chandigarh, Kochi"
        englishReq = "Not required; English is an official language of South Africa"
        approvalRate = "Approximately 80-85% for Indian applicants with complete documentation"
        intro = "South Africa is a popular destination for Indian tourists seeking wildlife, scenic beauty, and cultural experiences. Indian citizens need to apply for a visa before traveling to South Africa."
        stats = "South Africa welcomed over 80,000 Indian tourists in 2024, showing 15% growth. The Indian diaspora in South Africa is over 1.5 million, one of the largest outside India."
        needVisa = "Yes, Indian passport holders must obtain a visa before traveling to South Africa for any purpose including tourism."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Tourist Visa)"; detail = "10-15 working days; up to 90 days stay"}
            @{can = "Travel for business meetings"; answer = "Yes (Business Visa)"; detail = "Requires invitation from South African company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires admission from South African institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires job offer and labor market test"}
            @{can = "Transit without visa"; answer = "No"; detail = "Transit visa required for connecting flights"}
            @{can = "Live permanently"; answer = "Yes (PR)"; detail = "After 5 years of temporary residency"}
        )
        visaTypes = @(
            @{type = "Tourist Visa"; subclass = "TV"; purpose = "Tourism and leisure"; maxStay = "90 days"; processing = "10-15 working days"; feeLocal = "ZAR 425"; feeInr = "1,900 to 2,100"}
            @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings, conferences"; maxStay = "90 days"; processing = "10-15 working days"; feeLocal = "ZAR 425"; feeInr = "1,900 to 2,100"}
            @{type = "Student Visa"; subclass = "SV"; purpose = "Academic study programs"; maxStay = "Course duration"; processing = "4-8 weeks"; feeLocal = "ZAR 425"; feeInr = "1,900 to 2,100"}
            @{type = "Work Visa (General)"; subclass = "WV"; purpose = "Employment in South Africa"; maxStay = "2-5 years"; processing = "8-12 weeks"; feeLocal = "ZAR 1,520"; feeInr = "6,800 to 7,200"}
            @{type = "Critical Skills Visa"; subclass = "CSV"; purpose = "Skilled professionals in shortage occupations"; maxStay = "5 years"; processing = "8-12 weeks"; feeLocal = "ZAR 1,520"; feeInr = "6,800 to 7,200"}
            @{type = "Transit Visa"; subclass = "TRV"; purpose = "Transit through South Africa"; maxStay = "10 days"; processing = "5-10 working days"; feeLocal = "ZAR 425"; feeInr = "1,900 to 2,100"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "1,900 to 7,200"; detail = "Based on visa category"}
            @{type = "VFS Service Charge"; amount = "1,200 to 1,500"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "800 to 1,200"; detail = "10 fingerprints at VFS center"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if needed"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for South Africa?"; a = "Yes, Indian passport holders need a visa for all travel purposes to South Africa."}
            @{q = "How long does South Africa visa processing take?"; a = "Tourist and business visas take 10-15 working days. Work visas take 8-12 weeks."}
            @{q = "What is the South Africa visa fee for Indians?"; a = "The tourist visa fee is ZAR 425 (approximately INR 2,000) plus VFS service charges."}
            @{q = "Is biometric data required for South Africa visa?"; a = "Yes, all applicants must provide 10 fingerprints at the VFS center."}
            @{q = "How long can I stay in South Africa on a tourist visa?"; a = "The visitor visa allows a maximum stay of 90 days."}
            @{q = "What documents are needed for South Africa tourist visa?"; a = "Valid passport, application form, photos, flight bookings, hotel reservations, bank statements, and employment proof."}
            @{q = "Can I work in South Africa on a tourist visa?"; a = "No, working on a tourist visa is illegal. A work visa or critical skills visa is required."}
            @{q = "How much bank balance is required?"; a = "A minimum of INR 50,000 per month of intended stay is recommended."}
            @{q = "Is English spoken in South Africa?"; a = "Yes, English is one of the 11 official languages and widely used."}
            @{q = "Can I extend my South Africa tourist visa?"; a = "Extensions are possible but must be applied for at the Department of Home Affairs before expiry."}
            @{q = "What is the Critical Skills Visa?"; a = "A work visa for occupations in shortage in South Africa. No labor market test required."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "ZAR 425"; current = "ZAR 425 (no change)"}
            @{change = "Processing change"; previous = "10-20 working days"; current = "10-15 working days"}
            @{change = "Document change"; previous = "Paper form"; current = "Digital form available"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.dha.gov.za' target='_blank'>South Africa Department of Home Affairs</a></li>"
    }


    southkorea = @{
        name = "South Korea"; capital = "Seoul"; currency = "KRW"; currencyName = "South Korean Won"
        embassy = "Embassy of South Korea, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Ahmedabad"
        visaRequired = "Yes, Indian citizens need a visa for travel to South Korea"
        mainVisaTypes = "Tourist Visa (C-3-9), Business Visa (C-3-4), Student Visa (D-2), Work Visa (E-7), Working Holiday Visa (H-1), Transit Visa"
        procTime = "Tourist: 5-10 working days; Business: 5-10 working days; Student: 2-4 weeks; Work: 4-8 weeks"
        feeRange = "KRW 40,000 to KRW 500,000 depending on category"
        financialReq = "Bank statements for 3-6 months; minimum INR 1,00,000-2,00,000 recommended"
        maxStay = "Tourist: 30-90 days; Student: course duration; Work: 1-3 years"
        bioMandatory = "Required for all visa categories at application centers"
        insuranceReq = "Not mandatory but strongly recommended"
        appCenters = "Korea Visa Application Center (KVAC) in New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Ahmedabad"
        englishReq = "Not required for tourist/business; TOPIK may be required for student/work"
        approvalRate = "Approximately 75-85% for Indian applicants with complete documentation"
        intro = "South Korea has become an increasingly popular destination for Indian travelers driven by K-culture, technology, and business opportunities. Indian citizens need a visa before traveling to South Korea."
        stats = "South Korea welcomed over 1,20,000 Indian visitors in 2024, a 35% increase from the previous year. The Indian community in Korea exceeds 15,000, with many working in IT, automotive, and research sectors."
        needVisa = "Yes, Indian passport holders must obtain a visa before traveling to South Korea for any purpose. Jeju Island has a separate visa-waiver policy."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (C-3-9 Visa)"; detail = "5-10 working days; single/double/multiple entry"}
            @{can = "Travel for business meetings"; answer = "Yes (C-3-4 Visa)"; detail = "Requires invitation from Korean company"}
            @{can = "Study"; answer = "Yes (D-2 Visa)"; detail = "Requires admission from Korean university"}
            @{can = "Work"; answer = "Yes (E-7 Visa)"; detail = "Requires contract and work permit"}
            @{can = "Transit without visa"; answer = "Yes"; detail = "30-day transit visa-free for certain conditions"}
            @{can = "Live permanently"; answer = "Yes (F-5 Visa)"; detail = "After 5+ years of continuous residence"}
        )
        visaTypes = @(
            @{type = "Tourist Visa (Single)"; subclass = "C-3-9"; purpose = "Tourism and sightseeing"; maxStay = "30-90 days"; processing = "5-10 working days"; feeLocal = "KRW 40,000"; feeInr = "2,500 to 2,800"}
            @{type = "Tourist Visa (Multiple)"; subclass = "C-3-9"; purpose = "Multiple tourism visits"; maxStay = "30 days per visit"; processing = "5-10 working days"; feeLocal = "KRW 80,000"; feeInr = "5,000 to 5,300"}
            @{type = "Business Visa"; subclass = "C-3-4"; purpose = "Business meetings, conferences"; maxStay = "30-90 days"; processing = "5-10 working days"; feeLocal = "KRW 40,000"; feeInr = "2,500 to 2,800"}
            @{type = "Student Visa (D-2)"; subclass = "D-2"; purpose = "Degree programs"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "KRW 60,000"; feeInr = "3,700 to 4,000"}
            @{type = "Work Visa (E-7)"; subclass = "E-7"; purpose = "Skilled employment"; maxStay = "1-3 years"; processing = "4-8 weeks"; feeLocal = "KRW 60,000"; feeInr = "3,700 to 4,000"}
            @{type = "Working Holiday"; subclass = "H-1"; purpose = "Travel and work for youth"; maxStay = "1 year"; processing = "4-8 weeks"; feeLocal = "KRW 70,000"; feeInr = "4,300 to 4,600"}
        )
        additionalCosts = @(
            @{type = "Visa Application Fee"; amount = "2,500 to 5,300"; detail = "Based on visa type and entries"}
            @{type = "KVAC Service Charge"; amount = "1,200 to 1,500"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "800 to 1,200"; detail = "Required at KVAC"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in English/Korean"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for South Korea?"; a = "Yes, Indian passport holders need a visa for South Korea. Jeju Island allows visa-free entry for 30 days."}
            @{q = "How long does South Korea visa processing take?"; a = "Tourist visas take 5-10 working days. Student and work visas take 2-8 weeks."}
            @{q = "What is the South Korea visa fee for Indians?"; a = "Single-entry: KRW 40,000 (INR 2,500). Multiple-entry: KRW 80,000 (INR 5,000)."}
            @{q = "Can I get a multiple-entry visa for South Korea?"; a = "Yes, frequent travelers or those with travel history to OECD countries may qualify for multiple-entry visas."}
            @{q = "What documents are needed for South Korea tourist visa?"; a = "Valid passport, application form, photos, flight itinerary, hotel bookings, bank statements, income tax returns, and employment letter."}
            @{q = "How long can I stay in South Korea on a tourist visa?"; a = "Typically 30 days for single-entry visas. Multiple-entry visas allow 30 days per visit."}
            @{q = "Can I work in South Korea on a tourist visa?"; a = "No, working on a tourist visa is illegal. An E-7 work visa is required."}
            @{q = "Is transit without visa allowed in South Korea?"; a = "Yes, 30-day transit visa-free for Indian citizens with valid visas for USA, Canada, Australia, New Zealand, or Schengen countries."}
            @{q = "How much bank balance is required?"; a = "A minimum of INR 1,00,000-2,00,000 with 3-6 months bank statements is recommended."}
            @{q = "Is biometric data required for South Korea visa?"; a = "Yes, all applicants must provide fingerprints at the KVAC center."}
            @{q = "Can I visit Jeju Island visa-free?"; a = "Yes, Indian passport holders can visit Jeju Island without a visa for up to 30 days."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "KRW 40,000"; current = "KRW 40,000 (no change)"}
            @{change = "Processing change"; previous = "5-10 working days"; current = "5-10 working days"}
            @{change = "Document change"; previous = "Paper application"; current = "Digital application accepted"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.visa.go.kr' target='_blank'>Korea Visa Portal</a></li>"
    }

    spain = @{
        name = "Spain"; capital = "Madrid"; currency = "EUR"; currencyName = "Euro"
        embassy = "Embassy of Spain, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Ahmedabad"
        visaRequired = "Yes, Indian citizens need a Schengen visa for travel to Spain"
        mainVisaTypes = "Short Stay Schengen Visa, Student Visa, Work Visa, Business Visa, Non-Lucrative Residence Visa, Golden Visa, Family Reunion Visa"
        procTime = "Short Stay: 15-30 days; Long Stay: 2-8 weeks; Student: 2-4 weeks; Golden Visa: 4-8 weeks"
        feeRange = "EUR 80 to EUR 500 depending on category"
        financialReq = "EUR 64 per day for tourism; students: EUR 600-1,200 per month; investors: EUR 500,000 in property"
        maxStay = "Schengen: 90 days in 180-day period; Long Stay: 1 year (renewable)"
        bioMandatory = "Required for all visa applicants at BLS centers"
        insuranceReq = "Mandatory - travel insurance with minimum EUR 30,000 coverage for Schengen"
        appCenters = "BLS International centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh, Kochi, Goa"
        englishReq = "Not required for tourist visa; DELE/SIELE may be required for some long-stay visas"
        approvalRate = "Approximately 80-85% for Indian applicants with complete documentation"
        intro = "Spain is a popular Schengen destination for Indian travelers. Known for its vibrant culture, architecture, and Mediterranean lifestyle, Spain offers a range of visa options including the popular Golden Visa program."
        stats = "Spain welcomed over 2,00,000 Indian visitors in 2024. The Indian student population in Spain is growing, with many enrolling in business schools and universities. Spain's Golden Visa program attracts Indian investors."
        needVisa = "Yes, Indian passport holders need a Schengen visa for short stays and a national visa for long stays in Spain."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Schengen Visa)"; detail = "15-30 days processing; 90 days in 180-day window"}
            @{can = "Travel for business meetings"; answer = "Yes (Schengen Business)"; detail = "Requires invitation from Spanish company"}
            @{can = "Study"; answer = "Yes (Student Visa)"; detail = "Requires admission from Spanish institution"}
            @{can = "Work"; answer = "Yes (Work Visa)"; detail = "Requires work contract and employer authorization"}
            @{can = "Transit without visa"; answer = "No"; detail = "Airport transit visa may be required"}
            @{can = "Live permanently"; answer = "Yes (Residence Visa)"; detail = "Non-lucrative visa, Golden Visa, or after 5 years residence"}
        )
        visaTypes = @(
            @{type = "Short Stay Schengen"; subclass = "C"; purpose = "Tourism, business, family visit"; maxStay = "90 days in 180-day period"; processing = "15-30 days"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
            @{type = "Student Visa"; subclass = "D"; purpose = "University studies"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "EUR 80"; feeInr = "7,200 to 7,500"}
            @{type = "Work Visa"; subclass = "D"; purpose = "Salaried employment"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "EUR 82"; feeInr = "7,400 to 7,700"}
            @{type = "Non-Lucrative Residence"; subclass = "D"; purpose = "Retirees with sufficient income"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "EUR 82"; feeInr = "7,400 to 7,700"}
            @{type = "Golden Visa (Investor)"; subclass = "D"; purpose = "Property investment of EUR 500,000+"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "EUR 82"; feeInr = "7,400 to 7,700"}
            @{type = "Family Reunion"; subclass = "D"; purpose = "Join family in Spain"; maxStay = "1 year (renewable)"; processing = "4-12 weeks"; feeLocal = "EUR 82"; feeInr = "7,400 to 7,700"}
        )
        additionalCosts = @(
            @{type = "Schengen Visa Fee"; amount = "7,200 to 7,500"; detail = "Standard fee for adults"}
            @{type = "BLS Service Charge"; amount = "2,500 to 3,000"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "Included in service charge"; detail = "Required at BLS"}
            @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory for Schengen"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document not in Spanish"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Spain?"; a = "Yes, Indian passport holders need a Schengen visa for short stays and a national visa for long stays."}
            @{q = "How long does Spain Schengen visa processing take?"; a = "Processing takes 15-30 days. Can extend to 45 days in exceptional cases."}
            @{q = "What is the Spain visa fee for Indians?"; a = "Schengen visa fee is EUR 80 (INR 7,200). National visa fee is EUR 82 (INR 7,400)."}
            @{q = "Is biometric data required for Spain visa?"; a = "Yes, all applicants aged 12+ must provide fingerprints at the BLS center."}
            @{q = "Is travel insurance mandatory for Spain?"; a = "Yes, travel insurance with minimum EUR 30,000 coverage is mandatory for Schengen applications."}
            @{q = "How long can I stay in Spain on a Schengen visa?"; a = "Maximum 90 days within any 180-day period."}
            @{q = "What is the Spain Golden Visa?"; a = "A residence visa for investors who purchase property worth EUR 500,000 or more in Spain."}
            @{q = "What documents are needed for Spain tourist visa?"; a = "Valid passport, application form, photos, flight bookings, hotel reservations, travel insurance, bank statements, and employment proof."}
            @{q = "Can I work in Spain on a Schengen visa?"; a = "No, working is not permitted. A work visa is required."}
            @{q = "How much bank balance is needed for Spain tourist visa?"; a = "EUR 64 per day. For a 10-day trip, approximately INR 50,000-60,000."}
            @{q = "What is the Non-Lucrative Residence Visa?"; a = "For retirees or those with sufficient passive income to live in Spain without working."}
        )
        updates2026 = @(
            @{change = "Fee Update"; previous = "EUR 80"; current = "EUR 80 (no change)"}
            @{change = "Processing change"; previous = "15-45 days"; current = "15-30 days"}
            @{change = "Document change"; previous = "Paper applications"; current = "Digital applications accepted"}
        )
        officialResources = "<li><strong>Source:</strong> <a href='https://www.exteriores.gob.es' target='_blank'>Spanish Ministry of Foreign Affairs</a></li>"
    }
srilanka = @{
        name = "Sri Lanka"; capital = "Sri Jayawardenepura Kotte (admin)"; currency = "LKR"; currencyName = "Sri Lankan Rupee"
        embassy = "Sri Lanka High Commission, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru"
        visaRequired = "Yes, Indian citizens need an ETA (Electronic Travel Authorization) for Sri Lanka"
        mainVisaTypes = "ETA Tourist Visa, ETA Business Visa, Resident Visa, Employment Visa, Student Visa"
        procTime = "ETA: 24-72 hours; Resident: 2-4 weeks"
        feeRange = "USD 20 (ETA) to USD 200 (Resident Visa)"
        financialReq = "Tourists: USD 50-100 per day; Students: USD 15,000-20,000+ per year"
        maxStay = "ETA: 30 days (extendable to 180 days); Resident: 1 year"
        bioMandatory = "Not required for ETA; required for long-stay visas"
        insuranceReq = "Recommended but not mandatory for ETA"
        appCenters = "Online ETA system; visa extension at Department of Immigration, Colombo"
        englishReq = "Not required for tourism; IELTS 6.0 for student visas"
        approvalRate = "ETA: ~95%; Resident: ~80%"
        intro = "Sri Lanka offers an Electronic Travel Authorization (ETA) system for Indian citizens, making visa acquisition straightforward for short visits. For longer stays, work, or study, traditional visa applications through the Sri Lankan High Commission are required."
        stats = "India is the largest source of tourists to Sri Lanka, with over 1.2 million Indian visitors in 2024. The ETA system processes over 90% of Indian applications within 24-72 hours."
        needVisa = "Yes, but simplified. Indian passport holders can apply for an ETA online for tourism and business visits up to 30 days. For longer stays or other purposes, a traditional visa application is needed."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (ETA)"; detail = "30 days, extendable"}
            @{can = "Travel for business"; answer = "Yes (ETA)"; detail = "Business meetings and conferences"}
            @{can = "Study at Sri Lankan university"; answer = "Yes (Student Visa)"; detail = "Requires university admission"}
            @{can = "Work in Sri Lanka"; answer = "Yes (Employment Visa)"; detail = "Employer sponsorship required"}
            @{can = "Transit without visa"; answer = "Yes (ETA)"; detail = "ETA covers short transits"}
            @{can = "Live permanently"; answer = "Yes (Resident Visa)"; detail = "Apply after extended stay"}
        )
        visaTypes = @(
            @{type = "ETA Tourist Visa"; subclass = "ETA"; purpose = "Tourism, family visits"; maxStay = "30 days (extendable)"; processing = "24-72 hours"; feeLocal = "USD 20"; feeInr = "1,500 to 1,700"}
            @{type = "ETA Business Visa"; subclass = "ETA-B"; purpose = "Business meetings"; maxStay = "30 days"; processing = "24-72 hours"; feeLocal = "USD 20"; feeInr = "1,500 to 1,700"}
            @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "USD 50"; feeInr = "3,800 to 4,200"}
            @{type = "Employment Visa"; subclass = "EV"; purpose = "Salaried employment"; maxStay = "1 year (renewable)"; processing = "4-6 weeks"; feeLocal = "USD 100"; feeInr = "7,600 to 8,400"}
            @{type = "Resident Visa"; subclass = "RV"; purpose = "Long-term stay"; maxStay = "1 year"; processing = "4-8 weeks"; feeLocal = "USD 200"; feeInr = "15,200 to 16,800"}
        )
        additionalCosts = @(
            @{type = "ETA Processing Fee"; amount = "700 to 900"; detail = "Online payment processing"}
            @{type = "Visa Extension Fee"; amount = "2,500 to 5,000"; detail = "For stays beyond 30 days"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if not in English"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return for long-stay visas"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Sri Lanka?"; a = "Yes, but can use the ETA system online for tourism and business visits. No physical visa stamp needed - approval is electronic."}
            @{q = "How long does Sri Lanka ETA take?"; a = "Usually 24-72 hours. Apply at least 3-4 days before travel."}
            @{q = "What is the Sri Lanka ETA fee for Indians?"; a = "USD 20 (approximately INR 1,500-1,700). Payable online by credit card."}
            @{q = "Can I extend my Sri Lanka ETA?"; a = "Yes, you can extend up to 180 days by visiting the Department of Immigration in Colombo."}
            @{q = "Is there an on-arrival visa for Sri Lanka?"; a = "No, all travelers must obtain ETA or visa before arrival. The ETA is valid for 6 months from issue date."}
            @{q = "What documents are needed for Sri Lanka ETA?"; a = "Valid passport with 6 months validity, email address, credit/debit card for payment, and travel details."}
            @{q = "How much bank balance is needed for Sri Lanka?"; a = "No minimum balance is specified, but showing adequate funds (INR 30,000-50,000) helps."}
            @{q = "Can I work in Sri Lanka on an ETA?"; a = "No, employment requires a proper Employment Visa."}
        )
        updates2026 = @(
            @{change = "ETA Fee"; previous = "USD 35"; current = "USD 20 (reduced for Indians)"}
            @{change = "ETA Validity"; previous = "90 days"; current = "180 days (extended)"}
            @{change = "Visa on Arrival"; previous = "Available for certain nationalities"; current = "Discontinued, ETA mandatory"}
        )
        officialResources = "<li><strong>ETA Portal:</strong> <a href='https://www.eta.gov.lk' target='_blank'>www.eta.gov.lk</a></li>"
    }

    switzerland = @{
        name = "Switzerland"; capital = "Bern"; currency = "CHF"; currencyName = "Swiss Franc"
        embassy = "Embassy of Switzerland, New Delhi"; embassyDetail = "Consulates in Mumbai, Bengaluru, Chennai, Kolkata, Hyderabad"
        visaRequired = "Yes, Indian citizens need a Schengen visa for Switzerland"
        mainVisaTypes = "Schengen Tourist Visa (Type C), Business Visa, Student Visa, Work Visa, Family Reunion"
        procTime = "Schengen: 15-30 days; National visa: 4-12 weeks"
        feeRange = "CHF 80 to CHF 150 depending on category"
        financialReq = "Tourists: CHF 100-150 per day; Students: CHF 21,000+ per year"
        maxStay = "Schengen: 90 days in 180 days; National: course or contract duration"
        bioMandatory = "Required for all Schengen visa applicants aged 12+"
        insuranceReq = "Mandatory travel insurance with CHF 30,000 minimum coverage"
        appCenters = "VFS Global centers in New Delhi, Mumbai, Chennai, Kolkata, Hyderabad, Bengaluru, Pune, Chandigarh, Ahmedabad"
        englishReq = "Not required for tourism; IELTS 6.0-6.5 for student visas"
        approvalRate = "Schengen: ~85% for Indian applicants"
        intro = "Switzerland visa allows Indian citizens to explore the breathtaking Alpine landscapes, world-class cities, and cultural heritage of this Central European nation. As a Schengen member, Swiss visas permit travel across 27 European countries."
        stats = "Over 300,000 Indians visited Switzerland in 2024, making India a key tourism market. Switzerland has one of the highest Schengen visa approval rates for Indians at approximately 85%."
        needVisa = "Yes. Indian passport holders must obtain a Schengen visa for stays up to 90 days or a national visa for longer stays. Switzerland is not visa-free for Indians."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Schengen C)"; detail = "90 days in 180-day period"}
            @{can = "Travel for business"; answer = "Yes (Schengen C)"; detail = "Business meetings, conferences"}
            @{can = "Study at Swiss university"; answer = "Yes (National D)"; detail = "Requires university admission"}
            @{can = "Work in Switzerland"; answer = "Yes (Work Visa)"; detail = "Employer sponsorship and work permit required"}
            @{can = "Transit in Swiss airports"; answer = "Yes (Schengen C)"; detail = "Schengen visa covers transit"}
            @{can = "Live permanently"; answer = "Yes (Permit C)"; detail = "After 5-10 years of residence"}
        )
        visaTypes = @(
            @{type = "Schengen Tourist Visa"; subclass = "Type C"; purpose = "Tourism, family visits"; maxStay = "90 days in 180 days"; processing = "15-30 days"; feeLocal = "CHF 80"; feeInr = "6,800 to 7,200"}
            @{type = "Student Visa"; subclass = "D"; purpose = "Full-time university study"; maxStay = "Course duration"; processing = "4-8 weeks"; feeLocal = "CHF 90"; feeInr = "7,600 to 8,000"}
            @{type = "Work Visa"; subclass = "B"; purpose = "Salaried employment"; maxStay = "1-5 years"; processing = "8-12 weeks"; feeLocal = "CHF 100"; feeInr = "8,400 to 9,000"}
            @{type = "Family Reunion"; subclass = "D"; purpose = "Join family in Switzerland"; maxStay = "Same as sponsor"; processing = "4-12 weeks"; feeLocal = "CHF 90"; feeInr = "7,600 to 8,000"}
        )
        additionalCosts = @(
            @{type = "VFS Service Charge"; amount = "1,800 to 2,200"; detail = "Paid at application center"}
            @{type = "Biometrics"; amount = "Included in service charge"; detail = "Required at VFS center"}
            @{type = "Travel Insurance"; amount = "1,500 to 3,000"; detail = "Mandatory for Schengen"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Switzerland?"; a = "Yes, Indian passport holders need a Schengen visa for Switzerland."}
            @{q = "How long does Switzerland visa processing take?"; a = "Typically 15-30 calendar days for Schengen applications."}
            @{q = "What is the Switzerland visa fee for Indians?"; a = "Schengen visa fee is CHF 80 (approximately INR 6,800-7,200)."}
            @{q = "Is travel insurance mandatory for Switzerland?"; a = "Yes, mandatory with minimum CHF 30,000 coverage."}
            @{q = "How long can I stay in Switzerland on a Schengen visa?"; a = "Maximum 90 days within any 180-day period."}
            @{q = "What documents are needed for Switzerland tourist visa?"; a = "Passport, form, photos, flight/hotel bookings, insurance, bank statements, employment proof."}
            @{q = "Can I work in Switzerland on a tourist visa?"; a = "No, work requires a proper work visa."}
        )
        updates2026 = @(
            @{change = "Visa Fee"; previous = "CHF 80"; current = "CHF 80 (no change)"}
            @{change = "Processing Time"; previous = "15-45 days"; current = "15-30 days (improved)"}
        )
        officialResources = "<li><strong>VFS Switzerland:</strong> <a href='https://www.vfsglobal.com/switzerland/india/' target='_blank'>VFS Global Switzerland</a></li>"
    }

    thailand = @{
        name = "Thailand"; capital = "Bangkok"; currency = "THB"; currencyName = "Thai Baht"
        embassy = "Royal Thai Embassy, New Delhi"; embassyDetail = "Consulates in Mumbai, Chennai, Kolkata, Bengaluru, Guwahati"
        visaRequired = "Indian citizens can get visa on arrival for 15 days or e-Visa for longer stays"
        mainVisaTypes = "Visa on Arrival (VOA), e-Visa Tourist TR, e-Visa Business B, Student Visa ED, Retirement Visa O-A"
        procTime = "VOA: 0 (at airport); e-Visa: 5-10 working days"
        feeRange = "THB 2,000 (VOA) to THB 5,000 (Retirement Visa)"
        financialReq = "Tourists: THB 20,000 per person or THB 40,000 per family"
        maxStay = "VOA: 15 days; e-Visa TR: 30-60 days; Retirement: 1 year"
        bioMandatory = "Not required for VOA; required for e-Visa"
        insuranceReq = "Recommended but not mandatory for VOA"
        appCenters = "Visa on Arrival at Thai airports; e-Visa through Thai embassy online portal"
        englishReq = "Not required for tourism; IELTS 5.5-6.0 for student visas"
        approvalRate = "VOA: ~98%; e-Visa: ~90%"
        intro = "Thailand visa for Indians offers both visa-on-arrival (VOA) and e-Visa options, making it one of the most accessible destinations from India."
        stats = "Over 1.8 million Indians visited Thailand in 2024, making India a top 5 source market. Thailand has multiple entry options for Indian citizens."
        needVisa = "Yes, but simplified. Indians can get Visa on Arrival for 15 days at airports, or apply for e-Visa for longer stays."
        availableNotAvailable = @(
            @{can = "Travel for tourism (short)"; answer = "Yes (VOA)"; detail = "15 days at airport"}
            @{can = "Travel for tourism (long)"; answer = "Yes (e-Visa TR)"; detail = "30-60 days"}
            @{can = "Study at Thai university"; answer = "Yes (ED Visa)"; detail = "Requires admission letter"}
            @{can = "Work in Thailand"; answer = "Yes (B Visa)"; detail = "Employer sponsorship required"}
            @{can = "Retire in Thailand"; answer = "Yes (O-A Visa)"; detail = "Age 50+, financial proof"}
            @{can = "Transit without visa"; answer = "Yes (VOA)"; detail = "VOA covers transit"}
        )
        visaTypes = @(
            @{type = "Visa on Arrival"; subclass = "VOA"; purpose = "Tourism, short visits"; maxStay = "15 days"; processing = "At airport"; feeLocal = "THB 2,000"; feeInr = "4,200 to 4,800"}
            @{type = "Tourist e-Visa"; subclass = "TR"; purpose = "Tourism, family visits"; maxStay = "30-60 days"; processing = "5-10 days"; feeLocal = "THB 1,000"; feeInr = "2,200 to 2,600"}
            @{type = "Business Visa"; subclass = "B"; purpose = "Business, employment"; maxStay = "90 days"; processing = "5-15 days"; feeLocal = "THB 2,000"; feeInr = "4,200 to 4,800"}
            @{type = "Student Visa"; subclass = "ED"; purpose = "Full-time study"; maxStay = "Course duration"; processing = "3-4 weeks"; feeLocal = "THB 2,000"; feeInr = "4,200 to 4,800"}
            @{type = "Retirement Visa"; subclass = "O-A"; purpose = "Retirees aged 50+"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "THB 5,000"; feeInr = "11,000 to 12,000"}
        )
        additionalCosts = @(
            @{type = "VOA Service Fee"; amount = "Included"; detail = "Paid at airport counter"}
            @{type = "e-Visa Processing"; amount = "600 to 900"; detail = "Online payment fee"}
            @{type = "Photographs"; amount = "200 to 500"; detail = "At airport photo booth"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Thailand?"; a = "Yes, but can get Visa on Arrival for 15 days or apply for e-Visa."}
            @{q = "How much is Thailand visa on arrival fee?"; a = "THB 2,000 (approximately INR 4,200-4,800). Payable in Thai Baht."}
            @{q = "What documents are needed for Thailand VOA?"; a = "Passport (6 months validity), return ticket, hotel booking, THB 20,000 funds proof, and photograph."}
            @{q = "Can I extend my Thailand visa on arrival?"; a = "VOA cannot be extended. You must leave and re-enter."}
            @{q = "How long does Thailand e-Visa take?"; a = "5-10 working days through the Thai embassy online portal."}
            @{q = "Is there a visa-free entry for Indians to Thailand?"; a = "No, but VOA is available at all major Thai airports."}
            @{q = "How much bank balance is needed for Thailand?"; a = "THB 20,000 per person or THB 40,000 per family."}
        )
        updates2026 = @(
            @{change = "VOA Fee"; previous = "THB 2,000"; current = "THB 2,000 (stable)"}
            @{change = "e-Visa System"; previous = "Paper application"; current = "Fully online portal"}
        )
        officialResources = "<li><strong>Thai e-Visa:</strong> <a href='https://www.thaievisa.go.th' target='_blank'>www.thaievisa.go.th</a></li>"
    }

    turkey = @{
        name = "Turkey"; capital = "Ankara"; currency = "TRY"; currencyName = "Turkish Lira"
        embassy = "Embassy of Turkey, New Delhi"; embassyDetail = "Consulates in Mumbai, Hyderabad, Kolkata"
        visaRequired = "Yes, Indian citizens need an e-Visa for Turkey"
        mainVisaTypes = "e-Visa (Tourist), e-Visa (Business), Student Visa, Work Visa, Residence Permit"
        procTime = "e-Visa: 15-30 minutes; Work/Student: 4-8 weeks"
        feeRange = "USD 60 (e-Visa) to USD 200 (Residence)"
        financialReq = "USD 50-100 per day for tourists; varies for other categories"
        maxStay = "e-Visa: 30 days single entry; Student: course duration; Work: 1-2 years"
        bioMandatory = "Not required for e-Visa; required for long-stay visas"
        insuranceReq = "Travel insurance recommended; health insurance mandatory for residence"
        appCenters = "Online e-Visa system; Turkish embassy for long-stay visas"
        englishReq = "Not required for tourism; varies for university admissions"
        approvalRate = "e-Visa: ~95%; Long-stay: ~70%"
        intro = "Turkey offers an instant e-Visa system for Indian passport holders, making it one of the easiest visa processes for travel."
        stats = "Over 300,000 Indian tourists visited Turkey in 2024. The e-Visa system processes most applications within minutes."
        needVisa = "Yes, but easy. Indians can get an e-Visa online within minutes for tourism and business."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (e-Visa)"; detail = "30 days, single entry"}
            @{can = "Travel for business"; answer = "Yes (e-Visa)"; detail = "Business meetings allowed"}
            @{can = "Study at Turkish university"; answer = "Yes (Student Visa)"; detail = "Requires university admission"}
            @{can = "Work in Turkey"; answer = "Yes (Work Visa)"; detail = "Employer sponsorship required"}
            @{can = "Transit in Turkey"; answer = "Yes (e-Visa)"; detail = "e-Visa covers transit"}
            @{can = "Live permanently"; answer = "Yes (Residence)"; detail = "After extended residence"}
        )
        visaTypes = @(
            @{type = "Tourist e-Visa"; subclass = "eV"; purpose = "Tourism, family visits"; maxStay = "30 days"; processing = "15-30 minutes"; feeLocal = "USD 60"; feeInr = "4,800 to 5,200"}
            @{type = "Business e-Visa"; subclass = "eV-B"; purpose = "Business meetings"; maxStay = "30 days"; processing = "15-30 minutes"; feeLocal = "USD 60"; feeInr = "4,800 to 5,200"}
            @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "Course duration"; processing = "4-8 weeks"; feeLocal = "USD 100"; feeInr = "7,900 to 8,600"}
            @{type = "Work Visa"; subclass = "WV"; purpose = "Salaried employment"; maxStay = "1-2 years"; processing = "8-12 weeks"; feeLocal = "USD 150"; feeInr = "11,800 to 12,600"}
        )
        additionalCosts = @(
            @{type = "e-Visa Service Fee"; amount = "500 to 800"; detail = "Online processing fee"}
            @{type = "Biometrics (long-stay)"; amount = "1,500 to 2,000"; detail = "At embassy"}
            @{type = "Travel Insurance"; amount = "1,000 to 2,500"; detail = "Recommended for all"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Turkey?"; a = "Yes, but can get an e-Visa online within minutes. The e-Visa system is available at www.evisa.gov.tr."}
            @{q = "How much does Turkey e-Visa cost for Indians?"; a = "USD 60 (approximately INR 4,800-5,200). Payable online."}
            @{q = "How long does Turkey e-Visa processing take?"; a = "Typically 15-30 minutes. Same-day approval is standard."}
            @{q = "How long can I stay in Turkey on e-Visa?"; a = "Maximum 30 days per visit. Single entry only."}
            @{q = "What documents are needed for Turkey e-Visa?"; a = "Passport with 6 months validity, email address, credit card."}
            @{q = "Can I work in Turkey on a tourist visa?"; a = "No, work requires a proper Work Visa."}
            @{q = "Can I extend my Turkey e-Visa?"; a = "No, e-Visa cannot be extended. Exit and re-apply."}
        )
        updates2026 = @(
            @{change = "e-Visa Fee"; previous = "USD 60"; current = "USD 60 (stable)"}
            @{change = "Processing"; previous = "24 hours"; current = "15-30 minutes (instant)"}
        )
        officialResources = "<li><strong>e-Visa Portal:</strong> <a href='https://www.evisa.gov.tr' target='_blank'>www.evisa.gov.tr</a></li>"
    }

    uae = @{
        name = "UAE"; capital = "Abu Dhabi"; currency = "AED"; currencyName = "UAE Dirham"
        embassy = "Embassy of UAE, New Delhi"; embassyDetail = "Consulates in Mumbai"
        visaRequired = "Yes, Indian citizens need a UAE visa"
        mainVisaTypes = "Tourist Visa (30-day, 60-day), Visit Visa, Transit Visa, Golden Visa, Work Visa, Student Visa"
        procTime = "Tourist: 3-5 working days; Transit: 24-48 hours; Golden Visa: 2-4 weeks"
        feeRange = "AED 100 (Transit) to AED 2,800 (Golden Visa)"
        financialReq = "Tourists: AED 3,000-5,000; Golden Visa: AED 1 million+ investment"
        maxStay = "Tourist 30-day/60-day; Transit: 48-96 hours; Golden Visa: 5-10 years"
        bioMandatory = "Not required for most e-Visa types"
        insuranceReq = "Travel insurance recommended; mandatory for certain visa types"
        appCenters = "Online through airlines, hotels, or travel agents"
        englishReq = "Not required for tourism"
        approvalRate = "Tourist: ~90%; Transit: ~99%"
        intro = "UAE visa for Indians offers multiple pathways for tourism, work, business, and long-term residency through the Golden Visa program."
        stats = "Over 3.5 million Indian diaspora live in the UAE, the largest expatriate community. Nearly 2 million Indian tourists visit UAE annually."
        needVisa = "Yes. Indian passport holders need a visa for all travel to the UAE. Tourist visas can be obtained through airlines, hotels, or travel agents."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Tourist Visa)"; detail = "30 or 60 day options"}
            @{can = "Transit in UAE"; answer = "Yes (Transit Visa)"; detail = "48-96 hours"}
            @{can = "Work in UAE"; answer = "Yes (Employment Visa)"; detail = "Employer sponsorship required"}
            @{can = "Study at UAE university"; answer = "Yes (Student Visa)"; detail = "University admission required"}
            @{can = "Live permanently"; answer = "Yes (Golden Visa)"; detail = "5-10 year renewable residency"}
            @{can = "Visa on arrival"; answer = "No"; detail = "Visa must be obtained before travel"}
        )
        visaTypes = @(
            @{type = "30-Day Tourist Visa"; subclass = "TV"; purpose = "Tourism, family visits"; maxStay = "30 days"; processing = "3-5 days"; feeLocal = "AED 250"; feeInr = "5,200 to 5,700"}
            @{type = "60-Day Tourist Visa"; subclass = "TV"; purpose = "Extended tourism"; maxStay = "60 days"; processing = "3-5 days"; feeLocal = "AED 500"; feeInr = "10,500 to 11,500"}
            @{type = "Transit Visa"; subclass = "TV"; purpose = "Transit through UAE"; maxStay = "48-96 hours"; processing = "24-48 hours"; feeLocal = "AED 100"; feeInr = "2,100 to 2,400"}
            @{type = "Golden Visa"; subclass = "GV"; purpose = "Long-term residency"; maxStay = "5-10 years"; processing = "2-4 weeks"; feeLocal = "AED 2,800"; feeInr = "58,000 to 62,000"}
            @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "AED 1,000"; feeInr = "21,000 to 23,000"}
            @{type = "Employment Visa"; subclass = "EV"; purpose = "Salaried employment"; maxStay = "2-3 years"; processing = "2-4 weeks"; feeLocal = "AED 1,500"; feeInr = "31,000 to 34,000"}
        )
        additionalCosts = @(
            @{type = "Visa Processing Fee"; amount = "500 to 1,000"; detail = "Agent/service charge"}
            @{type = "Health Insurance"; amount = "2,000 to 5,000"; detail = "Mandatory for residence"}
            @{type = "Medical Test"; amount = "2,500 to 4,000"; detail = "For work/residence visas"}
            @{type = "Emirates ID"; amount = "1,000 to 1,500"; detail = "For residence permit"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Dubai/UAE?"; a = "Yes, Indian passport holders must obtain a visa before travel. Tourist visas are issued through airlines, hotels, or travel agents."}
            @{q = "How much does a UAE tourist visa cost?"; a = "AED 250 for 30-day visa (approximately INR 5,200-5,700) and AED 500 for 60-day visa."}
            @{q = "How long does UAE visa processing take?"; a = "3-5 working days for tourist visas. Transit visas are processed within 24-48 hours."}
            @{q = "Can Indians get UAE visa on arrival?"; a = "No, there is no visa on arrival for Indian citizens. Visa must be obtained before travel."}
            @{q = "What is the UAE Golden Visa?"; a = "A 5-10 year renewable residency visa for investors, entrepreneurs, and exceptional talents."}
            @{q = "Is travel insurance required for UAE?"; a = "Recommended but not mandatory for tourist visas. Mandatory for residence visas."}
            @{q = "Can I work in UAE on a tourist visa?"; a = "No, work requires an Employment Visa sponsored by a UAE employer."}
        )
        updates2026 = @(
            @{change = "Tourist Visa Duration"; previous = "30 days only"; current = "30 and 60 day options"}
            @{change = "Multiple Entry"; previous = "Single entry"; current = "Multiple entry available"}
            @{change = "Golden Visa Expansion"; previous = "Limited categories"; current = "Expanded to more professionals"}
        )
        officialResources = "<li><strong>UAE Visa Portal:</strong> <a href='https://smartservices.icp.gov.ae' target='_blank'>smartservices.icp.gov.ae</a></li>"
    }

    uk = @{
        name = "UK"; capital = "London"; currency = "GBP"; currencyName = "British Pound Sterling"
        embassy = "UK Visas and Immigration, New Delhi"; embassyDetail = "Application centers in Mumbai, Chennai, Kolkata, Hyderabad, Bengaluru, Chandigarh, Jalandhar, Pune, Ahmedabad, Kochi"
        visaRequired = "Yes, Indian citizens need a UK visa for all travel purposes"
        mainVisaTypes = "Standard Visitor Visa, Student Visa (Tier 4), Skilled Worker Visa, Health and Care Worker Visa, Innovator Visa, Family Visa"
        procTime = "Visitor: 3 weeks; Student: 3-4 weeks; Work: 4-8 weeks; Priority: 5 working days"
        feeRange = "GBP 100 (Visitor) to GBP 1,275 (Innovator Visa)"
        financialReq = "Visitors: GBP 100-200 per day; Students: GBP 1,023/month; Workers: GBP 25,600+ salary"
        maxStay = "Visitor: 6 months; Student: course + 2-4 months; Work: 2-5 years"
        bioMandatory = "Required for all visa categories at VFS center"
        insuranceReq = "Recommended for all; IHS surcharge mandatory for stays over 6 months"
        appCenters = "VFS Global centers across 10+ cities in India"
        englishReq = "IELTS 6.0-7.0 for Student and Work Visas; not required for Visitor"
        approvalRate = "Visitor: ~80%; Student: ~92%; Work: ~85%"
        intro = "A UK visa is a formal permission granted by UK Visas and Immigration (UKVI) allowing Indian citizens to enter the United Kingdom for tourism, study, work, or family reasons. The UK has a points-based immigration system with multiple visa categories."
        stats = "Over 600,000 Indian students are studying in the UK as of 2025, making India the largest source of international students. The Indian diaspora in the UK exceeds 1.8 million."
        needVisa = "Yes. Indian passport holders must obtain a visa before traveling to the UK for any purpose. There are no visa-free or visa-on-arrival options for Indian citizens."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (Standard Visitor)"; detail = "6 months, multiple entry"}
            @{can = "Travel for business"; answer = "Yes (Standard Visitor)"; detail = "Business meetings, conferences"}
            @{can = "Study at UK university"; answer = "Yes (Student Visa/Tier 4)"; detail = "CAS required"}
            @{can = "Work in UK"; answer = "Yes (Skilled Worker)"; detail = "Employer sponsorship, COS required"}
            @{can = "Transit through UK"; answer = "Yes (Transit Visa)"; detail = "Separate visa may be needed"}
            @{can = "Live permanently"; answer = "Yes (ILR)"; detail = "After 5 years of residence"}
        )
        visaTypes = @(
            @{type = "Standard Visitor Visa"; subclass = "V"; purpose = "Tourism, business, family visits"; maxStay = "6 months"; processing = "3 weeks"; feeLocal = "GBP 100"; feeInr = "9,900 to 10,500"}
            @{type = "Student Visa"; subclass = "Tier 4"; purpose = "Full-time university study"; maxStay = "Course + 2-4 months"; processing = "3-4 weeks"; feeLocal = "GBP 348"; feeInr = "34,500 to 36,500"}
            @{type = "Skilled Worker Visa"; subclass = "SWV"; purpose = "Skilled employment"; maxStay = "5 years"; processing = "4-8 weeks"; feeLocal = "GBP 625"; feeInr = "62,000 to 66,000"}
            @{type = "Health and Care Worker"; subclass = "HCW"; purpose = "Healthcare employment"; maxStay = "5 years"; processing = "4-6 weeks"; feeLocal = "GBP 247"; feeInr = "24,500 to 26,000"}
            @{type = "Innovator Visa"; subclass = "I"; purpose = "Business innovation"; maxStay = "3 years"; processing = "4-8 weeks"; feeLocal = "GBP 1,275"; feeInr = "1,26,000 to 1,34,000"}
            @{type = "Family Visa"; subclass = "F"; purpose = "Join family in UK"; maxStay = "2.5 years"; processing = "8-12 weeks"; feeLocal = "GBP 1,048"; feeInr = "1,04,000 to 1,10,000"}
        )
        additionalCosts = @(
            @{type = "Immigration Health Surcharge"; amount = "18,000 to 20,000 per year"; detail = "Mandatory for stays over 6 months"}
            @{type = "Biometrics/VFS Center"; amount = "1,500 to 2,000"; detail = "Paid at VFS center"}
            @{type = "Priority Processing"; amount = "8,000 to 12,000"; detail = "5 working day processing"}
            @{type = "English Test (IELTS/PTE)"; amount = "16,000 to 18,000"; detail = "Required for Student/Work"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document if not in English"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for UK?"; a = "Yes, Indian passport holders must obtain a visa before traveling to the UK."}
            @{q = "How much is UK visitor visa fee?"; a = "GBP 100 (approximately INR 9,900-10,500) for Standard Visitor Visa."}
            @{q = "How long does UK visa processing take?"; a = "Standard processing is 3 weeks. Priority (5 days) and Super Priority (24 hours) available."}
            @{q = "What is the UK Immigration Health Surcharge?"; a = "Annual fee for NHS access. GBP 470/year for students, GBP 776 for others."}
            @{q = "Is the UK visa interview mandatory?"; a = "No, most applications are decided without interview. Biometrics at VFS center is required."}
            @{q = "Can I work in UK on a student visa?"; a = "Yes, Tier 4 students can work up to 20 hours/week during term."}
            @{q = "What is the minimum bank balance for UK student visa?"; a = "Living costs for 9 months: GBP 1,023/month (London) or GBP 818/month (outside)."}
            @{q = "Can I switch to a work visa?"; a = "Yes, Student visa holders can switch to Skilled Worker visa within the UK."}
            @{q = "What is the Graduate Route?"; a = "Allows 2 years work in UK post-graduation (3 years for PhD)."}
            @{q = "What documents are needed for UK visitor visa?"; a = "Passport, form, photos, itinerary, bank statements (6 months), employment letter, IT returns."}
            @{q = "How long can I stay on a visitor visa?"; a = "Maximum 6 months per visit. Multi-year validity options available."}
            @{q = "What is the Skilled Worker salary threshold?"; a = "Minimum GBP 25,600 per year or going rate for the occupation."}
        )
        updates2026 = @(
            @{change = "Student Visa Dependents"; previous = "Allowed for most"; current = "Restricted to PhD students"}
            @{change = "Graduate Route"; previous = "2 years"; current = "2 years (unchanged)"}
            @{change = "Skilled Worker Salary"; previous = "GBP 26,200"; current = "GBP 25,600"}
            @{change = "IHS Surcharge"; previous = "GBP 624/year"; current = "GBP 776/year"}
            @{change = "eVisa System"; previous = "BRP cards"; current = "Digital eVisa status"}
        )
        officialResources = "<li><strong>GOV.UK Visa Portal:</strong> <a href='https://www.gov.uk/visas-immigration' target='_blank'>www.gov.uk/visas-immigration</a></li>"
    }

    vietnam = @{
        name = "Vietnam"; capital = "Hanoi"; currency = "VND"; currencyName = "Vietnamese Dong"
        embassy = "Embassy of Vietnam, New Delhi"; embassyDetail = "Consulates in Mumbai"
        visaRequired = "Yes, Indian citizens need a Vietnam visa"
        mainVisaTypes = "e-Visa, Visa on Arrival (VOA), Tourist Visa (1-3 months), Business Visa (1-12 months), Work Visa"
        procTime = "e-Visa: 3-5 working days; VOA letter: 2-3 working days"
        feeRange = "USD 25 (e-Visa) to USD 200 (Work Visa)"
        financialReq = "Tourists: USD 50-100 per day; varies for other categories"
        maxStay = "e-Visa: 90 days; Tourist: 1-3 months; Work: 1-2 years"
        bioMandatory = "Not required for e-Visa"
        insuranceReq = "Recommended but not mandatory"
        appCenters = "Online e-Visa portal or VOA at Vietnamese airports"
        englishReq = "Not required for tourism"
        approvalRate = "e-Visa: ~90%; VOA: ~85%"
        intro = "Vietnam visa for Indians offers e-Visa and Visa on Arrival options, making it accessible for tourism and business."
        stats = "Over 400,000 Indians visited Vietnam in 2024. Vietnam has become an increasingly popular destination for Indian tourists."
        needVisa = "Yes, but multiple options available. Indians can apply for e-Visa online or get Visa on Arrival with pre-approval letter."
        availableNotAvailable = @(
            @{can = "Travel for tourism"; answer = "Yes (e-Visa/VOA)"; detail = "Up to 90 days"}
            @{can = "Travel for business"; answer = "Yes (Business Visa)"; detail = "Multiple entry available"}
            @{can = "Study at Vietnamese university"; answer = "Yes (Student Visa)"; detail = "Requires admission"}
            @{can = "Work in Vietnam"; answer = "Yes (Work Visa)"; detail = "Employer sponsorship required"}
            @{can = "Transit without visa"; answer = "Yes (e-Visa)"; detail = "Covers transit"}
            @{can = "Visa-free entry"; answer = "No"; detail = "Visa required for Indians"}
        )
        visaTypes = @(
            @{type = "e-Visa"; subclass = "EV"; purpose = "Tourism, short visits"; maxStay = "90 days"; processing = "3-5 days"; feeLocal = "USD 25"; feeInr = "1,900 to 2,100"}
            @{type = "Visa on Arrival"; subclass = "VOA"; purpose = "Tourism, family visits"; maxStay = "30 days"; processing = "VOA letter: 2-3 days"; feeLocal = "USD 25"; feeInr = "1,900 to 2,100"}
            @{type = "Business Visa"; subclass = "DN"; purpose = "Business activities"; maxStay = "1-12 months"; processing = "5-7 days"; feeLocal = "USD 80"; feeInr = "6,100 to 6,700"}
            @{type = "Work Visa"; subclass = "LD"; purpose = "Salaried employment"; maxStay = "1-2 years"; processing = "2-4 weeks"; feeLocal = "USD 200"; feeInr = "15,200 to 16,800"}
            @{type = "Student Visa"; subclass = "DH"; purpose = "Full-time study"; maxStay = "Course duration"; processing = "2-4 weeks"; feeLocal = "USD 50"; feeInr = "3,800 to 4,200"}
        )
        additionalCosts = @(
            @{type = "Stamping Fee (VOA)"; amount = "1,100 to 1,300"; detail = "Paid at airport on arrival"}
            @{type = "e-Visa Service"; amount = "300 to 500"; detail = "Online portal fee"}
            @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
            @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
        )
        faqs = @(
            @{q = "Do Indians need a visa for Vietnam?"; a = "Yes, Indian passport holders must obtain a visa before travel. e-Visa and VOA options are available."}
            @{q = "How much is Vietnam e-Visa fee?"; a = "USD 25 (approximately INR 1,900-2,100). Payable online."}
            @{q = "How long does Vietnam e-Visa take?"; a = "3-5 working days. Apply at least a week before travel."}
            @{q = "What is Vietnam Visa on Arrival?"; a = "Obtain a pre-approval letter online, then get visa stamped at Vietnamese airport."}
            @{q = "How long can I stay in Vietnam on e-Visa?"; a = "Up to 90 days with single or multiple entry."}
            @{q = "What documents are needed for Vietnam e-Visa?"; a = "Passport with 6 months validity, digital photo, and credit card."}
            @{q = "Can I extend my Vietnam visa?"; a = "Yes, extension is possible through immigration offices in major cities."}
        )
        updates2026 = @(
            @{change = "e-Visa Duration"; previous = "30 days"; current = "90 days (extended)"}
            @{change = "Multiple Entry"; previous = "Single entry"; current = "Multiple entry e-Visa available"}
        )
        officialResources = "<li><strong>Vietnam e-Visa:</strong> <a href='https://evisa.xuatnhapcanh.gov.vn' target='_blank'>evisa.xuatnhapcanh.gov.vn</a></li>"
    }
}
