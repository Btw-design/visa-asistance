<#
.SYNOPSIS
  Master runner: loads country data and generates all guide pages.
.DESCRIPTION
  Loads generator function + all batch data files, then generates
  a complete guide page for every country except Australia (template).
  Reports generation results.
#>

$ErrorActionPreference = "Stop"
$basePath = "D:\ahit health\my-visa-assistance"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "My Visa Assistance - Page Generator" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Load generator
Write-Host "[1/3] Loading generator..." -ForegroundColor Yellow
. "$basePath\scripts\generate-guide.ps1"
Write-Host "      Generator loaded." -ForegroundColor Green

# Step 2: Load all country data
Write-Host "[2/3] Loading country data..." -ForegroundColor Yellow

# Load batch files
$batchFiles = @(
    "$basePath\scripts\countries-batch1.ps1",
    "$basePath\scripts\countries-batch2.ps1",
    "$basePath\scripts\countries-batch3.ps1",
    "$basePath\scripts\countries-batch4.ps1"
)

$totalCountries = 0
foreach ($bf in $batchFiles) {
    if (Test-Path -LiteralPath $bf) {
        . $bf
        Write-Host "      Loaded: $(Split-Path $bf -Leaf)" -ForegroundColor Gray
    }
}

# Add USA from the original country-data.ps1 (if not already in global)
if (-not $global:countryData["usa"]) {
    . "$basePath\scripts\country-data.ps1"
    $global:countryData["usa"] = $countryData.usa
    Write-Host "      Loaded: USA from country-data.ps1" -ForegroundColor Gray
}

$totalCountries = $global:countryData.Keys.Count
Write-Host "      Total countries in data: $totalCountries" -ForegroundColor Green

# Step 3: Generate all pages
Write-Host "[3/3] Generating pages..." -ForegroundColor Yellow
Write-Host ""

$results = @()
$errors = @()
$count = 0

# Define skip list (countries to skip)
$skipList = @{
    "australia" = $true  # This is the template
}

foreach ($key in $global:countryData.Keys | Sort-Object) {
    if ($skipList.ContainsKey($key)) {
        Write-Host "  SKIP $key (template)" -ForegroundColor DarkGray
        continue
    }

    $country = $global:countryData[$key]
    $count++
    
    try {
        $size = New-CountryGuidePage -C $country
        $results += @{ Key = $key; Name = $country.name; Size = $size; Status = "OK" }
        Write-Host "  OK   [$count/$totalCountries] $($country.name)" -ForegroundColor Green
    }
    catch {
        $errors += @{ Key = $key; Name = $country.name; Error = $_.Exception.Message }
        Write-Host "  FAIL [$count/$totalCountries] $($country.name): $_" -ForegroundColor Red
    }
}

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Generation Complete!" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Total countries attempted : $count" -ForegroundColor White
Write-Host "  Successful                : $($results.Count)" -ForegroundColor Green
Write-Host "  Failed                    : $($errors.Count)" -ForegroundColor $(if ($errors.Count -eq 0) { "Green" } else { "Red" })

if ($results.Count -gt 0) {
    $totalSize = ($results | ForEach-Object { $_.Size } | Measure-Object -Sum).Sum
    $avgSize = [int]($totalSize / $results.Count)
    Write-Host "  Total chars written       : $totalSize" -ForegroundColor White
    Write-Host "  Average page size          : $avgSize chars" -ForegroundColor White
}

if ($errors.Count -gt 0) {
    Write-Host ""
    Write-Host "ERRORS:" -ForegroundColor Red
    foreach ($e in $errors) {
        Write-Host "  $($e.Name) ($($e.Key)): $($e.Error)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Done." -ForegroundColor Cyan
