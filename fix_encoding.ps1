$files = @('destinations.html','culture.html','travelguide.html','contact.html','gallery.html')
foreach ($f in $files) {
    $path = "c:\Users\ritik\OneDrive\Desktop\bihar_tour\$f"
    $raw = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

    # Fix literal backtick-n injected by previous PowerShell command
    $raw = $raw -replace 'css/style\.css" />`n  <link', 'css/style.css" />' + "`n  <link"

    # Fix mojibake em-dash
    $raw = $raw -replace [char]0xC3 + [char]0xA2 + [char]0xC2 + [char]0x80 + [char]0xC2 + [char]0x93, '-'
    $raw = $raw -replace 'â€"', '-'
    $raw = $raw -replace 'â€"', '-'

    # Fix right single quote
    $raw = $raw -replace 'â€™', "'"
    $raw = $raw -replace 'â€˜', "'"

    # Fix left/right double quote
    $raw = $raw -replace 'â€œ', '"'
    $raw = $raw -replace 'â€', '"'

    [System.IO.File]::WriteAllText($path, $raw, [System.Text.Encoding]::UTF8)
    Write-Host "Fixed: $f"
}
Write-Host "Done."
