const countriesData = [
{
id: "china",
name: "China",
slug: "china",
flag: "🇨🇳",
region: "Asia",
visaRequired: true,
processingTime: "4-6 business days",
visaTypes: ["Tourist Visa (L)", "Business Visa (M)", "Student Visa (X)", "Work Visa (Z)", "Transit Visa (G)"],
visaGuideSummary: "China offers various visa types depending on the purpose of visit. The most common is the Tourist Visa (L) for leisure travel. Applications require a valid passport, completed form, photo, and supporting documents.",
visaRequirementsSummary: "To apply for a China visa, you need a passport valid for at least 6 months, completed visa application form, recent passport-sized photo, travel itinerary, hotel bookings, and proof of financial means.",
requirements: [
"Passport valid for at least 6 months with at least 2 blank pages",
"Completed visa application form",
"Recent passport-sized photograph (33mm x 48mm)",
"Round-trip flight itinerary",
"Hotel reservation confirmation",
"Bank statements for last 3-6 months",
"Employment letter or proof of retirement"
],
fees: {
"US Citizens": "$185",
"UK Citizens": "£151",
"Canadian Citizens": "CAD $175",
"Australian Citizens": "AUD $200",
"Other Nationalities": "Varies by country"
},
faq: [
{ q: "How long does a China tourist visa last?", a: "A China tourist visa (L) typically allows a stay of 30 days per entry and is valid for 3-6 months from the date of issue." },
{ q: "Can I extend my China visa?", a: "Yes, you can apply for a visa extension at the local Public Security Bureau (PSB) in China before your current visa expires." },
{ q: "Do I need a visa for China?", a: "Most foreign passport holders need a visa to enter China. Citizens of some countries like Singapore, Brunei, and Japan may have visa-free access for short stays." }
]
},
{
id: "india",
name: "India",
slug: "india",
flag: "🇮🇳",
region: "Asia",
visaRequired: true,
processingTime: "3-5 business days",
visaTypes: ["e-Tourist Visa", "e-Business Visa", "e-Medical Visa", "Conference Visa", "Student Visa"],
visaGuideSummary: "India offers e-Visa facilities for citizens of many countries, making the application process convenient. The e-Tourist Visa allows for tourism, recreation, and casual visits.",
visaRequirementsSummary: "For an India e-Visa, you need a passport valid for at least 6 months, digital photograph, scanned passport information page, and proof of onward travel.",
requirements: [
"Passport valid for at least 6 months from arrival date",
"Recent digital photograph (white background)",
"Scanned copy of passport information page",
"Email address for eVisa approval",
"Proof of onward/return travel",
"Sufficient funds for stay duration"
],
fees: {
"e-Tourist Visa (30 days)": "$25",
"e-Tourist Visa (1 year)": "$40",
"e-Tourist Visa (5 years)": "$80",
"e-Business Visa": "$100"
},
faq: [
{ q: "How long does an India e-Visa take?", a: "India e-Visa applications are typically processed within 3-5 business days. It's recommended to apply at least 4 days before travel." },
{ q: "Which airports accept e-Visa for India?", a: "India e-Visa is valid at 30 international airports and 6 major seaports across the country." },
{ q: "Can I convert my e-Tourist Visa to another visa type?", a: "No, e-Visas cannot be converted or extended within India. You would need to leave and reapply for a different visa type." }
]
},
{
id: "usa",
name: "United States",
slug: "usa",
flag: "🇺🇸",
region: "North America",
visaRequired: true,
processingTime: "2-4 weeks (ESTA: instant)",
visaTypes: ["B-1 Business Visa", "B-2 Tourist Visa", "ESTA (Visa Waiver)", "F-1 Student Visa", "H-1B Work Visa"],
visaGuideSummary: "The United States offers various visa categories. Citizens of Visa Waiver Program countries can apply for ESTA for stays up to 90 days. Others need a B-1/B-2 visa.",
visaRequirementsSummary: "US visa applications require completion of DS-160 form, payment of visa fee, scheduling an interview at the US Embassy/Consulate, and submitting supporting documents.",
requirements: [
"Valid passport (valid for at least 6 months beyond stay)",
"Completed DS-160 form confirmation",
"Visa application fee receipt",
"Passport-sized photo (2x2 inches)",
"Bank statements and financial documents",
"Travel itinerary",
"Employment verification letter"
],
fees: {
"B-1/B-2 Visa": "$185",
"ESTA": "$21",
"F-1 Student Visa": "$185",
"H-1B Work Visa": "$205",
"H-1B Processing Fee": "Additional $500+"
},
faq: [
{ q: "How long is a US tourist visa valid?", a: "US tourist visas (B-2) are typically valid for 10 years for many nationalities, allowing stays of up to 6 months per visit." },
{ q: "What is the difference between ESTA and a US visa?", a: "ESTA is an electronic travel authorization for citizens of Visa Waiver Program countries, valid for 2 years and allowing stays up to 90 days. A B-1/B-2 visa is for non-VWP countries." },
{ q: "How long does US visa processing take?", a: "Visa processing typically takes 2-4 weeks, but wait times for interview appointments vary by embassy location and can be several months." }
]
},
{
id: "uk",
name: "United Kingdom",
slug: "uk",
flag: "🇬🇧",
region: "Europe",
visaRequired: true,
processingTime: "3-6 weeks",
visaTypes: ["Standard Visitor Visa", "Student Visa", "Skilled Worker Visa", "Family Visa", "Transit Visa"],
visaGuideSummary: "The UK offers several visa categories. The Standard Visitor Visa covers tourism, business, and family visits. Most non-EU/non-EEA nationals need a visa for stays over 6 months.",
visaRequirementsSummary: "UK visa applications require a valid passport, completed online application, biometrics appointment, and supporting documents proving the purpose of visit and financial means.",
requirements: [
"Valid passport with at least 1 blank page",
"Completed online visa application form",
"Biometric residence permit appointment",
"Recent passport photograph",
"Travel itinerary and accommodation details",
"Bank statements for last 6 months",
"Employment or study confirmation"
],
fees: {
"Standard Visitor Visa (6 months)": "£115",
"Standard Visitor Visa (2 years)": "£432",
"Standard Visitor Visa (5 years)": "£771",
"Standard Visitor Visa (10 years)": "£963",
"Student Visa": "£490"
},
faq: [
{ q: "Can I visit the UK without a visa?", a: "Citizens of EU/EEA, USA, Canada, Australia, New Zealand, Japan, South Korea, and several other countries can visit the UK for up to 6 months without a visa." },
{ q: "How long does UK visa processing take?", a: "Standard processing takes 3-6 weeks. Priority service (5 working days) and Super Priority service (next working day) are available at an additional cost." },
{ q: "Do I need to provide biometrics for a UK visa?", a: "Yes, most applicants need to provide fingerprints and a photograph at a Visa Application Centre as part of the application process." }
]
},
{
id: "canada",
name: "Canada",
slug: "canada",
flag: "🇨🇦",
region: "North America",
visaRequired: true,
processingTime: "2-4 weeks (eTA: 5 min)",
visaTypes: ["Visitor Visa", "eTA (Electronic Travel Authorization)", "Study Permit", "Work Permit", "Super Visa"],
visaGuideSummary: "Canada offers visitor visas for tourism and business. Citizens of visa-exempt countries need an eTA. The Super Visa allows parents and grandparents of Canadian citizens to stay for extended periods.",
visaRequirementsSummary: "Canada visa applications include completing the application form, providing biometrics, submitting supporting documents, and paying the processing fee.",
requirements: [
"Valid passport",
"Completed visa application form (IMM 5257)",
"Biometrics (fingerprints and photo)",
"Passport-sized photographs",
"Proof of financial support",
"Travel itinerary",
"Letter of invitation (if applicable)"
],
fees: {
"Visitor Visa": "CAD $100",
"eTA": "CAD $7",
"Study Permit": "CAD $150",
"Work Permit": "CAD $155",
"Super Visa": "CAD $100"
},
faq: [
{ q: "What is the difference between eTA and a Visitor Visa?", a: "eTA is for visa-exempt nationals traveling by air, valid for 5 years. A Visitor Visa is for those from non-visa-exempt countries and requires a full application." },
{ q: "How long can I stay in Canada as a visitor?", a: "Most visitors can stay for up to 6 months. The border officer will determine the exact duration upon arrival." },
{ q: "Do I need biometrics for a Canada visa?", a: "Yes, most applicants for visitor visas, study permits, or work permits need to provide biometrics at a Visa Application Centre." }
]
},
{
id: "australia",
name: "Australia",
slug: "australia",
flag: "🇦🇺",
region: "Oceania",
visaRequired: true,
processingTime: "2-5 weeks (ETA: instant)",
visaTypes: ["Visitor Visa (Subclass 600)", "ETA (Subclass 601)", "Student Visa (Subclass 500)", "Work and Holiday Visa", "Skilled Migration Visa"],
visaGuideSummary: "Australia offers various visa options. The ETA is available for passport holders from eligible countries. The Visitor Visa is for tourism and business visits.",
visaRequirementsSummary: "Australian visa applications require a valid passport, completed online application, health insurance, and proof of sufficient funds. Some visas require health examinations.",
requirements: [
"Valid passport",
"Completed online application (ImmiAccount)",
"Passport photograph",
"Proof of sufficient funds (AUD $5,000+ recommended)",
"Travel itinerary",
"Health insurance (for longer stays)",
"Character documents (police clearance)"
],
fees: {
"Visitor Visa (Subclass 600)": "AUD $190",
"ETA (Subclass 601)": "AUD $20",
"Student Visa (Subclass 500)": "AUD $710",
"Work and Holiday Visa": "AUD $510"
},
faq: [
{ q: "Can I work on an Australian visitor visa?", a: "No, a Visitor Visa (Subclass 600) or ETA does not allow work. You need a Work and Holiday Visa or a sponsored work visa for employment." },
{ q: "How long does Australian visa processing take?", a: "ETA applications are usually processed instantly. Visitor visas take 2-5 weeks. Student visas can take 4-8 weeks." },
{ q: "Do I need health insurance for Australia?", a: "For visitor visas under 6 months, health insurance is not mandatory but recommended. For student visas, Overseas Student Health Cover (OSHC) is mandatory." }
]
},
{
id: "schengen",
name: "Schengen Area",
slug: "schengen",
flag: "🇪🇺",
region: "Europe",
visaRequired: true,
processingTime: "15 calendar days",
visaTypes: ["Schengen Tourist Visa", "Schengen Business Visa", "Schengen Transit Visa", "Airport Transit Visa"],
visaGuideSummary: "The Schengen Area comprises 27 European countries with a unified visa policy. A Schengen visa allows travel to all member countries for stays up to 90 days within 180 days.",
visaRequirementsSummary: "Schengen visa applications require a completed application form, valid passport, travel insurance (€30,000 minimum coverage), flight itinerary, accommodation proof, and financial means.",
requirements: [
"Passport valid for at least 3 months beyond departure",
"Completed Schengen visa application form",
"Two recent passport photographs",
"Travel health insurance (min €30,000 coverage)",
"Round-trip flight reservation",
"Hotel bookings for entire stay",
"Bank statements for last 3-6 months"
],
fees: {
"Adult": "€80",
"Child (6-12 years)": "€40",
"Child (under 6 years)": "Free",
"EU/EEA Family Members": "Free"
},
faq: [
{ q: "Which countries are in the Schengen Area?", a: "The Schengen Area includes 27 countries: Austria, Belgium, Croatia, Czech Republic, Denmark, Estonia, Finland, France, Germany, Greece, Hungary, Iceland, Italy, Latvia, Liechtenstein, Lithuania, Luxembourg, Malta, Netherlands, Norway, Poland, Portugal, Slovakia, Slovenia, Spain, Sweden, and Switzerland." },
{ q: "How long can I stay with a Schengen visa?", a: "A Schengen visa allows stays of up to 90 days within any 180-day period in the Schengen Area." },
{ q: "Which embassy should I apply to for a Schengen visa?", a: "Apply to the embassy of the country where you'll spend the most time. If spending equal time in multiple countries, apply to the embassy of your first point of entry." }
]
},
{
id: "japan",
name: "Japan",
slug: "japan",
flag: "🇯🇵",
region: "Asia",
visaRequired: true,
processingTime: "5-7 business days",
visaTypes: ["Tourist Visa", "Business Visa", "Working Holiday Visa", "Student Visa", "Transit Visa"],
visaGuideSummary: "Japan offers visas for tourism, business, and study purposes. Many nationalities can visit visa-free for short stays. For those needing a visa, the process is straightforward.",
visaRequirementsSummary: "Japan visa applications require a valid passport, completed application form, photograph, itinerary, and financial proof. Some nationalities can visit Japan visa-free.",
requirements: [
"Passport valid for entire stay",
"Completed visa application form",
"Passport-sized photograph (45mm x 45mm)",
"Detailed travel itinerary",
"Flight and hotel reservations",
"Bank statements or tax returns",
"Employment letter"
],
fees: {
"Single Entry Visa": "¥3,000",
"Multiple Entry Visa": "¥6,000",
"Transit Visa": "¥700"
},
faq: [
{ q: "Do I need a visa for Japan?", a: "Citizens of 68 countries including the US, UK, Canada, Australia, and most EU countries can visit Japan for up to 90 days without a visa." },
{ q: "How long does a Japan visa take?", a: "Japan visa processing typically takes 5-7 business days from the date of application submission." },
{ q: "Can I extend my stay in Japan?", a: "Visa extensions are possible in limited circumstances such as medical treatment. Regular tourist visas cannot be extended." }
]
},
{
id: "south-korea",
name: "South Korea",
slug: "south-korea",
flag: "🇰🇷",
region: "Asia",
visaRequired: true,
processingTime: "5-10 business days",
visaTypes: ["Tourist Visa (C-3-9)", "Business Visa (C-3-4)", "Student Visa (D-2)", "Working Holiday Visa", "E-7 Work Visa"],
visaGuideSummary: "South Korea offers visa-free entry for many countries. For those requiring a visa, the Tourist Visa (C-3-9) is the most common for leisure travel.",
visaRequirementsSummary: "South Korea visa applications require a valid passport, completed application, photograph, financial proof, travel itinerary, and sometimes an invitation letter.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Proof of financial means",
"Travel itinerary",
"Hotel reservations",
"Invitation letter (if visiting family/friends)"
],
fees: {
"Single Entry Visa": "$40",
"Double Entry Visa": "$60",
"Multiple Entry Visa": "$90"
},
faq: [
{ q: "Do I need a visa for South Korea?", a: "Citizens of 112 countries including the US, UK, Canada, Australia, and most EU countries can visit visa-free for 30-90 days." },
{ q: "How long does South Korea visa processing take?", a: "Processing typically takes 5-10 business days. Express service (3-4 days) is available for an additional fee." },
{ q: "Can I work on a tourist visa in South Korea?", a: "No, a tourist visa does not permit work. You need an appropriate work visa (E-1 through E-7) for employment." }
]
},
{
id: "thailand",
name: "Thailand",
slug: "thailand",
flag: "🇹🇭",
region: "Asia",
visaRequired: true,
processingTime: "3-5 business days",
visaTypes: ["Tourist Visa (TR)", "Visa on Arrival", "Non-Immigrant B (Business)", "Education Visa (ED)", "Retirement Visa (O-A)"],
visaGuideSummary: "Thailand offers visa-free entry to many countries and Visa on Arrival for others. The Tourist Visa allows stays of up to 60 days, extendable for another 30 days.",
visaRequirementsSummary: "Thailand visa requirements include a valid passport, completed application, photograph, proof of funds (THB 20,000 per person), and confirmed flight booking.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Proof of financial means (THB 20,000/person)",
"Confirmed flight booking",
"Hotel reservations",
"Bank statement (last 3 months)"
],
fees: {
"Tourist Visa (Single Entry)": "THB 1,000",
"Tourist Visa (Multiple Entry)": "THB 5,000",
"Visa on Arrival": "THB 2,000",
"Non-Immigrant Visa": "THB 2,000"
},
faq: [
{ q: "Do I need a visa for Thailand?", a: "Citizens of 64 countries (including US, UK, Australia, most of EU) get visa-free entry for 30 days. 20 countries can get Visa on Arrival for 15 days." },
{ q: "Can I extend my Thai visa?", a: "Yes, tourist visas can be extended once for 30 days at a local immigration office for THB 1,900." },
{ q: "How long does Thailand visa processing take?", a: "Tourist visa applications typically take 3-5 business days. Visa on Arrival is processed at the airport in about 30 minutes." }
]
},
{
id: "vietnam",
name: "Vietnam",
slug: "vietnam",
flag: "🇻🇳",
region: "Asia",
visaRequired: true,
processingTime: "3-5 business days",
visaTypes: ["Tourist Visa (DL)", "Business Visa (DN)", "e-Visa", "Visa on Arrival", "Student Visa (DH)"],
visaGuideSummary: "Vietnam offers e-Visa for many countries and Visa on Arrival for air travelers. The Tourist Visa allows stays of up to 30 days for tourism.",
visaRequirementsSummary: "Vietnam visa requires a valid passport, application form, photograph, and for e-Visa, a digital application through the official website.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Confirmed flight booking",
"Hotel reservation",
"Visa approval letter (for Visa on Arrival)"
],
fees: {
"e-Visa (Single Entry)": "$25",
"Visa on Arrival (pre-approval)": "$15-25",
"Stamping fee (at airport)": "$25 (single) / $50 (multiple)",
"3-month Tourist Visa": "$50-70"
},
faq: [
{ q: "Do I need a visa for Vietnam?", a: "Citizens of 24 countries get visa-free entry. Most others need an e-Visa or Visa on Arrival. The e-Visa is available for 80+ nationalities." },
{ q: "How does Vietnam Visa on Arrival work?", a: "Apply online for an approval letter, receive it via email (3-5 days), then get visa stamped at airport arrival counters." },
{ q: "Can I extend my Vietnam visa?", a: "Yes, tourist visas can be extended for up to 30 days through a travel agent or immigration office." }
]
},
{
id: "singapore",
name: "Singapore",
slug: "singapore",
flag: "🇸🇬",
region: "Asia",
visaRequired: true,
processingTime: "3-5 business days",
visaTypes: ["Tourist Visa", "Business Visa", "Student Pass", "Employment Pass", "Dependent Pass"],
visaGuideSummary: "Singapore offers visa-free entry to many countries. For those needing a visa, the Tourist Visa allows stays up to 30 days for tourism and business visits.",
visaRequirementsSummary: "Singapore visa applications require a valid passport, completed Form 14A, photograph, travel itinerary, and supporting documents.",
requirements: [
"Passport valid for at least 6 months",
"Completed Form 14A",
"Recent passport-sized photograph",
"Confirmed flight itinerary",
"Hotel accommodation details",
"Proof of sufficient funds",
"Introduction letter from local contact (if applicable)"
],
fees: {
"Visa Processing Fee": "SGD $30",
"Visa Service Fee": "SGD $30",
"Total Visa Cost": "SGD $60"
},
faq: [
{ q: "Do I need a visa for Singapore?", a: "Citizens of most countries including US, UK, EU, Australia, Japan, and South Korea can visit Singapore visa-free for 30-90 days." },
{ q: "How long does Singapore visa take?", a: "Processing typically takes 3-5 business days but can be expedited." },
{ q: "Can I work in Singapore on a tourist visa?", a: "No, you need an Employment Pass or relevant work pass. Tourist visas strictly forbid employment." }
]
},
{
id: "malaysia",
name: "Malaysia",
slug: "malaysia",
flag: "🇲🇾",
region: "Asia",
visaRequired: false,
processingTime: "Visa-free / 3-5 days for visa",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "Employment Pass", "Malaysia My Second Home (MM2H)"],
visaGuideSummary: "Malaysia offers visa-free entry to most countries. For those requiring a visa, the Tourist Visa allows stays of up to 30 days for tourism purposes.",
visaRequirementsSummary: "Malaysia visa applications require a valid passport, completed application form, photographs, and proof of sufficient funds.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Proof of sufficient funds",
"Confirmed flight booking",
"Hotel accommodation",
"Travel itinerary"
],
fees: {
"Tourist Visa": "RM 100",
"Multiple Entry Visa": "RM 500",
"Student Visa": "RM 960",
"MM2H (per year)": "RM 500"
},
faq: [
{ q: "Do I need a visa for Malaysia?", a: "Most nationalities can enter Malaysia visa-free for 30-90 days. Citizens of about 10 countries including China, India, and Myanmar need a visa." },
{ q: "How long can I stay in Malaysia visa-free?", a: "Most visa-exempt countries get 30 days. EU nationals typically get 90 days. US and UK citizens get 90 days." },
{ q: "Can I extend my Malaysian visa?", a: "Yes, tourist visas can be extended for up to 30 additional days at immigration offices in Malaysia." }
]
},
{
id: "uae",
name: "United Arab Emirates",
slug: "uae",
flag: "🇦🇪",
region: "Middle East",
visaRequired: true,
processingTime: "3-5 business days",
visaTypes: ["Tourist Visa (30 days)", "Tourist Visa (60 days)", "Transit Visa", "Employment Visa", "Golden Visa"],
visaGuideSummary: "The UAE offers tourist visas for leisure and business visits. Many nationalities get visa-free or visa-on-arrival entry. Dubai is a major global travel hub.",
visaRequirementsSummary: "UAE visa applications require a valid passport, completed application, photograph, travel insurance, and confirmed flight and accommodation.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Travel insurance",
"Confirmed flight booking",
"Hotel reservation",
"Bank statement (last 3 months)"
],
fees: {
"30-day Tourist Visa": "AED 350-400",
"60-day Tourist Visa": "AED 600-700",
"Transit Visa (96 hours)": "AED 100",
"Visa Extension (30 days)": "AED 600"
},
faq: [
{ q: "Do I need a visa for UAE?", a: "Citizens of 70+ countries including US, UK, EU, Australia, Canada, Japan, and South Korea get visa-free or visa-on-arrival for 30-90 days." },
{ q: "How much does a UAE tourist visa cost?", a: "A 30-day tourist visa costs approximately AED 350-400 (about USD 95-110) including processing fees." },
{ q: "Can I extend my UAE tourist visa?", a: "Yes, tourist visas can be extended by 30 days for an additional fee of approximately AED 600." }
]
},
{
id: "turkey",
name: "Turkey",
slug: "turkey",
flag: "🇹🇷",
region: "Europe / Asia",
visaRequired: true,
processingTime: "24-48 hours (e-Visa)",
visaTypes: ["e-Visa", "Tourist Visa", "Business Visa", "Student Visa", "Work Visa"],
visaGuideSummary: "Turkey offers a convenient e-Visa system for many nationalities. The Tourist Visa allows stays of up to 90 days within 180 days.",
visaRequirementsSummary: "Turkey e-Visa requires a valid passport, completed online application, payment by credit card, and a confirmed flight booking.",
requirements: [
"Passport valid for at least 6 months",
"Completed e-Visa application",
"Valid credit/debit card for payment",
"Confirmed flight ticket",
"Hotel accommodation proof",
"Travel insurance (recommended)"
],
fees: {
"e-Visa (US, UK, Canada)": "$60",
"e-Visa (EU countries)": "€40-60",
"e-Visa (Other countries)": "$30-50",
"Visa Sticker (from embassy)": "$80-120"
},
faq: [
{ q: "Do I need a visa for Turkey?", a: "Citizens of 90+ countries can apply for e-Visa online. Some countries (Japan, South Korea, Singapore) get visa-free entry for 90 days." },
{ q: "How long does Turkey e-Visa take?", a: "Turkey e-Visa is typically processed within 24-48 hours. Many applications are approved instantly." },
{ q: "How long can I stay in Turkey with an e-Visa?", a: "The e-Visa allows stays of up to 90 days within a 180-day period." }
]
},
{
id: "russia",
name: "Russia",
slug: "russia",
flag: "🇷🇺",
region: "Europe / Asia",
visaRequired: true,
processingTime: "7-15 business days",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "Work Visa", "e-Visa (selected regions)"],
visaGuideSummary: "Russia requires most foreign nationals to obtain a visa. The Tourist Visa requires a visa invitation (Voucher) from an authorized Russian travel agency.",
visaRequirementsSummary: "Russia visa requires a valid passport, completed application, visa invitation (Voucher), photograph, and proof of travel health insurance.",
requirements: [
"Passport valid for at least 6 months with 2 blank pages",
"Completed visa application form",
"Visa invitation (Voucher) from authorized host",
"Passport-sized photograph",
"Travel health insurance (minimum €30,000)",
"HIV test certificate (for stays over 3 months)"
],
fees: {
"Tourist Visa": "$50-160 (varies by nationality)",
"e-Visa (Far East regions)": "Free",
"Business Visa": "$80-200",
"Express Processing": "Additional $50-100"
},
faq: [
{ q: "How do I get a Russian visa invitation?", a: "You need a visa invitation (Voucher) from an authorized Russian travel agency or from your hotel/host. This is required for the visa application." },
{ q: "How long does a Russian visa take?", a: "Standard processing takes 7-15 business days. Express processing (3-4 business days) is available at an additional cost." },
{ q: "Do I need to register my visa in Russia?", a: "Yes, foreign nationals must register their visa with local authorities within 7 days of arrival. Hotels usually do this automatically." }
]
},
{
id: "brazil",
name: "Brazil",
slug: "brazil",
flag: "🇧🇷",
region: "South America",
visaRequired: true,
processingTime: "5-10 business days",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "Work Visa", "Digital Nomad Visa"],
visaGuideSummary: "Brazil offers e-Visa for several countries and visa-free entry for many others. The Tourist Visa is for recreation, sports, and short-term study.",
visaRequirementsSummary: "Brazil visa applications require a valid passport, completed form, photograph, proof of travel itinerary, and financial means.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Round-trip flight itinerary",
"Proof of accommodation",
"Bank statements (last 3 months)",
"Travel health insurance"
],
fees: {
"e-Visa (USA, Canada, Australia, Japan)": "$80",
"Tourist Visa (other countries)": "Varies",
"Business Visa": "$160",
"Student Visa": "$100"
},
faq: [
{ q: "Do I need a visa for Brazil?", a: "Citizens of most South American, European countries, and several others (Japan, South Africa) can visit visa-free for 90 days. US, Canadian, and Australian citizens need an e-Visa." },
{ q: "How long does Brazil e-Visa take?", a: "Brazil e-Visa processing typically takes 5-10 business days." },
{ q: "Can I extend my stay in Brazil?", a: "Yes, tourist visas can be extended once for up to 90 additional days at the Federal Police." }
]
},
{
id: "egypt",
name: "Egypt",
slug: "egypt",
flag: "🇪🇬",
region: "Africa",
visaRequired: true,
processingTime: "3-7 business days",
visaTypes: ["Tourist Visa", "e-Visa", "Visa on Arrival", "Business Visa", "Student Visa"],
visaGuideSummary: "Egypt offers e-Visa and Visa on Arrival for many nationalities. The Tourist Visa allows visits for tourism to the pyramids, Nile cruises, and Red Sea resorts.",
visaRequirementsSummary: "Egypt visa requires a valid passport, completed application, photograph, and proof of travel arrangements.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Confirmed flight booking",
"Hotel reservation",
"Proof of sufficient funds",
"Travel insurance"
],
fees: {
"e-Visa (Single Entry)": "$30",
"e-Visa (Multiple Entry)": "$60",
"Visa on Arrival": "$25",
"Tourist Visa (from embassy)": "$40-60"
},
faq: [
{ q: "Do I need a visa for Egypt?", a: "Most nationalities need a visa. Citizens of many countries can get a Visa on Arrival at Egyptian airports or apply for an e-Visa online." },
{ q: "Can I get a visa at the airport in Egypt?", a: "Yes, many nationalities can purchase a Visa on Arrival at major Egyptian airports for $25 USD." },
{ q: "How long can I stay in Egypt on a tourist visa?", a: "Egypt tourist visas typically allow stays of 30 days from the date of entry." }
]
},
{
id: "south-africa",
name: "South Africa",
slug: "south-africa",
flag: "🇿🇦",
region: "Africa",
visaRequired: true,
processingTime: "5-10 business days",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "Work Visa", "Retirement Visa"],
visaGuideSummary: "South Africa offers visa-free entry to many countries for short stays. The Tourist Visa covers tourism, family visits, and business meetings.",
visaRequirementsSummary: "South Africa visa requires a valid passport, completed BI-84 form, photograph, travel itinerary, financial proof, and yellow fever vaccination certificate if applicable.",
requirements: [
"Passport valid for at least 30 days beyond stay with 2 blank pages",
"Completed BI-84 application form",
"Passport-sized photograph",
"Flight itinerary",
"Proof of accommodation",
"Bank statements (last 3 months)",
"Yellow fever vaccination (if from endemic area)"
],
fees: {
"Tourist Visa": "ZAR 1,520",
"Business Visa": "ZAR 1,520",
"Student Visa": "ZAR 1,520",
"Work Visa": "ZAR 1,520"
},
faq: [
{ q: "Do I need a visa for South Africa?", a: "Citizens of 80+ countries including US, UK, EU, and many Commonwealth countries can visit visa-free for up to 90 days." },
{ q: "How long does South Africa visa take?", a: "Processing typically takes 5-10 business days. Applications can take longer during peak seasons." },
{ q: "Do I need a yellow fever vaccine for South Africa?", a: "If you are traveling from or through a yellow fever endemic country, you must show proof of vaccination at entry." }
]
},
{
id: "mexico",
name: "Mexico",
slug: "mexico",
flag: "🇲🇽",
region: "North America",
visaRequired: true,
processingTime: "5-15 business days",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "Work Visa", "Temporary Resident Visa"],
visaGuideSummary: "Mexico offers visa-free entry to many countries. The Tourist Visa is suitable for tourism, transit, and short business visits up to 180 days.",
visaRequirementsSummary: "Mexico visa requires a valid passport, completed application, photograph, proof of economic solvency, and travel itinerary.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Proof of economic solvency (bank statements)",
"Travel itinerary",
"Hotel bookings",
"Employment letter"
],
fees: {
"Tourist Visa": "$48 (USD)",
"Business Visa": "$48 (USD)",
"Student Visa": "$48 (USD)",
"Temporary Resident Visa": "Varies"
},
faq: [
{ q: "Do I need a visa for Mexico?", a: "Citizens of 65+ countries including US, Canada, UK, EU, Japan, and Australia can visit Mexico visa-free for up to 180 days." },
{ q: "How long can I stay in Mexico as a tourist?", a: "Tourist permits (FMM) are typically granted for up to 180 days. The immigration officer determines the exact duration." },
{ q: "Can I extend my tourist stay in Mexico?", a: "Yes, you can apply for an extension at the National Immigration Institute (INM) in Mexico before your FMM expires." }
]
},
{
id: "new-zealand",
name: "New Zealand",
slug: "new-zealand",
flag: "🇳🇿",
region: "Oceania",
visaRequired: true,
processingTime: "2-4 weeks (NZeTA: instant)",
visaTypes: ["Visitor Visa", "NZeTA (Electronic Travel Authority)", "Working Holiday Visa", "Student Visa", "Skilled Migrant Visa"],
visaGuideSummary: "New Zealand has a streamlined visa system. The NZeTA is for citizens of visa-waiver countries. The Visitor Visa covers tourism, family visits, and short business trips.",
visaRequirementsSummary: "New Zealand visa applications require a valid passport, completed online application, photograph, and evidence of onward travel and sufficient funds.",
requirements: [
"Passport valid for at least 3 months beyond departure",
"Completed visa application",
"Passport-sized photograph",
"Proof of onward travel",
"Bank statements (last 3 months)",
"Travel itinerary",
"Travel insurance (recommended)"
],
fees: {
"NZeTA": "NZD $17 (app) + $85 (IVL)",
"Visitor Visa": "NZD $246",
"Working Holiday Visa": "NZD $420",
"Student Visa": "NZD $430"
},
faq: [
{ q: "Do I need a visa for New Zealand?", a: "Citizens of 60+ visa-waiver countries (US, UK, Canada, EU, Japan) need an NZeTA before travel. Others need a Visitor Visa." },
{ q: "How long can I stay in New Zealand as a visitor?", a: "Visa-waiver visitors can stay up to 3 months. UK citizens can stay up to 6 months. Visitor visas can be granted for 3-9 months." },
{ q: "What is the IVL (International Visitor Levy)?", a: "The IVL is a NZD $35 fee that most international visitors pay when getting an NZeTA or Visitor Visa. It funds tourism infrastructure and conservation." }
]
},
{
id: "indonesia",
name: "Indonesia",
slug: "indonesia",
flag: "🇮🇩",
region: "Asia",
visaRequired: true,
processingTime: "3-5 business days",
visaTypes: ["Tourist Visa (B211A)", "Visa on Arrival (VoA)", "e-Visa", "Business Visa", "Social Cultural Visa"],
visaGuideSummary: "Indonesia offers Visa on Arrival at major airports for many countries. The B211A Tourist Visa allows stays of up to 60 days, extendable.",
visaRequirementsSummary: "Indonesia visa requires a valid passport, completed application, photograph, proof of onward travel, and proof of sufficient funds.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Confirmed return/onward flight",
"Proof of accommodation",
"Bank statement (last 3 months)",
"COVID-19 vaccination certificate (check current requirements)"
],
fees: {
"Visa on Arrival": "IDR 500,000 (~$35 USD)",
"B211A Tourist Visa": "$50-100",
"Extension (per 30 days)": "IDR 500,000",
"Social Cultural Visa": "$50"
},
faq: [
{ q: "Do I need a visa for Indonesia?", a: "Citizens of 90+ countries including US, UK, EU, Canada, Australia, Japan, and South Korea can get Visa on Arrival for 30 days." },
{ q: "How do I extend my Indonesia visa?", a: "The VoA can be extended once for 30 days at an immigration office or through an agent for approx. IDR 500,000." },
{ q: "Which Indonesian airports offer Visa on Arrival?", a: "VoA is available at all major international airports including Bali (Ngurah Rai), Jakarta (Soekarno-Hatta), Surabaya, Medan, Yogyakarta, and others." }
]
},
{
id: "philippines",
name: "Philippines",
slug: "philippines",
flag: "🇵🇭",
region: "Asia",
visaRequired: false,
processingTime: "Visa-free / 3-5 days for visa",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "13A Permanent Resident Visa", "Special Resident Retiree's Visa"],
visaGuideSummary: "The Philippines offers visa-free entry to many countries. The Tourist Visa is for leisure, vacation, and visiting family. Extensions are easily obtained.",
visaRequirementsSummary: "Philippines visa requirements include a valid passport, completed application, photograph, and proof of onward travel.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Confirmed return/onward flight",
"Proof of accommodation",
"Proof of sufficient funds"
],
fees: {
"Tourist Visa": "$40-60",
"Visa Extension (1-6 months)": "PHP 3,000+",
"Student Visa": "$60-100",
"SRRV (Retiree Visa)": "$1,500 (one-time)"
},
faq: [
{ q: "Do I need a visa for the Philippines?", a: "Citizens of 150+ countries can enter visa-free for 30 days. This includes US, UK, EU, Canada, Australia, Japan, South Korea, and most ASEAN countries." },
{ q: "How long can I stay in the Philippines?", a: "Initial visa-free entry is 30 days. This can be extended up to 36 months with regular extensions at the Bureau of Immigration." },
{ q: "Can I extend my stay in the Philippines?", a: "Yes, visa extensions are easy and can be done at any Bureau of Immigration office. Each extension is typically valid for 1-6 months." }
]
},
{
id: "sri-lanka",
name: "Sri Lanka",
slug: "sri-lanka",
flag: "🇱🇰",
region: "Asia",
visaRequired: true,
processingTime: "24-48 hours (ETA)",
visaTypes: ["ETA (Electronic Travel Authorization)", "Tourist Visa", "Business Visa", "Student Visa", "Residence Visa"],
visaGuideSummary: "Sri Lanka offers a convenient ETA system. Most visitors need an ETA before travel. Tourist visas allow stays of up to 30 days, extendable.",
visaRequirementsSummary: "Sri Lanka ETA requires a valid passport, completed online application, payment by credit card, and confirmed flight booking.",
requirements: [
"Passport valid for at least 6 months",
"Completed ETA application online",
"Credit card for payment",
"Confirmed flight booking",
"Proof of accommodation",
"Sufficient funds for stay"
],
fees: {
"ETA (Standard)": "$35",
"ETA (SAARC countries)": "$15",
"Visa Extension (2 months)": "$50",
"Visa Extension (3-6 months)": "$100"
},
faq: [
{ q: "Do I need a visa for Sri Lanka?", a: "Most nationalities need an ETA (Electronic Travel Authorization) before traveling to Sri Lanka. Apply online before your trip." },
{ q: "How long does Sri Lanka ETA take?", a: "ETA applications are typically processed within 24-48 hours. Many are approved within a few hours." },
{ q: "How long can I stay in Sri Lanka?", a: "The ETA allows an initial stay of 30 days, which can be extended up to 6 months at the Department of Immigration." }
]
},
{
id: "nepal",
name: "Nepal",
slug: "nepal",
flag: "🇳🇵",
region: "Asia",
visaRequired: true,
processingTime: "Visa on Arrival (15 min)",
visaTypes: ["Tourist Visa", "Visa on Arrival", "Business Visa", "Student Visa", "Trekking Visa"],
visaGuideSummary: "Nepal offers a simple Visa on Arrival system at Tribhuvan International Airport and land borders. Tourist visas are ideal for trekking and tourism.",
visaRequirementsSummary: "Nepal Visa on Arrival requires a valid passport, passport-sized photograph, completed arrival form, and payment in USD.",
requirements: [
"Passport valid for at least 6 months",
"Passport-sized photograph",
"Completed arrival card",
"Exact fee in USD (cash)",
"Hotel reservation (recommended)"
],
fees: {
"15 days": "$30",
"30 days": "$50",
"90 days": "$125",
"Visa Extension": "$3 per day + $30 processing"
},
faq: [
{ q: "Can I get a visa on arrival in Nepal?", a: "Yes, most nationalities can get a Visa on Arrival at Tribhuvan International Airport in Kathmandu and at land border crossings." },
{ q: "How long does Nepal visa on arrival take?", a: "The process typically takes 15-30 minutes at the airport's visa counter before immigration." },
{ q: "Can I extend my Nepal visa?", a: "Yes, visas can be extended at the Department of Immigration in Kathmandu for up to 150 days total per calendar year." }
]
},
{
id: "cambodia",
name: "Cambodia",
slug: "cambodia",
flag: "🇰🇭",
region: "Asia",
visaRequired: true,
processingTime: "3-5 business days",
visaTypes: ["Tourist Visa (T)", "e-Visa", "Visa on Arrival", "Business Visa (E)", "Ordinary Visa (EB)"],
visaGuideSummary: "Cambodia offers e-Visa and Visa on Arrival for most nationalities. The Tourist Visa allows a stay of 30 days for tourism.",
visaRequirementsSummary: "Cambodia visa requires a valid passport, passport-sized photograph, completed application, and visa fee in USD.",
requirements: [
"Passport valid for at least 6 months",
"Passport-sized photograph",
"Completed visa application form",
"Visa fee in USD (cash for VoA)",
"Flight booking",
"Hotel reservation"
],
fees: {
"Tourist Visa (e-Visa)": "$36",
"Tourist Visa (VoA)": "$30",
"Business Visa (VoA)": "$35",
"Visa Extension (1 month)": "$45-50"
},
faq: [
{ q: "Do I need a visa for Cambodia?", a: "Most nationalities need a visa. You can get an e-Visa online or a Visa on Arrival at airports and major land border crossings." },
{ q: "Which border crossings offer Visa on Arrival?", a: "All international airports (Phnom Penh, Siem Reap, Sihanoukville) and major land border crossings with Thailand, Vietnam, and Laos." },
{ q: "Can I extend my Cambodia visa?", a: "Yes, tourist visas can be extended once for 30 days. Business visas can be extended for longer periods." }
]
},
{
id: "bangladesh",
name: "Bangladesh",
slug: "bangladesh",
flag: "🇧🇩",
region: "Asia",
visaRequired: true,
processingTime: "5-10 business days",
visaTypes: ["Tourist Visa", "Business Visa", "e-Visa", "Student Visa", "Work Visa"],
visaGuideSummary: "Bangladesh offers e-Visa for many nationalities. The Tourist Visa is suitable for tourism, visiting family, and cultural visits.",
visaRequirementsSummary: "Bangladesh visa requires a valid passport, completed application, photograph, letter of invitation, and proof of sufficient funds.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Invitation letter (or hotel booking)",
"Bank statements (last 3 months)",
"Travel itinerary",
"Employment letter"
],
fees: {
"Tourist Visa": "$50-160 (varies by nationality)",
"Business Visa": "$50-160",
"e-Visa": "$50",
"Student Visa": "$50"
},
faq: [
{ q: "Do I need a visa for Bangladesh?", a: "Most nationalities need a visa. Bangladesh now offers e-Visa for citizens of many countries. Some nationalities can get a Visa on Arrival." },
{ q: "How long does Bangladesh visa take?", a: "Processing typically takes 5-10 business days for embassy applications and 3-5 business days for e-Visa." },
{ q: "How long can I stay in Bangladesh?", a: "Tourist visas are typically granted for 30 days. Business visas can be issued for up to 1 year with multiple entries." }
]
},
{
id: "pakistan",
name: "Pakistan",
slug: "pakistan",
flag: "🇵🇰",
region: "Asia",
visaRequired: true,
processingTime: "5-10 business days",
visaTypes: ["Tourist Visa", "Business Visa", "e-Visa", "Student Visa", "Work Visa"],
visaGuideSummary: "Pakistan offers e-Visa for citizens of 191+ countries. The Tourist Visa allows visits for tourism, cultural exploration, and adventure travel.",
visaRequirementsSummary: "Pakistan visa requires a valid passport, completed application, photograph, and supporting documents depending on visa type.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Travel itinerary",
"Hotel bookings",
"Bank statements",
"Invitation letter (for business visa)"
],
fees: {
"e-Visa (Tourist)": "$35-60",
"e-Visa (Business)": "$35-60",
"Tourist Visa (Embassy)": "$60-100",
"Visa Extension": "$30-50"
},
faq: [
{ q: "Do I need a visa for Pakistan?", a: "Most nationalities need a visa. Pakistan offers e-Visa for citizens of 191+ countries, making the process easier." },
{ q: "How long does Pakistan e-Visa take?", a: "e-Visa processing typically takes 5-10 business days. Urgent processing (72 hours) is available." },
{ q: "Can I visit Gilgit-Baltistan on a tourist visa?", a: "Yes, but certain areas require additional permits (No Objection Certificate - NOC) arranged through a registered tour operator." }
]
},
{
id: "france",
name: "France",
slug: "france",
flag: "🇫🇷",
region: "Europe",
visaRequired: false,
processingTime: "N/A (Schengen rules apply)",
visaTypes: ["Schengen Tourist Visa", "Long Stay Visa", "Business Visa", "Student Visa", "Working Holiday Visa"],
visaGuideSummary: "France is part of the Schengen Area. Non-EU/EEA nationals may need a Schengen visa. France is the world's most visited country with rich culture and cuisine.",
visaRequirementsSummary: "For a France Schengen visa, you need a valid passport, travel insurance (€30,000 min), flight bookings, accommodation proof, and sufficient funds.",
requirements: [
"Passport valid for at least 3 months beyond departure",
"Completed Schengen visa application form",
"Passport-sized photographs",
"Travel health insurance (€30,000 minimum)",
"Round-trip flight reservation",
"Hotel bookings",
"Bank statements (last 3 months)"
],
fees: {
"Schengen Visa (Adult)": "€80",
"Schengen Visa (Child 6-12)": "€40",
"Long Stay Visa": "€99",
"Student Visa": "€50"
},
faq: [
{ q: "Do I need a visa for France?", a: "EU/EEA and Swiss nationals don't need a visa. US, Canada, Australia, Japan, and many other countries can visit visa-free for 90 days." },
{ q: "How long does a France visa take?", a: "Schengen visa processing takes up to 15 calendar days. Processing may be longer during peak seasons." },
{ q: "Can I work in France on a tourist visa?", a: "No, you need a work visa or a working holiday visa (available for certain nationalities aged 18-30)." }
]
},
{
id: "germany",
name: "Germany",
slug: "germany",
flag: "🇩🇪",
region: "Europe",
visaRequired: false,
processingTime: "N/A (Schengen rules apply)",
visaTypes: ["Schengen Tourist Visa", "National Visa (D)", "Student Visa", "Job Seeker Visa", "Blue Card EU"],
visaGuideSummary: "Germany is a Schengen member. It offers a Job Seeker Visa for those looking for employment and the EU Blue Card for skilled professionals.",
visaRequirementsSummary: "For Germany, Schengen visa rules apply. The Job Seeker Visa requires proof of qualifications and sufficient funds.",
requirements: [
"Passport valid for at least 3 months beyond stay",
"Completed visa application form",
"Passport-sized photograph",
"Travel health insurance",
"Flight and hotel reservations",
"Proof of financial means",
"Cover letter explaining purpose of visit"
],
fees: {
"Schengen Visa": "€80",
"National Visa": "€75",
"Job Seeker Visa": "€75",
"EU Blue Card": "€140"
},
faq: [
{ q: "Do I need a visa for Germany?", a: "EU/EEA nationals don't need a visa. Many non-EU nationals (US, Canada, Australia, Japan, South Korea) can visit visa-free for 90 days." },
{ q: "What is the Germany Job Seeker Visa?", a: "A 6-month visa allowing qualified professionals to stay in Germany and seek employment. Requires a recognized university degree." },
{ q: "How long does German visa processing take?", a: "Schengen visas: up to 15 days. National visas (study, work): 6-12 weeks. Apply well in advance." }
]
},
{
id: "italy",
name: "Italy",
slug: "italy",
flag: "🇮🇹",
region: "Europe",
visaRequired: false,
processingTime: "N/A (Schengen rules apply)",
visaTypes: ["Schengen Tourist Visa", "Long Stay Visa", "Student Visa", "Elective Residence Visa", "Work Visa"],
visaGuideSummary: "Italy is a Schengen member. Its Tourist Visa covers tourism, business, and family visits. Long-stay options include the Elective Residence Visa for retirees.",
visaRequirementsSummary: "Italy visa requirements follow Schengen rules: valid passport, travel insurance, itinerary, and proof of sufficient funds.",
requirements: [
"Passport valid for at least 3 months beyond stay",
"Completed Schengen visa form",
"Passport-sized photograph",
"Travel health insurance (€30,000 coverage)",
"Flight and accommodation bookings",
"Bank statements",
"Employment verification"
],
fees: {
"Schengen Visa": "€80",
"National Visa (over 90 days)": "€116",
"Student Visa": "€50",
"Elective Residence Visa": "€116"
},
faq: [
{ q: "Do I need a visa for Italy?", a: "Schengen visa rules apply. Many non-EU nationals can visit visa-free for 90 days. Others need a Schengen visa." },
{ q: "What is the Italy Elective Residence Visa?", a: "A visa for financially self-sufficient individuals (retirees, people with passive income) who want to live in Italy without working." },
{ q: "How long does Italy visa processing take?", a: "Schengen visas: up to 15 days. Long-stay national visas: 30-90 days. Processing times vary by embassy." }
]
},
{
id: "spain",
name: "Spain",
slug: "spain",
flag: "🇪🇸",
region: "Europe",
visaRequired: false,
processingTime: "N/A (Schengen rules apply)",
visaTypes: ["Schengen Tourist Visa", "Student Visa", "Work Visa", "Non-Lucrative Visa", "Digital Nomad Visa"],
visaGuideSummary: "Spain is a Schengen member. It offers a Digital Nomad Visa and Non-Lucrative Visa for remote workers and financially independent individuals.",
visaRequirementsSummary: "Spain visa follows Schengen requirements. The Digital Nomad Visa requires proof of remote work, income, and health insurance.",
requirements: [
"Passport valid for at least 3 months beyond stay",
"Completed visa application",
"Passport photographs",
"Travel health insurance",
"Flight and hotel reservations",
"Proof of financial means",
"Cover letter"
],
fees: {
"Schengen Visa": "€80",
"National Visa": "€80",
"Digital Nomad Visa": "€80",
"Non-Lucrative Visa": "€80"
},
faq: [
{ q: "Do I need a visa for Spain?", a: "Schengen rules apply. EU/EEA nationals are visa-free. Many non-EU nationals get 90 days visa-free. Others need a Schengen visa." },
{ q: "What is Spain's Digital Nomad Visa?", a: "Allows remote workers to live in Spain for up to 1 year (renewable). Requires proof of remote employment, income (€2,000+/month), and health insurance." },
{ q: "How long does Spain visa processing take?", a: "Schengen visas: 15 days. National visas: 1-3 months. Apply at least 3 months before travel for national visas." }
]
},
{
id: "switzerland",
name: "Switzerland",
slug: "switzerland",
flag: "🇨🇭",
region: "Europe",
visaRequired: false,
processingTime: "N/A (Schengen rules apply)",
visaTypes: ["Schengen Tourist Visa", "National Visa (D)", "Student Visa", "Work Visa", "Retirement Visa"],
visaGuideSummary: "Switzerland is part of the Schengen Area (not EU). It offers high-quality tourism experiences and a streamlined visa process.",
visaRequirementsSummary: "Switzerland Schengen visa requires valid passport, travel insurance, itinerary, and financial proof. National visas for work or study have additional requirements.",
requirements: [
"Passport valid for at least 3 months beyond stay",
"Completed visa application form",
"Passport-sized photographs",
"Travel health insurance",
"Flight and accommodation reservations",
"Proof of financial means (CHF 100/day)",
"Employment letter"
],
fees: {
"Schengen Visa (Adult)": "€80 (CHF 82)",
"Schengen Visa (Child 6-12)": "€40 (CHF 41)",
"National Visa": "CHF 82"
},
faq: [
{ q: "Do I need a visa for Switzerland?", a: "Switzerland follows Schengen visa rules. EU/EFTA nationals are visa-free. Many non-EU nationals can visit visa-free for 90 days." },
{ q: "How much money do I need for a Switzerland visa?", a: "You need to show CHF 100 (about €100) per day of stay as proof of sufficient financial means." },
{ q: "How long does Swiss visa processing take?", a: "Schengen visas take up to 15 days. National visas can take 8-12 weeks." }
]
},
{
id: "netherlands",
name: "Netherlands",
slug: "netherlands",
flag: "🇳🇱",
region: "Europe",
visaRequired: false,
processingTime: "N/A (Schengen rules apply)",
visaTypes: ["Schengen Tourist Visa", "MVV (Provisional Residence)", "Student Visa", "Work Visa", "Startup Visa"],
visaGuideSummary: "The Netherlands is a Schengen member. It offers innovative visa options like the Startup Visa for entrepreneurs and the Dutch American Friendship Treaty.",
visaRequirementsSummary: "Netherlands Schengen visa follows standard Schengen rules. The MVV requires additional documentation based on purpose.",
requirements: [
"Passport valid for at least 3 months beyond stay",
"Completed application form",
"Passport photographs",
"Travel health insurance",
"Flight and hotel reservations",
"Bank statements (last 3 months)",
"Employment letter or proof of status"
],
fees: {
"Schengen Visa": "€80",
"MVV (Provisional Residence)": "€210",
"Student Visa": "€210",
"Startup Visa": "€350"
},
faq: [
{ q: "Do I need a visa for the Netherlands?", a: "Schengen rules apply. EU/EEA nationals are visa-free. Many non-EU citizens can visit visa-free for 90 days." },
{ q: "What is the Netherlands Startup Visa?", a: "A 1-year visa for innovative entrepreneurs with a Dutch facilitator (designated by the Ministry). Proof of innovation and business plan required." },
{ q: "How long does Netherlands visa take?", a: "Schengen visas: up to 15 days. MVV applications: 90 days. Apply well in advance." }
]
},
{
id: "argentina",
name: "Argentina",
slug: "argentina",
flag: "🇦🇷",
region: "South America",
visaRequired: false,
processingTime: "Visa-free / 5-10 days for visa",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "Work Visa", "Digital Nomad Visa"],
visaGuideSummary: "Argentina offers visa-free entry to most Western countries. The country is known for tango, wine, Patagonia, and Buenos Aires.",
visaRequirementsSummary: "Argentina visa requires a valid passport, completed application, photograph, and proof of economic solvency.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph",
"Proof of economic means",
"Travel itinerary",
"Hotel bookings",
"Round-trip flight"
],
fees: {
"Tourist Visa (if required)": "$150",
"Reciprocity Fee (suspended for most)": "Varies",
"Business Visa": "$150"
},
faq: [
{ q: "Do I need a visa for Argentina?", a: "US, Canada, UK, EU, Australia, and many other countries can visit visa-free for up to 90 days. Some countries need an electronic authorization." },
{ q: "How long can I stay in Argentina?", a: "Visa-free stays are typically 90 days, extendable for an additional 90 days at immigration offices." },
{ q: "What is the reciprocity fee for Argentina?", a: "Previously required for US, Canadian, and Australian citizens. As of latest updates, this fee has been suspended for most travelers." }
]
},
{
id: "albania",
name: "Albania",
slug: "albania",
flag: "🇦🇱",
region: "Europe",
visaRequired: true,
processingTime: "5-10 business days",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "Work Visa", "Transit Visa"],
visaGuideSummary: "Albania offers a streamlined visa process for Indian citizens, though it is not part of the Schengen Area despite being in Europe. The country has its own visa regime with straightforward application procedures for tourists, business visitors, and students.",
visaRequirementsSummary: "Albania visa requirements include a valid passport, completed application form, passport-sized photograph, proof of funds (€100 per day), and confirmed flight booking.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph (35×45mm)",
"Proof of financial means (€100/day)",
"Confirmed flight booking",
"Hotel reservations",
"Bank statement (last 3 months)",
"Travel health insurance (€30,000 coverage)"
],
fees: {
"Tourist Visa (Type C)": "€50",
"Business Visa": "€80",
"Student Visa": "€50",
"Work Permit": "€80",
"Transit Visa": "€40"
},
faq: [
{ q: "Do Indian citizens need a visa for Albania?", a: "Yes, Indian citizens need a visa for Albania. However, Albania offers an eVisa system that simplifies the application process for tourism and business visits." },
{ q: "How much does an Albania tourist visa cost?", a: "A tourist visa costs €50 (approximately ₹4,500-5,000). Additional service fees may apply at the application center." },
{ q: "What documents are needed for Albania visa?", a: "Valid passport (6 months validity), completed application form, 2 photos, travel insurance (€30,000), flight itinerary, hotel bookings, and bank statements for 3 months." }
]
},
{
id: "algeria",
name: "Algeria",
slug: "algeria",
flag: "🇩🇿",
region: "Africa",
visaRequired: true,
processingTime: "7-15 business days",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "Work Visa", "Transit Visa"],
visaGuideSummary: "Algeria is the largest country in Africa and offers diverse attractions from Sahara desert landscapes to Mediterranean coastline. Indian citizens need a visa for Algeria, which has a straightforward application process through the embassy.",
visaRequirementsSummary: "Algeria visa requirements include a valid passport, completed application form, passport-sized photograph, proof of funds, and confirmed flight booking.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form",
"Passport-sized photograph (35×45mm)",
"Proof of financial means",
"Confirmed flight booking",
"Hotel reservations",
"Bank statement (last 3 months)",
"Employment letter"
],
fees: {
"Tourist Visa": "€50-80",
"Business Visa": "€80-120",
"Student Visa": "€50-100",
"Work Permit": "€100-200",
"Transit Visa": "€30-50"
},
faq: [
{ q: "Do Indian citizens need a visa for Algeria?", a: "Yes, Indian citizens need a visa for Algeria for all travel purposes. There is no visa-free entry or visa on arrival for Indian passport holders." },
{ q: "How much does an Algeria tourist visa cost?", a: "A tourist visa costs approximately €50-80 (₹4,500-7,000) depending on embassy fees and exchange rates." },
{ q: "What documents are needed for Algeria visa?", a: "Valid passport (6 months validity), completed application form, 2 passport photos, travel itinerary, hotel bookings, bank statements (last 3 months), and employment letter." }
]
},
{
id: "andorra",
name: "Andorra",
slug: "andorra",
flag: "🇦🇩",
region: "Europe",
visaRequired: false,
processingTime: "N/A (Schengen rules apply)",
visaTypes: ["Schengen Visa", "Tourist Visa", "Business Visa", "Transit Visa"],
visaGuideSummary: "Andorra is a tiny principality between France and Spain in the Pyrenees mountains. While it is not a Schengen member, it has open borders with France and Spain, meaning Schengen visa holders can enter freely. Indian citizens need a Schengen visa (multiple-entry) to visit Andorra.",
visaRequirementsSummary: "Andorra visa requirements follow Schengen rules. You need a valid multiple-entry Schengen visa from France or Spain with travel insurance, sufficient funds, and travel itinerary.",
requirements: [
"Passport valid for at least 3 months beyond departure",
"Completed Schengen visa application form",
"Passport-sized photograph (35×45mm)",
"Travel health insurance (€30,000 minimum)",
"Confirmed flight booking to France/Spain",
"Hotel reservations in France/Spain and Andorra",
"Bank statement (last 3 months)",
"Cover letter mentioning Andorra visit"
],
fees: {
"Schengen Visa (Adult)": "€80",
"Schengen Visa (Child 6-12)": "€40",
"Schengen Visa (Under 6)": "Free",
"Long-Stay Visa": "€99"
},
faq: [
{ q: "Do Indian citizens need a visa for Andorra?", a: "Andorra does not issue visas. Indian citizens need a valid multiple-entry Schengen visa issued by France or Spain to enter Andorra." },
{ q: "How do I apply for a visa to visit Andorra?", a: "Apply for a multiple-entry Schengen visa through France or Spain via VFS Global or TLScontact in India. Mention Andorra in your travel itinerary." },
{ q: "What documents are needed for Schengen visa?", a: "Valid passport, completed application, 2 photos, travel insurance (€30,000), flight itinerary, hotel bookings, bank statements (3 months), employment letter." }
]
},
{
id: "angola",
name: "Angola",
slug: "angola",
flag: "🇦🇴",
region: "Africa",
visaRequired: true,
processingTime: "3-5 business days (eVisa)",
visaTypes: ["e-Visa", "Tourist Visa", "Business Visa", "Student Visa", "Work Visa"],
visaGuideSummary: "Angola offers a convenient eVisa system for Indian citizens, making it easier to visit this southwestern African nation known for its natural beauty, diamonds, and oil wealth.",
visaRequirementsSummary: "Angola visa requirements include a valid passport, completed application form, passport-sized photograph, proof of funds, and confirmed flight booking. eVisa is the easiest option.",
requirements: [
"Passport valid for at least 6 months",
"Completed visa application form (online for eVisa)",
"Passport-sized photograph (35×45mm)",
"Proof of sufficient funds",
"Confirmed flight booking",
"Hotel reservations",
"Bank statement (last 3 months)",
"Yellow fever vaccination certificate"
],
fees: {
"Tourist eVisa": "$120",
"Business eVisa": "$120",
"Tourist Visa (Embassy)": "$100-150",
"Student Visa": "$100-200",
"Work Visa": "$200-300"
},
faq: [
{ q: "Do Indian citizens need a visa for Angola?", a: "Yes, Indian citizens need a visa for Angola. An eVisa is available for tourism and business visits." },
{ q: "How do I apply for an Angola eVisa?", a: "Apply through the official Angolan eVisa portal. Complete the form, upload documents, pay the fee, and receive approval via email." },
{ q: "How much does an Angola eVisa cost?", a: "The eVisa costs $120 (approximately ₹10,000) for both tourism and business purposes." }
]
},
{
id: "antigua-and-barbuda",
name: "Antigua and Barbuda",
slug: "antigua-and-barbuda",
flag: "🇦🇬",
region: "Caribbean",
visaRequired: false,
processingTime: "Visa-free / 3-5 days for visa",
visaTypes: ["Tourist Visa", "Business Visa", "Student Visa", "Work Permit", "Citizenship by Investment"],
visaGuideSummary: "Antigua and Barbuda offers visa-free travel for Indian citizens for up to 30 days. The twin-island nation in the Caribbean is known for its 365 beaches, luxury resorts, and the Citizenship by Investment Program.",
visaRequirementsSummary: "Indian citizens can enter Antigua and Barbuda visa-free for 30 days. For longer stays or non-tourism purposes, visa requirements apply including valid passport and proof of funds.",
requirements: [
"Passport valid for at least 6 months",
"Return/onward flight ticket",
"Hotel reservations",
"Proof of sufficient funds",
"Travel insurance (recommended)",
"Completed immigration form (on arrival)"
],
fees: {
"Visa-Free Tourism": "Free",
"Tourist Visa Extension": "$50-100",
"Business Visa": "$100",
"Student Visa": "$100-200",
"Work Permit": "$500-1,000"
},
faq: [
{ q: "Do Indian citizens need a visa for Antigua and Barbuda?", a: "No, Indian citizens can visit Antigua and Barbuda visa-free for up to 30 days for tourism purposes." },
{ q: "How long can I stay visa-free in Antigua and Barbuda?", a: "Indian citizens can stay up to 30 days without a visa. Extensions up to 6 months are available." },
{ q: "What documents do I need for visa-free entry?", a: "Valid passport (6 months validity), return flight ticket, hotel booking, and proof of sufficient funds." }
]
},
{
id: "armenia",
name: "Armenia",
slug: "armenia",
flag: "🇦🇲",
region: "Asia / Europe",
visaRequired: true,
processingTime: "3-5 business days (eVisa)",
visaTypes: ["e-Visa", "Tourist Visa", "Business Visa", "Student Visa", "Work Visa"],
visaGuideSummary: "Armenia offers a convenient eVisa system for Indian citizens, making it one of the easier Caucasus countries to visit. The country is known for its ancient monasteries, beautiful landscapes, and rich cultural heritage.",
visaRequirementsSummary: "Armenia visa requirements include a valid passport, completed eVisa application, photograph, and proof of sufficient funds. Holders of valid US/UK/Schengen visas can enter visa-free.",
requirements: [
"Passport valid for at least 6 months",
"Completed eVisa application form",
"Digital passport photograph (35×45mm)",
"Proof of accommodation",
"Return flight booking",
"Bank statement (last 3 months)",
"Travel insurance (recommended)"
],
fees: {
"eVisa (21 days)": "AMD 15,000",
"eVisa (120 days)": "AMD 15,000",
"Tourist Visa (Embassy)": "AMD 25,000",
"Student Visa": "$50-100",
"Work Visa": "$100-200"
},
faq: [
{ q: "Do Indian citizens need a visa for Armenia?", a: "Indian citizens need a visa for Armenia but can apply for an eVisa online. Holders of valid US, UK, Schengen, Canada, Australia visas can enter visa-free." },
{ q: "How do I apply for Armenia eVisa?", a: "Apply through the official Armenian eVisa portal (evisa.mfa.am). Complete the form, upload photo and passport scan, pay the fee, and receive approval via email." },
{ q: "How much does Armenia eVisa cost?", a: "The eVisa costs AMD 15,000 (approximately ₹3,000-3,500). The eVisa covers both tourism and business purposes." }
]
},
{
id: "austria",
name: "Austria",
slug: "austria",
flag: "🇦🇹",
region: "Europe",
visaRequired: false,
processingTime: "N/A (Schengen rules apply)",
visaTypes: ["Schengen Tourist Visa", "Business Visa", "Student Visa", "Red-White-Red Card", "Settlement Permit"],
visaGuideSummary: "Austria is a Schengen Area member offering stunning Alpine landscapes, imperial history, and world-class cultural attractions. Indian citizens need a Schengen visa for tourism.",
visaRequirementsSummary: "Austria visa requirements follow Schengen rules. You need a valid passport, completed application, travel insurance (€30,000), flight/hotel bookings, and proof of sufficient funds (€100/day).",
requirements: [
"Passport valid for at least 3 months beyond departure",
"Completed Schengen visa application form",
"Passport-sized photograph (35×45mm)",
"Travel health insurance (€30,000 minimum)",
"Confirmed flight booking (round-trip)",
"Hotel reservations for entire stay",
"Bank statement (last 3 months)",
"Employment letter with leave approval",
"Income tax returns (last 2 years)"
],
fees: {
"Schengen Visa (Adult)": "€80",
"Schengen Visa (Child 6-12)": "€40",
"Schengen Visa (Under 6)": "Free",
"Student Visa": "€110",
"Red-White-Red Card": "€120"
},
faq: [
{ q: "Do Indian citizens need a visa for Austria?", a: "Yes, Indian citizens need a Schengen visa for Austria. Visa-free travel is not available for Indian passport holders." },
{ q: "How much does an Austria Schengen visa cost?", a: "The Schengen visa costs €80 for adults (approximately ₹7,200). Children aged 6-12 pay €40, and children under 6 are free." },
{ q: "What documents are needed for Austria visa?", a: "Valid passport (3 months validity beyond departure), completed form, 2 photos, travel insurance (€30,000), flight/hotel bookings, bank statements (3 months), employment letter." }
]
},
{
id: "azerbaijan",
name: "Azerbaijan",
slug: "azerbaijan",
flag: "🇦🇿",
region: "Asia / Europe",
visaRequired: true,
processingTime: "3-5 business days (eVisa)",
visaTypes: ["e-Visa (ASAN Visa)", "Tourist Visa", "Business Visa", "Student Visa", "Work Visa"],
visaGuideSummary: "Azerbaijan offers a convenient eVisa system (ASAN Visa) for Indian citizens, making it easy to visit the 'Land of Fire.' Baku offers a unique blend of ancient and modern architecture.",
visaRequirementsSummary: "Azerbaijan visa requirements include a valid passport, completed ASAN eVisa application, digital photograph, and confirmed flight and accommodation bookings.",
requirements: [
"Passport valid for at least 3 months",
"Completed ASAN Visa online application",
"Digital passport photograph",
"Confirmed flight booking (round-trip)",
"Hotel reservations",
"Proof of sufficient funds",
"Travel insurance (recommended)"
],
fees: {
"ASAN eVisa (Standard)": "$25",
"ASAN eVisa (Urgent)": "$55",
"Business Visa": "$50",
"Student Visa": "$50-100",
"Work Visa": "$200-300"
},
faq: [
{ q: "Do Indian citizens need a visa for Azerbaijan?", a: "Yes, Indian citizens need a visa for Azerbaijan. The ASAN eVisa system provides a simple online application process." },
{ q: "How do I apply for Azerbaijan eVisa?", a: "Apply through the official ASAN Visa portal (evisa.gov.az). Complete the form, upload documents and photo, pay the fee, and receive approval via email." },
{ q: "How much does Azerbaijan eVisa cost?", a: "The standard eVisa costs $25 (approximately ₹2,200). Urgent processing (3 hours) costs $55 (approximately ₹4,900)." }
]
}
];
const countryRegions = [
"Asia",
"Europe",
"North America",
"South America",
"Africa",
"Middle East",
"Oceania"
];
function getCountryBySlug(slug) {
return countriesData.find(c => c.slug === slug);
}
function getCountriesByRegion(region) {
return countriesData.filter(c => c.region === region);
}
function getAllRegions() {
return [...new Set(countriesData.map(c => c.region))];
}