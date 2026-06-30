const fs = require('fs');
const path = require('path');

const BASE = 'D:/ahit health/my-visa-assistance/visa-guide';

const countries = [
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

let passed = 0;
let failed = 0;
const failures = [];

countries.forEach(country => {
  const filePath = path.join(BASE, country, 'index.html');
  if (!fs.existsSync(filePath)) {
    console.log(`  MISSING: ${country}`);
    failures.push(country + ': missing');
    failed++;
    return;
  }

  const html = fs.readFileSync(filePath, 'utf8');
  const checks = [];

  // 1. CSS v3.0 external link
  checks.push(html.includes('css-v3-redesign.css') ? 'CSS v3.0 ✓' : 'CSS v3.0 ✗');

  // 2. Reading progress bar
  checks.push(html.includes('reading-progress') && html.includes('readingProgress') ? 'Progress bar ✓' : 'Progress bar ✗');

  // 3. Sticky TOC
  checks.push(html.includes('sticky-toc') && html.includes('toc-inner') ? 'Sticky TOC ✓' : 'Sticky TOC ✗');

  // 4. Stat cards
  checks.push(html.includes('quick-stats-grid') && html.includes('id="overview"') ? 'Stat cards ✓' : 'Stat cards ✗');

  // 5. Section IDs (check for at least overview, process, faq)
  const hasOverview = html.includes('id="overview"');
  const hasProcess = html.includes('id="process"');
  const hasFaq = html.includes('id="faq"');
  const sections = (hasOverview ? 'overview ' : '') + (hasProcess ? 'process ' : '') + (hasFaq ? 'faq ' : '');
  checks.push(sections.trim() ? `Sections: ${sections}✓` : 'Sections ✗');

  // 6. FAQ with bullet answers (ul inside faq-answer)
  const faqCheck = html.match(/faq-answer[\s\S]*?<ul>/i);
  checks.push(faqCheck ? 'FAQ with bullets ✓' : 'FAQ with bullets ✗');

  // 7. Reading progress JS
  checks.push(html.includes('Reading Progress & TOC Active State') ? 'Progress JS ✓' : 'Progress JS ✗');

  // 8. Process timeline (or process-timeline class)
  checks.push(html.includes('process-timeline') ? 'Timeline ✓' : 'Timeline ✗');

  // 9. Footer present
  checks.push(html.includes('</footer>') ? 'Footer ✓' : 'Footer ✗');

  // 10. V2.0 inline CSS NOT present
  checks.push(!html.includes('ENHANCED VISA GUIDE UI v2.0') ? 'No v2.0 CSS ✓' : 'No v2.0 CSS ✗');

  // 11. FAQ items count (expect 15)
  const faqItems = (html.match(/<div class="faq-item">/g) || []).length;
  checks.push(faqItems === 15 ? `FAQ items: ${faqItems} ✓` : `FAQ items: ${faqItems} (expected 15) ✗`);

  // Find any failing checks
  const fails = checks.filter(c => c.includes('✗'));
  if (fails.length === 0) {
    passed++;
    process.stdout.write(`  ${country}: ALL ${checks.length} CHECKS PASSED\n`);
  } else {
    failed++;
    process.stdout.write(`  ${country}: ${fails.length}/${checks.length} FAILURES\n`);
    fails.forEach(f => process.stdout.write(`    - ${f}\n`));
    failures.push(country + ': ' + fails.join(', '));
  }
});

console.log(`\n=== Complete: ${passed} passed, ${failed} failed ===`);
if (failures.length > 0) {
  console.log('Failures:');
  failures.forEach(f => console.log(`  ${f}`));
}
