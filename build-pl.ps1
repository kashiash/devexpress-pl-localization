# build-pl.ps1 — buduje polskie satelickie DLL-e DevExpress
# Wymagania: DevExpress LocalizedResources v26.1 rozpakowane w $DxRoot
# Użycie: .\build-pl.ps1 [-DxRoot <ścieżka>] [-TargetDir <ścieżka>]
param(
    [string]$DxRoot    = 'C:\Users\Programista\Downloads\DevExpressLocalizedResources_2026.1_pl',
    [string]$TargetDir = 'C:\Users\Programista\Downloads\DevExpressLocalizedResources_2026.1_pl\Framework'
)

$ErrorActionPreference = 'Stop'
$patches = "$PSScriptRoot\patches"
$sign = '-p:SignAssembly=false', '-p:KeyContainerName=', '-p:AssemblyOriginatorKeyFile=', '-p:DelaySign=false'

function Build-And-Copy([string]$Proj, [string]$OutDir, [string]$DllName) {
    if (-not (Test-Path $Proj)) { Write-Warning "Brak projektu: $Proj — pomijam"; return }
    $null = New-Item -ItemType Directory -Force $OutDir
    Write-Host "  build $DllName..." -NoNewline
    dotnet build $Proj -c Release -o $OutDir @sign -v:q 2>&1 | Select-Object -Last 3
    if ($LASTEXITCODE -ne 0) { Write-Error "Build nieudany: $Proj"; return }
    $dll = "$OutDir\pl\$DllName"
    if (Test-Path $dll) {
        $null = New-Item -ItemType Directory -Force $TargetDir
        Copy-Item $dll "$TargetDir\$DllName" -Force
        Write-Host "  OK → $TargetDir\$DllName" -ForegroundColor Green
    } else { Write-Warning "DLL nie znaleziono: $dll" }
}

$src = "$DxRoot\src"
$exp = "$src\DevExpress.ExpressApp"

# ── 1. DevExpress.Blazor ──────────────────────────────────────────────────────
Write-Host "`n=== DevExpress.Blazor ===" -ForegroundColor Cyan
& "$patches\blazor-pl.ps1" -PlResx "$src\DevExpress.Blazor\Resources\LocalizationRes.pl.resx"
Build-And-Copy "$src\DevExpress.Blazor\DevExpress.Blazor.NetCore.csproj" `
               "$DxRoot\_out_blazor" 'DevExpress.Blazor.v26.1.resources.dll'

# ── 2. DevExpress.XtraReports ─────────────────────────────────────────────────
Write-Host "`n=== DevExpress.XtraReports ===" -ForegroundColor Cyan
& "$patches\xtraReports-pl.ps1" -PlResx "$src\DevExpress.XtraReports\LocalizationRes.pl.resx"
Build-And-Copy "$src\DevExpress.XtraReports\DevExpress.XtraReports.NetCore.csproj" `
               "$DxRoot\_out_xrep" 'DevExpress.XtraReports.v26.1.resources.dll'

# ── 3. DevExpress.XtraScheduler.Core ─────────────────────────────────────────
# UWAGA: XtraScheduler.Core.csproj celuje w .NETFramework 4.6.2 — budowanie przez .NET SDK niemożliwe.
# Patch RESX jest stosowany (xtraScheduler-pl.ps1), ale DLL nie jest przebudowywana.
# Dla XAF Blazor wystarczy DevExpress.ExpressApp.Scheduler.Blazor (budowany wyżej).
Write-Host "`n=== DevExpress.XtraScheduler.Core (tylko patch RESX, brak rebuildu — net462) ===" -ForegroundColor Yellow
$schSrc = "$src\DevExpress.XtraScheduler.Core"
& "$patches\xtraScheduler-pl.ps1" -PlResx "$schSrc\LocalizationRes.pl.resx"

# ── 4. DevExpress.ExpressApp (wszystkie Blazor-relevant subpakiety) ────────────
Write-Host "`n=== DevExpress.ExpressApp ===" -ForegroundColor Cyan
& "$patches\expressApp-pl.ps1" -SrcRoot $exp

$xafPkgs = @(
    @{ sub='DevExpress.ExpressApp';                         dll='DevExpress.ExpressApp.v26.1.resources.dll' }
    @{ sub='DevExpress.ExpressApp.Blazor';                  dll='DevExpress.ExpressApp.Blazor.v26.1.resources.dll' }
    @{ sub='DevExpress.ExpressApp.Security';                dll='DevExpress.ExpressApp.Security.v26.1.resources.dll' }
    @{ sub='DevExpress.ExpressApp.Notifications';           dll='DevExpress.ExpressApp.Notifications.v26.1.resources.dll' }
    @{ sub='DevExpress.ExpressApp.Notifications.Blazor';    dll='DevExpress.ExpressApp.Notifications.Blazor.v26.1.resources.dll' }
    @{ sub='DevExpress.ExpressApp.AI';                      dll='DevExpress.ExpressApp.AI.v26.1.resources.dll' }
    @{ sub='DevExpress.ExpressApp.ReportsV2';               dll='DevExpress.ExpressApp.ReportsV2.v26.1.resources.dll' }
    @{ sub='DevExpress.ExpressApp.ReportsV2.Blazor';        dll='DevExpress.ExpressApp.ReportsV2.Blazor.v26.1.resources.dll' }
    @{ sub='DevExpress.ExpressApp.Dashboards.Blazor';       dll='DevExpress.ExpressApp.Dashboards.Blazor.v26.1.resources.dll' }
    # Office.Blazor i Persistent.Base mają tylko net462 .csproj — pomijamy build, patch RESX jest stosowany
    @{ sub='DevExpress.ExpressApp.Scheduler.Blazor';        dll='DevExpress.ExpressApp.Scheduler.Blazor.v26.1.resources.dll' }
)
foreach ($pkg in $xafPkgs) {
    $projFile = Get-ChildItem "$exp\$($pkg.sub)" -Filter "*.NetCore.csproj" -ErrorAction SilentlyContinue | Select-Object -First 1
    if (-not $projFile) { $projFile = Get-ChildItem "$exp\$($pkg.sub)" -Filter "*.csproj" -ErrorAction SilentlyContinue | Select-Object -First 1 }
    if (-not $projFile) { Write-Warning "Brak csproj: $($pkg.sub)"; continue }
    Build-And-Copy $projFile.FullName "$DxRoot\_out_xaf_$($pkg.sub.Replace('.','_'))" $pkg.dll
}

Write-Host "`nGotowe. DLL-e w: $TargetDir" -ForegroundColor Green
