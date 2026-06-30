const fs = require('fs');
const html = fs.readFileSync('D:/ahit health/my-visa-assistance/visa-guide/brunei-visa/index.html', 'utf8');

// Find the faq-list
const listStart = html.indexOf('<div class="faq-list');
console.log('listStart:', listStart);

// Track div nesting
let depth = 1; // we're already inside the faq-list div
let i = listStart + '<div class="faq-list" style="max-width:100%;">'.length;
let listEnd = -1;

while (i < html.length) {
  if (html[i] === '<' && html.substring(i, i+6) === '</div>') {
    depth--;
    i += 6;
    if (depth === 0) { listEnd = i; break; }
  } else if (html[i] === '<' && html.substring(i, i+4) === '<div') {
    // Only count as opening if it's a full <div tag (not self-closing, not a closing tag)
    // Check it's not a self-closing like <div />
    const closePos = html.indexOf('>', i);
    if (closePos !== -1 && html[closePos-1] !== '/') {
      depth++;
    }
  }
  i++;
}

console.log('listEnd:', listEnd);
console.log('After list, next 150 chars:', JSON.stringify(html.substring(listEnd, listEnd + 150)));
console.log('Has orphan faq-items:', /<div class="faq-item">/.test(html.substring(listEnd, listEnd + 500)));
