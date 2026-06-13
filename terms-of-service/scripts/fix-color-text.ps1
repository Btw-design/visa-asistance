# Fix color text properly: restore --color-text: #1f2937 and add --color-white: #ffffff
$base = 'D:\ahit health\my-visa-assistance'

# Get all HTML files
$htmlFiles = Get-ChildItem -Path $base -Recurse -Filter 'index.html' | ForEach-Object { $_.FullName }
$htmlFiles += Get-ChildItem -Path $base -Filter '404.html' | ForEach-Object { $_.FullName }
$htmlFiles = $htmlFiles | Sort-Object -Unique

$count = 0
foreach ($file in $htmlFiles) {
    $content = Get-Content -Path $file -Raw -Encoding UTF8
    $original = $content
    
    # Step 1: Restore --color-text:#ffffff back to --color-text:#1f2937
    $content = $content -replace '--color-text:#ffffff', '--color-text:#1f2937'
    
    # Step 2: Add --color-white:#ffffff right after the opening :root{ block
    # Pattern: :root{ followed by --color-primary
    # We need to insert --color-white:#ffffff; before --color-primary
    $content = $content -replace '(:root\{)(--color-primary)', '${1}--color-white:#ffffff;${2}'
    
    if ($content -ne $original) {
        Set-Content -Path $file -Value $content -Encoding UTF8
        $count++
        Write-Host "  Fixed: $file"
    }
}

Write-Host "`nFixed $count HTML files."
