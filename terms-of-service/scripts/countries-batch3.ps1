if (-not $global:countryData) { $global:countryData = @{} }

$global:countryData["uae"] = @{
    name = "UAE"
    capital = "Abu Dhabi"
    currency = "AED"
    currencyName = "UAE Dirham"
    currencySymbol = "AED"
    embassy = "Embassy of the UAE, New Delhi - Chanakyapuri"
    embassyDetail = "Also Consulate in Mumbai"
    visaRequired = "Visa-on-arrival for Indian citizens"
    mainVisaTypes = "Tourist eVisa, Transit Visa, Visit Visa, Student Visa, Work Visa"
    procTime = "3 to 10 working days"
    feeRange = "AED 100 to AED 3,000"
    financialReq = "Bank statements for last 3-6 months, minimum balance of INR 1,00,000 recommended"
    maxStay = "Up to 90 days on tourist visa"
    bioMandatory = "Not required for most visa types"
    insuranceReq = "Recommended but not mandatory"
    appCenters = "VFS Global centres across all major Indian cities"
    englishReq = "Not required for tourist/visit visas"
    approvalRate = "High (above 85%)"
    intro = "The UAE has become one of the most popular destinations for Indian travellers, offering a visa-on-arrival facility for Indian citizens with a valid US visa, UK residence visa, or EU residence permit. For others, the eVisa and regular visit visa processes are straightforward and quick."
    stats = "Over 3.9 million Indian tourists visited the UAE in 2024, making India the largest source market for UAE tourism. The UAE is home to more than 3.5 million Indian expatriates, the largest expatriate community in the country."
    needVisa = "Visa required. However, Indian citizens can get a visa-on-arrival if they hold a valid US visa, UK residence visa, or EU residence permit."
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes, visa-on-arrival or eVisa"; detail = "Indians can get 14-day visa-on-arrival with US/UK/EU visas, or apply for eVisa/visit visa"}
        @{can = "Travel for business meetings"; answer = "Yes, business visa available"; detail = "Business visa sponsored by UAE company, or visa-on-arrival with valid visas"}
        @{can = "Study at university"; answer = "Yes, student visa"; detail = "Requires admission to a UAE university and student visa sponsorship"}
        @{can = "Work as a professional"; answer = "Yes, employment visa"; detail = "Requires a job offer from a UAE employer who sponsors the visa"}
        @{can = "Transit without visa"; answer = "Yes, for short layovers"; detail = "48-hour transit visa available for Indian passport holders"}
        @{can = "Live permanently"; answer = "No, but long-term residency available"; detail = "Golden Visa and Green Visa programs for investors, entrepreneurs, and skilled professionals"}
    )
    visaTypes = @(
        @{type = "Tourist Visa"; subclass = "TV"; purpose = "Tourism, family visits"; maxStay = "30-90 days"; processing = "3-5 working days"; feeLocal = "AED 300"; feeInr = "6,800 to 7,100"}
        @{type = "eVisa"; subclass = "EV"; purpose = "Tourism, short visits"; maxStay = "30 days"; processing = "3-5 working days"; feeLocal = "AED 350"; feeInr = "7,500 to 8,200"}
        @{type = "Transit Visa"; subclass = "TR"; purpose = "Transit through UAE"; maxStay = "48-96 hours"; processing = "2-3 working days"; feeLocal = "AED 100"; feeInr = "2,300 to 2,500"}
        @{type = "Visit Visa"; subclass = "VV"; purpose = "Family visit, short stay"; maxStay = "30-90 days"; processing = "3-5 working days"; feeLocal = "AED 500"; feeInr = "10,500 to 11,500"}
        @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "1 year (renewable)"; processing = "2-4 weeks"; feeLocal = "AED 1,500"; feeInr = "32,000 to 35,000"}
        @{type = "Employment Visa"; subclass = "EV"; purpose = "Employment"; maxStay = "2-3 years"; processing = "2-4 weeks"; feeLocal = "AED 2,500"; feeInr = "55,000 to 60,000"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "1,000 to 2,000"; detail = "VFS Global processing fee"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "If applicable"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
    )
    faqs = @(
        @{q = "Can Indian citizens get a visa-on-arrival in UAE?"; a = "Yes, Indian citizens holding a valid US visa, UK residence visa, or EU residence permit can get a 14-day visa-on-arrival at UAE airports."}
        @{q = "How long does it take to get a UAE tourist visa from India?"; a = "Typically 3-5 working days through VFS Global or airline-sponsored visa services."}
        @{q = "What is the cost of a UAE tourist visa for Indians?"; a = "A 30-day tourist visa costs approximately AED 300 (INR 6,800 to 7,100) plus service fees."}
        @{q = "Can I extend my UAE tourist visa while in Dubai?"; a = "Yes, you can apply for a 30-day extension once without leaving the country."}
        @{q = "Is UAE safe for Indian tourists?"; a = "Yes, UAE is extremely safe with very low crime rates. It is one of the most popular destinations for Indian families."}
        @{q = "What documents are needed for UAE visa from India?"; a = "Valid passport (6 months validity), passport-size photos, confirmed return ticket, hotel booking, bank statements, and visa application form."}
        @{q = "Do Indian students need a visa to study in UAE?"; a = "Yes, you need a student visa sponsored by the university. The visa is typically valid for one year and renewable."}
        @{q = "Can I work in UAE with a tourist visa?"; a = "No, working on a tourist visa is illegal in UAE. You need a proper employment visa sponsored by an employer."}
        @{q = "What is the UAE Golden Visa for Indians?"; a = "The Golden Visa is a 10-year long-term residency visa for investors, entrepreneurs, exceptional talents, and skilled professionals."}
        @{q = "Do I need a visa for a layover in Dubai?"; a = "If your layover is 8-48 hours, you may qualify for a free or paid transit visa. Check with your airline."}
        @{q = "What is the minimum bank balance required for UAE visa?"; a = "While there is no fixed minimum, having at least INR 1,00,000 in your account for the last 3 months is recommended."}
        @{q = "Are there any travel restrictions for Indian women travelling alone to UAE?"; a = "No, there are no restrictions. However, modesty in dress and behaviour is advised as per local customs."}
        @{q = "Can I drive in UAE with an Indian driving license?"; a = "Yes, Indian driving license holders can drive in UAE after obtaining an International Driving Permit or exchanging for a UAE license."}
        @{q = "What should I do if my UAE visa is rejected?"; a = "Re-appeal is possible through the sponsoring airline or agent. Common reasons include incomplete documents or past overstay issues."}
    )
    updates2026 = @(
        @{change = "Fee Change"; previous = "AED 350"; current = "AED 300 (reduced for 30-day tourist visa)"}
        @{change = "Processing"; previous = "5-7 working days"; current = "3-5 working days (faster processing introduced)"}
        @{change = "Policy"; previous = "Visa-on-arrival limited"; current = "Extended visa-on-arrival to more categories with valid US/UK/EU visas"}
    )
    officialResources = "<li><strong>Site:</strong> <a href='https://u.ae' target='_blank'>UAE Government Portal</a></li>"
}

$global:countryData["turkey"] = @{
    name = "Turkey"
    capital = "Ankara"
    currency = "TRY"
    currencyName = "Turkish Lira"
    currencySymbol = "TRY"
    embassy = "Embassy of Turkey, New Delhi - Niti Bagh"
    embassyDetail = "Consulate General in Mumbai"
    visaRequired = "eVisa required for Indian citizens"
    mainVisaTypes = "eVisa, Tourist Visa, Student Visa, Work Visa, Transit Visa"
    procTime = "1 to 3 working days for eVisa"
    feeRange = "USD 50 to USD 100"
    financialReq = "Bank statements for 3 months, minimum balance INR 50,000 recommended"
    maxStay = "Up to 90 days in 180-day period"
    bioMandatory = "Not required for eVisa"
    insuranceReq = "Travel insurance recommended"
    appCenters = "Online eVisa system, VFS Global for sticker visas"
    englishReq = "Not required"
    approvalRate = "High (above 90% for eVisa)"
    intro = "Turkey offers a highly convenient eVisa system for Indian citizens, making it one of the most accessible destinations. The eVisa can be obtained online within minutes, allowing Indians to explore Istanbul's rich history, Cappadocia's surreal landscapes, and the stunning Turquoise Coast."
    stats = "India sent approximately 250,000 tourists to Turkey in 2024, a number that has been growing steadily. Turkey remains a favourite destination for Indian couples, history enthusiasts, and travellers seeking a unique blend of European and Asian culture."
    needVisa = "Yes, Indian citizens need a visa to enter Turkey. The eVisa is the most common and convenient option."
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes, eVisa available"; detail = "Indians can easily apply for an eVisa online and get it within minutes"}
        @{can = "Travel for business meetings"; answer = "Yes, business eVisa"; detail = "Business purpose is covered under eVisa or apply for sticker visa"}
        @{can = "Study at university"; answer = "Yes, student visa"; detail = "Requires admission to a Turkish university plus student visa application"}
        @{can = "Work as a professional"; answer = "Yes, work permit"; detail = "Requires a job offer from a Turkish employer who applies for your work permit"}
        @{can = "Transit without visa"; answer = "No, transit visa required"; detail = "Indian citizens need a visa even for transit through Turkey"}
        @{can = "Live permanently"; answer = "No, but long-term residency"; detail = "Long-term residence permit available after 8 years of continuous residence"}
    )
    visaTypes = @(
        @{type = "Tourist eVisa"; subclass = "EV"; purpose = "Tourism, business, transit"; maxStay = "90 days in 180 days"; processing = "Instant to 24 hours"; feeLocal = "TRY 1,500"; feeInr = "4,200 to 4,500"}
        @{type = "Sticker Visa"; subclass = "SV"; purpose = "Tourism, business"; maxStay = "90 days in 180 days"; processing = "5-10 working days"; feeLocal = "TRY 2,000"; feeInr = "5,500 to 6,000"}
        @{type = "Student Visa"; subclass = "ST"; purpose = "Full-time study"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "TRY 3,000"; feeInr = "8,500 to 9,000"}
        @{type = "Work Visa"; subclass = "WV"; purpose = "Employment"; maxStay = "1-2 years"; processing = "6-12 weeks"; feeLocal = "TRY 4,000"; feeInr = "11,000 to 12,000"}
        @{type = "Transit Visa"; subclass = "TR"; purpose = "Transit"; maxStay = "72 hours"; processing = "3-5 working days"; feeLocal = "TRY 800"; feeInr = "2,200 to 2,500"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "500 to 1,000"; detail = "VFS service charges"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "For sticker visa applicants"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
    )
    faqs = @(
        @{q = "How do I apply for a Turkey eVisa from India?"; a = "Visit the official Turkey eVisa website (www.evisa.gov.tr), fill the form, pay the fee, and download your eVisa instantly."}
        @{q = "How long does it take to get a Turkey eVisa for Indian citizens?"; a = "Most eVisas are issued instantly or within 24 hours of application."}
        @{q = "What is the cost of Turkey eVisa for Indians?"; a = "The eVisa fee is approximately USD 50 to USD 60 (INR 4,200 to 4,500)."}
        @{q = "Can I enter Turkey with an eVisa at all ports?"; a = "Yes, the Turkey eVisa is valid for entry at all international airports, seaports, and land borders."}
        @{q = "How long can an Indian stay in Turkey on eVisa?"; a = "You can stay up to 90 days within a 180-day period on a multiple-entry eVisa."}
        @{q = "What documents are needed for Turkey eVisa from India?"; a = "Valid passport (6 months validity), email address, credit/debit card for payment, and confirmed accommodation."}
        @{q = "Is Turkey safe for Indian tourists in 2026?"; a = "Turkey is generally safe for tourists. Exercise normal precautions and avoid border areas with Syria and Iraq."}
        @{q = "Can I work in Turkey with an eVisa?"; a = "No, you need a work visa and work permit. The eVisa is only for tourism and business purposes."}
        @{q = "Do I need travel insurance for Turkey?"; a = "It is not mandatory for eVisa but strongly recommended. Medical evacuation from Turkey can be expensive."}
        @{q = "Can I study in Turkey without a student visa?"; a = "No, you must apply for a student visa at the Turkish embassy before travelling."}
        @{q = "What happens if I overstay my visa in Turkey?"; a = "Overstay fines apply. You may be banned from re-entering Turkey for a period depending on the overstay duration."}
        @{q = "Can I extend my Turkey eVisa?"; a = "No, eVisas cannot be extended. You must leave before the visa expiry and can apply for a new visa later."}
        @{q = "Is Turkey visa-free for Indian diplomatic passport holders?"; a = "Yes, holders of diplomatic and official passports can enter Turkey visa-free for up to 90 days."}
        @{q = "What is the best time for Indians to visit Turkey?"; a = "Spring (April-May) and autumn (September-October) offer pleasant weather. Summer can be hot, especially in coastal areas."}
    )
    updates2026 = @(
        @{change = "Fee Change"; previous = "USD 60"; current = "USD 50 (fee reduced for Indian eVisa)"}
        @{change = "Processing"; previous = "24 hours"; current = "Instant to 24 hours (faster processing)"}
        @{change = "Policy"; previous = "Single entry"; current = "Multiple-entry eVisa now standard for Indians"}
    )
    officialResources = "<li><strong>Site:</strong> <a href='https://www.evisa.gov.tr' target='_blank'>Turkey eVisa Official</a></li>"
}

$global:countryData["egypt"] = @{
    name = "Egypt"
    capital = "Cairo"
    currency = "EGP"
    currencyName = "Egyptian Pound"
    currencySymbol = "EGP"
    embassy = "Embassy of Egypt, New Delhi - Sundar Nagar"
    embassyDetail = "Also Honorary Consulate in Mumbai and Kolkata"
    visaRequired = "Visa-on-arrival and eVisa available"
    mainVisaTypes = "Tourist Visa, eVisa, Visa-on-arrival, Student Visa, Work Visa"
    procTime = "5 to 10 working days (eVisa: 3-5 days)"
    feeRange = "USD 25 to USD 60"
    financialReq = "Bank statements for 3 months, minimum INR 30,000 recommended"
    maxStay = "Up to 30 days on tourist visa"
    bioMandatory = "Not required for tourist visa"
    insuranceReq = "Travel insurance recommended but not mandatory"
    appCenters = "VFS Global centres in India or online eVisa portal"
    englishReq = "Not required"
    approvalRate = "Moderate to High (80%+)"
    intro = "Egypt offers Indian travellers both visa-on-arrival and eVisa options, making it convenient to explore the land of pyramids, pharaohs, and the Nile. For Indian passport holders, obtaining a visa is relatively straightforward with multiple application channels available."
    stats = "Approximately 100,000 Indian tourists visited Egypt in 2024, with numbers growing year on year. Egypt's rich history and affordable travel costs make it an attractive destination for Indian travellers seeking ancient wonders and Red Sea beach experiences."
    needVisa = "Yes, Indian citizens need a visa for Egypt. Visa-on-arrival and eVisa are both available."
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes, visa-on-arrival or eVisa"; detail = "Indians can get visa-on-arrival at Egyptian airports or apply for eVisa online"}
        @{can = "Travel for business meetings"; answer = "Yes, business visa"; detail = "Business visa can be obtained on arrival or through eVisa"}
        @{can = "Study at university"; answer = "Yes, student visa"; detail = "Requires admission letter from an Egyptian university"}
        @{can = "Work as a professional"; answer = "Yes, work visa"; detail = "Requires a work permit from Egyptian Ministry of Labour"}
        @{can = "Transit without visa"; answer = "No, visa required"; detail = "Transit passengers need a visa unless staying airside for less than 6 hours"}
        @{can = "Live permanently"; answer = "No"; detail = "Permanent residency is extremely difficult to obtain for foreigners"}
    )
    visaTypes = @(
        @{type = "Tourist Visa (on arrival)"; subclass = "TV"; purpose = "Tourism"; maxStay = "30 days"; processing = "On arrival"; feeLocal = "EGP 1,000"; feeInr = "2,100 to 2,300"}
        @{type = "eVisa"; subclass = "EV"; purpose = "Tourism, business"; maxStay = "30 days"; processing = "3-5 working days"; feeLocal = "EGP 1,200"; feeInr = "2,500 to 2,700"}
        @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "1 year (renewable)"; processing = "4-6 weeks"; feeLocal = "EGP 2,500"; feeInr = "5,200 to 5,500"}
        @{type = "Work Visa"; subclass = "WV"; purpose = "Employment"; maxStay = "1 year"; processing = "6-8 weeks"; feeLocal = "EGP 5,000"; feeInr = "10,500 to 11,000"}
        @{type = "Transit Visa"; subclass = "TR"; purpose = "Transit"; maxStay = "72 hours"; processing = "3-5 working days"; feeLocal = "EGP 500"; feeInr = "1,050 to 1,200"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "1,000 to 1,500"; detail = "VFS processing fee"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "If applicable"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
    )
    faqs = @(
        @{q = "Can Indian citizens get visa-on-arrival in Egypt?"; a = "Yes, Indian passport holders can obtain a visa-on-arrival at Cairo International Airport, Hurghada, Sharm El-Sheikh, and other airports."}
        @{q = "How much does Egypt visa-on-arrival cost for Indians?"; a = "The visa-on-arrival costs approximately USD 25 (INR 2,100 to 2,300). Payment is in cash (USD or EGP)."}
        @{q = "Can I apply for Egypt eVisa from India?"; a = "Yes, the Egypt eVisa is available for Indian citizens at www.visa2egypt.gov.eg. Processing takes 3-5 working days."}
        @{q = "What is the difference between eVisa and visa-on-arrival?"; a = "eVisa requires advance online application and payment. Visa-on-arrival is obtained at the airport but may involve queues."}
        @{q = "How long can I stay in Egypt on a tourist visa?"; a = "Tourist visas allow a stay of up to 30 days. Extensions are possible at immigration offices."}
        @{q = "What documents are needed for Egypt visa from India?"; a = "Valid passport (6 months validity), visa application form, passport photos, flight itinerary, hotel booking, and bank statements."}
        @{q = "Is Egypt safe for Indian tourists in 2026?"; a = "Egypt is generally safe for tourists visiting major destinations like Cairo, Luxor, Aswan, and Red Sea resorts. Avoid border areas."}
        @{q = "Do Indian women need special permits to travel to Egypt?"; a = "No special permits needed. However, solo female travellers should take standard safety precautions."}
        @{q = "Can I visit the pyramids with a tourist visa?"; a = "Yes, tourist visa holders can visit all tourist sites including the Pyramids of Giza, Egyptian Museum, and Luxor temples."}
        @{q = "Can I extend my Egypt tourist visa?"; a = "Yes, you can apply for a 30-day extension at the passport and immigration office in Cairo or other major cities."}
        @{q = "What happens if I overstay my visa in Egypt?"; a = "Overstay fines are charged per day. Long overstays may lead to deportation and future entry bans."}
        @{q = "Is Egypt expensive for Indian travellers?"; a = "Egypt is budget-friendly for Indian tourists. Food, transport, and accommodation are relatively affordable."}
        @{q = "Do I need a visa to visit Sharm El-Sheikh from India?"; a = "Indian citizens need a visa for Sharm El-Sheikh. Visa-on-arrival is available at the airport."}
        @{q = "Can I work in Egypt with a tourist visa?"; a = "No, working on a tourist visa is illegal. You must obtain a work visa and work permit."}
    )
    updates2026 = @(
        @{change = "Fee Change"; previous = "USD 25 (visa-on-arrival)"; current = "USD 25 to USD 35 (depending on entry point)"}
        @{change = "Processing"; previous = "5-7 days for eVisa"; current = "3-5 days for eVisa"}
        @{change = "Policy"; previous = "eVisa single entry"; current = "eVisa now offers single and multiple entry options"}
    )
    officialResources = "<li><strong>Site:</strong> <a href='https://www.visa2egypt.gov.eg' target='_blank'>Egypt eVisa Portal</a></li>"
}

$global:countryData["south-africa"] = @{
    name = "South Africa"
    capital = "Pretoria"
    currency = "ZAR"
    currencyName = "South African Rand"
    currencySymbol = "ZAR"
    embassy = "Embassy of South Africa, New Delhi - Vasant Vihar"
    embassyDetail = "Consulate General in Mumbai"
    visaRequired = "eVisa available for Indian citizens"
    mainVisaTypes = "Tourist eVisa, Visitor Visa, Student Visa, Work Visa, Transit Visa"
    procTime = "10 to 15 working days"
    feeRange = "ZAR 425 to ZAR 1,500"
    financialReq = "Bank statements for 3 months, minimum INR 1,00,000 recommended"
    maxStay = "Up to 90 days on tourist visa"
    bioMandatory = "Required for visa applications"
    insuranceReq = "Travel insurance mandatory"
    appCenters = "VFS Global centres across India"
    englishReq = "Not required"
    approvalRate = "Moderate (70-80%)"
    intro = "South Africa launched its eVisa system for Indian citizens, making the application process much more convenient. Indian travellers are drawn to South Africa for its stunning wildlife, beautiful coastlines, and vibrant cities like Cape Town and Johannesburg."
    stats = "Approximately 80,000 Indian tourists visited South Africa in 2024. India is among the top 10 source markets for South African tourism, with growing interest in safari adventures and scenic road trips."
    needVisa = "Yes, Indian citizens need a visa for South Africa. The eVisa system is now available for Indian passport holders."
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes, eVisa now available"; detail = "South Africa has launched eVisa for Indian citizens for tourism purposes"}
        @{can = "Travel for business meetings"; answer = "Yes, business visa"; detail = "Business visa requires invitation letter from South African company"}
        @{can = "Study at university"; answer = "Yes, student visa"; detail = "Requires admission to a South African institution plus student visa"}
        @{can = "Work as a professional"; answer = "Yes, work visa"; detail = "Requires a job offer and work permit from South African authorities"}
        @{can = "Transit without visa"; answer = "No, transit visa required"; detail = "Indian citizens need a transit visa even for airport transit"}
        @{can = "Live permanently"; answer = "Limited"; detail = "Permanent residency available through investment or critical skills work visa"}
    )
    visaTypes = @(
        @{type = "Tourist eVisa"; subclass = "EV"; purpose = "Tourism, family visits"; maxStay = "90 days"; processing = "10-15 working days"; feeLocal = "ZAR 500"; feeInr = "2,200 to 2,500"}
        @{type = "Visitor Visa"; subclass = "VV"; purpose = "Tourism, business meetings"; maxStay = "90 days"; processing = "10-15 working days"; feeLocal = "ZAR 425"; feeInr = "1,800 to 2,100"}
        @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "Duration of course"; processing = "6-8 weeks"; feeLocal = "ZAR 1,500"; feeInr = "6,500 to 7,000"}
        @{type = "Work Visa"; subclass = "WV"; purpose = "Employment"; maxStay = "1-5 years"; processing = "8-12 weeks"; feeLocal = "ZAR 1,500"; feeInr = "6,500 to 7,000"}
        @{type = "Transit Visa"; subclass = "TR"; purpose = "Transit"; maxStay = "72 hours"; processing = "5-7 working days"; feeLocal = "ZAR 425"; feeInr = "1,800 to 2,100"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "1,000 to 1,500"; detail = "VFS Global service charge"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "Mandatory for all applicants"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
    )
    faqs = @(
        @{q = "Is eVisa available for Indian citizens travelling to South Africa?"; a = "Yes, South Africa launched eVisa for Indian passport holders. Apply online through the eVisa portal."}
        @{q = "How long does South Africa eVisa take for Indians?"; a = "Processing takes approximately 10-15 working days from the date of application."}
        @{q = "What is the cost of South Africa visa for Indians?"; a = "Tourist eVisa fee is approximately ZAR 500 (INR 2,200 to 2,500) plus service charges."}
        @{q = "What documents are needed for South Africa visa from India?"; a = "Passport (6 months validity), photos, flight itinerary, hotel bookings, bank statements (3 months), and travel insurance."}
        @{q = "Do I need travel insurance for South Africa?"; a = "Yes, travel insurance covering medical expenses is mandatory for a South Africa visa."}
        @{q = "Is biometric submission required for South Africa visa?"; a = "Yes, biometrics (fingerprints and photograph) are required at the VFS centre."}
        @{q = "Can I extend my South Africa tourist visa?"; a = "Yes, you can apply for an extension at the Department of Home Affairs in South Africa."}
        @{q = "Is South Africa safe for Indian tourists?"; a = "South Africa has safety concerns in certain areas. Stick to tourist-friendly areas, avoid walking alone at night, and use reputable transport."}
        @{q = "What is the best time for Indians to visit South Africa?"; a = "May to September offers excellent wildlife viewing. November to March is good for beaches and Cape Town."}
        @{q = "Can I work in South Africa on a tourist visa?"; a = "No, working on a tourist visa is illegal. You need a work visa sponsored by an employer."}
        @{q = "Do I need a yellow fever vaccination for South Africa?"; a = "If travelling from or through a yellow fever endemic country, you need a valid yellow fever certificate."}
        @{q = "Can I drive in South Africa with an Indian license?"; a = "Yes, you can drive with an Indian driving license for up to 6 months. An International Driving Permit is recommended."}
        @{q = "What should I do if my South Africa visa is rejected?"; a = "You can reapply with stronger documentation. Common rejection reasons include insufficient funds or incomplete applications."}
        @{q = "Is South Africa expensive for Indian tourists?"; a = "South Africa is moderately priced. Safaris and adventure activities can be costly but accommodation and food are reasonable."}
    )
    updates2026 = @(
        @{change = "Fee Change"; previous = "ZAR 425"; current = "ZAR 500 (eVisa slightly higher than visitor visa)"}
        @{change = "Processing"; previous = "15-20 working days"; current = "10-15 working days (faster processing)"}
        @{change = "Policy"; previous = "eVisa restricted"; current = "eVisa fully rolled out for Indian citizens"}
    )
    officialResources = "<li><strong>Site:</strong> <a href='https://www.southafrica.com' target='_blank'>South Africa Tourism</a></li>"
}

$global:countryData["mexico"] = @{
    name = "Mexico"
    capital = "Mexico City"
    currency = "MXN"
    currencyName = "Mexican Peso"
    currencySymbol = "MXN"
    embassy = "Embassy of Mexico, New Delhi - Nehru Park"
    embassyDetail = "Honorary Consulates in Mumbai, Bengaluru, Kolkata"
    visaRequired = "Visa required (visa-free for US/UK/Schengen visa holders)"
    mainVisaTypes = "Tourist Visa, Business Visa, Student Visa, Work Visa"
    procTime = "10 to 20 working days"
    feeRange = "USD 36 to USD 48"
    financialReq = "Bank statements for 3 months, minimum INR 1,50,000 recommended"
    maxStay = "Up to 180 days on tourist visa"
    bioMandatory = "Required for visa applicants"
    insuranceReq = "Travel insurance mandatory"
    appCenters = "VFS Global centres in major Indian cities"
    englishReq = "Not required"
    approvalRate = "Moderate (70-80%)"
    intro = "Mexico is a vibrant destination offering ancient Mayan ruins, beautiful beaches, and rich culture. Indian citizens need a visa unless they hold a valid US, UK, Canada, or Schengen visa, in which case Mexico is visa-free."
    stats = "Around 60,000 Indian tourists visited Mexico in 2024. India is an emerging market for Mexican tourism, with growing direct flight connectivity and increasing interest in Mexican culture and cuisine."
    needVisa = "Yes, visa required unless holding a valid US, UK, Canada, Japan, or Schengen visa."
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes, visa required or visa-free with US/UK/Schengen"; detail = "Indians with valid US/UK/Schengen visas can enter visa-free for up to 180 days"}
        @{can = "Travel for business meetings"; answer = "Yes, business visa"; detail = "Business visa requires invitation letter from Mexican company"}
        @{can = "Study at university"; answer = "Yes, student visa"; detail = "Requires admission to a Mexican educational institution"}
        @{can = "Work as a professional"; answer = "Yes, work visa"; detail = "Requires job offer and work permit from Mexican authorities"}
        @{can = "Transit without visa"; answer = "No, transit visa required"; detail = "Indian citizens need a visa for transit through Mexico"}
        @{can = "Live permanently"; answer = "Yes, possible"; detail = "Permanent residency available through investment (INR 1.5 crore+) or family connection"}
    )
    visaTypes = @(
        @{type = "Tourist Visa"; subclass = "TV"; purpose = "Tourism, family visits"; maxStay = "180 days"; processing = "10-15 working days"; feeLocal = "MXN 1,000"; feeInr = "4,200 to 4,500"}
        @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings, conferences"; maxStay = "180 days"; processing = "10-15 working days"; feeLocal = "MXN 1,000"; feeInr = "4,200 to 4,500"}
        @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "1 year (renewable)"; processing = "4-6 weeks"; feeLocal = "MXN 2,000"; feeInr = "8,500 to 9,000"}
        @{type = "Work Visa"; subclass = "WV"; purpose = "Employment"; maxStay = "1-4 years"; processing = "8-12 weeks"; feeLocal = "MXN 3,000"; feeInr = "12,500 to 13,000"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "1,000 to 1,500"; detail = "VFS Global processing fee"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "Mandatory for all applicants"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
    )
    faqs = @(
        @{q = "Can Indian citizens enter Mexico without a visa?"; a = "Yes, if you hold a valid US, UK, Canada, Japan, or Schengen visa, you can enter Mexico visa-free for up to 180 days."}
        @{q = "How do I apply for Mexico visa from India?"; a = "Apply through VFS Global. Book an appointment, submit documents, and attend a visa interview at the Mexican embassy."}
        @{q = "What is the Mexico visa fee for Indians?"; a = "The visa fee is approximately USD 36 to USD 48 (INR 3,000 to 4,000) plus VFS service charges."}
        @{q = "How long does Mexico visa processing take?"; a = "Processing takes 10-20 working days. Some applications may take longer if additional verification is needed."}
        @{q = "How long can I stay in Mexico with a tourist visa?"; a = "A Mexican tourist visa allows a stay of up to 180 days per visit."}
        @{q = "What documents are needed for Mexico visa from India?"; a = "Passport (6 months validity), visa application form, photos, flight itinerary, hotel bookings, bank statements (3 months), and invitation letter if visiting family."}
        @{q = "Is Mexico safe for Indian tourists?"; a = "Mexico has safety concerns in certain regions. Tourist areas like Cancun, Playa del Carmen, and Mexico City are generally safe with normal precautions."}
        @{q = "Do I need a visa interview for Mexico?"; a = "Yes, a visa interview at the Mexican embassy or consulate is required for most Indian applicants."}
        @{q = "Can I work in Mexico on a tourist visa?"; a = "No, working on a tourist visa is illegal. You must obtain a work visa with employer sponsorship."}
        @{q = "Can I visit the USA with a Mexico visa?"; a = "No, a Mexico visa does not grant entry to the USA. You need a separate US visa."}
        @{q = "What is the best time for Indians to visit Mexico?"; a = "November to April is the dry season and best for travel. Avoid hurricane season (June to November) for coastal areas."}
        @{q = "Do I need travel insurance for Mexico visa?"; a = "Yes, travel insurance is mandatory for the Mexico visa application."}
        @{q = "What should I do if my Mexico visa is rejected?"; a = "You can reapply after addressing the reasons for rejection. Common reasons include insufficient funds or incomplete documents."}
        @{q = "Is Mexico expensive for Indian tourists?"; a = "Mexico is moderately priced. Cancun and resort areas can be expensive, but local markets and street food are affordable."}
    )
    updates2026 = @(
        @{change = "Fee Change"; previous = "USD 36"; current = "USD 36 to USD 48 (depending on visa type)"}
        @{change = "Processing"; previous = "15-25 working days"; current = "10-20 working days (improved efficiency)"}
        @{change = "Policy"; previous = "Visa-free limited"; current = "Visa-free extended for Indians with US/UK/Canada/Schengen visas"}
    )
    officialResources = "<li><strong>Site:</strong> <a href='https://www.gob.mx' target='_blank'>Mexico Government Portal</a></li>"
}

$global:countryData["brazil"] = @{
    name = "Brazil"
    capital = "Brasilia"
    currency = "BRL"
    currencyName = "Brazilian Real"
    currencySymbol = "BRL"
    embassy = "Embassy of Brazil, New Delhi - Chanakyapuri"
    embassyDetail = "Consulate General in Mumbai"
    visaRequired = "eVisa available for Indian citizens"
    mainVisaTypes = "Tourist eVisa, Business Visa, Student Visa, Work Visa"
    procTime = "5 to 10 working days for eVisa"
    feeRange = "USD 44 to USD 80"
    financialReq = "Bank statements for 3 months, minimum INR 1,00,000 recommended"
    maxStay = "Up to 90 days per year"
    bioMandatory = "Not required for eVisa"
    insuranceReq = "Travel insurance mandatory"
    appCenters = "Online eVisa system and VFS Global centres"
    englishReq = "Not required"
    approvalRate = "Moderate (75-85%)"
    intro = "Brazil reintroduced the eVisa system for Indian citizens, making it easier to explore the Amazon rainforest, Rio de Janeiro's beaches, and the vibrant culture of this South American giant. Indian travellers can now apply online without visiting the embassy."
    stats = "Approximately 50,000 Indian tourists visited Brazil in 2024. Brazil is gaining popularity among Indian travellers for its unique biodiversity, carnival culture, and growing trade ties."
    needVisa = "Yes, Indian citizens need a visa for Brazil. The eVisa is the recommended and most convenient option."
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes, eVisa available"; detail = "Brazil eVisa is available online for Indian citizens for tourism purposes"}
        @{can = "Travel for business meetings"; answer = "Yes, business eVisa"; detail = "Business visa available through eVisa system with invitation letter"}
        @{can = "Study at university"; answer = "Yes, student visa"; detail = "Requires admission to a Brazilian university"}
        @{can = "Work as a professional"; answer = "Yes, work visa"; detail = "Requires job offer and Brazilian work permit"}
        @{can = "Transit without visa"; answer = "No, transit visa required"; detail = "Transit passengers need a visa unless staying airside for less than 12 hours"}
        @{can = "Live permanently"; answer = "Yes, possible"; detail = "Permanent residency through investment, retirement, or family reunion"}
    )
    visaTypes = @(
        @{type = "Tourist eVisa"; subclass = "EV"; purpose = "Tourism, family visits"; maxStay = "90 days per year"; processing = "5-10 working days"; feeLocal = "BRL 300"; feeInr = "4,500 to 5,000"}
        @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings, trade"; maxStay = "90 days per year"; processing = "5-10 working days"; feeLocal = "BRL 400"; feeInr = "5,500 to 6,000"}
        @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "1 year (renewable)"; processing = "4-6 weeks"; feeLocal = "BRL 600"; feeInr = "8,000 to 8,500"}
        @{type = "Work Visa"; subclass = "WV"; purpose = "Employment"; maxStay = "1-4 years"; processing = "8-12 weeks"; feeLocal = "BRL 800"; feeInr = "11,000 to 12,000"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "1,000 to 1,500"; detail = "Service fee"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "If applicable"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
    )
    faqs = @(
        @{q = "Is eVisa available for Indian citizens going to Brazil?"; a = "Yes, Brazil eVisa is available for Indian passport holders. Apply through the official Brazil eVisa website."}
        @{q = "How long does Brazil eVisa processing take?"; a = "Processing takes approximately 5-10 working days. Apply well before your travel date."}
        @{q = "What is the cost of Brazil eVisa for Indians?"; a = "The tourist eVisa fee is approximately BRL 300 (INR 4,500 to 5,000)."}
        @{q = "What documents are needed for Brazil eVisa from India?"; a = "Passport (6 months validity), recent photo, flight itinerary, hotel booking, bank statements, and travel insurance."}
        @{q = "Do I need travel insurance for Brazil visa?"; a = "Yes, travel insurance with medical coverage is mandatory for Brazil visa application."}
        @{q = "How long can I stay in Brazil with a tourist visa?"; a = "You can stay up to 90 days per year on a tourist visa in Brazil."}
        @{q = "Is Brazil safe for Indian tourists?"; a = "Brazil has safety concerns in major cities. Stick to tourist areas, avoid favelas, and do not display valuables in public."}
        @{q = "Can I extend my Brazil tourist visa?"; a = "Yes, you can apply for a one-time extension of up to 90 days at the Federal Police in Brazil."}
        @{q = "Can I work in Brazil on a tourist visa?"; a = "No, working on a tourist visa is illegal. You need a work visa with employer sponsorship."}
        @{q = "What is the best time to visit Brazil for Indians?"; a = "December to March offers the best weather. June to August is the dry season in the Amazon and ideal for wildlife spotting."}
        @{q = "Do I need a yellow fever vaccination for Brazil?"; a = "Yes, a yellow fever vaccination is recommended and may be required for entry from certain countries."}
        @{q = "Can I use an Indian driving license in Brazil?"; a = "Yes, with an International Driving Permit you can drive in Brazil for up to 180 days."}
        @{q = "What should I do if my Brazil visa is rejected?"; a = "You can appeal or reapply. Common reasons include incomplete documents, insufficient funds, or past visa violations."}
        @{q = "Is Portuguese required for Brazil visa?"; a = "No, Portuguese is not required. English is sufficient for the application."}
    )
    updates2026 = @(
        @{change = "Fee Change"; previous = "BRL 280"; current = "BRL 300 (minor fee update)"}
        @{change = "Processing"; previous = "10-15 working days"; current = "5-10 working days (faster processing)"}
        @{change = "Policy"; previous = "eVisa suspended"; current = "eVisa reinstated for Indian citizens"}
    )
    officialResources = "<li><strong>Site:</strong> <a href='https://brazil.vfsevisa.com' target='_blank'>Brazil eVisa Portal</a></li>"
}

$global:countryData["argentina"] = @{
    name = "Argentina"
    capital = "Buenos Aires"
    currency = "USD"
    currencyName = "US Dollar (Reciprocity fee)"
    currencySymbol = "USD"
    embassy = "Embassy of Argentina, New Delhi - Chanakyapuri"
    embassyDetail = "Honorary Consulates in Mumbai and Chennai"
    visaRequired = "Visa-free with reciprocity fee for Indians"
    mainVisaTypes = "Tourist Visa, Business Visa, Student Visa"
    procTime = "10 to 15 working days"
    feeRange = "USD 44 to USD 200"
    financialReq = "Bank statements for 3 months, minimum INR 1,00,000 recommended"
    maxStay = "Up to 90 days"
    bioMandatory = "Not required for tourist visa"
    insuranceReq = "Travel insurance mandatory"
    appCenters = "VFS Global centres in India"
    englishReq = "Not required"
    approvalRate = "Moderate to High (75-85%)"
    intro = "Argentina offers a visa-free regime for Indian citizens, but a reciprocity fee must be paid online before travel. The country is famous for tango, Patagonia, Iguazu Falls, and world-class wine, attracting adventurous Indian travellers."
    stats = "Approximately 30,000 Indian tourists visited Argentina in 2024. While numbers are modest, Argentina is growing in popularity among Indian travellers seeking unique experiences and natural wonders."
    needVisa = "Visa-free with reciprocity fee. Indians can enter without a visa but must pay a reciprocity fee online before travel."
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes, visa-free with reciprocity fee"; detail = "Pay the reciprocity fee online at the official website before travel"}
        @{can = "Travel for business meetings"; answer = "Yes, business visa"; detail = "Business visa available through the embassy"}
        @{can = "Study at university"; answer = "Yes, student visa"; detail = "Requires admission to an Argentine institution"}
        @{can = "Work as a professional"; answer = "Yes, work visa"; detail = "Requires job offer and Argentine work permit"}
        @{can = "Transit without visa"; answer = "Yes, for short layovers"; detail = "Transit without visa allowed for up to 12 hours if staying airside"}
        @{can = "Live permanently"; answer = "Yes, possible"; detail = "Permanent residency through investment, retirement, or family connections"}
    )
    visaTypes = @(
        @{type = "Tourist (Reciprocity Fee)"; subclass = "TR"; purpose = "Tourism, family visits"; maxStay = "90 days"; processing = "Online payment, instant"; feeLocal = "USD 44"; feeInr = "3,700 to 4,000"}
        @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings, conferences"; maxStay = "90 days"; processing = "10-15 working days"; feeLocal = "USD 100"; feeInr = "8,500 to 9,000"}
        @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "1 year (renewable)"; processing = "6-10 weeks"; feeLocal = "USD 150"; feeInr = "12,500 to 13,000"}
        @{type = "Work Visa"; subclass = "WV"; purpose = "Employment"; maxStay = "1-3 years"; processing = "8-12 weeks"; feeLocal = "USD 200"; feeInr = "16,500 to 17,000"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "1,000 to 1,500"; detail = "VFS service charge"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "If applicable"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for Argentina?"; a = "No visa is required for tourism, but you must pay a reciprocity fee online before travelling to Argentina."}
        @{q = "What is the Argentina reciprocity fee for Indians?"; a = "The reciprocity fee is approximately USD 44 (INR 3,700 to 4,000) and must be paid online."}
        @{q = "How do I pay the Argentina reciprocity fee?"; a = "Visit the official Argentina immigration website and pay online with a credit or debit card."}
        @{q = "How long is the Argentina reciprocity fee valid?"; a = "The fee is valid for multiple entries within a specified period, typically 90 days."}
        @{q = "How long can I stay in Argentina without a visa?"; a = "Indian citizens can stay up to 90 days as tourists without a visa."}
        @{q = "What documents are needed for Argentina travel from India?"; a = "Valid passport (6 months validity), reciprocity fee receipt, proof of accommodation, return flight ticket, and travel insurance."}
        @{q = "Do I need travel insurance for Argentina?"; a = "Yes, travel insurance with medical coverage is mandatory for entry into Argentina."}
        @{q = "Is Argentina safe for Indian tourists?"; a = "Argentina is generally safe, especially in tourist areas and Buenos Aires. Be cautious of petty theft in crowded areas."}
        @{q = "What is the best time for Indians to visit Argentina?"; a = "October to March is spring/summer in Argentina, offering pleasant weather. For Patagonia, November to March is ideal."}
        @{q = "Can I work in Argentina on a tourist visa?"; a = "No, working on tourist status is illegal. You need a proper work visa."}
        @{q = "Can I extend my stay in Argentina?"; a = "Yes, you can request an extension at the immigration office for up to 90 additional days."}
        @{q = "Is Argentina expensive for Indian tourists?"; a = "Argentina has become more affordable recently. Accommodation and dining in Buenos Aires are comparable to Indian metro cities."}
        @{q = "Do I need a yellow fever vaccination for Argentina?"; a = "Required if travelling from a yellow fever endemic country. Otherwise, it is recommended for certain regions."}
        @{q = "Can I use Indian rupees in Argentina?"; a = "No, carry USD or EUR and exchange locally. Credit cards are widely accepted in cities."}
    )
    updates2026 = @(
        @{change = "Fee Change"; previous = "USD 38"; current = "USD 44 (reciprocity fee updated)"}
        @{change = "Processing"; previous = "Manual payment"; current = "Online payment system upgraded"}
        @{change = "Policy"; previous = "Single entry"; current = "Multiple entries within 90 days allowed"}
    )
    officialResources = "<li><strong>Site:</strong> <a href='https://www.argentina.gob.ar' target='_blank'>Argentina Government Portal</a></li>"
}

$global:countryData["russia"] = @{
    name = "Russia"
    capital = "Moscow"
    currency = "RUB"
    currencyName = "Russian Ruble"
    currencySymbol = "RUB"
    embassy = "Embassy of Russia, New Delhi - Chanakyapuri"
    embassyDetail = "Consulates General in Mumbai, Chennai, Kolkata, and Vladivostok (Honorary Consulate in Trivandrum)"
    visaRequired = "eVisa available for certain regions, regular visa otherwise"
    mainVisaTypes = "Tourist Visa, eVisa, Business Visa, Student Visa, Work Visa"
    procTime = "7 to 15 working days"
    feeRange = "RUB 2,000 to RUB 10,000"
    financialReq = "Bank statements for 3 months, minimum INR 50,000 recommended"
    maxStay = "Up to 30 days on tourist visa"
    bioMandatory = "Required for visa applications"
    insuranceReq = "Travel insurance mandatory"
    appCenters = "VFS Global centres in India"
    englishReq = "Not required"
    approvalRate = "Moderate (70-80%)"
    intro = "Russia has introduced e-Visa facilities for Indian citizens travelling to certain regions, including St. Petersburg and the Far East. Indian travellers are increasingly visiting Moscow, St. Petersburg, and exploring the trans-Siberian route."
    stats = "Approximately 100,000 Indian tourists visited Russia in 2024. India is one of the key source markets for Russian tourism, with growing cultural exchanges and direct flights between major cities."
    needVisa = "Yes, Indian citizens need a visa for Russia. An eVisa is available for certain regions like St. Petersburg and the Far East."
    availableNotAvailable = @(
        @{can = "Travel for tourism"; answer = "Yes, eVisa or regular visa"; detail = "eVisa available for St. Petersburg and Far East regions; regular visa for other areas"}
        @{can = "Travel for business meetings"; answer = "Yes, business visa"; detail = "Requires invitation letter from Russian company"}
        @{can = "Study at university"; answer = "Yes, student visa"; detail = "Requires admission to a Russian university plus student visa"}
        @{can = "Work as a professional"; answer = "Yes, work visa"; detail = "Requires job offer and Russian work permit"}
        @{can = "Transit without visa"; answer = "No, transit visa required"; detail = "Indian citizens need a transit visa even for connecting flights"}
        @{can = "Live permanently"; answer = "Limited"; detail = "Permanent residency available through investment (INR 2 crore+) or family reunion"}
    )
    visaTypes = @(
        @{type = "Tourist Visa"; subclass = "TV"; purpose = "Tourism, sightseeing"; maxStay = "30 days"; processing = "7-10 working days"; feeLocal = "RUB 4,000"; feeInr = "3,600 to 4,000"}
        @{type = "eVisa (Regional)"; subclass = "EV"; purpose = "Tourism, business, cultural visits"; maxStay = "16 days"; processing = "4-7 working days"; feeLocal = "RUB 2,000"; feeInr = "1,800 to 2,200"}
        @{type = "Business Visa"; subclass = "BV"; purpose = "Business meetings, trade"; maxStay = "90 days"; processing = "10-15 working days"; feeLocal = "RUB 6,000"; feeInr = "5,500 to 6,000"}
        @{type = "Student Visa"; subclass = "SV"; purpose = "Full-time study"; maxStay = "1 year (renewable)"; processing = "4-8 weeks"; feeLocal = "RUB 5,000"; feeInr = "4,500 to 5,000"}
        @{type = "Work Visa"; subclass = "WV"; purpose = "Employment"; maxStay = "1-3 years"; processing = "8-12 weeks"; feeLocal = "RUB 10,000"; feeInr = "9,000 to 10,000"}
    )
    additionalCosts = @(
        @{type = "Service Fee"; amount = "1,000 to 1,500"; detail = "VFS Global processing fee"}
        @{type = "Biometrics"; amount = "1,500 to 2,000"; detail = "Mandatory for all applicants"}
        @{type = "Translation"; amount = "500 to 2,000"; detail = "Per document"}
        @{type = "Courier"; amount = "600 to 1,000"; detail = "Passport return"}
    )
    faqs = @(
        @{q = "Do Indian citizens need a visa for Russia?"; a = "Yes, Indian passport holders need a visa for Russia. An eVisa is available for St. Petersburg and Far East regions."}
        @{q = "What is the Russia eVisa for Indians?"; a = "The eVisa allows entry for up to 16 days to specific regions including St. Petersburg and the Far East. Apply online."}
        @{q = "How long does Russia visa processing take?"; a = "Regular tourist visas take 7-10 working days. eVisa processing takes 4-7 working days."}
        @{q = "What is the Russia visa fee for Indians?"; a = "Tourist visa fee is approximately RUB 4,000 (INR 3,600 to 4,000). eVisa fee is around RUB 2,000."}
        @{q = "What documents are needed for Russia visa from India?"; a = "Passport (6 months validity), visa application, photos, visa invitation letter (voucher), travel insurance, and flight itinerary."}
        @{q = "Is travel insurance mandatory for Russia visa?"; a = "Yes, travel insurance covering the entire stay in Russia is mandatory."}
        @{q = "Is Russia safe for Indian tourists?"; a = "Russia is generally safe for tourists. Exercise normal precautions, avoid political gatherings, and carry a copy of your passport and visa at all times."}
        @{q = "Can I work in Russia on a tourist visa?"; a = "No, working on a tourist visa is illegal. You need a work visa sponsored by a Russian employer."}
        @{q = "What is the best time to visit Russia for Indians?"; a = "Summer (June-August) offers pleasant weather. Winter (December-February) is very cold but magical. May and September have mild weather."}
        @{q = "Do I need to register my visa in Russia?"; a = "Yes, your hotel or host must register your visa with immigration within 7 days of arrival."}
        @{q = "Can I extend my Russia tourist visa?"; a = "Extensions are generally not granted for tourist visas. You must leave before the visa expires."}
        @{q = "Is Russian language required for the visa?"; a = "No, the visa application is in English. However, knowing basic Russian phrases is helpful for travel."}
        @{q = "What should I do if my Russia visa is rejected?"; a = "Re-apply with corrected documentation. Common reasons for rejection include incorrect visa invitation or incomplete application."}
        @{q = "Can I study in Russia without a student visa?"; a = "No, you must obtain a student visa after receiving admission and invitation from a Russian university."}
    )
    updates2026 = @(
        @{change = "Fee Change"; previous = "RUB 3,500"; current = "RUB 4,000 (tourist visa fee updated)"}
        @{change = "Processing"; previous = "10-15 working days"; current = "7-10 working days (faster processing)"}
        @{change = "Policy"; previous = "Limited eVisa regions"; current = "Expanded eVisa coverage to more regions"}
    )
    officialResources = "<li><strong>Site:</strong> <a href='https://www.mid.ru' target='_blank'>Russian Ministry of Foreign Affairs</a></li>"
}

Write-Host "Batch 3 loaded: UAE, Turkey, Egypt, South Africa, Mexico, Brazil, Argentina, Russia"
