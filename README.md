# DataDrive.Localization — polskie tłumaczenia DevExpress

Zestaw skryptów PowerShell do uzupełnienia brakujących tłumaczeń PL w pakietach DevExpress.  
Po uruchomieniu `build-pl.ps1` skompilowane satelickie DLL-e trafiają do  
`DataDrive.Blazor.Server/Localization/pl/` i są ładowane automatycznie przez .NET dla kultury `pl`.

---

## Wymagania wstępne

1. **DevExpress Localization Pack v26.1** — pobierz ze strony konta DevExpress  
   → *Downloads → DevExpress v26.1 → Localized Resources*  
   → Wybierz język: **Polish (pl)** → pobierz i rozpakuj do:  
   `C:\Users\<ty>\Downloads\DevExpressLocalizedResources_2026.1_pl\`

   Wymagana struktura po rozpakowaniu:
   ```
   DevExpressLocalizedResources_2026.1_pl\
     src\
       DevExpress.Blazor\
         Resources\LocalizationRes.pl.resx
         DevExpress.Blazor.NetCore.csproj
       DevExpress.XtraReports\
         LocalizationRes.pl.resx
         DevExpress.XtraReports.NetCore.csproj
   ```

2. **.NET SDK 8** lub nowszy (`dotnet --version`).

3. **PowerShell 7+** (`pwsh --version`).

---

## Szybki start

```powershell
# 1. Ustaw ścieżkę do DX LocalizedResources (tylko jeśli inna niż domyślna)
$dx = 'C:\Users\Programista\Downloads\DevExpressLocalizedResources_2026.1_pl'

# 2. Uruchom build — patch RESX + kompilacja + kopiowanie DLL-i
Set-Location <katalog-repo>\DataDrive.Localization
.\build-pl.ps1 -DxRoot $dx
```

### Co robi `build-pl.ps1`

```
1. patches\blazor-pl.ps1       → dopisuje brakujące 194 stringi PL do LocalizationRes.pl.resx (Blazor)
2. dotnet build (Blazor)        → kompiluje satelicką DLL bez klucza dx-all (SignAssembly=false)
3. Kopiuje DLL → DataDrive.Blazor.Server/Localization/pl/DevExpress.Blazor.v26.1.resources.dll

4. patches\xtraReports-pl.ps1  → dopisuje brakujące ~400 stringi PL (XtraReports)
5. dotnet build (XtraReports)   → jw.
6. Kopiuje DLL → DataDrive.Blazor.Server/Localization/pl/DevExpress.XtraReports.v26.1.resources.dll
```

Skrypt jest **idempotentny** — uruchomiony wielokrotnie nie dubluje stringów.

---

## Integracja z buildiem Docker

`scripts/publish-docker-postgres.ps1` przed zbudowaniem obrazu wywołuje `build-pl.ps1`  
(jeśli `DataDrive.Blazor.Server/Localization/pl/` jest pusty lub DLL-e nie istnieją).  
Możesz też wywołać ręcznie przed `publish-docker-postgres.ps1`, żeby wymusić odświeżenie:

```powershell
.\DataDrive.Localization\build-pl.ps1   # odświeża DLL-e
.\scripts\publish-docker-postgres.ps1 -Tag latest  # buduje obraz
```

Skompilowane DLL-e są w `.gitignore` (nie trafiają do repo).

---

## Jak to działa (architektura)

```
DevExpressLocalizedResources_2026.1_pl\        ← pobierasz ze strony DX (nie w repo)
  src\DevExpress.Blazor\
    LocalizationRes.pl.resx                    ← plik oficjalny z ~389 tłumaczeniami
      ↓  patches\blazor-pl.ps1 dopisuje 194    ← ten plik JEST w repo
    LocalizationRes.pl.resx (patched, 583/583) ← w katalogu DX Downloads, nie w repo
      ↓  dotnet build (SignAssembly=false)
    DevExpress.Blazor.v26.1.resources.dll      ← gitignored, generowany lokalnie
      ↓  kopiowany do
DataDrive.Blazor.Server/Localization/pl/       ← gitignored, ładowany przez .NET runtime
```

.NET ładuje satelickie DLL z `Localization/pl/` automatycznie, gdy  
`Thread.CurrentThread.CurrentUICulture` ma kulturę `pl`.  
`DxLocalizationPl.cs` tylko rejestruje `IDxLocalizationService` — deleguje do DLL.

---

## Pokrycie tłumaczeń

| Pakiet                 | Stringów PL | Pokrycie |
|------------------------|-------------|---------|
| DevExpress.Blazor      | 583/583     | 100%    |
| DevExpress.XtraReports | 1293/1293   | 100%    |

---

## Dlaczego RESX + skrypty, a nie NuGet?

### Opcja A — to, co robimy: skrypty patch RESX + lokalna kompilacja

DevExpress udostępnia pliki RESX (XML z tłumaczeniami) jako oficjalny mechanizm  
lokalizacji społecznościowej. Możemy:
- czytać te pliki,
- dopisywać brakujące ciągi,
- kompilować **lokalnie, z własnych kodów źródłowych DX** (które możesz pobrać jako  
  licencjonowany użytkownik).

W repozytorium przechowujemy wyłącznie **skrypty z polskimi tłumaczeniami** (czysty tekst XML).  
Nie dystrybuujemy żadnych skompilowanych plików DX.

### Opcja B — NuGet ze skompilowanymi DLL-ami (dlaczego NIE)

Pakiet NuGet zawierałby skompilowane pliki `.resources.dll`.  
Te pliki to **kod binarny pochodzący z kodów źródłowych DevExpress**, które są  
objęte licencją komercyjną i nie wolno ich redystrybuować.  
Nawet upubliczniony pakiet NuGet z `.resources.dll` = naruszenie EULA DevExpress,  
niezależnie od tego, czy „każdy kompiluje sobie" — bo NuGet dostarczałby gotowe binaria.

### Opcja C — publiczne repo GitHub tylko ze skryptami (to co robimy dodatkowo)

Publiczne repo z **wyłącznie skryptami PS + tłumaczeniami RESX** (bez żadnych DLL-ek)  
jest analogiem tłumaczenia oprogramowania open-source: dzielisz się tekstem, nie binarkami.  
Jest to **powszechnie akceptowana praktyka** w ekosystemie DevExpress  
(społeczność DevExpress sama publikuje paczki lokalizacyjne jako pliki RESX na forum/GitHub).

### Dlaczego nie prywatny NuGet z GitHub PAT?

- Wymaga dodatkowej konfiguracji (`NuGet.config` + sekrety w CI).
- PAT to sekret — nie trafia do `NuGet.config` w repo.
- Dodaje zależność od zewnętrznego registry dla każdego dewelopera w zespole.
- Nie rozwiązuje problemu licencyjnego (DLL są nadal redystrybuowane, tyle że prywatnie).

### Podsumowanie

| Kryterium           | Skrypty RESX (to co robimy) | NuGet z DLL | Publiczne repo |
|---------------------|----------------------------|-------------|----------------|
| Zgodność z EULA DX  | ✅ Tak                      | ❌ Naruszenie | ✅ Tak (tekst) |
| Łatwość setup       | ✅ Jeden skrypt              | ✗ PAT/config | ✅ `git pull`  |
| Wymagany klucz DX   | ✅ Twój własny              | ❌ Brak binarek | ✅ Twój własny |
| CI/CD               | ✅ Skrypt w build pipeline  | ✗ Extra registry | ✅ Jw.        |

---

## Aktualizacja przy nowej wersji DevExpress

1. Pobierz nowe `DevExpressLocalizedResources_<nowa_wersja>_pl`.
2. Zmień `DllName` w `build-pl.ps1` (np. `DevExpress.Blazor.v26.2.resources.dll`).
3. Uruchom `.\build-pl.ps1` — skrypt sprawdzi, których stringów brakuje i dopisze je.
4. Jeśli nowa wersja DX dodała nowe stringi → dopisz je do odpowiedniego skryptu w `patches/`.
