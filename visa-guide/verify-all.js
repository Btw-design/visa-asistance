const fs = require('fs');
const path = require('path');

const BASE = 'D:/ahit health/my-visa-assistance/visa-guide';

const countries = [
  'bahamas-visa', 'bahrain-visa', 'bangladesh-visa', 'barbados-visa',
  'belarus-visa', 'belgium-visa', 'belize-visa', 'benin-visa',
  'bhutan-visa', 'bolivia-visa', 'bosnia-and-herzegovina-visa',
  'botswana-visa', 'brazil-visa', 'brunei-visa', 'bulgaria-visa',
  'burkina-faso-visa', 'burundi-visa'
];

console.log('=== Verification of B-Country Pages ===\n');

countries.forEach(country => {
  const filePath = path.join(BASE, country, 'index.html');
  if (!fs.existsSync(filePath)) {
    console.log(`✗ ${country}: FILE NOT FOUND`);
    return;
  }
  
  const html = fs.readFileSync(filePath, 'utf8');
  const checks = {
    'CSS v3.0': html.includes('css-v3-redesign.css'),
    'Reading Progress': html.includes('reading-progress'),
    'Sticky TOC': html.includes('sticky-toc'),
    'Stat Cards': html.includes('quick-stats-grid'),
    'Section IDs': html.includes('id="visa-types"') && html.includes('id="documents"') && html.includes('id="faq"'),
    'FAQ Expanded': /faq-answer[\s\S]*?<ul>/i.test(html),
    'FAQ Int. Links': html.includes('href="#') && html.includes('faq-item'),
    'Progress JS': html.includes('Reading Progress & TOC Active State'),
    'Footer': html.includes('class="footer"'),
    'CTA': html.includes('cta-section'),
  };
  
  const allOk = Object.values(checks).every(v => v);
  const failed = Object.entries(checks).filter(([,v]) => !v).map(([k]) => k);
  
  if (allOk) {
    console.log(`✓ ${country}: ALL CHECKS PASSED (${html.split('\n').length} lines, ${(html.length/1024).toFixed(0)}KB)`);
  } else {
    console.log(`✗ ${country}: MISSING [${failed.join(', ')}]`);
  }
});
