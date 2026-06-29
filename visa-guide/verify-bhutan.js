const fs = require('fs');
const html = fs.readFileSync('D:/ahit health/my-visa-assistance/visa-guide/bhutan-visa/index.html', 'utf8');

const checks = [
  ['reading-progress div', html.includes('reading-progress')],
  ['sticky-toc nav', html.includes('sticky-toc')],
  ['quick-stats-grid', html.includes('quick-stats-grid')],
  ['css-v3-redesign.css', html.includes('css-v3-redesign.css')],
  ['process-timeline', html.includes('process-timeline')],
  ['id="visa-types"', html.includes('id="visa-types"')],
  ['id="documents"', html.includes('id="documents"')],
  ['id="process"', html.includes('id="process"')],
  ['id="processing-time"', html.includes('id="processing-time"')],
  ['id="faq"', html.includes('id="faq"')],
  ['id="overview"', html.includes('id="overview"')],
  ['Frequently Asked Questions', html.includes('Frequently Asked Questions')],
  ['toc-link', html.includes('toc-link')],
  ['class="footer"', html.includes('class="footer"')],
  ['faq-list', html.includes('faq-list')],
  ['faq-answer ul', html.includes('<ul>')],
  ['faq internal links', html.includes('href="#')],
  ['Guides sidebar', html.includes('Related Guides')],
  ['CTA section', html.includes('cta-section')],
  ['Official Resources', html.includes('Official Resources')],
];

let allOk = true;
checks.forEach(function(c) {
  var status = c[1] ? 'OK' : 'MISSING';
  if (!c[1]) allOk = false;
  console.log(status + ': ' + c[0]);
});

console.log('\n' + (allOk ? 'ALL CHECKS PASSED' : 'SOME CHECKS FAILED'));
console.log('File size: ' + html.length + ' bytes');
console.log('Lines: ' + html.split('\n').length);
