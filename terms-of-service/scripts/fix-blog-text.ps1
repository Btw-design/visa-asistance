# Comprehensive blog text corruption fix

$basePath = 'D:\ahit health\my-visa-assistance\blog'
$files = @(
    'india-e-visa-application-process\index.html',
    'schengen-visa-complete-guide-2026\index.html',
    'thailand-visa-options-2026\index.html',
    'uk-visa-processing-times-2026\index.html',
    'us-visa-interview-tips-2026\index.html',
    'visa-document-checklist-2026\index.html'
)

# Ordered replacements (most specific first to avoid conflicts)
$replacementList = @(
    @('Yonday', 'Monday'),
    @(' s ', ' is '),
    @('Hhe ', 'The '),
    @(' Hhe ', ' The '),
    @(' Hhe', ' The'),
    @('Hhe>', 'The>'),
    @('Hhe-', 'The-'),
    @(' s<', ' is<'),
    @('ummary', 'Summary'),
    @('Hype', 'Type'),
    @('Hypes', 'Types'),
    @('Hrie', 'Tri'),
    @('Himeframe', 'Timeline'),
    @('Himeline', 'Timeline'),
    @('Hime frame', 'Time frame'),
    @('Hime', 'Time'),
    @('Holl-free', 'Toll-free'),
    @('Holl Free', 'Toll Free'),
    @('Holl', 'Toll'),
    @('Hicket', 'Ticket'),
    @('Hravelers', 'Travelers'),
    @('Hravellers', 'Travellers'),
    @('Hransport', 'Transport'),
    @('Hravel', 'Travel'),
    @('Haj ', 'Taj '),
    @('Haj-', 'Taj-'),
    @('Haken', 'Taken'),
    @('Hotal', 'Total'),
    @('Hrocess', 'Process'),
    @('Hroof', 'Proof'),
    @('Hhotograph', 'Photograph'),
    @('Hassport', 'Passport'),
    @('Hage', 'Page'),
    @('HDF', 'PDF'),
    @('Hravel', 'Travel'),
    @('Hrip', 'Trip'),
    @('Hower', 'Power'),
    @('Hick', 'Tick'),
    @('Hospitality', 'Hospitality'),  # Keep this!
    @('Hable', 'Table'),
    @('Hack', 'Pack'),
    @('Hype', 'Type'),
    @('Hourism', 'Tourism'),
    @('Hourist', 'Tourist'),
    @('Hour', 'Tour'),
    @('Hriple', 'Triple'),
    @('Hype', 'Type'),
    @('Yust', 'Must'),
    @('Yumbai', 'Mumbai'),
    @('Yahal', 'Mahal'),
    @('Yaster', 'Master'),
    @('Yo ', 'Mo '),
    @('Yost', 'Most'),
    @('Yake sure', 'Make sure'),
    @('Yake s', 'Make s'),
    @('Yake', 'Make'),
    @('Yimimum', 'Minimum'),
    @('Yinimum', 'Minimum'),
    @('Yonth', 'Month'),
    @('Yonths', 'Months'),
    @('Yay ', 'May '),
    @('Yan ', 'Man '),
    @('Yinistry', 'Ministry'),
    @('Yinutes', 'Minutes'),
    @('Yigration', 'Migration'),
    @('Yount', 'Mount'),
    @('Yultiple', 'Multiple'),
    @('Yedical', 'Medical'),
    @('Bligibility', 'Eligibility'),
    @('Btep', 'Step'),
    @('Bpload', 'Upload'),
    @('Bven', 'Even'),
    @('Bmail', 'Email'),
    @('Bcanned', 'Scanned'),
    @('Bermany', 'Germany'),
    @('Bouth', 'South'),
    @('Bntries', 'Entries'),
    @('Bntry', 'Entry'),
    @('Btandard', 'Standard'),
    @('Burope', 'Europe'),
    @('Burop', 'Europ'),
    @('Bust', 'Just'),
    @('Bust ', 'Just '),
    @('Bo ', 'Go '),
    @('Bo<', 'Go<'),
    @('Bo.', 'Go.'),
    @('Boa', 'Goa'),
    @('Uvailable', 'Available'),
    @('Uirports', 'Airports'),
    @('Uirport', 'Airport'),
    @('Beaports', 'Seaports'),
    @('Upply', 'Apply'),
    @('Upplication', 'Application'),
    @('Uddress', 'Address'),
    @('singdom', 'Kingdom'),
    @('sorea', 'Korea'),
    @('sussia', 'Russia'),
    @('sequired', 'Required'),
    @('seturn', 'Return'),
    @('secent', 'Recent'),
    @('Hip ', 'Tip '),
    @('Hay ', 'Pay '),
    @('Hip:', 'Tip:'),
    @('Hay ', 'Pay '),
    @('  hennai', ' Chennai'),
    @('hennai', 'Chennai'),
    @('solkata', 'Kolkata'),
    @('sajasthan', 'Rajasthan'),
    @(' an U', ' can a'),
    @(' an a', ' can a'),
    @('  an ', ' can '),
    @(' an ', ' can '),
    @(' an<', 'a<'),
    @(' an>', 'a>'),
    @(' an.', 'a.'),
    @('otal', 'Total'),
    @('ot ', 'not '),
    @(' ot ', ' not '),
    @('ss\.', 'Rs.')
)

# Process each file
foreach ($relPath in $files) {
    $fullPath = Join-Path $basePath $relPath
    $content = Get-Content -Path $fullPath -Raw -Encoding UTF8
    $original = $content
    
    $changeCount = 0
    foreach ($pair in $replacementList) {
        $before = $content
        $content = $content -replace [regex]::Escape($pair[0]), $pair[1]
        if ($content -ne $before) {
            $diff = [regex]::Matches($before, [regex]::Escape($pair[0])).Count
            $changeCount += $diff
        }
    }
    
    # Fix U5D549 -> A5D549 (brand green color code in SVGs)
    $before = $content
    $content = $content -replace 'U5D549', 'A5D549'
    if ($content -ne $before) {
        $changeCount += [regex]::Matches($before, 'U5D549').Count
    }
    
    # Remove leftover C3 A2 bytes (â character) - remnants of corrupted pattern
    $before = $content
    $content = $content -replace '\u00E2', ' - '
    if ($content -ne $before) {
        $changeCount += [regex]::Matches($before, '\u00E2').Count
    }
    
    if ($changeCount -gt 0) {
        Set-Content -Path $fullPath -Value $content -Encoding UTF8
        Write-Host ("[FIXED] " + $relPath + " - " + $changeCount + " replacements")
    } else {
        Write-Host ("[CLEAN] " + $relPath + " - No changes needed")
    }
}

Write-Host "`nBlog text corruption fix complete."
