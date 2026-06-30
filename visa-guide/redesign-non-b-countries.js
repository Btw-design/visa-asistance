/**
 * Visa Guide v3.0 Redesign — Transform ALL remaining pages to Brunei layout
 * Applies: CSS v3.0, reading progress bar, sticky TOC, stat cards, 
 *          expanded FAQ with bullet answers, process timeline, section IDs
 */
const fs = require('fs');
const path = require('path');

const BASE = 'D:/ahit health/my-visa-assistance/visa-guide';

// ===== Helpers =====

/** Find matching closing </div> starting from an opening <div at given position */
function findDivEnd(html, startPos) {
  const openClose = html.indexOf('>', startPos);
  if (openClose === -1) return -1;
  let pos = openClose + 1;
  let depth = 1;
  while (pos < html.length) {
    const nextOpen = html.indexOf('<div', pos);
    const nextClose = html.indexOf('</div>', pos);
    if (nextClose === -1) break;
    if (nextOpen !== -1 && nextOpen < nextClose) {
      depth++;
      pos = nextOpen + 4;
    } else {
      depth--;
      pos = nextClose + 6;
      if (depth === 0) return pos;
    }
  }
  return -1;
}

/** Parse quick-overview table into key-value pairs */
function parseQuickOverview(html) {
  const tableMatch = html.match(/<table class="quick-overview">[\s\S]*?<\/table>/);
  if (!tableMatch) return {};
  const table = tableMatch[0];
  const rows = table.match(/<tr>[\s\S]*?<\/tr>/g) || [];
  const data = {};
  rows.forEach(row => {
    const th = row.match(/<th>(.*?)<\/th>/);
    const td = row.match(/<td>(.*?)<\/td>/);
    if (th && td) {
      const key = th[1].replace(/<[^>]*>/g, '').replace(/[?]/g, '').replace(/^\s+|\s+$/g, '');
      const val = td[1].replace(/<[^>]*>/g, '').replace(/^\s+|\s+$/g, '');
      data[key] = val;
    }
  });
  return data;
}

/** Generate stat cards from quick-overview data */
function generateStatCardsFromTable(data) {
  if (!data || Object.keys(data).length === 0) return null;

  const map = [
    { key: 'Visa Required', icon: 'passport', label: 'Visa Required?', fallback: 'Yes' },
    { key: 'Processing Time', icon: 'clock', label: 'Processing', fallback: 'Varies' },
    { key: 'Visa Fee Range', icon: 'currency-dollar', label: 'Visa Fee', fallback: 'Varies' },
    { key: 'Maximum Stay', icon: 'calendar-check', label: 'Max Stay', fallback: 'Varies' },
    { key: 'Approval Rate', icon: 'shield-check', label: 'Approval Rate', fallback: 'Varies' },
    { key: 'Biometrics', icon: 'fingerprint', label: 'Biometrics', fallback: 'Check embassy' },
    { key: 'Entry Mode', icon: 'geo-alt', label: 'Entry Mode', fallback: 'Varies' },
    { key: 'Financial Requirement', icon: 'people', label: 'Financial Req', fallback: 'Varies' },
  ];

  // Try fuzzy matching for keys
  const fuzzyFind = (targetKey) => {
    const target = targetKey.toLowerCase().replace(/[^a-z0-9]/g, '');
    for (const [k, v] of Object.entries(data)) {
      const clean = k.toLowerCase().replace(/[^a-z0-9]/g, '');
      if (clean.includes(target) || target.includes(clean)) return v;
    }
    return null;
  };

  const cards = map.map(m => {
    const value = fuzzyFind(m.key) || data[m.key] || m.fallback;
    // For "Visa Required" column, also look for "Visa Required?"
    return {
      icon: m.icon,
      label: m.label,
      value: value.length > 30 ? value.substring(0, 28) + '...' : value,
      sub: value.length > 25 ? '' : 'See details below',
    };
  });

  return cards;
}

function generateStatCardsHTML(stats) {
  let html = '<div class="quick-stats-grid" id="overview">\n';
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

/** Generate default 15 FAQ items for a country */
function generateDefaultFAQs(countryName) {
  const urlSafe = countryName.toLowerCase().replace(/\s+/g, '-');
  return [
    { q: `Do Indian citizens need a visa for ${countryName}?`,
      a: `<p>Yes, Indian citizens need a visa for ${countryName}. Key information:</p><ul><li>A visa is required for Indian passport holders traveling to ${countryName}.</li><li>See the <a href="#visa-types">Visa Types section</a> for all available visa categories and options.</li><li>Your passport must have <strong>at least 6 months validity</strong> beyond your intended stay.</li><li>Processing times vary by visa type — check the <a href="#processing-time">Processing Time section</a> for details.</li><li>See the <a href="#process">Application Process section</a> for step-by-step instructions.</li></ul>` },
    { q: `What are the visa options for Indians visiting ${countryName}?`,
      a: `<p>Available visa types for Indian citizens traveling to ${countryName}:</p><ul><li><strong>Tourist visa:</strong> For tourism and leisure travel. See the <a href="#visa-types">Visa Types section</a> for details.</li><li><strong>Business visa:</strong> For business meetings, conferences, and trade activities.</li><li><strong>Student visa:</strong> For enrolled students at ${countryName} educational institutions.</li><li><strong>Transit visa:</strong> For connecting flights through ${countryName}.</li><li>Each visa type has specific <strong>document requirements and fee structures</strong>.</li></ul>` },
    { q: `What documents are required for a ${countryName} visa?`,
      a: `<p>Standard document requirements for a ${countryName} visa. See the <a href="#documents">full checklist</a>:</p><ul><li><strong>Valid Indian passport</strong> — minimum 6 months validity beyond intended stay, with at least 2 blank pages.</li><li><strong>Passport-size photographs</strong> — 35×45mm, white background, taken within 6 months.</li><li><strong>Completed visa application form</strong> — accurately filled with matching details.</li><li><strong>Travel itinerary</strong> — flight bookings and accommodation details.</li><li><strong>Bank statements</strong> for the last 3-6 months showing sufficient funds.</li></ul>` },
    { q: `How long does it take to process a ${countryName} visa?`,
      a: `<p>Processing times for ${countryName} visas vary by category:</p><ul><li><strong>Tourist visa:</strong> Processing takes approximately 5-15 working days depending on the application volume.</li><li><strong>Business visa:</strong> Typically 7-15 working days.</li><li><strong>Student visa:</strong> May take 4-8 weeks for complete processing.</li><li>See the <a href="#processing-time">Processing Time section</a> for detailed timelines.</li><li>Apply at least <strong>3-4 weeks before</strong> your intended travel date to allow for any delays.</li></ul>` },
    { q: `What is the ${countryName} visa fee for Indians?`,
      a: `<p>Visa fees for ${countryName} depend on the visa category. <a href="#fees">See the complete fee table</a>:</p><ul><li>Fees vary by <strong>visa type</strong> (tourist, business, student, work).</li><li>Additional <strong>service charges</strong> may apply when applying through visa centers.</li><li>All fees are <strong>non-refundable</strong> once the application is submitted.</li><li>Payment methods vary — most accept online payment or demand drafts.</li></ul>` },
    { q: `How long can I stay in ${countryName} on a tourist visa?`,
      a: `<p>Stay duration on a tourist visa for ${countryName}:</p><ul><li>The tourist visa typically allows stays of <strong>30-90 days</strong> depending on the visa category.</li><li>Some visas allow <strong>single entry</strong>, others allow <strong>multiple entries</strong>.</li><li><strong>Extensions</strong> may be possible by applying to the immigration authorities.</li><li><strong>Overstaying</strong> can result in fines and future visa complications.</li><li>Check the <a href="#processing-time">Processing Time section</a> for detailed information.</li></ul>` },
    { q: `Is travel insurance required for ${countryName}?`,
      a: `<p>Travel insurance information for ${countryName}:</p><ul><li><strong>Not mandatory</strong> for most tourist visas but <strong>strongly recommended</strong>.</li><li>Coverage should include <strong>medical emergencies</strong>, <strong>trip cancellation</strong>, and <strong>baggage loss</strong>.</li><li>Some visa categories may <strong>require proof of travel insurance</strong>.</li><li>Students and work visa holders may need health insurance as a condition of their visa.</li></ul>` },
    { q: `What is the best time to visit ${countryName}?`,
      a: `<p>The best time to visit ${countryName} depends on your preferences:</p><ul><li>Research the <strong>climate and seasons</strong> of ${countryName} before planning your trip.</li><li>Consider factors like <strong>temperature, rainfall, and tourist crowds</strong>.</li><li>Check for <strong>local festivals and events</strong> that may enhance your travel experience.</li><li>Book flights and accommodation <strong>in advance</strong> during peak tourist seasons.</li></ul>` },
    { q: `Can I get a ${countryName} visa on arrival as an Indian?`,
      a: `<p>Visa-on-arrival availability for Indian citizens in ${countryName}:</p><ul><li>Check the <strong>current visa policy</strong> for Indian nationals — most countries require a visa in advance.</li><li>If no visa on arrival is available, you must apply for a <strong>visa before travel</strong>.</li><li>See the <a href="#process">Application Process section</a> for the complete step-by-step guide.</li><li>Always verify current requirements with the <strong>official embassy website</strong>.</li></ul>` },
    { q: `What are the common reasons for ${countryName} visa rejection?`,
      a: `<p>Common reasons for visa rejection for Indian applicants:</p><ul><li><strong>Insufficient funds</strong> — bank statements must show adequate balance.</li><li><strong>Incomplete documentation</strong> — missing or incorrect documents.</li><li><strong>Poor travel history</strong> — limited international travel history may lead to stricter scrutiny.</li><li><strong>Discrepancies</strong> between application form and supporting documents.</li><li><strong>Criminal record</strong> or previous immigration violations.</li></ul>` },
    { q: `What currency is used in ${countryName}?`,
      a: `<p>Currency and payment information for ${countryName}:</p><ul><li>The official currency varies — check the <strong>local currency and exchange rates</strong> before traveling.</li><li><strong>Credit cards</strong> are accepted at most hotels and larger establishments in tourist areas.</li><li><strong>ATMs</strong> are available in cities and major towns.</li><li>Carry some <strong>local currency in cash</strong> for small purchases, tips, and local transport.</li><li>Inform your bank about your travel plans to avoid card blocks.</li></ul>` },
    { q: `Is ${countryName} safe for Indian tourists?`,
      a: `<p>Safety tips for Indian travellers visiting ${countryName}:</p><ul><li>Research the <strong>safety situation</strong> in the areas you plan to visit.</li><li>Keep <strong>valuables secure</strong> and avoid displaying expensive items in public.</li><li>Follow <strong>local laws and customs</strong> to avoid any legal issues.</li><li>Save <strong>emergency contact numbers</strong> for local police and your country's embassy.</li><li>Register with your <strong>embassy or consulate</strong> upon arrival if recommended.</li></ul>` },
    { q: `Do I need any vaccinations for ${countryName}?`,
      a: `<p>Recommended vaccinations for travel to ${countryName}:</p><ul><li><strong>Routine vaccinations</strong> — MMR, DPT, and polio should be up to date.</li><li><strong>Yellow fever</strong> — required if travelling from a country with yellow fever risk.</li><li><strong>Hepatitis A and Typhoid</strong> — recommended for most international travel.</li><li>Consult your doctor <strong>4-6 weeks before travel</strong> for personalized advice.</li><li>Carry a <strong>basic medical kit</strong> with essential medications.</li></ul>` },
    { q: `Can I extend my ${countryName} visa?`,
      a: `<p>Visa extension information for ${countryName}:</p><ul><li>Extensions may be possible by applying to the <strong>immigration authorities</strong>.</li><li>Apply <strong>before your current visa expires</strong> to avoid overstaying.</li><li>Provide a <strong>valid reason</strong> for the extension along with supporting documents.</li><li>Extension fees and processes vary by country and visa type.</li></ul>` },
    { q: `What language is spoken in ${countryName}?`,
      a: `<p>Language information for ${countryName}:</p><ul><li>The <strong>official language</strong> and widely spoken languages in ${countryName}.</li><li><strong>English</strong> may be spoken in tourist areas and business settings.</li><li>Learning a few <strong>basic local phrases</strong> can enhance your travel experience.</li><li>Consider carrying a <strong>translation app</strong> on your smartphone for convenience.</li></ul>` },
  ];
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

function toTitleCase(str) {
  return str.replace(/-/g, ' ').replace(/\b\w/g, c => c.toUpperCase());
}

// ===== Main Transformation =====

const nonBCountries = [
  'albania-visa', 'algeria-visa', 'andorra-visa', 'angola-visa',
  'antigua-and-barbuda-visa', 'argentina-visa', 'armenia-visa', 'australia-visa',
  'austria-visa', 'azerbaijan-visa', 'cambodia-visa', 'canada-visa',
  'china-visa', 'egypt-visa', 'france-visa', 'germany-visa',
  'india-visa', 'indonesia-visa', 'italy-visa', 'japan-visa',
  'malaysia-visa', 'mexico-visa', 'nepal-visa', 'netherlands-visa',
  'new-zealand-visa', 'philippines-visa', 'russia-visa', 'schengen-visa',
  'singapore-visa', 'south-africa-visa', 'south-korea-visa', 'spain-visa',
  'sri-lanka-visa', 'switzerland-visa', 'thailand-visa', 'turkey-visa',
  'uae-visa', 'uk-visa', 'usa-visa', 'vietnam-visa'
];

let success = 0;
let skip = 0;
let fail = 0;

console.log('=== Transforming non-B-country pages to Brunei v3.0 layout ===\n');

nonBCountries.forEach(countryKey => {
  const filePath = path.join(BASE, countryKey, 'index.html');
  if (!fs.existsSync(filePath)) {
    console.log(`  MISSING: ${countryKey}`);
    fail++;
    return;
  }

  try {
    let html = fs.readFileSync(filePath, 'utf8');
    let modified = false;
    const countryName = toTitleCase(countryKey.replace(/-visa$/, ''));

    // ===== 1. Replace inline v2.0 CSS with external v3.0 CSS link =====
    if (!html.includes('css-v3-redesign.css')) {
      const v2Pattern = /<style>\s*\/\* =====+\s*\n\s+ENHANCED VISA GUIDE UI v2\.0[\s\S]*?<\/style>/;
      if (v2Pattern.test(html)) {
        html = html.replace(v2Pattern, '<link rel="stylesheet" href="/visa-guide/css-v3-redesign.css">');
        modified = true;
        console.log(`  ${countryKey}: CSS v2.0 replaced`);
      }
    }

    // ===== 2. Add reading progress bar =====
    if (!html.includes('reading-progress')) {
      const bar = `\n<!-- Reading Progress Bar -->\n<div class="reading-progress" id="readingProgress" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>\n`;
      html = html.replace('<body>', '<body>' + bar);
      modified = true;
      console.log(`  ${countryKey}: Reading progress bar added`);
    }

    // ===== 3. Add sticky TOC =====
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

      // Insert after country-hero or before country-content
      const afterHero = html.indexOf('</div>', html.indexOf('</div>', html.indexOf('country-hero')));
      if (afterHero !== -1) {
        const insertPos = html.indexOf('<section class="country-content"', afterHero);
        if (insertPos !== -1) {
          html = html.substring(0, insertPos) + '\n' + tocHTML + '\n' + html.substring(insertPos);
          modified = true;
          console.log(`  ${countryKey}: Sticky TOC added`);
        }
      }
    }

    // ===== 4. Add section IDs to h2 elements =====
    const idRules = [
      { id: 'visa-types', patterns: [/<h2>(<i class="bi bi-card-checklist"><\/i>)/] },
      { id: 'fees', patterns: [/<h2>(<i class="bi bi-currency-rupee"><\/i>)/] },
      { id: 'documents', patterns: [/<h2>(<i class="bi bi-file-earmark-text"><\/i>)/] },
      { id: 'process', patterns: [/<h2>(<i class="bi bi-signpost-2"><\/i>)/] },
      { id: 'processing-time', patterns: [/<h2>(<i class="bi bi-clock"><\/i>)/] },
      { id: 'faq', patterns: [/<h2>(<i class="bi bi-question-circle"><\/i>)/] },
      { id: 'resources', patterns: [/<h2>(<i class="bi bi-link-45deg"><\/i>)/] },
    ];

    idRules.forEach(rule => {
      if (!html.includes(`id="${rule.id}"`)) {
        for (const pat of rule.patterns) {
          if (pat.test(html)) {
            html = html.replace(pat, `<h2 id="${rule.id}">$1`);
            modified = true;
            console.log(`  ${countryKey}: Added id="${rule.id}"`);
            break;
          }
        }
      }
    });

    // ===== 5. Replace quick-overview table with stat cards =====
    if (!html.includes('quick-stats-grid')) {
      const overviewData = parseQuickOverview(html);
      const stats = generateStatCardsFromTable(overviewData);
      if (stats) {
        const statsHTML = generateStatCardsHTML(stats);
        const tableWithHeading = /<h2[^>]*>[\s\S]*?Quick Overview[^<]*<\/h2>\s*<table class="quick-overview">[\s\S]*?<\/table>/;
        const tableOnly = /<table class="quick-overview">[\s\S]*?<\/table>/;
        if (tableWithHeading.test(html)) {
          html = html.replace(tableWithHeading, statsHTML);
          modified = true;
          console.log(`  ${countryKey}: Quick-overview replaced with stat cards (#overview added)`);
        } else if (tableOnly.test(html)) {
          html = html.replace(tableOnly, statsHTML);
          modified = true;
          console.log(`  ${countryKey}: Quick-overview replaced with stat cards (#overview added)`);
        }
      }
    }

    // ===== 6. Replace FAQ section with expanded bullet-point FAQs =====
    if (!html.includes('Reading Progress & TOC Active State')) {
      const faqData = generateDefaultFAQs(countryName);
      const newFaqSection = generateFAQSection(faqData);

      // Find FAQ heading position
      const faqHeadingIdx = html.search(/<h2[^>]*>.*?Frequently Asked Questions.*?<\/h2>/i);
      if (faqHeadingIdx !== -1) {
        // Look for .faq-list after the heading
        const afterHeading = html.substring(faqHeadingIdx);
        const flStart = afterHeading.indexOf('<div class="faq-list');
        if (flStart !== -1) {
          const absStart = faqHeadingIdx + flStart;
          const flEnd = findDivEnd(html, absStart);
          if (flEnd !== -1) {
            // Replace from heading start to end of faq-list
            const faqEnd = flEnd;
            const headingEnd = html.indexOf('</h2>', faqHeadingIdx) + 6;
            html = html.substring(0, faqHeadingIdx) + newFaqSection + html.substring(faqEnd);
            modified = true;
            console.log(`  ${countryKey}: FAQ replaced with ${faqData.length} bullet-point FAQs`);
          }
        }
      }
    }

    // ===== 7. Add reading progress JS =====
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
          if (sections[i].el.offsetTop - 200 <= scrollTop) current = i;
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
      console.log(`  ${countryKey}: Reading progress JS added`);
    }

    // ===== 8. Wrap process steps in timeline =====
    if (!html.includes('process-timeline') && html.includes('process-step')) {
      // Find process heading (with id="process" added by step 4, or fallback patterns)
      let processIdx = html.search(/<h2[^>]*id="process"[^>]*>.*?<\/h2>/);
      if (processIdx === -1) {
        processIdx = html.search(/<h2[^>]*>.*?<i class="bi bi-signpost-2"><\/i>.*?<\/h2>/);
      }
      if (processIdx !== -1) {
        const afterH2 = html.indexOf('</h2>', processIdx) + 6;
        const restAfterHeading = html.substring(afterH2);
        const nextH2Match = restAfterHeading.match(/<h2[^>]*>/);
        if (nextH2Match) {
          const nextH2Pos = afterH2 + nextH2Match.index;
          const betweenContent = html.substring(afterH2, nextH2Pos);
          if (betweenContent.includes('process-step')) {
            html = html.substring(0, afterH2) + '\n<div class="process-timeline">\n' + betweenContent.trim() + '\n</div>\n' + html.substring(nextH2Pos);
            modified = true;
            console.log(`  ${countryKey}: Process steps wrapped`);
          }
        }
      }
    }

    // ===== Save =====
    if (modified) {
      fs.writeFileSync(filePath, html, 'utf8');
      success++;
    } else {
      skip++;
    }
  } catch (err) {
    console.log(`  ERROR: ${countryKey} - ${err.message}`);
    fail++;
  }
});

console.log(`\n=== Complete: ${success} transformed, ${skip} skipped, ${fail} failed ===`);
