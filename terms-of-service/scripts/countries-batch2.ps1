if (-not $global:countryData) { $global:countryData = @{} }

$global:countryData["singapore"] = @{
    name = "Singapore"
    capital = "Singapore"
    currency = "SGD"
    currencyName = "Singapore Dollar"
    currencySymbol = "SGD"
    embassy = "Singapore High Commission, Chandragupta Marg, Chanakyapuri, New Delhi - 110021"
    embassyDetail = "Consulate General in Mumbai at Nariman Bhavan, 227 Nariman Point, Mumbai - 400021"
    visaRequired = "Yes, Indian citizens require a visa to enter Singapore"
    mainVisaTypes = "Tourist Visa, Business Visa, Student Visa, Work Visa, Dependent Pass"
    procTime = "3 to 5 working days for e-Visa, up to 2 weeks for other categories"
    feeRange = "SGD 30 to SGD 90 depending on visa type and duration"
    financialReq = "Minimum SGD 2,000 in bank statement or sufficient funds for stay duration"
    maxStay = "Up to 30 days per visit for tourist visa, extendable up to 90 days"
    bioMandatory = "Biometrics required for in-person applications at VFS centers"
    insuranceReq = "Travel insurance recommended but not mandatory for visa application"
    appCenters = "VFS Global centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Pune, Ahmedabad, Chandigarh, Cochin, Goa, Jaipur"
    englishReq = "No English language test required for visa applications"
    approvalRate = "Approval rate is approximately 85-90% for Indian applicants with complete documentation"
    intro = "Singapore offers a streamlined e-Visa system for Indian citizens, making it convenient to visit this bustling city-state. The visa process is handled through authorized agents or VFS Global centers across India. Most tourist visas are issued within 3-5 working days with a standard stay of up to 30 days."
    stats = "Over 1.2 million Indian tourists visited Singapore in 2024, making India one of the top source markets. Singapore Changi Airport connects to 10+ Indian cities with direct flights. Indian visitors contribute significantly to Singapore's tourism and business sectors."
    needVisa = "Yes, all Indian passport holders must obtain a visa before traveling to Singapore, except for those holding a valid Residence Permit from certain countries"
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes"; detail = "e-Visa available for tourism purposes with 30 days stay"}
        @{can = "Travel for business"; answer = "Yes"; detail = "Business visa allows meetings, conferences, and trade events"}
        @{can = "Study"; answer = "Yes"; detail = "Student Pass required for full-time courses at recognized institutions"}
        @{can = "Work"; answer = "Yes"; detail = "Employment Pass or Work Permit needed for all employment"}
        @{can = "Transit without visa"; answer = "No"; detail = "Visa-free transit only for specific nationalities, Indians need visa even for transit"}
        @{can = "Live permanently"; answer = "Yes"; detail = "Permanent Residence application possible through PR scheme"}
    )
    visaTypes = @(
        @{type = "e-Visa (Tourist)"; subclass = "eV"; purpose = "Tourism and short visits"; maxStay = "30 days"; processing = "3-5 working days"; feeLocal = "SGD 30"; feeInr = "1,800 to 2,000"}
        @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings and conferences"; maxStay = "30 days"; processing = "5-7 working days"; feeLocal = "SGD 45"; feeInr = "2,700 to 3,000"}
        @{type = "Student Pass"; subclass = "STP"; purpose = "Full-time studies"; maxStay = "Validity of course"; processing = "4-6 weeks"; feeLocal = "SGD 90"; feeInr = "5,400 to 6,000"}
        @{type = "Employment Pass"; subclass = "EP"; purpose = "Professional employment"; maxStay = "1-2 years renewable"; processing = "3-8 weeks"; feeLocal = "SGD 105"; feeInr = "6,300 to 7,000"}
        @{type = "Dependent Pass"; subclass = "DP"; purpose = "Dependents of work pass holders"; maxStay = "Same as principal pass"; processing = "2-4 weeks"; feeLocal = "SGD 30"; feeInr = "1,800 to 2,000"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "1,000 to 1,500"; detail = "VFS Global processing fee"}
        @{type = "Agent Fee"; amount = "1,500 to 3,000"; detail = "If applying through authorized agent"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "In-person submission fee"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Return passport delivery"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for Singapore?"; a = "Yes, all Indian passport holders need a visa to enter Singapore. You can apply through authorized agents or VFS Global centers in India."}
        @{q = "Can I get a visa on arrival in Singapore?"; a = "No, visa on arrival is not available for Indian citizens. You must obtain a visa before traveling to Singapore."}
        @{q = "How long does Singapore visa processing take?"; a = "Processing typically takes 3-5 working days for tourist e-Visas. Business visas and other categories may take 5-7 working days."}
        @{q = "What is the fee for a Singapore tourist visa?"; a = "The visa fee is SGD 30 (approximately INR 1,800-2,000) plus VFS service charges of INR 1,000-1,500."}
        @{q = "Can I extend my Singapore tourist visa?"; a = "Yes, tourist visa can be extended up to 90 days. Apply through Immigration and Checkpoints Authority (ICA) before expiry."}
        @{q = "What documents are required for Singapore visa?"; a = "Valid passport, filled application form, photographs, bank statements (min SGD 2,000), flight itinerary, hotel booking, and cover letter."}
        @{q = "Is travel insurance required for Singapore visa?"; a = "Travel insurance is not mandatory but highly recommended for medical coverage during your stay."}
        @{q = "Can I work on a tourist visa in Singapore?"; a = "No, working on a tourist visa is illegal. You need a valid Employment Pass or Work Permit for any employment in Singapore."}
        @{q = "How long can I stay in Singapore on a tourist visa?"; a = "Tourist visa allows a stay of up to 30 days per visit, extendable up to 90 days upon application."}
        @{q = "Where can I apply for Singapore visa in India?"; a = "Applications are submitted through VFS Global centers in major cities or through authorized travel agents."}
        @{q = "Is the Singapore e-Visa different from a regular visa?"; a = "The e-Visa is issued electronically and linked to your passport. It functions the same as a sticker visa but is paperless."}
        @{q = "What is the approval rate for Singapore visa?"; a = "Approval rate is approximately 85-90% for Indian applicants with complete and accurate documentation."}
        @{q = "Can I visit Malaysia from Singapore on a single-entry visa?"; a = "If you have a single-entry visa, leaving Singapore will invalidate the visa. You need a multiple-entry visa for cross-border travel."}
        @{q = "Do children need a separate visa for Singapore?"; a = "Yes, each individual including infants and children requires a separate visa application with full documentation."}
    )
    updates2026 = @(
        @{change = "Fee"; previous = "SGD 30 e-Visa fee unchanged"; current = "SGD 30 (no change)"}
        @{change = "Processing"; previous = "5-7 working days"; current = "3-5 working days (expedited)"}
        @{change = "Policy"; previous = "Manual submission required"; current = "Fully digital e-Visa with online verification"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.ica.gov.sg' target='_blank'>Immigration and Checkpoints Authority Singapore</a></li><li><strong>VFS Global:</strong> <a href='https://www.vfsglobal.com/singapore/india/' target='_blank'>VFS Singapore Visa Application</a></li>"
}

$global:countryData["malaysia"] = @{
    name = "Malaysia"
    capital = "Kuala Lumpur"
    currency = "MYR"
    currencyName = "Malaysian Ringgit"
    currencySymbol = "MYR"
    embassy = "High Commission of Malaysia, 50-M, Satya Marg, Chanakyapuri, New Delhi - 110021"
    embassyDetail = "Consulate General in Chennai at 7th Floor, Apex Chambers, 66 Lattice Bridge Road, Chennai - 600041"
    visaRequired = "Yes, Indian citizens need a visa for Malaysia, but e-Visa and Visa on Arrival are available"
    mainVisaTypes = "e-Visa, Visa on Arrival, Tourist Visa, Business Visa, Student Visa, Work Permit"
    procTime = "24 to 48 hours for e-Visa, same day for Visa on Arrival"
    feeRange = "MYR 100 to MYR 500 depending on visa type and processing method"
    financialReq = "Minimum MYR 1,500 in bank statement or sufficient funds for stay"
    maxStay = "Up to 30 days for e-Visa and Visa on Arrival, extendable for certain categories"
    bioMandatory = "Biometrics not required for e-Visa but required for Visa on Arrival at entry points"
    insuranceReq = "Travel insurance recommended for all visa types"
    appCenters = "Malaysia Visa Application Centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Ahmedabad, Cochin, Chandigarh, Pune"
    englishReq = "No English language test required for visa applications"
    approvalRate = "Approval rate is approximately 90-95% for Indian applicants with proper documentation"
    intro = "Malaysia offers convenient visa options for Indian citizens including e-Visa and Visa on Arrival. The e-Visa system allows for quick online applications with approvals within 24-48 hours. Malaysia is a popular destination for Indian tourists, with direct flights from major Indian cities."
    stats = "Approximately 700,000 Indian tourists visited Malaysia in 2024, showing strong recovery post-pandemic. Malaysia Airlines, AirAsia, and IndiGo offer direct flights from Delhi, Mumbai, Chennai, and Bengaluru. The country is a major destination for medical tourism and education for Indians."
    needVisa = "Yes, Indian citizens require a visa for Malaysia, but can opt for e-Visa online or Visa on Arrival at designated entry points"
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes"; detail = "e-Visa and Visa on Arrival available for tourism"}
        @{can = "Travel for business"; answer = "Yes"; detail = "Business visa available for meetings and conferences"}
        @{can = "Study"; answer = "Yes"; detail = "Student Visa required for courses at Malaysian institutions"}
        @{can = "Work"; answer = "Yes"; detail = "Employment Pass required for work in Malaysia"}
        @{can = "Transit without visa"; answer = "Yes"; detail = "120-hour transit visa available for Indian citizens at KLIA"}
        @{can = "Live permanently"; answer = "Yes"; detail = "Malaysia My Second Home (MM2H) program for long-term stay"}
    )
    visaTypes = @(
        @{type = "e-Visa"; subclass = "eV"; purpose = "Tourism and social visits"; maxStay = "30 days"; processing = "24-48 hours"; feeLocal = "MYR 100"; feeInr = "1,800 to 2,200"}
        @{type = "Visa on Arrival"; subclass = "VOA"; purpose = "Emergency tourism"; maxStay = "14 days"; processing = "Same day"; feeLocal = "MYR 200"; feeInr = "3,600 to 4,000"}
        @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings and trade"; maxStay = "30 days"; processing = "3-5 working days"; feeLocal = "MYR 200"; feeInr = "3,600 to 4,000"}
        @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time studies"; maxStay = "Course duration"; processing = "4-6 weeks"; feeLocal = "MYR 500"; feeInr = "9,000 to 10,000"}
        @{type = "Employment Pass"; subclass = "EP"; purpose = "Employment"; maxStay = "1-5 years"; processing = "4-8 weeks"; feeLocal = "MYR 400"; feeInr = "7,200 to 8,000"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "800 to 1,200"; detail = "Application center processing"}
        @{type = "Expedited Fee"; amount = "1,500 to 2,500"; detail = "Urgent processing surcharge"}
        @{type = "Translation"; amount = "500 to 1,500"; detail = "Per document if needed"}
        @{type = "Courier"; amount = "500 to 800"; detail = "Passport return delivery"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for Malaysia?"; a = "Yes, Indian passport holders need a visa. You can apply for an e-Visa online or get a Visa on Arrival at select entry points."}
        @{q = "Can I get a visa on arrival in Malaysia?"; a = "Yes, Visa on Arrival is available for Indian citizens at KLIA, Penang, Johor Bahru, Langkawi, and Kota Kinabalu airports."}
        @{q = "What is the Malaysia e-Visa processing time?"; a = "e-Visa processing takes 24-48 hours. Applications are submitted entirely online through the official Malaysia e-Visa portal."}
        @{q = "How much does a Malaysia e-Visa cost?"; a = "The e-Visa fee is MYR 100 (approximately INR 1,800-2,200) plus processing charges."}
        @{q = "Can I work in Malaysia on a tourist visa?"; a = "No, working on a tourist visa is illegal. You need an Employment Pass or Professional Visit Pass for work."}
        @{q = "What is the maximum stay on Malaysia tourist visa?"; a = "e-Visa allows 30 days stay. Visa on Arrival allows up to 14 days, non-extendable."}
        @{q = "Can Indian students study in Malaysia?"; a = "Yes, many Indian students study in Malaysia. You need a Student Visa which requires admission to a recognized institution."}
        @{q = "Is there a transit visa for Malaysia?"; a = "Yes, Indian citizens can get a 120-hour transit visa at KLIA for connecting flights to other destinations."}
        @{q = "What documents are needed for Malaysia e-Visa?"; a = "Valid passport (6 months validity), passport photo, flight booking, hotel confirmation, and bank statement."}
        @{q = "Can I extend my Malaysia tourist visa?"; a = "Tourist visa extension is possible but requires application at Immigration Department Malaysia before visa expiry."}
        @{q = "Is Malaysia visa free for Indians in 2026?"; a = "No, Malaysia has not introduced visa-free travel for Indian citizens as of 2026. e-Visa or Visa on Arrival is still required."}
        @{q = "Where can I apply for Malaysia visa in India?"; a = "Applications can be made online via the official e-Visa portal or through Malaysia Visa Application Centers in major Indian cities."}
        @{q = "What is the approval rate for Malaysia visa?"; a = "Approval rate is 90-95% for Indian applicants with complete and accurate documentation."}
        @{q = "Do I need travel insurance for Malaysia?"; a = "Travel insurance is recommended but not mandatory for the visa application process."}
    )
    updates2026 = @(
        @{change = "Fee"; previous = "MYR 100"; current = "MYR 100 (no change)"}
        @{change = "Processing"; previous = "48-72 hours"; current = "24-48 hours (faster processing)"}
        @{change = "Policy"; previous = "Limited VOA entry points"; current = "Expanded VOA to all international airports"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.imi.gov.my' target='_blank'>Immigration Department Malaysia</a></li><li><strong>e-Visa Portal:</strong> <a href='https://malaysiavisa.imi.gov.my/evisa/' target='_blank'>Malaysia e-Visa Application</a></li>"
}

$global:countryData["thailand"] = @{
    name = "Thailand"
    capital = "Bangkok"
    currency = "THB"
    currencyName = "Thai Baht"
    currencySymbol = "THB"
    embassy = "Royal Thai Embassy, 56-N, Nyaya Marg, Chanakyapuri, New Delhi - 110021"
    embassyDetail = "Consulate General in Mumbai at 3rd Floor, Jeevan Tara Building, 5 Sansad Marg, New Delhi - 110001; Honorary Consulates in Chennai, Kolkata, Bengaluru, Hyderabad"
    visaRequired = "Yes, Indian citizens need a visa for Thailand, but Visa on Arrival is available"
    mainVisaTypes = "Visa on Arrival, Tourist Visa (Single/Multiple), Business Visa, Student Visa, Work Permit, Retirement Visa"
    procTime = "15-30 minutes for Visa on Arrival, 5-7 working days for tourist visa"
    feeRange = "THB 2,000 for Visa on Arrival, THB 1,000-5,000 for other visa types"
    financialReq = "Minimum THB 20,000 per person or THB 40,000 per family for VOA"
    maxStay = "15 days for Visa on Arrival, 60 days for tourist visa (extendable by 30 days)"
    bioMandatory = "Biometrics required for Visa on Arrival and all in-person visa applications"
    insuranceReq = "Travel insurance with minimum USD 10,000 COVID-19 coverage recommended"
    appCenters = "Thai Visa Application Centers in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Ahmedabad, Chandigarh, Cochin"
    englishReq = "No English language test required for visa applications"
    approvalRate = "Approval rate is approximately 95-98% for Indian applicants meeting requirements"
    intro = "Thailand offers Visa on Arrival for Indian citizens at all major airports and border checkpoints, making it one of the most accessible destinations. For longer stays, tourists can apply for a 60-day tourist visa from the Thai embassy. Thailand remains a favorite destination for Indian travelers with its affordable luxury, beaches, and cultural attractions."
    stats = "Over 1.8 million Indian tourists visited Thailand in 2024, making India one of the top 5 source markets. Direct flights connect Delhi, Mumbai, Chennai, Bengaluru, Kolkata, and Hyderabad to Bangkok and Phuket. The Thailand tourism board targets 2.5 million Indian visitors in 2026."
    needVisa = "Yes, Indian citizens need a visa for Thailand but can obtain Visa on Arrival at all Thai airports and land borders"
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes"; detail = "VOA or tourist visa available for tourism purposes"}
        @{can = "Travel for business"; answer = "Yes"; detail = "Business visa required for meetings and conferences"}
        @{can = "Study"; answer = "Yes"; detail = "Education Visa for students enrolled in Thai institutions"}
        @{can = "Work"; answer = "Yes"; detail = "Work Permit required for all employment in Thailand"}
        @{can = "Transit without visa"; answer = "Yes"; detail = "Transit visa available for connecting flights"}
        @{can = "Live permanently"; answer = "Yes"; detail = "Retirement Visa and Thailand Elite Visa for long-term stays"}
    )
    visaTypes = @(
        @{type = "Visa on Arrival"; subclass = "VOA"; purpose = "Short tourism trips"; maxStay = "15 days"; processing = "15-30 minutes"; feeLocal = "THB 2,000"; feeInr = "4,500 to 5,000"}
        @{type = "Tourist Visa (Single)"; subclass = "TR"; purpose = "Tourism up to 60 days"; maxStay = "60 days"; processing = "5-7 working days"; feeLocal = "THB 1,000"; feeInr = "2,000 to 2,500"}
        @{type = "Tourist Visa (Multiple)"; subclass = "METV"; purpose = "Multiple tourism visits"; maxStay = "60 days per entry"; processing = "7-10 working days"; feeLocal = "THB 5,000"; feeInr = "10,000 to 11,000"}
        @{type = "Business Visa"; subclass = "B"; purpose = "Business and employment"; maxStay = "90 days"; processing = "7-14 working days"; feeLocal = "THB 2,000"; feeInr = "4,500 to 5,000"}
        @{type = "Education Visa"; subclass = "ED"; purpose = "Full-time studies"; maxStay = "1 year renewable"; processing = "4-6 weeks"; feeLocal = "THB 2,000"; feeInr = "4,500 to 5,000"}
        @{type = "Retirement Visa"; subclass = "O-A"; purpose = "Retirement in Thailand"; maxStay = "1 year renewable"; processing = "2-4 weeks"; feeLocal = "THB 5,000"; feeInr = "10,000 to 11,000"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "500 to 1,000"; detail = "Application center handling fee"}
        @{type = "VOA Photo"; amount = "200 to 300"; detail = "Counter photo if needed"}
        @{type = "Insurance"; amount = "1,000 to 2,500"; detail = "Travel insurance (recommended)"}
        @{type = "Courier"; amount = "500 to 800"; detail = "Passport return delivery"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for Thailand?"; a = "Yes, but Indians can get a Visa on Arrival (VOA) at all Thai airports and certain land borders for 15 days stay."}
        @{q = "How much does Thailand Visa on Arrival cost?"; a = "VOA costs THB 2,000 (approximately INR 4,500-5,000). Only cash payment in Thai Baht is accepted."}
        @{q = "What documents are needed for Thailand VOA?"; a = "Passport (6 months validity), return ticket, hotel booking, 2 photos, THB 20,000 financial proof, and VOA form."}
        @{q = "Can I extend my Thailand tourist visa?"; a = "Yes, tourist visa can be extended by 30 days at the Immigration Bureau in Bangkok for THB 1,900."}
        @{q = "How long can I stay in Thailand on a tourist visa?"; a = "VOA allows 15 days. E-visa or sticker visa allows 60 days, extendable by 30 more days."}
        @{q = "Is travel insurance mandatory for Thailand?"; a = "Travel insurance is recommended but not mandatory for VOA. Required for certain long-term visa categories."}
        @{q = "Can I work on a tourist visa in Thailand?"; a = "No, working on a tourist visa or VOA is strictly illegal and can lead to arrest, fines, and deportation."}
        @{q = "Where to apply for Thailand tourist visa in India?"; a = "Apply through the Royal Thai Embassy in Delhi, Consulates in Mumbai and Chennai, or Thai VFS centers in major cities."}
        @{q = "What is the Thailand e-Visa process?"; a = "Thailand offers e-Visa through the official Thai e-Visa portal. Apply online, pay fee, and receive digital approval."}
        @{q = "Can I study in Thailand on a tourist visa?"; a = "No, you need an Education Visa (ED) for studying. Tourist visa cannot be converted to student visa."}
        @{q = "Do I need a separate visa for Phuket or Krabi?"; a = "No, a single visa covers all of Thailand including Phuket, Krabi, Koh Samui, and Chiang Mai."}
        @{q = "What are the financial requirements for Thailand VOA?"; a = "You must show THB 20,000 per person or THB 40,000 per family in cash or bank statement."}
        @{q = "Is Thailand visa free in 2026?"; a = "As of 2026, temporary visa-free schemes have ended. Indians still need VOA or tourist visa for Thailand."}
        @{q = "How many Indian tourists visit Thailand annually?"; a = "Over 1.8 million Indian tourists visited Thailand in 2024, with numbers growing steadily."}
    )
    updates2026 = @(
        @{change = "Fee"; previous = "THB 2,000 VOA"; current = "THB 2,000 (no change)"}
        @{change = "Processing"; previous = "4-5 days tourist visa"; current = "5-7 working days (digital platform)"}
        @{change = "Policy"; previous = "Limited e-Visa availability"; current = "Full e-Visa rollout for all Indian applicants"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.thaiembassy.com' target='_blank'>Royal Thai Embassy</a></li><li><strong>e-Visa Portal:</strong> <a href='https://www.thaievisa.go.th' target='_blank'>Thailand e-Visa Application</a></li>"
}

$global:countryData["japan"] = @{
    name = "Japan"
    capital = "Tokyo"
    currency = "JPY"
    currencyName = "Japanese Yen"
    currencySymbol = "JPY"
    embassy = "Embassy of Japan, 50-G, Shantipath, Chanakyapuri, New Delhi - 110021"
    embassyDetail = "Consulate General in Mumbai at 1st Floor, Hoechst House, Nariman Point, Mumbai - 400021; Consulate in Chennai at 12/1 Cenetoph Road, Chennai - 600018; Consulate in Kolkata at 55 Jawaharlal Nehru Road, Kolkata - 700071; Consulate in Bengaluru at 2nd Floor, Prestige Sigma, 3 Kasturba Road, Bengaluru - 560001"
    visaRequired = "Yes, Indian citizens must obtain a visa prior to traveling to Japan"
    mainVisaTypes = "Tourist Visa (Single/Multiple), Business Visa, Student Visa, Work Visa, Dependent Visa, Working Holiday Visa"
    procTime = "5 to 7 working days for standard applications, up to 10 days for complex cases"
    feeRange = "JPY 3,000 for single-entry, JPY 6,000 for multiple-entry, plus service charges"
    financialReq = "Minimum JPY 500,000 in bank statement or equivalent for tourist visa"
    maxStay = "15 days for single-entry tourist visa, 30/90 days for multiple-entry"
    bioMandatory = "Biometrics (fingerprints and photograph) mandatory at application center"
    insuranceReq = "Travel insurance highly recommended, especially for long-term visas"
    appCenters = "VFS Global Japan Visa Application Centers in New Delhi, Mumbai, Chennai, Kolkata, Bengaluru, Hyderabad, Ahmedabad, Chandigarh, Cochin, Pune, Goa, Jaipur, Lucknow, Surat"
    englishReq = "No English language test required for visa applications"
    approvalRate = "Approval rate is approximately 70-80% for Indian applicants, significantly higher for those with travel history"
    intro = "Japan requires Indian citizens to obtain a visa prior to travel, with no visa-on-arrival facility. The application process is thorough but straightforward, requiring an interview at the embassy or VFS center. Japan's unique blend of ancient traditions and cutting-edge technology makes it a sought-after destination for Indian tourists."
    stats = "Approximately 250,000 Indian tourists visited Japan in 2024, growing steadily. Direct flights from Delhi, Mumbai, and Bengaluru to Tokyo and Osaka are operated by ANA, Japan Airlines, and Air India. The Japan National Tourism Organization actively promotes travel from India."
    needVisa = "Yes, all Indian passport holders must obtain a visa before traveling to Japan. No visa on arrival or e-Visa is available for Indian citizens"
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes"; detail = "Tourist visa required, single or multiple entry available"}
        @{can = "Travel for business"; answer = "Yes"; detail = "Business visa for meetings, conferences, and training"}
        @{can = "Study"; answer = "Yes"; detail = "Student visa required for courses at Japanese institutions"}
        @{can = "Work"; answer = "Yes"; detail = "Work visa (Engineer, Specialist in Humanities, etc.) required"}
        @{can = "Transit without visa"; answer = "No"; detail = "Transit visa required even for connecting flights"}
        @{can = "Live permanently"; answer = "Yes"; detail = "Permanent residence after 10 years of continuous stay"}
    )
    visaTypes = @(
        @{type = "Tourist Visa (Single)"; subclass = "T"; purpose = "Tourism and sightseeing"; maxStay = "15 days"; processing = "5-7 working days"; feeLocal = "JPY 3,000"; feeInr = "1,700 to 2,000"}
        @{type = "Tourist Visa (Multiple)"; subclass = "TM"; purpose = "Multiple tourism visits"; maxStay = "30 or 90 days per entry"; processing = "7-10 working days"; feeLocal = "JPY 6,000"; feeInr = "3,400 to 4,000"}
        @{type = "Business Visa"; subclass = "B"; purpose = "Business meetings and conferences"; maxStay = "15 days"; processing = "5-7 working days"; feeLocal = "JPY 3,000"; feeInr = "1,700 to 2,000"}
        @{type = "Student Visa"; subclass = "S"; purpose = "Full-time studies"; maxStay = "1-2 years"; processing = "1-2 weeks"; feeLocal = "JPY 3,000"; feeInr = "1,700 to 2,000"}
        @{type = "Work Visa"; subclass = "W"; purpose = "Employment in Japan"; maxStay = "1-5 years"; processing = "2-4 weeks"; feeLocal = "JPY 6,000"; feeInr = "3,400 to 4,000"}
    )
    additionalCosts = @(
        @{type = "VFS Service Fee"; amount = "1,200 to 1,800"; detail = "Application center processing"}
        @{type = "Interview"; amount = "0"; detail = "Personal interview at embassy or VFS center"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "For non-English/Japanese documents"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Return passport delivery"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for Japan?"; a = "Yes, all Indian passport holders need a visa before traveling to Japan. There is no visa on arrival or e-Visa facility."}
        @{q = "How long does Japan visa processing take?"; a = "Standard processing takes 5-7 working days. Multiple entry visas may take up to 10 working days."}
        @{q = "What is the fee for Japan tourist visa?"; a = "Single-entry visa costs JPY 3,000 (approx INR 1,700-2,000). Multiple-entry costs JPY 6,000 (approx INR 3,400-4,000)."}
        @{q = "What documents are required for Japan visa?"; a = "Passport, visa form, photos, ITR returns (3 years), bank statement (6 months), travel itinerary, hotel bookings, and flight reservations."}
        @{q = "Is an interview required for Japan visa?"; a = "Yes, personal appearance at the embassy or VFS center is required for biometric collection and document verification."}
        @{q = "Can I get a multiple-entry tourist visa for Japan?"; a = "Yes, if you have a strong travel history and good financial profile. Multiple entry visa allows 30 or 90 days per visit."}
        @{q = "How much bank balance is needed for Japan visa?"; a = "You should show at least JPY 500,000 (approx INR 2.5 lakhs) in bank statement along with IT returns."}
        @{q = "Can I work in Japan on a tourist visa?"; a = "No, working on a tourist visa is illegal. You need a proper work visa sponsored by a Japanese employer."}
        @{q = "What is the Japan visa approval rate for Indians?"; a = "Approval rate is 70-80% for Indian applicants. Strong ITR filings and travel history improve chances significantly."}
        @{q = "Can I extend my Japan tourist visa?"; a = "Extension is rarely granted for tourist visas. Apply for appropriate visa duration at the time of application."}
        @{q = "Is travel insurance required for Japan visa?"; a = "Travel insurance is highly recommended but not mandatory. It is required for certain long-term visa categories."}
        @{q = "Where to apply for Japan visa in India?"; a = "Apply through VFS Global centers in 14 Indian cities. Applications are accepted by jurisdiction based on your residence."}
        @{q = "Can I study in Japan without a student visa?"; a = "No, you must obtain a Student Visa (College of Technology, University, etc.) for courses longer than 90 days."}
        @{q = "Do children need a separate Japan visa?"; a = "Yes, every traveler including infants needs a separate visa application and must be present for biometric collection."}
        @{q = "Is Japan visa easy to get for Indians?"; a = "Japan visa requires thorough documentation including ITR and bank statements. It is moderately difficult compared to Southeast Asian countries."}
    )
    updates2026 = @(
        @{change = "Fee"; previous = "JPY 3,000 single"; current = "JPY 3,000 single (no change)"}
        @{change = "Processing"; previous = "7-10 working days"; current = "5-7 working days (expedited)"}
        @{change = "Policy"; previous = "Limited multiple entry"; current = "Expanded multiple entry criteria for frequent travelers"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.mofa.go.jp/japan/visa/' target='_blank'>Ministry of Foreign Affairs Japan</a></li><li><strong>VFS Global:</strong> <a href='https://www.vfsglobal.com/japan/india/' target='_blank'>VFS Japan Visa Application Center</a></li>"
}

$global:countryData["south-korea"] = @{
    name = "South Korea"
    capital = "Seoul"
    currency = "KRW"
    currencyName = "South Korean Won"
    currencySymbol = "KRW"
    embassy = "Embassy of the Republic of Korea, 9, Chandragupta Marg, Chanakyapuri, New Delhi - 110021"
    embassyDetail = "Consulate Office in Mumbai at 2nd Floor, Mafatlal Centre, Nariman Point, Mumbai - 400021"
    visaRequired = "Yes, Indian citizens need a visa for South Korea, but visa-free entry for Jeju Island"
    mainVisaTypes = "Tourist Visa (C-3-9), Business Visa (C-3-4), Student Visa (D-2), Work Visa (E-series), Working Holiday Visa (H-1)"
    procTime = "5 to 10 working days for tourist visa, up to 4 weeks for other categories"
    feeRange = "KRW 50,000 to KRW 100,000 depending on visa type and entry validity"
    financialReq = "Minimum KRW 30,000,000 in bank statement or equivalent for tourist visa"
    maxStay = "30 days for tourist visa, 90 days for multiple-entry visa"
    bioMandatory = "Biometrics (10 fingerprints and photo) mandatory for all visa applicants"
    insuranceReq = "Travel insurance mandatory for all visa types with minimum KRW 30,000,000 coverage"
    appCenters = "Korea Visa Application Centers (KVAC) in New Delhi, Mumbai, Chennai, Bengaluru, Hyderabad, Kolkata, Pune, Ahmedabad"
    englishReq = "No English language test required for visa applications"
    approvalRate = "Approval rate is approximately 75-85% for Indian applicants with proper documentation"
    intro = "South Korea requires Indian citizens to obtain a visa prior to travel, except for Jeju Island which offers visa-free entry. The Korean visa process is detailed, requiring biometric enrollment and comprehensive documentation. South Korea has become increasingly popular among Indian travelers for its K-culture, technology, and scenic beauty."
    stats = "Approximately 180,000 Indian tourists visited South Korea in 2024, boosted by K-pop and K-drama popularity. Direct flights connect Delhi, Mumbai, and Chennai to Seoul and Busan. The Korea Tourism Organization expects Indian arrivals to exceed 300,000 by 2027."
    needVisa = "Yes, Indian passport holders need a visa for South Korea mainland, but Jeju Island is visa-free for 30 days"
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes"; detail = "Tourist visa (C-3-9) required for mainland Korea"}
        @{can = "Travel for business"; answer = "Yes"; detail = "Business visa (C-3-4) for meetings and conferences"}
        @{can = "Study"; answer = "Yes"; detail = "Student visa (D-2) for degree programs"}
        @{can = "Work"; answer = "Yes"; detail = "Work visa (E-series) for employment"}
        @{can = "Transit without visa"; answer = "Yes"; detail = "30-day transit visa-free for US/Canada visa holders"}
        @{can = "Live permanently"; answer = "Yes"; detail = "F-5 permanent residence after qualifying period"}
    )
    visaTypes = @(
        @{type = "Tourist Visa (Single)"; subclass = "C-3-9"; purpose = "Tourism and short visits"; maxStay = "30 days"; processing = "5-10 working days"; feeLocal = "KRW 50,000"; feeInr = "3,000 to 3,500"}
        @{type = "Tourist Visa (Multiple)"; subclass = "C-3-9"; purpose = "Multiple tourism visits"; maxStay = "30 days per entry"; processing = "7-14 working days"; feeLocal = "KRW 80,000"; feeInr = "5,000 to 5,500"}
        @{type = "Business Visa"; subclass = "C-3-4"; purpose = "Business activities"; maxStay = "30 days"; processing = "5-10 working days"; feeLocal = "KRW 50,000"; feeInr = "3,000 to 3,500"}
        @{type = "Student Visa"; subclass = "D-2"; purpose = "Degree programs"; maxStay = "6 months to 2 years"; processing = "2-4 weeks"; feeLocal = "KRW 80,000"; feeInr = "5,000 to 5,500"}
        @{type = "Work Visa"; subclass = "E-7"; purpose = "Specialized employment"; maxStay = "1-3 years"; processing = "4-8 weeks"; feeLocal = "KRW 100,000"; feeInr = "6,500 to 7,000"}
    )
    additionalCosts = @(
        @{type = "KVAC Service Fee"; amount = "1,000 to 1,500"; detail = "Application center processing fee"}
        @{type = "Biometrics"; amount = "0"; detail = "Included in service fee"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "For documents not in English or Korean"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Return passport delivery"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for South Korea?"; a = "Yes, Indian passport holders need a visa for mainland South Korea. Jeju Island is visa-free for 30 days."}
        @{q = "Can I travel to Jeju Island without a visa?"; a = "Yes, Indian citizens can visit Jeju Island visa-free for up to 30 days, but cannot travel to mainland Korea."}
        @{q = "How long does South Korea visa processing take?"; a = "Standard processing takes 5-10 working days. Multiple entry and work visas take longer up to 4 weeks."}
        @{q = "What is the fee for South Korea tourist visa?"; a = "Single-entry visa costs KRW 50,000 (approx INR 3,000-3,500). Multiple-entry costs KRW 80,000 (approx INR 5,000-5,500)."}
        @{q = "What documents are required for Korea visa?"; a = "Passport, application form, photos, bank statement (3 months), IT returns (2 years), employment letter, flight and hotel bookings."}
        @{q = "Is biometric data required for Korea visa?"; a = "Yes, all applicants aged 17 and above must provide 10 fingerprints and a digital photograph at the application center."}
        @{q = "Can I transit through South Korea without a visa?"; a = "Yes, if you hold a US, Canada, Australia, New Zealand, or Schengen visa, you can transit visa-free for 30 days."}
        @{q = "What financial proof is needed for Korea visa?"; a = "Minimum KRW 30,000,000 (approx INR 18 lakhs) in bank balance or consistent salary credits showing financial stability."}
        @{q = "Is travel insurance mandatory for Korea visa?"; a = "Yes, travel insurance with minimum KRW 30,000,000 coverage is mandatory for all visa categories."}
        @{q = "Can I work on a tourist visa in South Korea?"; a = "No, working on a tourist visa is illegal. You need a valid work visa (E-series) sponsored by a Korean employer."}
        @{q = "Where to apply for Korea visa in India?"; a = "Applications are submitted at Korea Visa Application Centers (KVAC) in 8 major Indian cities."}
        @{q = "Can I extend my Korea tourist visa?"; a = "Extension is possible at the Immigration Office in Korea for valid reasons, but must be applied before expiry."}
        @{q = "What is the approval rate for Korea visa?"; a = "Approval rate is 75-85% for Indian applicants. Strong documentation and travel history improve chances."}
        @{q = "Is the Korea visa interview required?"; a = "Interview may be required in some cases. Biometric collection is mandatory for all applicants."}
        @{q = "Can Indian students study in South Korea?"; a = "Yes, many Indian students study in Korean universities. Student visa (D-2) requires admission letter and financial proof."}
    )
    updates2026 = @(
        @{change = "Fee"; previous = "KRW 50,000 single"; current = "KRW 50,000 single (no change)"}
        @{change = "Processing"; previous = "7-14 working days"; current = "5-10 working days (expedited)"}
        @{change = "Policy"; previous = "Paper application only"; current = "Digital application with online submission available"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.mofa.go.kr/visa/' target='_blank'>Ministry of Foreign Affairs Korea Visa Portal</a></li><li><strong>KVAC:</strong> <a href='https://www.kvacindia.com' target='_blank'>Korea Visa Application Center India</a></li>"
}

$global:countryData["china"] = @{
    name = "China"
    capital = "Beijing"
    currency = "CNY"
    currencyName = "Chinese Yuan Renminbi"
    currencySymbol = "CNY"
    embassy = "Embassy of the People's Republic of China, 50-D, Shantipath, Chanakyapuri, New Delhi - 110021"
    embassyDetail = "Consulate General in Mumbai at 7th Floor, Hoechst House, Nariman Point, Mumbai - 400021; Consulate General in Kolkata at 8, OAK Lane, Kolkata - 700071"
    visaRequired = "Yes, Indian citizens must obtain a visa prior to traveling to China"
    mainVisaTypes = "Tourist Visa (L), Business Visa (M), Student Visa (X1/X2), Work Visa (Z), Transit Visa (G), Crew Visa (C)"
    procTime = "4 to 7 working days for standard applications, express service available"
    feeRange = "CNY 800 to CNY 1,500 depending on visa type and entry count"
    financialReq = "Minimum CNY 50,000 in bank statement or equivalent for tourist visa"
    maxStay = "30 days for tourist visa, up to 180 days for student visa"
    bioMandatory = "Biometrics (10 fingerprints) mandatory for all applicants aged 14-70"
    insuranceReq = "Travel insurance strongly recommended, not mandatory for L visa"
    appCenters = "China Visa Application Service Centers (CVASC) in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad, Ahmedabad"
    englishReq = "No English language test required for visa applications"
    approvalRate = "Approval rate is approximately 65-75% for Indian applicants with complete documentation"
    intro = "China requires all Indian citizens to obtain a visa before travel, with no visa-on-arrival facility. The application process involves detailed documentation and biometric enrollment at designated centers. Despite the paperwork, China remains an important destination for Indian business travelers, students, and tourists interested in its vast cultural heritage."
    stats = "Approximately 150,000 Indian tourists visited China in 2024, with numbers recovering steadily. Direct flights from Delhi, Mumbai, and Bengaluru connect to Beijing, Shanghai, Guangzhou, and Chengdu. Business and student visas constitute a significant portion of Chinese visa applications from India."
    needVisa = "Yes, all Indian passport holders must obtain a visa before traveling to mainland China"
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes"; detail = "L tourist visa required for tourism purposes"}
        @{can = "Travel for business"; answer = "Yes"; detail = "M business visa for commercial activities"}
        @{can = "Study"; answer = "Yes"; detail = "X1 (long-term) or X2 (short-term) student visa"}
        @{can = "Work"; answer = "Yes"; detail = "Z work visa with Residence Permit required"}
        @{can = "Transit without visa"; answer = "Yes"; detail = "24-hour transit visa-free at major airports; 144-hour for certain cities"}
        @{can = "Live permanently"; answer = "Yes"; detail = "Foreign Permanent Resident Card available for eligible applicants"}
    )
    visaTypes = @(
        @{type = "Tourist Visa (L)"; subclass = "L"; purpose = "Tourism and sightseeing"; maxStay = "30 days"; processing = "4-7 working days"; feeLocal = "CNY 800"; feeInr = "9,000 to 10,000"}
        @{type = "Business Visa (M)"; subclass = "M"; purpose = "Business and trade"; maxStay = "30 days"; processing = "4-7 working days"; feeLocal = "CNY 800"; feeInr = "9,000 to 10,000"}
        @{type = "Student Visa (X1)"; subclass = "X1"; purpose = "Long-term studies (over 180 days)"; maxStay = "180 days +"; processing = "7-14 working days"; feeLocal = "CNY 1,200"; feeInr = "13,000 to 14,500"}
        @{type = "Student Visa (X2)"; subclass = "X2"; purpose = "Short-term studies (under 180 days)"; maxStay = "180 days"; processing = "4-7 working days"; feeLocal = "CNY 800"; feeInr = "9,000 to 10,000"}
        @{type = "Work Visa (Z)"; subclass = "Z"; purpose = "Employment in China"; maxStay = "30 days + Residence Permit"; processing = "2-4 weeks"; feeLocal = "CNY 1,500"; feeInr = "16,000 to 18,000"}
        @{type = "Transit Visa (G)"; subclass = "G"; purpose = "Transit through China"; maxStay = "24-144 hours"; processing = "3-5 working days"; feeLocal = "CNY 400"; feeInr = "4,500 to 5,000"}
    )
    additionalCosts = @(
        @{type = "CVASC Service Fee"; amount = "1,200 to 1,800"; detail = "Application center processing fee"}
        @{type = "Express Fee"; amount = "2,000 to 3,000"; detail = "Urgent processing (1-2 days)"}
        @{type = "Biometrics"; amount = "0"; detail = "Included in service fee"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Return passport delivery"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for China?"; a = "Yes, all Indian passport holders need a visa to enter mainland China. There is no visa on arrival or e-Visa facility for Indians."}
        @{q = "How long does China visa processing take?"; a = "Standard processing takes 4-7 working days. Express service (1-2 days) is available at additional cost."}
        @{q = "What is the fee for China tourist visa?"; a = "Tourist visa fee is CNY 800 (approximately INR 9,000-10,000) plus CVASC service charges of INR 1,200-1,800."}
        @{q = "What documents are required for China visa?"; a = "Passport (6 months validity), visa form with photo, hotel booking, flight itinerary, bank statement, employment letter, and round trip ticket."}
        @{q = "Is biometric data required for China visa?"; a = "Yes, all applicants aged 14-70 must provide 10 fingerprints at the visa application center."}
        @{q = "Can I transit through China without a visa?"; a = "Yes, 24-hour transit visa-free is available at major airports. 144-hour transit is available for certain cities like Beijing, Shanghai, and Guangzhou."}
        @{q = "Is travel insurance required for China?"; a = "Travel insurance is strongly recommended but not mandatory for the L tourist visa application."}
        @{q = "Can I work on a tourist visa in China?"; a = "No, working on a tourist visa is illegal. You need a Z work visa with a Residence Permit."}
        @{q = "Where to apply for China visa in India?"; a = "Applications are submitted at China Visa Application Service Centers (CVASC) in 7 Indian cities."}
        @{q = "Can I extend my China tourist visa?"; a = "Yes, visa extension is possible at the local Exit and Entry Administration Bureau in China before expiry."}
        @{q = "What is the China visa approval rate for Indians?"; a = "Approval rate is 65-75% for Indian applicants. Incomplete documentation is the main reason for rejection."}
        @{q = "Can Indian students study in China?"; a = "Yes, thousands of Indian students study in China, especially medical students. X1 or X2 visa required."}
        @{q = "Do I need a visa for Hong Kong and Macau?"; a = "Hong Kong and Macau have separate visa policies. Indian citizens may need separate visas for these regions."}
        @{q = "Is there a visa-free policy for Hainan Island?"; a = "Yes, 30-day visa-free entry is available for Hainan Island for Indian group travelers through registered travel agencies."}
        @{q = "What is the financial requirement for China visa?"; a = "Minimum CNY 50,000 (approximately INR 5.5 lakhs) in bank statement is recommended for tourist visa applications."}
    )
    updates2026 = @(
        @{change = "Fee"; previous = "CNY 800"; current = "CNY 800 (no change)"}
        @{change = "Processing"; previous = "4-7 working days"; current = "4-7 working days (stable)"}
        @{change = "Policy"; previous = "Limited transit cities"; current = "Expanded 144-hour transit to more Chinese cities"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.visaforchina.org' target='_blank'>China Visa Application Service Center</a></li><li><strong>Embassy:</strong> <a href='http://in.china-embassy.gov.cn' target='_blank'>Chinese Embassy in India</a></li>"
}

$global:countryData["vietnam"] = @{
    name = "Vietnam"
    capital = "Hanoi"
    currency = "VND"
    currencyName = "Vietnamese Dong"
    currencySymbol = "VND"
    embassy = "Embassy of Vietnam, 17, Kautilya Marg, Chanakyapuri, New Delhi - 110021"
    embassyDetail = "Consulate General in Mumbai at 5th Floor, Mafatlal House, H.T. Parekh Marg, Backbay Reclamation, Mumbai - 400020"
    visaRequired = "Yes, Indian citizens need a visa for Vietnam, but e-Visa and Visa on Arrival are available"
    mainVisaTypes = "e-Visa, Visa on Arrival, Tourist Visa, Business Visa, Student Visa, Work Visa"
    procTime = "3 to 5 working days for e-Visa, same day for Visa on Arrival"
    feeRange = "VND 500,000 to VND 1,500,000 depending on visa type"
    financialReq = "Minimum VND 20,000,000 in bank statement or equivalent"
    maxStay = "30 days for e-Visa, 15-30 days for VOA, up to 90 days for tourist visa"
    bioMandatory = "Biometrics required for in-person applications at embassy"
    insuranceReq = "Travel insurance recommended but not mandatory for visa application"
    appCenters = "Vietnam Visa Application through VFS Global in New Delhi, Mumbai, Kolkata, Chennai, Bengaluru, Hyderabad"
    englishReq = "No English language test required for visa applications"
    approvalRate = "Approval rate is approximately 95-98% for Indian applicants with complete documentation"
    intro = "Vietnam offers convenient e-Visa and Visa on Arrival options for Indian citizens, making it easy to visit this beautiful Southeast Asian country. The e-Visa process is entirely online with approvals within 3-5 working days. Vietnam has become a top choice for Indian travelers seeking affordable yet exotic destinations."
    stats = "Over 500,000 Indian tourists visited Vietnam in 2024, a significant increase from previous years. Direct flights from Delhi, Mumbai, and Chennai connect to Hanoi and Ho Chi Minh City. Vietnam offers excellent value for money with affordable accommodations, food, and experiences."
    needVisa = "Yes, Indian citizens need a visa for Vietnam but can easily obtain an e-Visa online or Visa on Arrival"
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes"; detail = "e-Visa and Visa on Arrival available for tourism"}
        @{can = "Travel for business"; answer = "Yes"; detail = "Business visa for meetings and commercial activities"}
        @{can = "Study"; answer = "Yes"; detail = "Student visa required for studies in Vietnam"}
        @{can = "Work"; answer = "Yes"; detail = "Work permit required for employment in Vietnam"}
        @{can = "Transit without visa"; answer = "Yes"; detail = "Transit visa-free for certain airport transits"}
        @{can = "Live permanently"; answer = "No"; detail = "No permanent residence pathway for foreigners"}
    )
    visaTypes = @(
        @{type = "e-Visa"; subclass = "EV"; purpose = "Tourism and short visits"; maxStay = "30 days"; processing = "3-5 working days"; feeLocal = "VND 500,000"; feeInr = "1,700 to 2,000"}
        @{type = "Visa on Arrival"; subclass = "VOA"; purpose = "Tourism with pre-approval letter"; maxStay = "15-30 days"; processing = "1-2 working days for letter"; feeLocal = "VND 600,000"; feeInr = "2,000 to 2,500"}
        @{type = "Tourist Visa (3 months)"; subclass = "TV"; purpose = "Extended tourism"; maxStay = "90 days"; processing = "5-7 working days"; feeLocal = "VND 1,000,000"; feeInr = "3,500 to 4,000"}
        @{type = "Business Visa"; subclass = "BV"; purpose = "Business activities"; maxStay = "90 days"; processing = "5-7 working days"; feeLocal = "VND 1,200,000"; feeInr = "4,000 to 4,500"}
        @{type = "Work Visa"; subclass = "LD"; purpose = "Employment"; maxStay = "1-2 years"; processing = "2-4 weeks"; feeLocal = "VND 1,500,000"; feeInr = "5,000 to 5,500"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "800 to 1,200"; detail = "Visa agency processing fee"}
        @{type = "VOA Stamp Fee"; amount = "1,500 to 2,000"; detail = "Paid at Vietnam airport for VOA"}
        @{type = "Translation"; amount = "500 to 1,500"; detail = "Per document if needed"}
        @{type = "Courier"; amount = "500 to 800"; detail = "Passport return delivery"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for Vietnam?"; a = "Yes, but Indians can easily get an e-Visa online or obtain a Visa on Arrival with a pre-approval letter."}
        @{q = "How much does Vietnam e-Visa cost?"; a = "e-Visa costs VND 500,000 (approximately INR 1,700-2,000). VOA has additional stamping fee at the airport."}
        @{q = "What is the Vietnam e-Visa processing time?"; a = "Processing takes 3-5 working days. The e-Visa is sent via email and printed for presentation upon arrival."}
        @{q = "Can I get a visa on arrival in Vietnam?"; a = "Yes, Visa on Arrival requires a pre-approval letter from a licensed Vietnamese travel agency before travel."}
        @{q = "How long can I stay in Vietnam on an e-Visa?"; a = "e-Visa allows 30 days stay, single entry. A 3-month tourist visa allows up to 90 days stay."}
        @{q = "What documents are needed for Vietnam e-Visa?"; a = "Passport (6 months validity), digital photo, and credit/debit card for payment. No paper documents needed."}
        @{q = "Can I work on a tourist visa in Vietnam?"; a = "No, working on a tourist visa is illegal. You need a work permit and LD visa for employment."}
        @{q = "Is travel insurance required for Vietnam?"; a = "Travel insurance is recommended but not mandatory for the e-Visa application."}
        @{q = "Can I extend my Vietnam tourist visa?"; a = "Yes, visa extension is possible through a travel agency in Vietnam. Apply before visa expiry."}
        @{q = "Where do I apply for Vietnam e-Visa?"; a = "Apply through the official Vietnam Immigration Department e-Visa portal at evisa.xuatnhapcanh.gov.vn."}
        @{q = "What is the Vietnam visa approval rate?"; a = "Approval rate is 95-98% for Indian applicants. The e-Visa system is automated and straightforward."}
        @{q = "Can I study in Vietnam on a tourist visa?"; a = "No, you need a student visa for any course. Tourist visa cannot be converted to student visa."}
        @{q = "Do I need a visa for Phu Quoc Island?"; a = "No, Phu Quoc Island is visa-free for Indian citizens for up to 30 days if arriving directly."}
        @{q = "Is Vietnam visa free for Indians in 2026?"; a = "No, Vietnam has not announced visa-free travel for Indian citizens as of 2026."}
    )
    updates2026 = @(
        @{change = "Fee"; previous = "VND 500,000 e-Visa"; current = "VND 500,000 e-Visa (no change)"}
        @{change = "Processing"; previous = "3-5 working days"; current = "3-5 working days (stable)"}
        @{change = "Policy"; previous = "30-day e-Visa only"; current = "Extended e-Visa validity options including 90-day"}
    )
    officialResources = "<li><strong>Official e-Visa:</strong> <a href='https://evisa.xuatnhapcanh.gov.vn' target='_blank'>Vietnam e-Visa Portal</a></li><li><strong>Embassy:</strong> <a href='https://vnembassy-newdelhi.mofa.gov.vn' target='_blank'>Vietnam Embassy in India</a></li>"
}

$global:countryData["indonesia"] = @{
    name = "Indonesia"
    capital = "Jakarta"
    currency = "IDR"
    currencyName = "Indonesian Rupiah"
    currencySymbol = "IDR"
    embassy = "Embassy of the Republic of Indonesia, 50-A, Kautilya Marg, Chanakyapuri, New Delhi - 110021"
    embassyDetail = "Consulate General in Mumbai at 2nd Floor, Dalamal Towers, Nariman Point, Mumbai - 400021"
    visaRequired = "Yes, Indian citizens need a visa for Indonesia, but Visa on Arrival is available"
    mainVisaTypes = "Visa on Arrival, Tourist Visa (Single/Multiple), Business Visa, Student Visa, Work Visa, Retirement Visa"
    procTime = "15-30 minutes for Visa on Arrival, 5-7 working days for advance visa"
    feeRange = "IDR 500,000 for Visa on Arrival, IDR 1,000,000-5,000,000 for other visa types"
    financialReq = "Minimum USD 1,000 or equivalent in bank statement for tourist visa"
    maxStay = "30 days for VOA (extendable by 30 days), 60 days for tourist visa"
    bioMandatory = "Biometrics required for Visa on Arrival at Indonesian airports"
    insuranceReq = "Travel insurance recommended but not mandatory for visa application"
    appCenters = "Indonesian Visa Application through VFS Global in New Delhi, Mumbai, Chennai, Bengaluru, Hyderabad, Kolkata"
    englishReq = "No English language test required for visa applications"
    approvalRate = "Approval rate is approximately 95-98% for Indian applicants meeting requirements"
    intro = "Indonesia offers Visa on Arrival for Indian citizens at Bali Ngurah Rai and all major Indonesian airports, making it incredibly convenient. The country is especially popular for Bali, which is among the top beach destinations for Indian travelers. For longer stays, advance tourist visas and other categories are available."
    stats = "Over 600,000 Indian tourists visited Indonesia in 2024, with Bali being the primary destination. Direct flights from Delhi, Mumbai, and Bengaluru connect to Jakarta and Bali. India is among the top 10 source markets for Indonesian tourism."
    needVisa = "Yes, Indian citizens need a visa for Indonesia but can obtain Visa on Arrival at all major entry points"
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes"; detail = "Visa on Arrival available at major airports and seaports"}
        @{can = "Travel for business"; answer = "Yes"; detail = "Business visa for meetings and commercial activities"}
        @{can = "Study"; answer = "Yes"; detail = "Student visa required for studies in Indonesia"}
        @{can = "Work"; answer = "Yes"; detail = "Work permit (IMTA) and work visa required"}
        @{can = "Transit without visa"; answer = "Yes"; detail = "Transit visa-free for up to 14 days at certain airports"}
        @{can = "Live permanently"; answer = "Yes"; detail = "Retirement visa for those aged 55+, valid for 5 years"}
    )
    visaTypes = @(
        @{type = "Visa on Arrival"; subclass = "VOA"; purpose = "Tourism and short visits"; maxStay = "30 days"; processing = "15-30 minutes"; feeLocal = "IDR 500,000"; feeInr = "2,500 to 3,000"}
        @{type = "Tourist Visa (Advance)"; subclass = "TV"; purpose = "Pre-arranged tourism"; maxStay = "60 days"; processing = "5-7 working days"; feeLocal = "IDR 1,000,000"; feeInr = "5,000 to 5,500"}
        @{type = "Business Visa"; subclass = "BV"; purpose = "Business activities"; maxStay = "60 days"; processing = "5-7 working days"; feeLocal = "IDR 1,500,000"; feeInr = "7,500 to 8,000"}
        @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time studies"; maxStay = "1 year renewable"; processing = "4-6 weeks"; feeLocal = "IDR 3,000,000"; feeInr = "15,000 to 16,000"}
        @{type = "Retirement Visa"; subclass = "RV"; purpose = "Retirement in Indonesia"; maxStay = "5 years"; processing = "2-4 weeks"; feeLocal = "IDR 5,000,000"; feeInr = "25,000 to 27,000"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "500 to 1,000"; detail = "VFS application center fee"}
        @{type = "VOA Payment"; amount = "2,500 to 3,000"; detail = "Paid at airport counter in IDR or USD"}
        @{type = "Translation"; amount = "500 to 1,500"; detail = "Per document if needed"}
        @{type = "Courier"; amount = "500 to 800"; detail = "Return passport delivery"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for Indonesia?"; a = "Yes, but Indians can get a Visa on Arrival (VOA) at all major Indonesian airports and seaports."}
        @{q = "How much does Indonesia VOA cost?"; a = "VOA costs IDR 500,000 (approximately INR 2,500-3,000). Payment in IDR or USD cash at the airport."}
        @{q = "How long does Indonesia VOA take?"; a = "VOA processing takes 15-30 minutes at the airport. Have your passport, return ticket, and payment ready."}
        @{q = "What documents are needed for Indonesia VOA?"; a = "Passport (6 months validity), return ticket, hotel booking, and VOA fee payment."}
        @{q = "Can I extend my Indonesia VOA?"; a = "Yes, VOA can be extended once for an additional 30 days. Apply at the Immigration Office in Indonesia."}
        @{q = "How much bank balance is needed for Indonesia visa?"; a = "Recommended minimum of USD 1,000 or equivalent in bank statement for tourist visa applicants."}
        @{q = "Can I work on a tourist visa in Indonesia?"; a = "No, working on VOA or tourist visa is illegal. You need a work permit (IMTA) and work visa."}
        @{q = "Is travel insurance required for Indonesia?"; a = "Travel insurance is recommended but not mandatory for visa on arrival."}
        @{q = "Can I visit Bali on VOA?"; a = "Yes, Bali is the most popular VOA destination. VOA is available at Ngurah Rai International Airport in Bali."}
        @{q = "Where to apply for Indonesia visa in India?"; a = "VOA is obtained on arrival. Advance visas can be applied through VFS Global or Indonesian Embassy."}
        @{q = "What is the Indonesia visa approval rate?"; a = "Approval rate is 95-98%. VOA is almost always granted if requirements are met."}
        @{q = "Can Indian students study in Indonesia?"; a = "Yes, student visas are available for courses at Indonesian universities and language schools."}
        @{q = "Is there a retirement visa for Indonesia?"; a = "Yes, Indonesia offers a 5-year retirement visa for those aged 55+. Requires proof of pension or funds."}
        @{q = "Do I need a visa for transit in Indonesia?"; a = "Transit visa-free is available for up to 14 days at certain Indonesian airports."}
    )
    updates2026 = @(
        @{change = "Fee"; previous = "IDR 500,000 VOA"; current = "IDR 500,000 VOA (no change)"}
        @{change = "Processing"; previous = "VOA at select airports"; current = "VOA expanded to all international airports"}
        @{change = "Policy"; previous = "30 days VOA non-extendable"; current = "30 days VOA with one-time 30 day extension"}
    )
    officialResources = "<li><strong>Official Site:</strong> <a href='https://www.imigrasi.go.id' target='_blank'>Directorate General of Immigration Indonesia</a></li><li><strong>Embassy:</strong> <a href='https://kemlu.go.id/newdelhi' target='_blank'>Indonesian Embassy in New Delhi</a></li>"
}
