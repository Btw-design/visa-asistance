# Script to fix blog encoding issues and convert currencies to INR
$basePath = 'D:\ahit health\my-visa-assistance'

# Find all blog post files
$blogPosts = Get-ChildItem -Path (Join-Path $basePath 'blog') -Recurse -Filter '*.html'

foreach ($file in $blogPosts) {
    # Skip the main blog index page
    if ($file.DirectoryName -eq (Join-Path $basePath 'blog') -and $file.Name -eq 'index.html') {
        continue
    }
    
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $original = $content
    
    # Replace broken Unicode sequences
    # These are common mojibake patterns from UTF-8 bytes read as Latin-1
    
    # Em dash and special characters
    $replacements = @(
        # Broken characters (byte-level mojibake)
        @([char]0xC3 + [char]0xA2 + [char]0xE2 + [char]0x82 + [char]0xAC, 'Rs. '),
        @([char]0xE2 + [char]0x82 + [char]0xAC, 'Rs. '),
        @([char]0xC3 + [char]0xA2 + [char]0xE2 + [char]0x82 + [char]0xA0, 'Rs. '),
        @([char]0xC3 + [char]0xA2 + [char]0xE2 + [char]0x82 + [char]0xAA, 'Rs. '),
        
        # Currency text replacements
        'EUR 80', 'Rs. 7,280',
        'EUR 100', 'Rs. 9,100',
        'EUR 60', 'Rs. 5,460',
        'EUR 50', 'Rs. 4,550',
        'EUR 40', 'Rs. 3,640',
        'EUR 20', 'Rs. 1,820',
        'EUR 90', 'Rs. 8,190',
        'EUR ', 'Rs. ',
        
        'USD 200', 'Rs. 16,640',
        'USD 160', 'Rs. 13,312',
        'USD 100', 'Rs. 8,320',
        'USD 80', 'Rs. 6,656',
        'USD 50', 'Rs. 4,160',
        'USD 40', 'Rs. 3,328',
        'USD 35', 'Rs. 2,912',
        'USD 30', 'Rs. 2,496',
        'USD 20', 'Rs. 1,664',
        'USD 15', 'Rs. 1,248',
        'USD ', 'Rs. ',
        
        'PHP ', 'Rs. ',
        'THB ', 'Rs. ',
        'SGD ', 'Rs. ',
        'MYR ', 'Rs. ',
        'KRW ', 'Rs. ',
        'AUD ', 'Rs. ',
        'CAD ', 'Rs. ',
        'GBP ', 'Rs. ',
        'CHF ', 'Rs. ',
        'NZD ', 'Rs. ',
        'ZAR ', 'Rs. ',
        
        # Dollar amounts
        '$200', 'Rs. 16,640',
        '$160', 'Rs. 13,312',
        '$100', 'Rs. 8,320',
        '$80', 'Rs. 6,656',
        '$50', 'Rs. 4,160',
        '$40', 'Rs. 3,328',
        '$35', 'Rs. 2,912',
        '$30', 'Rs. 2,496',
        '$25', 'Rs. 2,080',
        '$20', 'Rs. 1,664',
        '$15', 'Rs. 1,248',
        '$10', 'Rs. 832',
        
        # Common broken patterns from actual content
        'A A-A A', 'Rs. ',
        'A A A', 'Rs. ',
        'A A~A', 'Rs. ',
        'A A A', 'Rs. ',
        'A A A A', 'Rs. ',
        'A A A¢', 'Rs. '
    )
    
    foreach ($pair in $replacements) {
        $content = $content.Replace($pair[0], $pair[1])
    }
    
    # Also fix any standalone dollar signs followed by numbers
    $content = $content -replace '\$(\d[\d,]*\.?\d*)', 'Rs. $1'
    
    if ($content -ne $original) {
        $diff = $original.Length - $content.Length
        try {
            [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.UTF8Encoding]::new($false))
            Write-Host "Fixed: $($file.FullName.Substring($basePath.Length + 1)) ($diff bytes changed)"
        } catch {
            Write-Host "ERROR writing: $($file.FullName.Substring($basePath.Length + 1)) - $_"
        }
    }
}

Write-Host "`nBlog currency/encoding fixes complete."
