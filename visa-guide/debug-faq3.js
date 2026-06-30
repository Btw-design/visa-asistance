const fs = require('fs');
const html = fs.readFileSync('D:/ahit health/my-visa-assistance/visa-guide/brunei-visa/index.html', 'utf8');

// Find the faq-list div
const listStart = html.indexOf('<div class="faq-list');
console.log('Has faq-list:', listStart !== -1);

// Find its closing </div> by counting div nesting
// Start after the opening <div class="faq-list..." tag
const openClose = html.indexOf('>', listStart);
let pos = openClose + 1;
let depth = 1;
let foundEnd = -1;

while (pos < html.length) {
  const nextOpen = html.indexOf('<div', pos);
  const nextClose = html.indexOf('</div>', pos);
  
  if (nextClose === -1) break; // no more closing tags
  
  if (nextOpen !== -1 && nextOpen < nextClose) {
    // Opening tag comes first
    depth++;
    pos = nextOpen + 4; // skip <div
  } else {
    // Closing tag comes first (or no opening tag)
    depth--;
    pos = nextClose + 6; // skip </div>
    if (depth === 0) {
      foundEnd = pos;
      break;
    }
  }
}

console.log('foundEnd:', foundEnd);
if (foundEnd !== -1) {
  const after = html.substring(foundEnd);
  console.log('After faq-list (first 200 chars):');
  console.log(after.substring(0, 200));
  
  // Find where orphan items end (next h2, or footer, etc.)
  const nextSection = after.search(/\n\s*<(?:h[2-6]|div class="(?:cta|sidebar|footer))/);
  console.log('\nNext section at offset from foundEnd:', nextSection);
  
  // Check for orphan faq-items in the after content
  const orphanMatch = after.match(/^(\s*<div class="faq-item">[\s\S]*?<\/div>\s*)+/);
  if (orphanMatch) {
    console.log('\nFound orphan items:');
    console.log(orphanMatch[0].substring(0, 200) + '...');
  } else {
    console.log('\nNo orphan items found via regex');
    
    // Count faq-items in after content
    const items = after.match(/<div class="faq-item">/g);
    console.log('Orphan faq-item count:', items ? items.length : 0);
  }
}
