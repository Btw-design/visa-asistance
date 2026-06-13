# -*- coding: utf-8 -*-
"""
Fix broken currency symbols across all HTML files.
"""

import os, re, glob

BASE = r"D:\ahit health\my-visa-assistance"

RUPEE  = '\u20b9'  # ₹
PESO   = '\u20b1'  # ₱
EURO   = '\u20ac'  # €
BAHT   = '\u0e3f'  # ฿

def fix_file(path):
    with open(path, 'r', encoding='utf-8') as f:
        text = f.read()
    orig = text
    n = 0

    # 1) Corrupted UTF-8 byte sequences read as Latin-1
    text = text.replace('\u00e2\u201a\u00b9', RUPEE)  # â‚¹ -> ₹
    text = text.replace('\u00e2\u201a\u00b1', PESO)   # â‚± -> ₱
    text = text.replace('\u00e2\u201a\u00ac', EURO)   # â‚¬ -> €
    text = text.replace('\u00e0\u00b8\u00bf', BAHT)   # à¸¿ -> ฿

    # 2) "Rs. $" / "Rs. €" / "Rs. ฿" -> "₹ (approximately ...)"
    text = re.sub(r'Rs\.\s+\$', RUPEE + ' (approximately $', text)
    text = re.sub(r'Rs\.\s+' + EURO, RUPEE + ' (approximately ' + EURO, text)
    text = re.sub(r'Rs\.\s+' + BAHT, RUPEE + ' (approximately ' + BAHT, text)
    text = re.sub(r'Rs\.\s+' + PESO, RUPEE + ' (approximately ' + PESO, text)

    # 3) "Rs. 1234" -> "₹1234"
    text = re.sub(r'Rs\.\s+(\d[\d,.]*)', RUPEE + r'\1', text)

    # 4) "(Rs. " -> "(₹ "
    text = text.replace('(Rs. ', '(' + RUPEE + ' ')
    # "(Rs.)" -> "(₹)"
    text = text.replace('(Rs.)', '(' + RUPEE + ')')

    # 5) Phrase patterns
    for phrase in ['in Rs. ', 'of Rs. ', 'for Rs. ', 'to Rs. ', 'from Rs. ',
                   'pay Rs. ', 'paying Rs. ', 'paid Rs. ', 'costs Rs. ',
                   'cost Rs. ', 'fee Rs. ', 'fees Rs. ', 'around Rs. ',
                   'about Rs. ', 'approximately Rs. ', 'approx Rs. ',
                   'total Rs. ', 'additional Rs. ', 'extra Rs. ']:
        text = text.replace(phrase, phrase.replace('Rs.', RUPEE))

    # 6) Table header patterns
    text = text.replace('Fee (Rs. Approx)', 'Fee (' + RUPEE + ' Approx)')
    text = text.replace('Fee (Rs. )', 'Fee (' + RUPEE + ')')
    text = text.replace('Amount (Rs.)', 'Amount (' + RUPEE + ')')
    text = text.replace('Amount (Rs.', 'Amount (' + RUPEE)
    text = text.replace('(Rs. Approx)', '(' + RUPEE + ' Approx)')

    # 7) Standalone Rs. (word boundary, followed by space/digit/punctuation/end)
    text = re.sub(r'\bRs\.(?=\s|\d|\)|\.|,|;|!|\?|$)', RUPEE, text)

    # 8) Normalise whitespace after ₹: "₹  100" -> "₹100"
    text = re.sub(RUPEE + r'\s{2,}(\d)', RUPEE + r'\1', text)
    text = re.sub(RUPEE + r'\s+', RUPEE, text)

    # 9) Fix double spaces from replacements
    text = re.sub(r'  +', ' ', text)

    if text != orig:
        with open(path, 'w', encoding='utf-8') as f:
            f.write(text)
        return True
    return False


# Walk files
count = 0
for root, dirs, fnames in os.walk(BASE):
    rel = os.path.relpath(root, BASE)
    if rel.startswith('scripts') or rel.startswith('.opencode'):
        continue
    for fn in fnames:
        if fn.endswith('.html'):
            if fix_file(os.path.join(root, fn)):
                print(os.path.relpath(os.path.join(root, fn), BASE))
                count += 1

print(f'\nFixed {count} files.')
