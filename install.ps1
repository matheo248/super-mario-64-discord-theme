$src = "C:\Users\Megaport\.abacusai-bot\session-home\sm64-theme"
$dst = "C:\Users\Megaport\AppData\Roaming\Vencord\themes"

Write-Host "Quelle: $src"
Write-Host "Ziel:   $dst"

if (-not (Test-Path $dst)) { New-Item -ItemType Directory -Path $dst -Force | Out-Null }

Copy-Item -Path (Join-Path $src "SuperMario64.theme.css") -Destination $dst -Force
Copy-Item -Path (Join-Path $src "mario64-bg.png") -Destination $dst -Force

Get-ChildItem $dst | Select-Object Name, Length, LastWriteTime | Format-Table -AutoSize
