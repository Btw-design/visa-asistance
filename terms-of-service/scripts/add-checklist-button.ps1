# Add Download Checklist button to all visa guide pages
$base = "D:\ahit health\my-visa-assistance"
$guides = Get-ChildItem "$base\visa-guide\*\index.html" | Where-Object { $_.Directory.Name -ne 'visa-guide' }

$buttonHtml = @'
          <div class="sidebar-card" style="background:linear-gradient(135deg,#0a0a52,#171299);color:white;border:none;">
            <h3 style="color:#A5D549;margin:0 0 8px;">Download Checklist</h3>
            <p style="color:rgba(255,255,255,0.85);font-size:0.9rem;margin:0 0 12px;">Get a printable document checklist for your visa application.</p>
            <button onclick="downloadChecklist()" class="btn btn-primary" style="width:100%;text-align:center;">
              <i class="bi bi-download"></i> Download Full Checklist
            </button>
          </div>
'@

$count = 0
foreach ($file in $guides) {
    $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    
    # Find the sidebar-cta card to insert BEFORE it
    $target = '<div class="sidebar-card sidebar-cta">'
    $idx = $content.IndexOf($target)
    
    if ($idx -ge 0) {
        $content = $content.Substring(0, $idx) + $buttonHtml + "`n" + $content.Substring($idx)
        [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
        Write-Host ("Added button: " + $file.Directory.Name)
        $count++
    } else {
        Write-Host ("SKIP (no sidebar-cta): " + $file.Directory.Name)
    }
}

Write-Host ("`nDone! Added download button to $count visa guide pages.")
