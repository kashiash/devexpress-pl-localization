# build-pl.ps1 — buduje polskie satelickie DLL-e DevExpress
# Wymagania: DevExpress LocalizedResources v26.1 rozpakowane w $DxRoot
# Użycie: .\build-pl.ps1 [-DxRoot <ścieżka>] [-TargetDir <ścieżka>]
param(
    [string]$DxRoot    = 'C:\Users\Programista\Downloads\DevExpressLocalizedResources_2026.1_pl',
    [string]$TargetDir = "$PSScriptRoot\..\DataDrive.Blazor.Server\Localization\pl"
)

$ErrorActionPreference = 'Stop'

function Patch-And-Build {
    param(
        [string]$Label,
        [string]$PatchScript,
        [string]$PlResx,
        [string]$Proj,
        [string]$OutDir,
        [string]$DllName
    )

    Write-Host "`n=== $Label ===" -ForegroundColor Cyan

    if (-not (Test-Path $PlResx)) { Write-Warning "Brak pliku: $PlResx — pomijam"; return }
    if (-not (Test-Path $Proj))   { Write-Warning "Brak projektu: $Proj — pomijam"; return }

    if (Test-Path $PatchScript) {
        Write-Host "Patchuję RESX..."
        & $PatchScript -PlResx $PlResx
    } else {
        Write-Warning "Brak skryptu patch: $PatchScript"
    }

    Write-Host "Buduję DLL..."
    $null = New-Item -ItemType Directory -Force $OutDir
    dotnet build $Proj -c Release -o $OutDir `
        -p:SignAssembly=false `
        -p:KeyContainerName="" `
        -p:AssemblyOriginatorKeyFile="" `
        -p:DelaySign=false `
        -v:q 2>&1 | Select-Object -Last 5
    if ($LASTEXITCODE -ne 0) { Write-Error "Build nieudany: $Label"; return }

    $dll = Join-Path $OutDir "pl\$DllName"
    if (Test-Path $dll) {
        $null = New-Item -ItemType Directory -Force $TargetDir
        Copy-Item $dll (Join-Path $TargetDir $DllName) -Force
        Write-Host "OK → $DllName" -ForegroundColor Green
    } else {
        Write-Warning "DLL nie znaleziono po buildzie: $dll"
    }
}

# ── DevExpress.Blazor ──────────────────────────────────────────────────────────
Patch-And-Build `
    -Label       'DevExpress.Blazor' `
    -PatchScript "$PSScriptRoot\patches\blazor-pl.ps1" `
    -PlResx      "$DxRoot\src\DevExpress.Blazor\Resources\LocalizationRes.pl.resx" `
    -Proj        "$DxRoot\src\DevExpress.Blazor\DevExpress.Blazor.NetCore.csproj" `
    -OutDir      "$DxRoot\_out_blazor" `
    -DllName     'DevExpress.Blazor.v26.1.resources.dll'

# ── DevExpress.XtraReports ────────────────────────────────────────────────────
Patch-And-Build `
    -Label       'DevExpress.XtraReports' `
    -PatchScript "$PSScriptRoot\patches\xtraReports-pl.ps1" `
    -PlResx      "$DxRoot\src\DevExpress.XtraReports\LocalizationRes.pl.resx" `
    -Proj        "$DxRoot\src\DevExpress.XtraReports\DevExpress.XtraReports.NetCore.csproj" `
    -OutDir      "$DxRoot\_out_xrep" `
    -DllName     'DevExpress.XtraReports.v26.1.resources.dll'

Write-Host "`nGotowe." -ForegroundColor Green
