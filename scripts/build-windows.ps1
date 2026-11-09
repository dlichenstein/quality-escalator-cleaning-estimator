$ErrorActionPreference = 'Stop'
Write-Host 'Installing dependencies...' -ForegroundColor Cyan
npm install
Write-Host 'Building Windows application...' -ForegroundColor Cyan
npm run build:win
Write-Host 'Done. See the dist folder.' -ForegroundColor Green
