/**
 * Cleanup Script — Remove orphan FAQ items (those outside .faq-list wrapper)
 * Fixes the bug where the FAQ regex only captured the first item due to lazy matching.
 * Removes any <div class="faq-item"> elements that appear after the .faq-list closing </div>.
 */
const fs = require('fs');
const path = require('path');

const BASE = 'D:/ahit health/my-visa-assistance/visa-guide';

const allDirs = fs.readdirSync(BASE, { withFileTypes: true })
  .filter(d => d.isDirectory() && d.name.endsWith('-visa'))
  .map(d => d.name);

let cleaned = 0;
let skipped = 0;

allDirs.forEach(dir => {
  const filePath = path.join(BASE, dir, 'index.html');
  if (!fs.existsSync(filePath)) { skipped++; return; }

  let html = fs.readFileSync(filePath, 'utf8');

  // Find the first .faq-list
  const listStart = html.indexOf('<div class="faq-list');
  if (listStart === -1) { skipped++; return; }

  // Find matching closing </div> by tracking <div / </div> nesting
  const openClose = html.indexOf('>', listStart);
  let pos = openClose + 1;
  let depth = 1;
  let listEnd = -1;

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
      if (depth === 0) {
        listEnd = pos;
        break;
      }
    }
  }

  if (listEnd === -1) { skipped++; return; }

  // Check if there are orphan .faq-item elements after the list
  const afterList = html.substring(listEnd);
  const orphanMatch = afterList.match(/^(\s*<div class="faq-item">[\s\S]*?<\/div>\s*)+/);
  if (!orphanMatch) {
    // Also check for any .faq-item not at the immediate start
    if (!/<div class="faq-item">/.test(afterList)) {
      skipped++;
      return;
    }
  }

  // Find the next structural element after the orphans (h2, .cta-section, .sidebar, footer, etc.)
  const nextSection = afterList.search(/\n\s*<(?:h[2-6]|div class="(?:cta-|sidebar|footer))/);
  const removeEnd = nextSection !== -1 ? listEnd + nextSection : html.length;

  // Only remove if there are actually orphan faq-items in this range
  const rangeContent = html.substring(listEnd, removeEnd);
  if (!/<div class="faq-item">/.test(rangeContent)) { skipped++; return; }

  // Remove the orphan content
  html = html.substring(0, listEnd) + '\n\n' + html.substring(removeEnd);

  fs.writeFileSync(filePath, html, 'utf8');
  console.log(`\u2713 ${dir}: Removed orphan FAQ items`);
  cleaned++;
});

console.log(`\nDone: ${cleaned} cleaned, ${skipped} skipped`);
