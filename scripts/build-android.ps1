$ErrorActionPreference = 'Stop'
Write-Host 'Installing dependencies...' -ForegroundColor Cyan
npm install
if (-not (Test-Path 'android')) { npx cap add android }
npx cap sync android
Push-Location android
try { .\gradlew.bat assembleDebug } finally { Pop-Location }
Write-Host 'Done. APK is under android\app\build\outputs\apk\debug\' -ForegroundColor Green
