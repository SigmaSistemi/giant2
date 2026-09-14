$ErrorActionPreference = 'Stop'

$msiUrl  = 'https://sigmasistemi.github.io/giant2/Giant2.5_setup.msi'
$msiPath = Join-Path $env:TEMP 'Giant2.5_setup.msi'

Write-Host "Download di Giant2 in corso..."
Invoke-WebRequest -Uri $msiUrl -OutFile $msiPath -UseBasicParsing

Write-Host "Avvio installazione..."
Start-Process msiexec.exe -ArgumentList "/i `"$msiPath`"" -Wait

Remove-Item $msiPath -ErrorAction SilentlyContinue
