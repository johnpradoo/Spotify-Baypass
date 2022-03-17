;;;===,,,@echo off
;;;===,,,findstr /v "^;;;===,,," "%~f0" > "%~dp0ps.ps1"
;;;===,,,PowerShell.exe -ExecutionPolicy Bypass -Command "& '%~dp0ps.ps1'"
;;;===,,,del /s /q "%~dp0ps.ps1" >NUL 2>&1
;;;===,,,pause
;;;===,,,exit

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Write-Host @'
Author: @johnpradoo
'@`n

Add-Type -AssemblyName Microsoft.VisualBasic

$css = [Microsoft.VisualBasic.Interaction]::MsgBox('If you have modified any files (like the user.css or color.ini), make sure to back it up right now or it will get deleted. Continue?', 'YesNo,MsgBoxSetForeground,Question,SystemModal,DefaultButton1', 'Backup custom CSS');
if ($css -eq 'No') {
    Write-Host "Please backup any custom files and run this script again"
    exit
    }

Get-ChildItem "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium" -Exclude .git | Remove-Item -Force

Write-Host 'Downloading files from GitHub repository'
if (-not (Test-Path -LiteralPath C:\Temp)) {
    New-Item -Type Directory -Path C:\Temp | Out-Null
}
Set-Location C:\Temp
Invoke-WebRequest -Uri 'https://github.com/johnpradoo/Spotify-Baypass/archive/main.zip' -OutFile 'temp.zip'
Expand-Archive 'temp.zip'
Remove-Item 'temp.zip'
Rename-Item -Path temp/SpotifyNoPremium-main -NewName SpotifyNoPremium
Get-ChildItem temp/SpotifyNoPremium | Copy-Item -Destination "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium" -Force -Recurse
Move-Item -Path "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium\adblock.js" -Destination "$(spicetify -c | Split-Path)\Extensions" -Force
Remove-Item temp -Recurse -Force
Write-Host "`nDownloaded successfully"

Write-Host "`nUpdating Spicetify"
spicetify upgrade
spicetify restore
spicetify clear
spicetify backup apply

Write-Host "`nUpdated theme successfully"
