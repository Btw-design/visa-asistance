/**
 * Redesign Script — Apply v3.0 layout to all B-country visa guide pages
 * Transforms: CSS linking, reading progress bar, sticky TOC, stat cards, section IDs, FAQ expansion
 */
const fs = require('fs');
const path = require('path');

const BASE = 'D:/ahit health/my-visa-assistance/visa-guide';

// ===== Country-specific stat card data =====
// Extracted from the quick-overview tables of each country
const COUNTRY_STATS = {
  'bahamas-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes (eVisa)', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '3-5 days', sub: 'eVisa processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$40-50 USD', sub: 'Tourist eVisa' },
    { icon: 'calendar-check', label: 'Max Stay', value: '90 days', sub: 'Per visit' },
    { icon: 'shield-check', label: 'Approval Rate', value: '90%+', sub: 'Correctly submitted' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For eVisa' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Online + Border', sub: 'eVisa system' },
    { icon: 'people', label: 'Financial Req', value: '$1,000+', sub: 'Sufficient funds' },
  ],
  'bahrain-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes (eVisa)', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '3-5 days', sub: 'eVisa processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: 'BHD 30-40', sub: 'Tourist eVisa' },
    { icon: 'calendar-check', label: 'Max Stay', value: '30 days', sub: 'Extendable' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'Correctly submitted' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For eVisa' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Online eVisa', sub: 'Apply before travel' },
    { icon: 'people', label: 'Financial Req', value: 'BHD 500+', sub: 'Sufficient funds' },
  ],
  'bangladesh-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '5-10 days', sub: 'Regular processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '₹2,500-5,000', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '30-90 days', sub: 'Depends on visa' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'Correctly submitted' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Required', sub: 'At application center' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Embassy/VFS', sub: 'In-person required' },
    { icon: 'people', label: 'Financial Req', value: '₹50,000+', sub: 'Bank statements' },
  ],
  'barbados-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '10-15 days', sub: 'Standard processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$50-100 USD', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '90-180 days', sub: 'Depends on visa' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For most apps' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Embassy', sub: 'In-person required' },
    { icon: 'people', label: 'Financial Req', value: '$2,000+', sub: 'Sufficient funds' },
  ],
  'belarus-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '5-10 days', sub: 'Standard processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$60-100 USD', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '30-90 days', sub: 'Depends on visa' },
    { icon: 'shield-check', label: 'Approval Rate', value: '80%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Required', sub: 'Visa application' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Embassy', sub: 'In-person required' },
    { icon: 'people', label: 'Financial Req', value: '€50/day', sub: 'Sufficient funds' },
  ],
  'belgium-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes (Schengen)', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '15-30 days', sub: 'Schengen processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '€80', sub: 'Standard fee' },
    { icon: 'calendar-check', label: 'Max Stay', value: '90 days', sub: 'Within 180 days' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Required', sub: 'Every 5 years' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'VFS/BLS', sub: 'Appointment required' },
    { icon: 'people', label: 'Financial Req', value: '€95/day', sub: 'Sufficient funds' },
  ],
  'belize-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '7-14 days', sub: 'Standard processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$50-100 USD', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '30-90 days', sub: 'Depends on visa' },
    { icon: 'shield-check', label: 'Approval Rate', value: '80%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For most apps' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Embassy', sub: 'In-person required' },
    { icon: 'people', label: 'Financial Req', value: '$1,500+', sub: 'Sufficient funds' },
  ],
  'benin-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes (eVisa)', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '3-7 days', sub: 'eVisa processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$40-120 USD', sub: 'Varies by entry' },
    { icon: 'calendar-check', label: 'Max Stay', value: '30-90 days', sub: 'Depends on visa' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For eVisa' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Online eVisa', sub: 'Apply before travel' },
    { icon: 'people', label: 'Financial Req', value: '$500+', sub: 'Sufficient funds' },
  ],
  'bolivia-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes (eVisa)', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '5-10 days', sub: 'eVisa processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$30-50 USD', sub: 'Tourist eVisa' },
    { icon: 'calendar-check', label: 'Max Stay', value: '30-90 days', sub: 'Depends on visa' },
    { icon: 'shield-check', label: 'Approval Rate', value: '80%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For eVisa' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Online eVisa', sub: 'Or visa on arrival' },
    { icon: 'people', label: 'Financial Req', value: '$500+', sub: 'Sufficient funds' },
  ],
  'bosnia-and-herzegovina-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '10-15 days', sub: 'Standard processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '€35-80', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '90 days', sub: 'Within 180 days' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Required', sub: 'Visa application' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Embassy', sub: 'Appointment required' },
    { icon: 'people', label: 'Financial Req', value: '€100/day', sub: 'Sufficient funds' },
  ],
  'botswana-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes (eVisa)', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '5-10 days', sub: 'eVisa processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$30-90 USD', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '90 days', sub: 'Per visit' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For eVisa' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Online eVisa', sub: 'Apply before travel' },
    { icon: 'people', label: 'Financial Req', value: '$1,000+', sub: 'Sufficient funds' },
  ],
  'brunei-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '3-5 days', sub: 'Standard processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$20-50 USD', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '30-90 days', sub: 'Depends on visa' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For most apps' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Embassy', sub: 'In-person required' },
    { icon: 'people', label: 'Financial Req', value: '$500+', sub: 'Sufficient funds' },
  ],
  'bulgaria-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '10-15 days', sub: 'Standard processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '€35-80', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '90 days', sub: 'Within 180 days' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Required', sub: 'Visa application' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'VFS/BLS', sub: 'Appointment required' },
    { icon: 'people', label: 'Financial Req', value: '€100/day', sub: 'Sufficient funds' },
  ],
  'burkina-faso-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes (eVisa)', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '3-7 days', sub: 'eVisa processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$40-90 USD', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '30-90 days', sub: 'Depends on visa' },
    { icon: 'shield-check', label: 'Approval Rate', value: '80%+', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For eVisa' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Online eVisa', sub: 'Apply before travel' },
    { icon: 'people', label: 'Financial Req', value: '$500+', sub: 'Sufficient funds' },
  ],
  'burundi-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes (VOA)', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: 'On arrival', sub: 'Visa on arrival' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: '$40-90 USD', sub: 'Varies by type' },
    { icon: 'calendar-check', label: 'Max Stay', value: '30 days', sub: 'Extendable' },
    { icon: 'shield-check', label: 'Approval Rate', value: '85%+', sub: 'With docs ready' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For VOA' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Visa on Arrival', sub: 'At entry points' },
    { icon: 'people', label: 'Financial Req', value: '$500+', sub: 'Sufficient funds' },
  ],
  'brazil-visa': [
    { icon: 'passport', label: 'Visa Required?', value: 'Yes (eVisa)', sub: 'For Indian citizens' },
    { icon: 'clock', label: 'Processing', value: '5-10 days', sub: 'eVisa processing' },
    { icon: 'currency-dollar', label: 'Visa Fee', value: 'BRL 300+', sub: 'Tourist eVisa' },
    { icon: 'calendar-check', label: 'Max Stay', value: '90 days', sub: 'Per year' },
    { icon: 'shield-check', label: 'Approval Rate', value: '75-85%', sub: 'Complete apps' },
    { icon: 'fingerprint', label: 'Biometrics', value: 'Not Required', sub: 'For eVisa' },
    { icon: 'geo-alt', label: 'Entry Mode', value: 'Online eVisa', sub: 'Apply before travel' },
    { icon: 'people', label: 'Financial Req', value: '₹1,00,000+', sub: 'Bank statements' },
  ],
};

// ===== Country-specific FAQ data =====
// Each country gets 12-15 FAQs with bullet answers and internal links
const COUNTRY_FAQS = {
  'bahamas-visa': [
    {
      q: 'Do Indian citizens need a visa for the Bahamas?',
      a: '<p>Yes, Indian citizens need a visa for the Bahamas. The <strong>Bahamas eVisa</strong> is available for Indian passport holders. Here is what you need to know:</p><ul><li>Apply through the <strong>Bahamas eVisa portal</strong> before travel — allow <strong>3-5 working days</strong> for processing.</li><li>The tourist eVisa is valid for <strong>up to 90 days</strong> per visit. See the <a href="#visa-types">Visa Types section</a> for all options.</li><li>You need a <strong>valid passport</strong> with at least 6 months validity and <strong>2 blank pages</strong>.</li><li><strong>Travel insurance</strong> with medical coverage is strongly recommended.</li><li>See the <a href="#process">Application Process section</a> for step-by-step instructions on applying.</li></ul>',
    },
    {
      q: 'What is the Bahamas eVisa fee for Indians?',
      a: '<p>The Bahamas eVisa fee structure for Indian citizens:</p><ul><li><strong>Tourist eVisa:</strong> Approximately <strong>$40-50 USD</strong> — see the <a href="#fees">Fee Table section</a> for all visa categories.</li><li><strong>Business eVisa:</strong> Approximately <strong>$50-70 USD</strong>, depending on duration.</li><li>Fees are <strong>non-refundable</strong> even if the application is rejected.</li><li>Additional <strong>service charges</strong> may apply when using third-party portals.</li><li>Payment is made <strong>online</strong> via credit or debit card during the application process.</li></ul>',
    },
    {
      q: 'What documents are required for a Bahamas visa?',
      a: '<p>The Bahamas visa requires the following documents. See the <a href="#documents">full document checklist</a>:</p><ul><li><strong>Valid Indian passport</strong> — minimum 6 months validity beyond intended stay, with at least 2 blank pages.</li><li><strong>Digital photograph</strong> — 2×2 inches (51×51mm), white background, taken within 6 months.</li><li><strong>Completed online application</strong> via the official Bahamas eVisa portal.</li><li><strong>Proof of accommodation</strong> — hotel bookings or invitation letter from host.</li><li><strong>Bank statements</strong> for the last 3 months showing sufficient funds (minimum $1,000 USD).</li><li><strong>Flight itinerary</strong> — confirmed return flight booking.</li></ul>',
    },
    {
      q: 'How long can I stay in the Bahamas on a tourist visa?',
      a: '<p>The Bahamas tourist visa allows stays of <strong>up to 90 days per visit</strong>. Key details:</p><ul><li>The <strong>tourist eVisa</strong> is typically valid for <strong>single or multiple entries</strong> depending on the visa type.</li><li><strong>Extensions</strong> may be possible by applying to the Bahamas Department of Immigration before your visa expires.</li><li><strong>Overstaying</strong> without authorization can result in fines and future visa denials.</li><li>Check the <a href="#processing-time">Processing Time section</a> for more details on visa durations.</li></ul>',
    },
    {
      q: 'Is travel insurance required for the Bahamas?',
      a: '<p>Travel insurance requirements for the Bahamas:</p><ul><li><strong>Not mandatory</strong> but <strong>highly recommended</strong> for all Indian travellers.</li><li>Coverage should include <strong>medical emergencies</strong> (minimum $50,000 USD), <strong>trip cancellation</strong>, and <strong>baggage loss</strong>.</li><li>Healthcare in the Bahamas can be <strong>expensive for foreigners</strong> — insurance is strongly advised.</li><li>Some visa categories may require proof of travel insurance as part of the application.</li></ul>',
    },
    {
      q: 'What is the best time to visit the Bahamas?',
      a: '<p>The best time to visit the Bahamas depends on your preferences:</p><ul><li><strong>Winter (December-April):</strong> Peak tourist season with pleasant temperatures of 21-27°C. Best for <strong>beach activities and snorkelling</strong>.</li><li><strong>Summer (May-September):</strong> Hotter (27-32°C) with higher humidity. <strong>Hurricane season</strong> runs June-November, with highest risk in August-October.</li><li><strong>Fall (October-November):</strong> Lower prices and fewer tourists, but higher chance of rain.</li><li><strong>Spring (March-May):</strong> Excellent weather with moderate crowds — a great balance between weather and affordability.</li></ul>',
    },
    {
      q: 'Can I get a Bahamas visa on arrival as an Indian?',
      a: '<p>No, Indian citizens <strong>cannot get a visa on arrival</strong> for the Bahamas:</p><ul><li>You must obtain an <strong>eVisa before travel</strong> — there is no visa-on-arrival facility for Indian nationals.</li><li>The <strong>eVisa application</strong> should be submitted at least <strong>1-2 weeks before</strong> your intended travel date.</li><li>Upon arrival, you will need to present your <strong>approved eVisa</strong>, passport, return ticket, and proof of accommodation.</li><li>See the <a href="#process">Application Process section</a> for the complete step-by-step guide.</li></ul>',
    },
    {
      q: 'What are the common reasons for Bahamas visa rejection?',
      a: '<p>Common reasons for Bahamas visa rejection for Indian applicants:</p><ul><li><strong>Insufficient funds</strong> — bank statements must show adequate balance (minimum $1,000 USD recommended).</li><li><strong>Incomplete documentation</strong> — missing or incorrect documents are a leading cause of rejection.</li><li><strong>Poor travel history</strong> — applicants with no prior international travel may face stricter scrutiny.</li><li><strong>Discrepancies in application</strong> — mismatched information between your application and supporting documents.</li><li>See the <a href="#rejection">Common Rejection Reasons section</a> for detailed guidance.</li></ul>',
    },
    {
      q: 'Do I need a yellow fever vaccination for the Bahamas?',
      a: '<p>Yellow fever vaccination requirements for the Bahamas:</p><ul><li><strong>Required</strong> if you are travelling from a country with <strong>yellow fever risk</strong> (or transiting through one for more than 12 hours).</li><li>For direct travel from India, yellow fever vaccination is <strong>not required</strong>.</li><li>Other recommended vaccinations: <strong>Hepatitis A and B, Typhoid, and Tetanus</strong>.</li><li>Carry your <strong>International Certificate of Vaccination</strong> (Yellow Card) if applicable.</li></ul>',
    },
    {
      q: 'Can I work in the Bahamas on a tourist visa?',
      a: '<p>No, working on a tourist visa is strictly prohibited in the Bahamas:</p><ul><li>The <strong>tourist eVisa</strong> is only for tourism, family visits, and short leisure stays.</li><li>Any form of <strong>paid or unpaid employment</strong> requires a valid <strong>Work Permit</strong>.</li><li>Business visitors can attend meetings but <strong>cannot engage in gainful employment</strong>.</li><li>Violating visa conditions can result in <strong>deportation and future travel bans</strong>.</li></ul>',
    },
    {
      q: 'What is the currency used in the Bahamas?',
      a: '<p>Currency and payment information for the Bahamas:</p><ul><li>The official currency is the <strong>Bahamian Dollar (BSD)</strong>, which is <strong>pegged 1:1</strong> to the US Dollar (USD).</li><li><strong>US Dollars are widely accepted</strong> throughout the Bahamas at par.</li><li><strong>Credit cards</strong> are accepted at most hotels, resorts, and larger restaurants.</li><li><strong>ATMs</strong> are available in Nassau, Freeport, and other tourist areas, but may be limited on smaller islands.</li><li>It is advisable to carry <strong>some cash</strong> for small purchases and tips.</li></ul>',
    },
    {
      q: 'Is the Bahamas safe for Indian tourists?',
      a: '<p>Safety tips for Indian travellers visiting the Bahamas:</p><ul><li>The Bahamas is generally safe for tourists, but <strong>petty crime (theft, pickpocketing)</strong> occurs in tourist areas, especially in Nassau and Freeport.</li><li>Avoid walking alone at night in <strong>unfamiliar or poorly lit areas</strong>.</li><li>Keep <strong>valuables in your hotel safe</strong> and avoid displaying expensive jewelry or electronics.</li><li><strong>Emergency numbers:</strong> 911 for police, fire, and medical emergencies.</li><li>Drink <strong>bottled water</strong> — tap water is generally safe in Nassau and Freeport but may vary on smaller islands.</li></ul>',
    },
    {
      q: 'Can I extend my Bahamas visa?',
      a: '<p>Extending your stay in the Bahamas:</p><ul><li>You can apply for a <strong>visa extension</strong> at the Bahamas Department of Immigration in Nassau.</li><li>Extensions are typically granted in <strong>30-day increments</strong>.</li><li>Apply <strong>before your current visa expires</strong> to avoid overstaying penalties.</li><li>Provide a <strong>written explanation</strong> for the extension, along with proof of sufficient funds and accommodation.</li><li>Extension fees vary — check with the Immigration Department for current rates.</li></ul>',
    },
    {
      q: 'What language is spoken in the Bahamas?',
      a: '<p>Language information for the Bahamas:</p><ul><li><strong>English</strong> is the official and most widely spoken language in the Bahamas.</li><li><strong>Bahamian Creole</strong> (a dialect of English) is commonly spoken in informal settings.</li><li>Indian travellers who speak English will have <strong>no communication issues</strong> in hotels, restaurants, and tourist destinations.</li><li>Signs, menus, and official documents are all in English.</li></ul>',
    },
  ],
  'bahrain-visa': [
    {
      q: 'Do Indian citizens need a visa for Bahrain?',
      a: '<p>Yes, Indian citizens need a visa for Bahrain. The <strong>Bahrain eVisa</strong> is available for Indian passport holders:</p><ul><li>Apply online through the <strong>Bahrain eVisa portal</strong> — processing takes <strong>3-5 working days</strong>.</li><li>The tourist eVisa allows stays of <strong>up to 30 days</strong>. See the <a href="#visa-types">Visa Types section</a> for all categories.</li><li>Your passport must have <strong>at least 6 months validity</strong> beyond your intended stay.</li><li>Some nationalities can get a <strong>visa on arrival</strong>, but Indian citizens must apply in advance.</li><li>See the <a href="#process">Application Process section</a> for step-by-step instructions.</li></ul>',
    },
    {
      q: 'What is the Bahrain eVisa fee for Indians?',
      a: '<p>Bahrain visa fees for Indian citizens:</p><ul><li><strong>Tourist eVisa:</strong> Approximately <strong>BHD 30-40</strong> (₹6,500-8,700) — see the <a href="#fees">Fee Table</a> for all types.</li><li><strong>Business eVisa:</strong> Higher fees apply depending on duration and entry type.</li><li>Fees are <strong>non-refundable</strong> once the application is submitted.</li><li>Payment is made <strong>online</strong> via credit or debit card during the application process.</li><li>Additional <strong>service charges</strong> may apply when using third-party processing portals.</li></ul>',
    },
    {
      q: 'What documents are required for a Bahrain visa?',
      a: '<p>Documents needed for a Bahrain visa application. See the <a href="#documents">full checklist</a>:</p><ul><li><strong>Valid Indian passport</strong> — minimum 6 months validity with at least 2 blank pages.</li><li><strong>Digital passport photo</strong> — white background, 35×45mm, taken within 6 months.</li><li><strong>Completed online application</strong> — via the Bahrain eVisa portal with accurate personal details.</li><li><strong>Hotel booking</strong> confirmation showing your accommodation in Bahrain.</li><li><strong>Return flight ticket</strong> — confirmed booking for your departure from Bahrain.</li><li><strong>Bank statements</strong> for the last 3 months (minimum balance BHD 500 recommended).</li></ul>',
    },
    {
      q: 'How long can I stay in Bahrain on a tourist visa?',
      a: '<p>The Bahrain tourist visa allows stays of <strong>up to 30 days</strong>. Key details:</p><ul><li>The <strong>tourist eVisa</strong> is typically valid for <strong>single entry</strong> and 30 days stay.</li><li>You can apply for <strong>extensions</strong> at the Bahrain Immigration office if needed.</li><li><strong>Overstaying</strong> results in fines of BHD 10 per day.</li><li>Check the <a href="#processing-time">Processing Time section</a> for more details on visa durations.</li></ul>',
    },
    {
      q: 'Is travel insurance required for Bahrain?',
      a: '<p>Travel insurance for Bahrain:</p><ul><li><strong>Not mandatory</strong> for a tourist eVisa but <strong>strongly recommended</strong>.</li><li>Coverage should include <strong>medical emergencies</strong>, <strong>trip cancellation</strong>, and <strong>baggage loss</strong>.</li><li>Healthcare in Bahrain can be <strong>expensive for foreigners</strong> — comprehensive insurance is advisable.</li><li>Some employers may require health insurance for business visa holders.</li></ul>',
    },
    {
      q: 'What is the best time to visit Bahrain?',
      a: '<p>The best time to visit Bahrain:</p><ul><li><strong>November to March:</strong> The most pleasant months with temperatures of 15-25°C. Ideal for <strong>outdoor activities and sightseeing</strong>.</li><li><strong>April to October:</strong> Extremely hot (35-45°C) with high humidity. Summer months can be uncomfortable for outdoor activities.</li><li><strong>December to February:</strong> Coolest months — pack light jackets for evenings.</li><li>The <strong>Bahrain Grand Prix</strong> season (March-April) sees higher hotel prices and more visitors.</li></ul>',
    },
    {
      q: 'Can I get a Bahrain visa on arrival as an Indian?',
      a: '<p>Indian citizens <strong>cannot get a visa on arrival</strong> for Bahrain:</p><ul><li>You must obtain an <strong>eVisa before traveling</strong> to Bahrain.</li><li>The eVisa portal processes applications in <strong>3-5 working days</strong> on average.</li><li>Submit your application at least <strong>1-2 weeks before</strong> your intended travel date.</li><li>See the <a href="#process">Application Process section</a> for the complete step-by-step guide.</li></ul>',
    },
    {
      q: 'What is the currency used in Bahrain?',
      a: '<p>Currency and payment information for Bahrain:</p><ul><li>The official currency is the <strong>Bahraini Dinar (BHD)</strong> — one of the strongest currencies in the world.</li><li><strong>1 BHD ≈ ₹220 INR</strong> (approximate, varies with exchange rates).</li><li><strong>Credit/debit cards</strong> are widely accepted in hotels, malls, and restaurants.</li><li><strong>ATMs</strong> are abundant in Manama and major towns.</li><li>Carry some cash for <strong>small shops, taxis, and local markets (souks)</strong>.</li></ul>',
    },
    {
      q: 'Is Bahrain safe for Indian tourists?',
      a: '<p>Safety information for Indian travellers in Bahrain:</p><ul><li>Bahrain is a <strong>very safe country</strong> with low crime rates, especially in tourist areas.</li><li><strong>Petty theft</strong> can occur in crowded areas — keep valuables secure.</li><li><strong>Dress modestly</strong> in public areas, especially during Ramadan and in conservative neighbourhoods.</li><li><strong>Alcohol</strong> is available in licensed hotels and restaurants (not permitted during Ramadan).</li><li><strong>Emergency number:</strong> 999 for police, fire, and medical emergencies.</li></ul>',
    },
    {
      q: 'Can I drive in Bahrain with an Indian license?',
      a: '<p>Driving in Bahrain with an Indian license:</p><ul><li>Indian citizens can drive in Bahrain with a <strong>valid Indian driving license</strong> for up to <strong>3 months</strong>.</li><li>An <strong>International Driving Permit (IDP)</strong> is recommended and widely accepted.</li><li>After 3 months, you must obtain a <strong>Bahraini driving license</strong>.</li><li>Bahrain drives on the <strong>right side of the road</strong> (opposite to India).</li><li>Rental cars are available at the airport and major hotels.</li></ul>',
    },
    {
      q: 'What vaccinations do I need for Bahrain?',
      a: '<p>Recommended vaccinations for travel to Bahrain:</p><ul><li><strong>Routine vaccinations</strong> — MMR, DPT, and polio should be up to date.</li><li><strong>Hepatitis A and Typhoid</strong> — recommended due to food and water exposure.</li><li><strong>Yellow fever</strong> — required if traveling from a country with yellow fever risk.</li><li><strong>COVID-19</strong> — check current entry requirements as policies can change.</li><li>Carry a <strong>basic medical kit</strong> for minor health issues.</li></ul>',
    },
    {
      q: 'What language is spoken in Bahrain?',
      a: '<p>Language information for Bahrain:</p><ul><li><strong>Arabic</strong> is the official language of Bahrain.</li><li><strong>English</strong> is widely spoken in business, government, and tourist establishments.</li><li>Most <strong>road signs and menus</strong> are in both Arabic and English.</li><li>Indian languages such as <strong>Hindi, Malayalam, Tamil, and Urdu</strong> are spoken within the large Indian expatriate community.</li></ul>',
    },
  ],
};

// Default FAQ template for countries without specific data
function generateDefaultFAQs(countryName, countrySlug, visaLabel, stats) {
  return [
    {
      q: `Do Indian citizens need a visa for ${countryName}?`,
      a: `<p>Yes, Indian citizens need a visa for ${countryName}. Key information:</p><ul><li>A visa is required for Indian passport holders traveling to ${countryName}.</li><li>See the <a href="#visa-types">Visa Types section</a> for all available visa categories and options.</li><li>Your passport must have <strong>at least 6 months validity</strong> beyond your intended stay.</li><li>Processing times vary by visa type — check the <a href="#processing-time">Processing Time section</a> for details.</li><li>See the <a href="#process">Application Process section</a> for step-by-step instructions.</li></ul>`,
    },
    {
      q: `What are the visa options for Indians visiting ${countryName}?`,
      a: `<p>Available visa types for Indian citizens traveling to ${countryName}:</p><ul><li><strong>Tourist visa:</strong> For tourism and leisure travel. See the <a href="#visa-types">Visa Types section</a> for details.</li><li><strong>Business visa:</strong> For business meetings, conferences, and trade activities.</li><li><strong>Student visa:</strong> For enrolled students at ${countryName} educational institutions.</li><li><strong>Transit visa:</strong> For connecting flights through ${countryName}.</li><li>Each visa type has specific <strong>document requirements and fee structures</strong>.</li></ul>`,
    },
    {
      q: `What documents are required for a ${countryName} visa?`,
      a: `<p>Standard document requirements for a ${countryName} visa. See the <a href="#documents">full checklist</a>:</p><ul><li><strong>Valid Indian passport</strong> — minimum 6 months validity beyond intended stay, with at least 2 blank pages.</li><li><strong>Passport-size photographs</strong> — 35×45mm, white background, taken within 6 months.</li><li><strong>Completed visa application form</strong> — accurately filled with matching details.</li><li><strong>Travel itinerary</strong> — flight bookings and accommodation details.</li><li><strong>Bank statements</strong> for the last 3-6 months showing sufficient funds.</li></ul>`,
    },
    {
      q: `How long does it take to process a ${countryName} visa?`,
      a: `<p>Processing times for ${countryName} visas vary by category:</p><ul><li><strong>Tourist visa:</strong> Processing takes approximately 5-15 working days depending on the application volume.</li><li><strong>Business visa:</strong> Typically 7-15 working days.</li><li><strong>Student visa:</strong> May take 4-8 weeks for complete processing.</li><li>See the <a href="#processing-time">Processing Time section</a> for detailed timelines.</li><li>Apply at least <strong>3-4 weeks before</strong> your intended travel date to allow for any delays.</li></ul>`,
    },
    {
      q: `What is the ${countryName} visa fee for Indians?`,
      a: `<p>Visa fees for ${countryName} depend on the visa category. <a href="#fees">See the complete fee table</a>:</p><ul><li>Fees vary by <strong>visa type</strong> (tourist, business, student, work).</li><li>Additional <strong>service charges</strong> may apply when applying through visa centers.</li><li>All fees are <strong>non-refundable</strong> once the application is submitted.</li><li>Payment methods vary — most accept online payment or demand drafts.</li></ul>`,
    },
    {
      q: `How long can I stay in ${countryName} on a tourist visa?`,
      a: `<p>Stay duration on a tourist visa for ${countryName}:</p><ul><li>The tourist visa typically allows stays of <strong>30-90 days</strong> depending on the visa category.</li><li>Some visas allow <strong>single entry</strong>, others allow <strong>multiple entries</strong>.</li><li><strong>Extensions</strong> may be possible by applying to the immigration authorities.</li><li><strong>Overstaying</strong> can result in fines and future visa complications.</li><li>Check the <a href="#processing-time">Processing Time section</a> for detailed information.</li></ul>`,
    },
    {
      q: `Is travel insurance required for ${countryName}?`,
      a: `<p>Travel insurance information for ${countryName}:</p><ul><li><strong>Not mandatory</strong> for most tourist visas but <strong>strongly recommended</strong>.</li><li>Coverage should include <strong>medical emergencies</strong>, <strong>trip cancellation</strong>, and <strong>baggage loss</strong>.</li><li>Some visa categories may <strong>require proof of travel insurance</strong>.</li><li>Students and work visa holders may need health insurance as a condition of their visa.</li></ul>`,
    },
    {
      q: `What is the best time to visit ${countryName}?`,
      a: `<p>The best time to visit ${countryName} depends on your preferences:</p><ul><li>Research the <strong>climate and seasons</strong> of ${countryName} before planning your trip.</li><li>Consider factors like <strong>temperature, rainfall, and tourist crowds</strong>.</li><li>Check for <strong>local festivals and events</strong> that may enhance your travel experience.</li><li>Book flights and accommodation <strong>in advance</strong> during peak tourist seasons.</li></ul>`,
    },
    {
      q: `Can I get a ${countryName} visa on arrival as an Indian?`,
      a: `<p>Visa-on-arrival availability for Indian citizens in ${countryName}:</p><ul><li>Check the <strong>current visa policy</strong> for Indian nationals — most countries require a visa in advance.</li><li>If no visa on arrival is available, you must apply for a <strong>visa before travel</strong>.</li><li>See the <a href="#process">Application Process section</a> for the complete step-by-step guide.</li><li>Always verify current requirements with the <strong>official embassy website</strong>.</li></ul>`,
    },
    {
      q: `What are the common reasons for ${countryName} visa rejection?`,
      a: `<p>Common reasons for visa rejection for Indian applicants:</p><ul><li><strong>Insufficient funds</strong> — bank statements must show adequate balance.</li><li><strong>Incomplete documentation</strong> — missing or incorrect documents.</li><li><strong>Poor travel history</strong> — limited international travel history may lead to stricter scrutiny.</li><li><strong>Discrepancies</strong> between application form and supporting documents.</li><li><strong>Criminal record</strong> or previous immigration violations.</li></ul>`,
    },
    {
      q: `What currency is used in ${countryName}?`,
      a: `<p>Currency and payment information for ${countryName}:</p><ul><li>The official currency varies — check the <strong>local currency and exchange rates</strong> before traveling.</li><li><strong>Credit cards</strong> are accepted at most hotels and larger establishments in tourist areas.</li><li><strong>ATMs</strong> are available in cities and major towns.</li><li>Carry some <strong>local currency in cash</strong> for small purchases, tips, and local transport.</li><li>Inform your bank about your travel plans to avoid card blocks.</li></ul>`,
    },
    {
      q: `Is ${countryName} safe for Indian tourists?`,
      a: `<p>Safety tips for Indian travellers visiting ${countryName}:</p><ul><li>Research the <strong>safety situation</strong> in the areas you plan to visit.</li><li>Keep <strong>valuables secure</strong> and avoid displaying expensive items in public.</li><li>Follow <strong>local laws and customs</strong> to avoid any legal issues.</li><li>Save <strong>emergency contact numbers</strong> for local police and your country\'s embassy.</li><li>Register with your <strong>embassy or consulate</strong> upon arrival if recommended.</li></ul>`,
    },
    {
      q: `Do I need any vaccinations for ${countryName}?`,
      a: `<p>Recommended vaccinations for travel to ${countryName}:</p><ul><li><strong>Routine vaccinations</strong> — MMR, DPT, and polio should be up to date.</li><li><strong>Yellow fever</strong> — required if travelling from a country with yellow fever risk.</li><li><strong>Hepatitis A and Typhoid</strong> — recommended for most international travel.</li><li>Consult your doctor <strong>4-6 weeks before travel</strong> for personalized advice.</li><li>Carry a <strong>basic medical kit</strong> with essential medications.</li></ul>`,
    },
    {
      q: `Can I extend my ${countryName} visa?`,
      a: `<p>Visa extension information for ${countryName}:</p><ul><li>Extensions may be possible by applying to the <strong>immigration authorities</strong>.</li><li>Apply <strong>before your current visa expires</strong> to avoid overstaying.</li><li>Provide a <strong>valid reason</strong> for the extension along with supporting documents.</li><li>Extension fees and processes vary by country and visa type.</li></ul>`,
    },
    {
      q: `What language is spoken in ${countryName}?`,
      a: `<p>Language information for ${countryName}:</p><ul><li>The <strong>official language</strong> and widely spoken languages in ${countryName}.</li><li><strong>English</strong> may be spoken in tourist areas and business settings.</li><li>Learning a few <strong>basic local phrases</strong> can enhance your travel experience.</li><li>Consider carrying a <strong>translation app</strong> on your smartphone for convenience.</li></ul>`,
    },
  ];
}

// ===== Main transformation function =====
function transformPage(filePath, countryKey) {
  console.log(`\nProcessing: ${countryKey}`);
  let html = fs.readFileSync(filePath, 'utf8');
  let modified = false;

  // 1. Replace v2.0 CSS block with external CSS link
  const cssRegex = /<style>\s*\/\* ==============================\s+ENHANCED VISA GUIDE UI v2\.0[\s\S]*?<\/style>/;
  if (cssRegex.test(html)) {
    html = html.replace(cssRegex, '<link rel="stylesheet" href="/visa-guide/css-v3-redesign.css">');
    modified = true;
    console.log('  ✓ CSS v2.0 block replaced');
  }

  // 2. Add reading progress bar after <body>
  if (!html.includes('reading-progress')) {
    html = html.replace(
      '<body>',
      '<body>\n\n<!-- Reading Progress Bar -->\n<div class="reading-progress" id="readingProgress" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>'
    );
    modified = true;
    console.log('  ✓ Reading progress bar added');
  }

  // 3. Add sticky TOC after country-hero section
  if (!html.includes('sticky-toc')) {
    const tocHTML = `
<!-- Sticky Table of Contents -->
<nav class="sticky-toc" id="stickyToc" aria-label="Page navigation">
<div class="toc-inner">
<a href="#overview" class="toc-link active"><i class="bi bi-info-circle"></i> Overview</a>
<a href="#visa-types" class="toc-link"><i class="bi bi-card-checklist"></i> Visa Types</a>
<a href="#fees" class="toc-link"><i class="bi bi-currency-rupee"></i> Fees</a>
<a href="#documents" class="toc-link"><i class="bi bi-file-earmark-text"></i> Documents</a>
<a href="#process" class="toc-link"><i class="bi bi-signpost-2"></i> Process</a>
<a href="#processing-time" class="toc-link"><i class="bi bi-clock"></i> Processing</a>
<a href="#faq" class="toc-link"><i class="bi bi-question-circle"></i> FAQ</a>
<a href="#resources" class="toc-link"><i class="bi bi-link-45deg"></i> Resources</a>
</div>
</nav>`;

    // Insert TOC after country-hero div
    const tocPattern = /(<link rel="stylesheet" href="\/visa-guide\/css-v3-redesign\.css">)/;
    if (tocPattern.test(html)) {
      html = html.replace(tocPattern, '$1' + tocHTML);
      modified = true;
      console.log('  ✓ Sticky TOC added');
    } else {
      console.log('  ✗ CSS link not found, trying fallback insertion');
      // Fallback: insert before country-content
      const fallbackPattern = /(<section class="country-content">)/;
      if (fallbackPattern.test(html)) {
        html = html.replace(fallbackPattern, tocHTML + '\n\n$1');
        modified = true;
        console.log('  ✓ Sticky TOC added (fallback)');
      }
    }
  }

  // 4. Add section IDs to key h2 elements
  const idMappings = [
    { from: /<h2><i class="bi bi-info-circle"><\/i> Quick Overview<\/h2>/, to: '<h2 id="overview"><i class="bi bi-info-circle"></i> Quick Overview</h2>' },
    { from: /<h2><i class="bi bi-card-checklist"><\/i> Types of/, to: '<h2 id="visa-types"><i class="bi bi-card-checklist"></i> Types of' },
    { from: /<h2><i class="bi bi-currency-rupee"><\/i> .* Fees/, to: null }, // will handle generically
  ];

  // Generic: Add ids to h2 sections that match key patterns
  const h2Regex = /<h2>(<i class="bi bi-card-checklist"><\/i>.*?)<\/h2>/;
  if (!html.includes('id="visa-types"')) {
    html = html.replace(
      /<h2>(<i class="bi bi-card-checklist"><\/i>)/,
      '<h2 id="visa-types">$1'
    );
    modified = true;
    console.log('  ✓ Added id="visa-types"');
  }

  if (!html.includes('id="documents"')) {
    html = html.replace(
      /<h2>(<i class="bi bi-file-earmark-text"><\/i>)/,
      '<h2 id="documents">$1'
    );
    modified = true;
    console.log('  ✓ Added id="documents"');
  }

  if (!html.includes('id="process"')) {
    html = html.replace(
      /<h2>(<i class="bi bi-signpost-2"><\/i>)/,
      '<h2 id="process">$1'
    );
    modified = true;
    console.log('  ✓ Added id="process"');
  }

  if (!html.includes('id="processing-time"')) {
    html = html.replace(
      /<h2>(<i class="bi bi-clock"><\/i>)/,
      '<h2 id="processing-time">$1'
    );
    modified = true;
    console.log('  ✓ Added id="processing-time"');
  }

  if (!html.includes('id="faq"')) {
    html = html.replace(
      /<h2>(<i class="bi bi-question-circle"><\/i>)/,
      '<h2 id="faq">$1'
    );
    modified = true;
    console.log('  ✓ Added id="faq"');
  }

  if (!html.includes('id="overview"')) {
    // Try several patterns for overview
    const overviewPatterns = [
      /<h2>(<i class="bi bi-info-circle"><\/i>)/,
      /<h2>Quick Overview/,
    ];
    for (let pat of overviewPatterns) {
      if (pat.test(html)) {
        html = html.replace(pat, '<h2 id="overview">Quick Overview' ? '<h2 id="overview">Quick Overview' : '<h2 id="overview">$1');
        // More carefully:
        break;
      }
    }
    // Simpler approach - add id to first h2 in main-content
    const firstH2 = html.match(/<h2>(?!.*id=)/);
    if (firstH2) {
      html = html.replace(firstH2[0], '<h2 id="overview">');
      modified = true;
      console.log('  ✓ Added id="overview"');
    }
  }

  // 5. Transform quick-overview table to stat cards
  if (COUNTRY_STATS[countryKey]) {
    const stats = COUNTRY_STATS[countryKey];
    const statsHTML = generateStatCards(stats);
    // Also remove the preceding heading (handle normal and duplicate-text cases)
    const tableWithHeadingPattern = /<h2[^>]*>Quick Overview[^<]*<\/h2>\s*<table class="quick-overview">[\s\S]*?<\/table>/;
    const tableOnlyPattern = /<table class="quick-overview">[\s\S]*?<\/table>/;
    if (tableWithHeadingPattern.test(html)) {
      html = html.replace(tableWithHeadingPattern, statsHTML);
      modified = true;
      console.log('  ✓ Quick-overview replaced with stat cards');
    } else if (tableOnlyPattern.test(html)) {
      html = html.replace(tableOnlyPattern, statsHTML);
      modified = true;
      console.log('  ✓ Quick-overview replaced with stat cards');
    } else {
      console.log('  - No quick-overview table found (may already be replaced)');
    }
  }

  // 6. Replace FAQ section with expanded country-specific FAQs
  let faqData = COUNTRY_FAQS[countryKey];
  if (!faqData) {
    // Generate from defaults
    const countryName = countryKey.replace(/-visa$/, '').replace(/-/g, ' ').replace(/\b\w/g, c => c.toUpperCase());
    faqData = generateDefaultFAQs(countryName, countryKey, 'visa', COUNTRY_STATS[countryKey] || []);
  }

  const faqRegex = /<h2[^>]*id="faq"[^>]*>.*?Frequently Asked Questions.*?<\/h2>\s*<div class="faq-list[^>]*>[\s\S]*?<\/div>\s*<\/div>/;
  if (faqRegex.test(html)) {
    const newFaqSection = generateFAQSection(faqData);
    html = html.replace(faqRegex, newFaqSection);
    modified = true;
    console.log(`  ✓ FAQ section replaced with ${faqData.length} expanded FAQs`);
  } else {
    // Try alternative pattern
    const altFaqRegex = /<h2[^>]*>.*?Frequently Asked Questions.*?<\/h2>\s*<div class="faq-list[^>]*>[\s\S]*?<\/div>/;
    if (altFaqRegex.test(html)) {
      const newFaqSection = generateFAQSection(faqData);
      html = html.replace(altFaqRegex, newFaqSection);
      modified = true;
      console.log(`  ✓ FAQ section replaced with ${faqData.length} expanded FAQs (alt pattern)`);
    } else {
      console.log('  ✗ Could not find FAQ section to replace');
    }
  }

  // 7. Add reading progress JS before main.js
  if (!html.includes('Reading Progress & TOC Active State')) {
    const progressJS = `
<!-- Reading Progress & TOC Active State -->
<script>
document.addEventListener('DOMContentLoaded', function() {
  var progressBar = document.getElementById('readingProgress');
  var tocLinks = document.querySelectorAll('.toc-link');
  var sections = [];
  tocLinks.forEach(function(link) {
    var href = link.getAttribute('href');
    if (href && href.startsWith('#')) {
      var section = document.querySelector(href);
      if (section) sections.push({ el: section, link: link });
    }
  });
  var ticking = false;
  window.addEventListener('scroll', function() {
    if (!ticking) {
      requestAnimationFrame(function() {
        var scrollTop = window.scrollY;
        var docHeight = document.documentElement.scrollHeight - window.innerHeight;
        var progress = docHeight > 0 ? (scrollTop / docHeight) * 100 : 0;
        if (progressBar) progressBar.style.width = Math.min(progress, 100) + '%';
        var current = 0;
        for (var i = 0; i < sections.length; i++) {
          if (sections[i].el.offsetTop - 200 <= scrollTop) {
            current = i;
          }
        }
        tocLinks.forEach(function(l, idx) {
          l.classList.toggle('active', idx === current);
        });
        ticking = false;
      });
      ticking = true;
    }
  });
  var toc = document.getElementById('stickyToc');
  if (toc) {
    window.addEventListener('scroll', function() {
      toc.classList.toggle('scrolled', window.scrollY > 50);
    });
  }
});
</script>
`;
    html = html.replace('<script src="/js/main.js" defer></script>', progressJS + '<script src="/js/main.js" defer></script>');
    modified = true;
    console.log('  ✓ Reading progress JS added');
  }

  // 8. Wrap process steps in process-timeline if not already
  if (!html.includes('process-timeline') && html.includes('process-step')) {
    const processPattern = /(<h2[^>]*id="process"[^>]*>.*?<\/h2>\s*<p>.*?<\/p>\s*)(<div class="process-step">[\s\S]*?(?:<\/div>\s*){7})/;
    const match = html.match(processPattern);
    if (match) {
      const wrapped = match[1] + '<div class="process-timeline">\n' + match[2] + '\n</div>';
      html = html.replace(match[0], wrapped);
      modified = true;
      console.log('  ✓ Process steps wrapped in timeline');
    }
  }

  if (modified) {
    fs.writeFileSync(filePath, html, 'utf8');
    console.log(`  ✓ File saved: ${countryKey}/index.html`);
  } else {
    console.log('  - No changes needed');
  }
}

function generateStatCards(stats) {
  let html = '<div class="quick-stats-grid">\n';
  stats.forEach(s => {
    html += `<div class="stat-card">\n`;
    html += `<div class="stat-icon"><i class="bi bi-${s.icon}"></i></div>\n`;
    html += `<div class="stat-label">${s.label}</div>\n`;
    html += `<div class="stat-value">${s.value}</div>\n`;
    html += `<div class="stat-sub">${s.sub}</div>\n`;
    html += `</div>\n`;
  });
  html += '</div>';
  return html;
}

function generateFAQSection(faqs) {
  let html = `<h2 id="faq"><i class="bi bi-question-circle"></i> Frequently Asked Questions</h2>\n`;
  html += `<div class="faq-list" style="max-width:100%;">\n`;
  faqs.forEach(f => {
    html += `<div class="faq-item">\n`;
    html += `<button class="faq-question" aria-expanded="false">${f.q}<span class="faq-icon">+</span></button>\n`;
    html += `<div class="faq-answer">${f.a}</div>\n`;
    html += `</div>\n`;
  });
  html += `</div>\n`;
  return html;
}

// ===== Find all B-country directories and process them =====
const bCountries = [
  'bahamas-visa', 'bahrain-visa', 'bangladesh-visa', 'barbados-visa',
  'belarus-visa', 'belgium-visa', 'belize-visa', 'benin-visa',
  'bhutan-visa', 'bolivia-visa', 'bosnia-and-herzegovina-visa',
  'botswana-visa', 'brazil-visa', 'brunei-visa', 'bulgaria-visa',
  'burkina-faso-visa', 'burundi-visa'
];

// Skip Bhutan as it's already redesigned
let skipCount = 0;
let successCount = 0;
let failCount = 0;

console.log('=== B-Country Visa Guide v3.0 Redesign ===\n');

bCountries.forEach(country => {
  if (country === 'bhutan-visa') {
    console.log(`Skipping: ${country} (already redesigned)`);
    skipCount++;
    return;
  }
  
  const filePath = path.join(BASE, country, 'index.html');
  if (!fs.existsSync(filePath)) {
    console.log(`MISSING: ${filePath}`);
    failCount++;
    return;
  }
  
  try {
    transformPage(filePath, country);
    successCount++;
  } catch (err) {
    console.log(`ERROR: ${country} - ${err.message}`);
    failCount++;
  }
});

console.log(`\n=== Complete: ${successCount} transformed, ${skipCount} skipped, ${failCount} failed ===`);
