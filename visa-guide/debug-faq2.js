const fs = require('fs');
const html = fs.readFileSync('D:/ahit health/my-visa-assistance/visa-guide/brunei-visa/index.html', 'utf8');

// Simulate the cleanup script logic more carefully
const listStart = html.indexOf('<div class="faq-list');
console.log('Has faq-list:', listStart !== -1);

// Find matching closing </div>
let depth = 1;
let i = listStart + 6; // skip <div > part
// Find the > end of opening tag
while (i < html.length && html[i] !== '>') i++;
if (html[i] === '>') i++; // skip past >

let listEnd = -1;
while (i < html.length) {
  if (html[i] === '<') {
    if (html.substring(i, i+6) === '</div>') {
      depth--;
      i += 6;
      if (depth === 0) {
        listEnd = i;
        break;
      }
      continue;
    }
    if (html.substring(i, i+4) === '<div' && html[i+4] !== ' ') {
      // check it's not <div> immediately followed by non-space (like <div> or <div/)
      i++;
      continue;
    }
    // Check if it's a <div (opening tag, not self-closing)
    // Find the > 
    let j = i + 1;
    while (j < html.length && html[j] !== '>') j++;
    if (j < html.length) {
      // Check if it's a closing tag (starts with </)
      if (html[i+1] !== '/') {
        // Opening tag. Check if self-closing (ends with />)
        if (html[j-1] !== '/') {
          depth++;
        }
      }
      i = j + 1;
      continue;
    }
  }
  i++;
}

console.log('listEnd:', listEnd);
if (listEnd !== -1) {
  const afterContent = html.substring(listEnd);
  console.log('After list first 300 chars:');
  console.log(afterContent.substring(0, 300));
  
  // Check what comes next structurally
  const nextH2 = afterContent.search(/\n\s*<h[2-6]/);
  console.log('\nNext h2 at offset:', nextH2);
  if (nextH2 !== -1) {
    console.log('Next h2 content:', afterContent.substring(nextH2, nextH2 + 80));
  }
  
  // Check next section divider
  const nextSection = afterContent.search(/\n\s*<(?:h[2-6]|div class="(?:cta-|sidebar|footer))/);
  console.log('\nNext section at offset:', nextSection);
  if (nextSection !== -1) {
    console.log('Content before section:', afterContent.substring(0, nextSection));
    console.log('Section starts with:', afterContent.substring(nextSection, nextSection + 80));
  }
}
