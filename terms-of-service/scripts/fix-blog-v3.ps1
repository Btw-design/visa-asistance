$files = @(
    'D:\ahit health\my-visa-assistance\blog\us-visa-interview-tips-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\visa-document-checklist-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\india-e-visa-application-process\index.html',
    'D:\ahit health\my-visa-assistance\blog\schengen-visa-complete-guide-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\thailand-visa-options-2026\index.html',
    'D:\ahit health\my-visa-assistance\blog\uk-visa-processing-times-2026\index.html'
)

$fixes = @(
    @('Bnderstanding', 'Understanding'),
    @('Bmbassy', 'Embassy'),
    @(' onsulate', 'Consulate'),
    @(' a determine', ' can determine'),
    @('sey Fact', 'Key Fact'),
    @('sey Document', 'Key Document'),
    @('sey  ', 'Key  '),
    @('Bnglish', 'English'),
    @('Bmployment', 'Employment'),
    @('Bmployer', 'Employer'),
    @('erify', 'Verify'),
    @('Bstatus', 'Status'),
    @('Bpecifics', 'Specifics'),
    @('Bupporting', 'Supporting'),
    @('Bummary', 'Summary'),
    @('Bample', 'Sample'),
    @('\bBc\b', 'Sc'),
    @('Brivate', 'Private'),
    @('Brocess', 'Process'),
    @('Brovide', 'Provide'),
    @('Brocessing', 'Processing'),
    @('Berson', 'Person'),
    @('Beriod', 'Period'),
    @('Battern', 'Pattern'),
    @(' a [aeiou]', ' an'),
    @('  a [^aeiou]', ' a'),
    @(' an an ', ' an '),
    @(' an any', ' an any'),  # keep correct
    @('  who a', ' who can'),
    @(' a B', ' can B'),
    @(' a c', ' can c'),
    @(' a d', ' can d'),
    @(' a f', ' can f'),
    @(' a g', ' can g'),
    @(' a h', ' can h'),
    @(' a l', ' can l'),
    @(' a m', ' can m'),
    @(' a n', ' can n'),  # careful: "a n" → "can n" where n starts a consonant word
    @(' a p', ' can p'),
    @(' a s', ' can s'),
    @(' a t', ' can t'),
    @(' a w', ' can w'),
    @(' a y', ' can y'),
    @(' a r', ' can r'),
    @('Yan', 'Man'),
    @('Yay', 'May'),
    @('Yo ', 'Mo '),
    @('Yonday', 'Monday'),
    @('Yinister', 'Minister'),
    @('Yinistry', 'Ministry'),
    @('Yigration', 'Migration'),
    @('Yinimum', 'Minimum'),
    @('Yinutes', 'Minutes'),
    @('Yonth', 'Month'),
    @('Yonths', 'Months'),
    @('Yother', 'Mother'),
    @('Yountain', 'Mountain'),
    @('Yount', 'Mount'),
    @('Yultiple', 'Multiple'),
    @('Yaximum', 'Maximum'),
    @('Yedical', 'Medical'),
    @('Yessage', 'Message'),
    @('Yethod', 'Method'),
    @('Yiddle', 'Middle'),
    @('Yidnight', 'Midnight'),
    @('Yodel', 'Model'),
    @('Yodern', 'Modern'),
    @('Yoment', 'Moment'),
    @('Yoney', 'Money'),
    @('Yonitor', 'Monitor'),
    @('Yonthly', 'Monthly'),
    @('Yorning', 'Morning'),
    @('Yost', 'Most'),
    @('Yove', 'Move'),
    @('Yovie', 'Movie'),
    @('Yust', 'Must'),
    @('Yutual', 'Mutual'),
    @('Uustralia', 'Australia'),
    @('Uddress', 'Address'),
    @('Upplication', 'Application'),
    @('Upply', 'Apply'),
    @('Uvailable', 'Available'),
    @('Uirport', 'Airport'),
    @('Uirports', 'Airports'),
    @('Beaport', 'Seaport'),
    @('Beaports', 'Seaports'),
    @('Bligibility', 'Eligibility'),
    @('Bmail', 'Email'),
    @('Bntry', 'Entry'),
    @('Bntries', 'Entries'),
    @('Btep', 'Step'),
    @('Bpload', 'Upload'),
    @('Bven', 'Even'),
    @('Bcanned', 'Scanned'),
    @('Bnited', 'United'),
    @('Bermany', 'Germany'),
    @('Bouth', 'South'),
    @('Burope', 'Europe'),
    @('Bust', 'Just'),
    @('Btandard', 'Standard'),
    @('Bchool', 'School'),
    @('sequire', 'Require'),
    @('sequired', 'Required'),
    @('secent', 'Recent'),
    @('seturn', 'Return'),
    @(' se ', ' Re '),
    @('Hhe ', 'The '),
    @('Hhis ', 'This '),
    @('Hage', 'Page'),
    @('Hassport', 'Passport'),
    @('Hhotograph', 'Photograph'),
    @('Hrocess', 'Process'),
    @('Hroof', 'Proof'),
    @('Hravel', 'Travel'),
    @('Hype', 'Type'),
    @('Hypes', 'Types'),
    @('Handardize', 'Tandardize'),
    @('Hourist', 'Tourist'),
    @('Hourism', 'Tourism'),
    @('Hime', 'Time'),
    @('Hrip', 'Trip'),
    @('Hotal', 'Total'),
    @('Hrick', 'Trick'),
    @('Hechnical', 'Technical'),
    @('Hechnology', 'Technology'),
    @('Helephone', 'Telephone'),
    @('Hemporal', 'Temporal'),
    @('Hemporary', 'Temporary'),
    @('Hender', 'Tender'),
    @('Herritory', 'Territory'),
    @('Herror', 'Terror'),
    @('Hest', 'Test'),
    @('Heam', 'Team'),
    @('Hell', 'Tell'),
    @('Helphone', 'Telephone'),
    @('Hrade', 'Trade'),
    @('Hraffic', 'Traffic'),
    @('Hash', 'Tash'),
    @('Hask', 'Task'),
    @('Have', 'Save'),
    @('Hea', 'Tea'),
    @('Hear', 'Tear'),
    @('Hemple', 'Temple'),
    @('Hension', 'Tension'),
    @('Herm', 'Term'),
    @('Hext', 'Text')
)

foreach ($fullPath in $files) {
    $content = Get-Content -Path $fullPath -Raw -Encoding UTF8
    $orig = $content
    $changes = 0
    
    foreach ($pair in $fixes) {
        $before = $content
        $pattern = $pair[0]
        $replacement = $pair[1]
        
        if ($pattern -match '^\\') {
            $content = $content -replace $pattern, $replacement
        } else {
            $content = $content -replace [regex]::Escape($pattern), $replacement
        }
        
        if ($content -ne $before) {
            $changes++
        }
    }
    
    # Fix ss. -> Rs. (only where it's a currency indicator)
    $before = $content
    $content = $content -replace '(?<!\w)ss\.', 'Rs.'
    if ($content -ne $before) { $changes++ }
    
    if ($changes -gt 0) {
        Set-Content -Path $fullPath -Value $content -Encoding UTF8
        Write-Host ("[FIXED] " + (Split-Path (Split-Path $fullPath) -Leaf) + " - $changes changes")
    } else {
        Write-Host ("[CLEAN] " + (Split-Path (Split-Path $fullPath) -Leaf))
    }
}
Write-Host "`nDone."
