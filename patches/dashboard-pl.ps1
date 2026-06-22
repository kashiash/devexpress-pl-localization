# Tłumaczenia PL dla DevExpress.Dashboard.Core — brakujące stringi (v26.1)
# Wywołanie: .\dashboard-pl.ps1 -PlResx <ścieżka do LocalizationRes.pl.resx>
param([Parameter(Mandatory)][string]$PlResx)

$translations = [ordered]@{
    # Akcje
    "DashboardStringId.ActionExportDashboard"             = "Eksportuj dashboard"
    "DashboardStringId.ActionExportToExcel"               = "Eksportuj do Excela"
    "DashboardStringId.ActionSelectDateTimePeriod"        = "Wybierz okres daty/czasu"
    "DashboardStringId.ActionShowDataInspector"           = "Inspekcja danych"

    # Typy danych zbiorczych
    "DashboardStringId.AggregatedDataType"                = "Zagregowane"
    "DashboardStringId.RawDataType"                       = "Surowe"

    # Opisy funkcji agregujących
    "DashboardStringId.AggregateExFunctionDescriptionCountNotNull" = "CountNotNull(Wartość) Zwraca liczbę obiektów różnych od null w kolekcji."
    "DashboardStringId.AggregateExFunctionDescriptionMode"         = "Mode(Wartość) Moda wartości — wartość powtarzająca się najczęściej."

    # Błędy agregacji
    "DashboardStringId.AggrInMasterFilterDimensionError"  = "Filtrowanie nadrzędne nie może być stosowane dla wymiarów utworzonych za pomocą wyrażenia zawierającego funkcję Aggr."

    # Obliczenia
    "DashboardStringId.CalculationAlongSpecificDimensions"           = "Określone..."
    "DashboardStringId.CalculationTypeMovingCalculation"             = "Obliczenie ruchome"
    "DashboardStringId.CalculationTypePercentageDifference"          = "Różnica procentowa"
    "DashboardStringId.CalculationTypeRank"                          = "Ranking"
    "DashboardStringId.CalculationTypeRunningTotal"                  = "Suma narastająca"
    "DashboardStringId.MovingCalculationMeasureCaptionFormatString"  = "Ruchome z {0}"
    "DashboardStringId.PercentOfTotalCalculationMeasureCaptionFormatString" = "Procent z sumy {0}"
    "DashboardStringId.RankCalculationMeasureCaptionFormatString"    = "Ranking z {0}"
    "DashboardStringId.RunningTotalCalculationMeasureCaptionFormatString"   = "Suma narastająca z {0}"

    # Obliczenia wzdłuż osi — karty
    "DashboardStringId.CardCalculationAlongCardsAndSparklineArgument"   = "Karty / Argument wykresu przebiegu"
    "DashboardStringId.CardCalculationAlongSparklineArgument"           = "Argument wykresu przebiegu"
    "DashboardStringId.CardCalculationAlongSparklineArgumentAndCards"   = "Argument wykresu przebiegu / Karty"

    # Szablony układu kart
    "DashboardStringId.CardLayoutTemplateCompactCaption"    = "Kompaktowy"
    "DashboardStringId.CardLayoutTemplateLightweightCaption"= "Lekki"
    "DashboardStringId.CardLayoutTemplateStretchedCaption"  = "Rozciągnięty"

    # Elementy wiersza karty
    "DashboardStringId.CardRowDataElementTypeAbsoluteVariationCaption" = "Odchylenie bezwzględne"
    "DashboardStringId.CardRowDataElementTypeActualValueCaption"       = "Wartość rzeczywista"
    "DashboardStringId.CardRowDataElementTypeDeltaIndicatorCaption"    = "Wskaźnik delta"
    "DashboardStringId.CardRowDataElementTypePercentOfTargetCaption"   = "Procent celu"
    "DashboardStringId.CardRowDataElementTypePercentVariationCaption"  = "Odchylenie procentowe"
    "DashboardStringId.CardRowDataElementTypeSubtitleCaption"          = "Podtytuł"
    "DashboardStringId.CardRowDataElementTypeTargetValueCaption"       = "Wartość docelowa"

    # Obliczenia wykresów
    "DashboardStringId.ChartCalculationAlongArgumentsAndSeries"  = "Argumenty / Serie"
    "DashboardStringId.ChartCalculationAlongSeriesAndArguments"  = "Serie / Argumenty"
    "DashboardStringId.ChartElementLineOrAreaCaption"            = "Linia/Obszar"
    "DashboardStringId.ChartTotalValue"                          = "Łącznie"

    # Mapa
    "DashboardStringId.ChoroplethMapUseBindingAttribute"         = "Użyj atrybutu powiązania"

    # Kolory
    "DashboardStringId.ColorAutoAssignedNotApplied"              = "Automatyczny (nie zastosowany)"
    "DashboardStringId.ColoringModeHue"                          = "Odcień"
    "DashboardStringId.ColorInherited"                           = "(Dziedziczone)"
    "DashboardStringId.ColorPaletteIndex"                        = "Indeks palety:"

    # Polecenia wymiarów
    "DashboardStringId.CommandDimensionGroupChildValues"         = "Grupuj kafelki"
    "DashboardStringId.CommandDimensionSortModeID"               = "(ID)"

    # Reguły formatowania warunkowego
    "DashboardStringId.CommandFormatRuleBarRangeColors"          = "Zakresy kolorów słupka"
    "DashboardStringId.CommandFormatRuleBottomN"                 = "Dolne N"
    "DashboardStringId.CommandFormatRuleColorRangeBar"           = "Słupek zakresu kolorów"
    "DashboardStringId.CommandFormatRuleDateOccurring"           = "Wystąpienie daty"
    "DashboardStringId.CommandFormatRuleGradientRangeBar"        = "Słupek gradientowy zakresów"
    "DashboardStringId.CommandFormatRuleNotBetweenOrEqual"       = "Nie między ani równe"

    # Elementy niestandardowe
    "DashboardStringId.CustomItemCalculationAlongFirstAxisDimensions"  = "Wymiary"
    "DashboardStringId.CustomItemEmptyMeasurePlaceholder"              = "Miara"
    "DashboardStringId.CustomItemMetadataInteractivitySectionsIncorrectOrderExceptionMessage" = "Konfiguracja metadanych elementu niestandardowego '{0}' nie obsługuje interaktywności. Zadeklaruj właściwość '{1}' przed nieinteraktywnymi sekcjami danych. Szczegóły: https://docs.devexpress.com/Dashboard/DevExpress.DashboardCommon.SupportInteractivityAttribute"
    "DashboardStringId.CustomItems"                                    = "Elementy niestandardowe"

    # Dashboard ogólne
    "DashboardStringId.DashboardCurrencyUseCurrentCurrency"      = "Użyj ustawień systemowych klienta"
    "DashboardStringId.DashboardDataUpdating"                    = "Aktualizowanie"

    # Inspektor danych
    "DashboardStringId.DataInspectorObjectValue"                 = "[Obiekt]"
    "DashboardStringId.InspectedData"                            = "Badane dane:"
    "DashboardStringId.InspectedTypeFormatString"                = "(Dane {0})"

    # Błąd filtru źródła danych
    "DashboardStringId.DataSourceFilterContainsAggrExceptionText" = "Nie można załadować danych — filtr źródła nie może zawierać funkcji Aggr."

    # Filtr daty
    "DashboardStringId.DateFilterDatePickerButtonDefaultText"    = "Ustaw filtr..."
    "DashboardStringId.DateFilterDisplayTextPattern"             = "Wzorzec wyświetlanego tekstu"
    "DashboardStringId.DateFilterInvalidDisplayTextPattern"      = "Nieprawidłowy wzorzec tekstu"

    # Formaty daty i czasu
    "DashboardStringId.DateTimeFormatDateFormatLongCaption"          = "Długi"
    "DashboardStringId.DateTimeFormatDateFormatShortCaption"         = "Krótki"
    "DashboardStringId.DateTimeFormatDateTimeFormatLongCaption"      = "Długi"
    "DashboardStringId.DateTimeFormatDateTimeFormatShortCaption"     = "Krótki"
    "DashboardStringId.DateTimeFormatDateTimeFormatTimeOnlyCaption"  = "Tylko czas"
    "DashboardStringId.DateTimeFormatDayOfWeekFormatAbbreviatedCaption" = "Skrócony"
    "DashboardStringId.DateTimeFormatDayOfWeekFormatFullCaption"     = "Pełny"
    "DashboardStringId.DateTimeFormatMonthFormatAbbreviatedCaption"  = "Skrócony"
    "DashboardStringId.DateTimeFormatMonthFormatFullCaption"         = "Pełny"
    "DashboardStringId.DateTimeFormatQuarterFormatFullCaption"       = "Pełny"
    "DashboardStringId.DateTimeFormatYearFormatAbbreviatedCaption"   = "Skrócony"
    "DashboardStringId.DateTimeFormatYearFormatFullCaption"          = "Pełny"

    # Interwały grupowania daty/czasu
    "DashboardStringId.DateTimeGroupIntervalExactDate"               = "Dokładna data"
    "DashboardStringId.DateTimeGroupIntervalExactTime"               = "Dokładny czas"
    "DashboardStringId.DateTimeGroupIntervalWeekYear"                = "Tydzień-Rok"

    # Domyślne nazwy źródeł danych
    "DashboardStringId.DefaultExcelDataSourceName"           = "Źródło danych Excel"
    "DashboardStringId.DefaultFederationDataSourceName"      = "Federacyjne źródło danych"
    "DashboardStringId.DefaultFileExtractDataSourceName"     = "Wyodrębnione źródło danych"
    "DashboardStringId.DefaultJsonDataSourceName"            = "Źródło danych JSON"
    "DashboardStringId.DefaultMongoDBDataSourceName"         = "Źródło danych MongoDB"
    "DashboardStringId.DefaultXpoDataSourceName"             = "Źródło danych XPO"

    # Domyślne nazwy elementów
    "DashboardStringId.DefaultNameBoundImageItem"            = "Obraz powiązany"
    "DashboardStringId.DefaultNameComboBoxItem"              = "Lista rozwijana"
    "DashboardStringId.DefaultNameCustomItem"                = "Element niestandardowy"
    "DashboardStringId.DefaultNamePieItem"                   = "Wykresy kołowe"
    "DashboardStringId.DefaultNameTabContainerItem"          = "Kontener zakładek"
    "DashboardStringId.DefaultPeriodName"                    = "Okres"

    # Wskaźniki delta
    "DashboardStringId.DeltaIndicationModeGreaterIsGoodCaption"    = "Większe jest lepsze"
    "DashboardStringId.DeltaIndicationModeLessIsGoodCaption"       = "Mniejsze jest lepsze"
    "DashboardStringId.DeltaIndicationModeNoIndicationCaption"     = "Brak wskazania"
    "DashboardStringId.DeltaIndicationModeWarningIfGreaterCaption" = "Ostrzeżenie gdy większe"
    "DashboardStringId.DeltaIndicationModeWarningIfLessCaption"    = "Ostrzeżenie gdy mniejsze"
    "DashboardStringId.DeltaThresholdTypeAbsolute"                 = "Bezwzględny"
    "DashboardStringId.DeltaValueTypeAbsoluteVariationCaption"     = "Odchylenie bezwzględne"
    "DashboardStringId.DeltaValueTypePercentOfTargetCaption"       = "Procent celu"
    "DashboardStringId.DeltaValueTypePercentVariationCaption"      = "Odchylenie procentowe"
    "DashboardStringId.DeltaValueTypeTargetValueCaption"           = "Wartość docelowa"

    # Opisy elementów
    "DashboardStringId.DescriptionBoundImageAltText"               = "Tekst alternatywny"
    "DashboardStringId.DescriptionDashboardItemComponentName"      = "Nazwa komponentu elementu dashboardu"
    "DashboardStringId.DescriptionDashboardItemName"               = "Nazwa elementu dashboardu"
    "DashboardStringId.DescriptionImageAltText"                    = "Tekst alternatywny"
    "DashboardStringId.DescriptionItemAxisXMeasure"                = "Oś X"
    "DashboardStringId.DescriptionItemAxisYMeasure"                = "Oś Y"
    "DashboardStringId.DescriptionItemMeasure"                     = "Miara"
    "DashboardStringId.DescriptionMeasures"                        = "Miary"
    "DashboardStringId.DescriptionTooltipDimensions"               = "Wymiary etykietki"
    "DashboardStringId.DescriptionTooltipMeasures"                 = "Miary etykietki"

    # Wyświetlanie
    "DashboardStringId.DisplayValueCaption"                        = "Wartość wyświetlana"
    "DashboardStringId.ElementNamePies"                            = "Wykresy kołowe"
    "DashboardStringId.EndDate"                                    = "(Data końcowa)"
    "DashboardStringId.StartDate"                                  = "(Data początkowa)"
    "DashboardStringId.SelectDate"                                 = "Wybierz datę"

    # Błędy obsługi danych
    "DashboardStringId.ErrorHandlingDataBindingError"              = "Podczas powiązania danych wystąpiły błędy:"
    "DashboardStringId.ErrorHandlingEFServerModeError"             = "Tryb serwera nie jest obsługiwany dla tego elementu danych"
    "DashboardStringId.ErrorHandlingIncompatibleGroupInterval"     = "{0} nie jest odpowiednim interwałem dla pola {1}, ponieważ jego typ to {2}"
    "DashboardStringId.ErrorHandlingInvalidCustomFunctions"        = "Pola obliczeniowe i wyrażenia okienkowe nie mogą zawierać niektórych funkcji niestandardowych. Wykryte zabronione funkcje:"
    "DashboardStringId.ErrorHandlingJoinRuleFunctionServerMode"    = "Funkcja joinRule nie może być używana w trybie serwera"
    "DashboardStringId.ErrorHandlingNoSuchDataMembers"             = "Następujące elementy danych nie istnieją:"
    "DashboardStringId.ErrorHandlingOrderByCalculationDataMembers" = "Sortowanie według miary nie może być stosowane, gdy miara docelowa ma obliczenia. Następujące wymiary są sortowane według miar z obliczeniami:"
    "DashboardStringId.ErrorHandlingRecursiveDataMembers"          = "Następujące elementy danych odwołują się do siebie nawzajem:"
    "DashboardStringId.ErrorHandlingSQLServerModeError"            = "Tryb serwera nie jest obsługiwany dla procedur składowanych"
    "DashboardStringId.ErrorHandlingTopNByCalculationDataMembers"  = "Top N nie może być stosowane, gdy miara docelowa ma obliczenia. Następujące wymiary mają Top N stosowane przez miary z obliczeniami:"
    "DashboardStringId.ErrorHandlingWindowDefinitionServerMode"    = "Funkcja w() nie może być używana w trybie serwera"
    "DashboardStringId.ErrorIncorrectIntervalCount"                = "Parametr count musi być większy lub równy 1."
    "DashboardStringId.ErrorToBooleanCharOperand"                  = "Nie można przekonwertować znaku na wartość logiczną."
    "DashboardStringId.ErrorToBooleanDateTimeOperand"              = "Nie można przekonwertować wartości daty i czasu na wartość logiczną."

    # Format Excel
    "DashboardStringId.ExcelFormat"                                = "Format Excel"
    "DashboardStringId.IncludeExportDashboardState"                = "Dołącz"

    # Błędy wyodrębniania danych
    "DashboardStringId.ExtractColumnUnsupportedTypeError"          = "Następujące kolumny mają nieobsługiwane typy: {0}"
    "DashboardStringId.ExtractCustomDriverNameError"               = "Nazwa niestandardowego sterownika wyodrębniania nie może być null ani pusta."
    "DashboardStringId.ExtractDriverNotFoundError"                 = "Nie można znaleźć sterownika wyodrębniania o nazwie: '{0}'"
    "DashboardStringId.ExtractEmptyDataFieldsExceptionMessage"     = "Nie można utworzyć pliku wyodrębniania z Object/Entity Framework, ponieważ kolekcja ExtractSourceOptions.DataFields jest pusta."
    "DashboardStringId.ExtractEmptyDataMemberExceptionMessage"     = "Nie można utworzyć pliku wyodrębniania, ponieważ ExtractSourceOptions.DataMember jest pusty lub niepoprawny."
    "DashboardStringId.ExtractPreprocessorColumnError"             = "Następujące kolumny nie mogą być przetworzone: {0}"
    "DashboardStringId.ExtractPreprocessorError"                   = "Wystąpił błąd podczas tworzenia wyodrębniania danych: {0}"
    "DashboardStringId.ExtractSourceDataSourceNamePostfix"         = "(kopia lokalna)"

    # Kolory formatowania warunkowego
    "DashboardStringId.FormatConditionAppearanceCyan"              = "Cyjanowy"
    "DashboardStringId.FormatConditionAppearanceFontGrayed"        = "Szara czcionka"
    "DashboardStringId.FormatConditionAppearanceFontGreen"         = "Zielona czcionka"
    "DashboardStringId.FormatConditionAppearanceFontYellow"        = "Żółta czcionka"
    "DashboardStringId.FormatConditionAppearanceGradientCyan"      = "Gradient cyjanowy"
    "DashboardStringId.FormatConditionAppearanceGradientGreen"     = "Gradient zielony"
    "DashboardStringId.FormatConditionAppearanceGradientOrange"    = "Gradient pomarańczowy"
    "DashboardStringId.FormatConditionAppearanceGradientPurple"    = "Gradient fioletowy"
    "DashboardStringId.FormatConditionAppearanceGradientRed"       = "Gradient czerwony"
    "DashboardStringId.FormatConditionAppearanceGradientTransparent" = "Gradient przezroczysty"
    "DashboardStringId.FormatConditionAppearanceGradientYellow"    = "Gradient żółty"
    "DashboardStringId.FormatConditionAppearancePaleCyan"          = "Blady cyjanowy"
    "DashboardStringId.FormatConditionAppearancePaleGray"          = "Blady szary"
    "DashboardStringId.FormatConditionAppearancePaleOrange"        = "Blady pomarańczowy"
    "DashboardStringId.FormatConditionAppearancePalePurple"        = "Blady fioletowy"
    "DashboardStringId.FormatConditionAppearancePaleRed"           = "Blady czerwony"
    "DashboardStringId.FormatConditionAppearancePaleYellow"        = "Blady żółty"

    # Opcje reguł formatowania
    "DashboardStringId.FormatRuleAllowNegativeAxis"                = "Zezwól na ujemną oś"
    "DashboardStringId.FormatRuleAppliesToCardBackground"          = "Wybrany styl stosowany jest do tła karty"
    "DashboardStringId.FormatRuleApplyToAllElements"               = "Wszystkie elementy"
    "DashboardStringId.FormatRuleApplyToChartElement"              = "Zastosuj do elementów wykresu"
    "DashboardStringId.FormatRuleApplyToDimensionElement"          = "Wymiar — {0}"
    "DashboardStringId.FormatRuleApplyToPointSeriesElementOnly"    = "Ta opcja działa tylko dla serii liniowych lub obszarowych"
    "DashboardStringId.FormatRuleApplyToReadOnlyDescription"       = "Wybrany styl stosowany jest do wszystkich elementów układu"
    "DashboardStringId.FormatRuleApplyToTextElement"               = "Tekst — '{0}'"
    "DashboardStringId.FormatRuleCustomColor"                      = "Kolor niestandardowy"
    "DashboardStringId.FormatRuleDisplayInLegend"                  = "Wyświetl w legendzie"
    "DashboardStringId.FormatRuleInvalidRule"                      = "<Nieprawidłowa reguła>"
    "DashboardStringId.FormatRuleInvalidRuleChanging"              = "Nieprawidłowa reguła nie może być włączona."
    "DashboardStringId.FormatRuleNegativeStyle"                    = "Ustawienia stylu ujemnego"
    "DashboardStringId.FormatRulePredefinedColor"                  = "Predefiniowany kolor"
    "DashboardStringId.FormatRuleRangeUsePercent"                  = "Użyj zakresów procentowych"
    "DashboardStringId.FormatRuleUnableToAddRule"                  = "Nie można dodać nowej reguły formatowania."
    "DashboardStringId.FormatRuleUnableToAddRule_NoCardLayout"     = "Nie można dodać reguły — karty używają starszego układu."
    "DashboardStringId.FormatRuleUnableToAddRule_NoCardsToApply"   = "Nie można dodać reguły — brak karty do zastosowania."
    "DashboardStringId.FormatRuleUnableToAddRule_NoColumnsToApply" = "Nie można dodać reguły — brak kolumny do zastosowania."
    "DashboardStringId.FormatRuleUnableToAddRule_NoItemsToCalculate" = "Nie można dodać reguły — brak elementu danych do obliczenia."
    "DashboardStringId.FormatRuleUnableToAddRule_NoSeriesToApply"  = "Nie można dodać reguły — brak serii do zastosowania."
    "DashboardStringId.FormatRuleUnableToAddRule_NoXYAxes"         = "Nie można dodać reguły — wymagane są osie X i Y."

    # Zakresy dat
    "DashboardStringId.FromDatePeriodCaption"                      = "Od {0}"
    "DashboardStringId.FromToDatePeriodCaption"                    = "{0} — {1}"
    "DashboardStringId.ToDatePeriodCaption"                        = "Do {0}"

    # Kategorie funkcji
    "DashboardStringId.FunctionCategoryAdvanced"                   = "Zaawansowane"
    "DashboardStringId.FunctionCategoryCustomAggregateNames"       = "Niestandardowe funkcje agregujące"

    # Opisy funkcji analitycznych
    "DashboardStringId.FunctionDescriptionAggr"                    = "aggr(WyrAggr, Wymiar1, Wymiar2, ...) Agreguje dane na zadanym poziomie szczegółowości i funkcją podsumowania."
    "DashboardStringId.FunctionDescriptionAggregateFilter"         = "filter(WyrAggr, kryteriaFiltru) Filtruje dane wg kryteriów i agreguje je z bieżącym poziomem szczegółowości."
    "DashboardStringId.FunctionDescriptionAggrJoinRule"            = "joinRule(wymiar, szukanaWartość) Określa wymiar dla funkcji aggr oraz kolumnę wartości używanych w operacji łączenia."
    "DashboardStringId.FunctionDescriptionCountDistinct"           = "CountDistinct(Wartość) Zwraca liczbę unikalnych obiektów w kolekcji."
    "DashboardStringId.FunctionDescriptionFirst"                   = "First() Zwraca liczbę wierszy od bieżącego do pierwszego wiersza w oknie."
    "DashboardStringId.FunctionDescriptionFirstValue"              = "FirstValue(Wartość) Zwraca pierwszą wartość w kolekcji."
    "DashboardStringId.FunctionDescriptionGetDateWeekYear"         = "GetDateWeekYear(DateTime) Zwraca datę pierwszego dnia tygodnia dla podanego DateTime (wg ustawień kultury)."
    "DashboardStringId.FunctionDescriptionGetDateWeekYear2"        = "GetDateWeekYear(DateTime, ['FirstDay', 'FirstFullWeek', 'FirstFourDayWeek']) Zwraca datę pierwszego dnia tygodnia. Drugi parametr określa regułę obliczania tygodnia kalendarzowego."
    "DashboardStringId.FunctionDescriptionLookup"                  = "Lookup(WyrAggr, Pozycja) Zwraca wartość wyrażenia na pozycji określonej jako względne przesunięcie od bieżącej pozycji."
    "DashboardStringId.FunctionDescriptionRankCompetition"         = "RankCompetition(WyrAggr, ['asc', 'desc']) Zwraca standardowy ranking konkurencji dla bieżącego wiersza w oknie."
    "DashboardStringId.FunctionDescriptionRankDense"               = "RankDense(WyrAggr, ['asc', 'desc']) Zwraca gęsty ranking dla bieżącego wiersza w oknie."
    "DashboardStringId.FunctionDescriptionRankModified"            = "RankModified(WyrAggr, ['asc', 'desc']) Zwraca zmodyfikowany ranking konkurencji dla bieżącego wiersza w oknie."
    "DashboardStringId.FunctionDescriptionRankPercentile"          = "RankPercentile(WyrAggr, ['asc', 'desc']) Zwraca ranking percentylowy dla bieżącego wiersza w oknie."
    "DashboardStringId.FunctionDescriptionRankUnique"              = "RankUnique(WyrAggr, ['asc', 'desc']) Zwraca unikalny ranking dla bieżącego wiersza w oknie."
    "DashboardStringId.FunctionDescriptionRunningAvg"              = "RunningAvg(WyrAggr) Zwraca narastającą średnią wyrażenia od pierwszego wiersza w oknie do bieżącego."
    "DashboardStringId.FunctionDescriptionRunningCount"            = "RunningCount(WyrAggr) Zwraca narastającą liczbę od pierwszego wiersza w oknie do bieżącego."
    "DashboardStringId.FunctionDescriptionRunningCustomAggregate"  = "RunningAggregate(WyrAggr, NazwaFunkcji) Zwraca skumulowany wynik niestandardowej funkcji od pierwszego wiersza w oknie do bieżącego."
    "DashboardStringId.FunctionDescriptionRunningMax"              = "RunningMax(WyrAggr) Zwraca narastające maksimum od pierwszego wiersza w oknie do bieżącego."
    "DashboardStringId.FunctionDescriptionRunningMin"              = "RunningMin(WyrAggr) Zwraca narastające minimum od pierwszego wiersza w oknie do bieżącego."
    "DashboardStringId.FunctionDescriptionRunningSum"              = "RunningSum(WyrAggr) Zwraca narastającą sumę od pierwszego wiersza w oknie do bieżącego."
    "DashboardStringId.FunctionDescriptionSize"                    = "Size() Zwraca liczbę wierszy w oknie."
    "DashboardStringId.FunctionDescriptionStdDev"                  = "StdDev(Wartość) Szacunkowe odchylenie standardowe populacji (próbka to podzbiór całej populacji)."
    "DashboardStringId.FunctionDescriptionStdDevp"                 = "StdDevp(Wartość) Odchylenie standardowe populacji (populacja = wszystkie podsumowywane dane)."
    "DashboardStringId.FunctionDescriptionVar"                     = "Var(Wartość) Szacunkowa wariancja populacji (próbka to podzbiór całej populacji)."
    "DashboardStringId.FunctionDescriptionVarp"                    = "Varp(Wartość) Wariancja populacji (populacja = wszystkie podsumowywane dane)."
    "DashboardStringId.FunctionDescriptionWindowAvg"               = "WindowAvg(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca średnią wyrażenia w oknie zdefiniowanym przesunięciami od bieżącego wiersza."
    "DashboardStringId.FunctionDescriptionWindowCount"             = "WindowCount(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca liczbę wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowCountDistinct"     = "WindowCountDistinct(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca odrębną liczbę wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowCustomAggregate"   = "WindowAggregate(WyrAggr, PrzesPoczątek, PrzesKoniec, NazwaFunkcji) Zwraca wynik niestandardowej funkcji dla wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowDefinition"        = "w(WyrOkno, partitionBy, orderBy) Oblicza wartości zagregowane z określoną funkcją okienkową dla okna zdefiniowanego podziałem i porządkiem."
    "DashboardStringId.FunctionDescriptionWindowDefinitionOrderAsc"  = "asc(kolumna) Wiersze sortowane rosnąco wg wartości kolumny. To domyślny porządek."
    "DashboardStringId.FunctionDescriptionWindowDefinitionOrderBy"   = "orderBy(kolumna1, kolumna2, ...) Określa kolumny, wg których sortowane są wartości."
    "DashboardStringId.FunctionDescriptionWindowDefinitionOrderDesc" = "desc(kolumna) Wiersze sortowane malejąco wg wartości kolumny."
    "DashboardStringId.FunctionDescriptionWindowDefinitionPartitionBy" = "partitionBy(kolumna1, kolumna2, ...) Określa kolumny podziału. Funkcja okienkowa stosowana jest oddzielnie dla każdej partycji."
    "DashboardStringId.FunctionDescriptionWindowFirstValue"        = "WindowFirstValue(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca pierwszą wartość wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowMax"               = "WindowMax(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca maksimum wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowMedian"            = "WindowMedian(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca medianę wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowMin"               = "WindowMin(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca minimum wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowMode"              = "WindowMode(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca modę wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowStdDev"            = "WindowStdDev(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca odchylenie standardowe próbki wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowStdDevp"           = "WindowStdDevp(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca obciążone odchylenie standardowe wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowSum"               = "WindowSum(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca sumę wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowVar"               = "WindowVar(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca wariancję wyrażenia w oknie."
    "DashboardStringId.FunctionDescriptionWindowVarp"              = "WindowVarp(WyrAggr, PrzesPoczątek, PrzesKoniec) Zwraca obciążoną wariancję wyrażenia w oknie."

    # Funkcje daty (GetDate*)
    "DashboardStringId.FunctionOperatorExFunctionDescriptionGetDateHour"         = "GetDateHour(DateTime) Wyodrębnia część daty z wartością godziny z DateTime."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionGetDateHourMinute"   = "GetDateHourMinute(DateTime) Wyodrębnia część daty z wartościami godziny i minuty z DateTime."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionGetDateHourMinuteSecond" = "GetDateHourMinuteSecond(DateTime) Wyodrębnia część daty z wartościami godziny, minuty i sekundy z DateTime."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionGetDateMonthYear"    = "GetDateMonthYear(DateTime) Zwraca datę pierwszego dnia miesiąca dla podanego DateTime."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionGetDateQuarterYear"  = "GetDateQuarterYear(DateTime) Zwraca datę pierwszego dnia kwartału dla podanego DateTime."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionGetQuarter"          = "GetQuarter(DateTime) Wyodrębnia kwartał z DateTime."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionGetWeekOfMonth"      = "GetWeekOfMonth(DateTime) Wyodrębnia numer tygodnia miesiąca z DateTime."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionGetWeekOfYear"       = "GetWeekOfYear(DateTime) Wyodrębnia numer tygodnia roku z DateTime."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionMakeDateTime3"       = "MakeDateTime(Rok, Miesiąc, Dzień) Zwraca datę złożoną z podanych Rok, Miesiąc i Dzień."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionMakeDateTime4"       = "MakeDateTime(Rok, Miesiąc, Dzień, Godzina) Zwraca datę złożoną z Rok, Miesiąc, Dzień i Godzina."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionMakeDateTime5"       = "MakeDateTime(Rok, Miesiąc, Dzień, Godzina, Minuta) Zwraca datę złożoną z Rok, Miesiąc, Dzień, Godzina i Minuta."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionMakeDateTime6"       = "MakeDateTime(Rok, Miesiąc, Dzień, Godzina, Minuta, Sekunda) Zwraca datę złożoną z Rok, Miesiąc, Dzień, Godzina, Minuta i Sekunda."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionToBoolean"           = "ToBoolean(Wartość) Konwertuje Wartość na odpowiedni typ Boolean."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionToDate"              = "ToDate(Wartość) Konwertuje Wartość na DateOnly."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionToDateTime"          = "ToDateTime(Wartość) Konwertuje Wartość na DateTime."
    "DashboardStringId.FunctionOperatorExFunctionDescriptionToTime"              = "ToTime(Wartość) Konwertuje Wartość na TimeOnly."

    # Miernik
    "DashboardStringId.GaugeScaleLabelFormatCaption"               = "Etykieta skali"

    # Mapa punktów geograficznych
    "DashboardStringId.GeoPointMapTooltipPointCount"               = "{0} punktów"

    # Obliczenia siatki
    "DashboardStringId.GridCalculationAlongRowsAndSparklineArgument"    = "Wiersze / Argument wykresu przebiegu"
    "DashboardStringId.GridCalculationAlongSparklineArgument"           = "Argument wykresu przebiegu"
    "DashboardStringId.GridCalculationAlongSparklineArgumentAndRows"    = "Argument wykresu przebiegu / Wiersze"
    "DashboardStringId.GridHyperlinkUriPatternErrorMessage"             = "Nieprawidłowy symbol zastępczy"
    "DashboardStringId.GridTotalTemplate"                               = "{0} = {1}"
    "DashboardStringId.GridTotalTypeAvg"                                = "Śr."

    # Błędy parametrów
    "DashboardStringId.IncorrectParameterType"                     = "Typ wartości parametru dashboardu nie odpowiada typowi Parameter.Type."
    "DashboardStringId.IndicatorTypeNotFound"                      = "Wskaźnik {0} nie jest skonfigurowany. Zarejestruj odpowiedni typ wskaźnika w aplikacji."
    "DashboardStringId.InitialExtent"                              = "Zakres początkowy"
    "DashboardStringId.IntegerDivisionValidationMessage"           = "Uwaga: Ten silnik wyrażeń odrzuca ułamki przy dzieleniu liczb całkowitych. Aby uzyskać wartości dziesiętne, użyj ToDecimal(), ToDouble() lub ToFloat(). Na przykład ToDecimal(10)/4 zwróci 2.5, natomiast 10/4 zwróci 2."
    "DashboardStringId.InvalidCustomPropertyNameMessage"           = "Nazwa właściwości '{0}' jest nieprawidłowa. Powinna zawierać tylko litery, cyfry i podkreślenie i nie może zaczynać się od cyfry."

    # Mapa — szerokość geograficzna
    "DashboardStringId.Latitude"                                   = "Szerokość geograficzna"

    # Układ
    "DashboardStringId.LayoutDimensionModeFixed"                   = "Stały"
    "DashboardStringId.LegendItemFormatString"                     = "{0} — {1}"

    # Błąd ładowania danych
    "DashboardStringId.LoadingDataError"                           = "Dashboard napotkał problem podczas ładowania danych. Niektóre elementy mogą być puste. Skontaktuj się z dostawcą aplikacji i podaj informację: serwer nie mógł nawiązać połączeń: {0}"

    # Filtr miary
    "DashboardStringId.MeasureFilterCaptionFormatString"           = "Odfiltrowane {0}"
    "DashboardStringId.MeasureNamesDimensionName"                  = "NazwyMiar"

    # Komunikaty błędów
    "DashboardStringId.MessageAggregateFunctionInMasterFilterDimension"    = "Filtrowanie nadrzędne nie może być stosowane do wartości wymiaru opartego na obliczonym polu z funkcją Aggr. Dotyczy następujących wymiarów: {0}."
    "DashboardStringId.MessageCollectionTypesNotSupported"                 = "Dashboard nie obsługuje typów kolekcji."
    "DashboardStringId.MessageCustomItemConfigurationError"                = "Błąd konfiguracji elementu dashboardu. Skontaktuj się z dostawcą aplikacji."
    "DashboardStringId.MessageCustomItemIncorrectDataItemSectionName"      = "Definicja dashboardu zawiera właściwość {0}, która nie istnieje w klasie {1}. Właściwość zostanie zignorowana."
    "DashboardStringId.MessageCustomItemIsNotSupported"                    = "Ten element niestandardowy nie jest obsługiwany przez tę kontrolkę."
    "DashboardStringId.MessageDashboardNotRelevantError"                   = "Model obiektu dashboardu został zmieniony. Wymagane jest odświeżenie."
    "DashboardStringId.MessageDuplicateDataItemId"                         = "Identyfikator elementu danych o tej nazwie już istnieje."
    "DashboardStringId.MessageDuplicatedDataItem"                          = "Instancja elementu danych '{0}' została już dodana do '{1}'. Utwórz nową instancję."
    "DashboardStringId.MessageEFNotSupportedMedian"                        = "Mediana nie jest obsługiwana dla Entity Framework."
    "DashboardStringId.MessageGridHasNoData"                               = "Siatka nie zawiera danych."
    "DashboardStringId.MessageIncorrectDashboardItemGroupAssign"           = "Grupy elementów dashboardu nie można dodać do kolekcji elementów. Użyj właściwości Dashboard.Groups."
    "DashboardStringId.MessageIncorrectDataAssign"                         = "Nie można przypisać danych gdy używany jest dostawca danych."
    "DashboardStringId.MessageIncorrectFilterValueLength"                  = "Przypisana lista wartości filtru ma długość niezgodną z oczekiwaną."
    "DashboardStringId.MessageIncorrectGridDashboardControlOperation"      = "Wykonano nieprawidłową operację w GridDashboardControl."
    "DashboardStringId.MessageIncorrectLayoutItemWeight"                   = "Waga elementu układu nie może być ujemna ani równa zero."
    "DashboardStringId.MessageIncorrectMapLatitude"                        = "Szerokość geograficzna powinna być większa lub równa {0} i mniejsza lub równa {1}."
    "DashboardStringId.MessageIncorrectMoveTarget"                         = "Nie można przenieść elementu układu do pozycji wewnątrz własnej gałęzi."
    "DashboardStringId.MessageIncorrectNumericPrecision"                   = "Precyzja wartości numerycznej nie może być ujemna."
    "DashboardStringId.MessageInternalError"                               = "Błąd wewnętrzny. Skontaktuj się z dostawcą aplikacji i podaj informację: {0}"
    "DashboardStringId.MessageInvalidCardLayoutTemplateMaxWidth"           = "Maksymalna szerokość musi być większa od zera lub równa null."
    "DashboardStringId.MessageInvalidCardLayoutTemplateMinWidth"           = "Minimalna szerokość musi być większa od zera."
    "DashboardStringId.MessageInvalidCultureName"                          = "Nie można znaleźć kultury o nazwie: {0}"
    "DashboardStringId.MessageInvalidDataFormat"                           = "Nie można przekonwertować wartości {0} na typ danych {1}."
    "DashboardStringId.MessageInvalidDeltaIndicatorSize"                   = "Rozmiar wskaźnika delta musi być większy od zera."
    "DashboardStringId.MessageInvalidFilterExpression"                     = "Nieprawidłowy identyfikator kolumny: {0}. Prawidłowy identyfikator musi zawierać nazwę kolumny poprzedzoną nazwą tabeli (lub aliasem) oddzieloną kropką."
    "DashboardStringId.MessageInvalidFontSize"                             = "Rozmiar czcionki musi być większy od zera."
    "DashboardStringId.MessageInvalidLayoutClientHeight"                   = "Wysokość układu musi być większa od zera."
    "DashboardStringId.MessageLayoutDuplicatedDashboardItem"               = "Element układu dla tego elementu dashboardu został już dodany do drzewa układu."
    "DashboardStringId.MessageLegacyCardLayoutIsNotSupported"              = "Układ karty jest przestarzały i nie może być wyświetlony. Aby wyświetlić ten element, określ szablon układu w Projektancie dashboardu."
    "DashboardStringId.MessageMasterFilterIncorrectNumberOfValues"         = "Nie można zidentyfikować elementu do filtrowania nadrzędnego — nieprawidłowa liczba podanych wartości."
    "DashboardStringId.MessagePivotHasNoData"                              = "Siatka przestawna nie zawiera danych."
    "DashboardStringId.MessageServerModeNotSupportedCountDistinct"         = "Count Distinct nie jest obsługiwany w trybie serwera dla:"
    "DashboardStringId.MessageServerModeNotSupportedMedian"                = "Mediana nie jest obsługiwana w trybie serwera dla:"
    "DashboardStringId.MessageServerModeNotSupportedMode"                  = "Moda nie jest obsługiwana w trybie serwera dla:"
    "DashboardStringId.MessageSummaryCalculatedFieldInDimension"           = "Nie można zmienić wyrażenia pola obliczeniowego '{0}' dostarczającego danych dla wymiaru '{1}'. Pola obliczeniowe oparte na podsumowaniach mogą dostarczać danych tylko dla miar."
    "DashboardStringId.MessageUnassignedDashboardItemGroup"                = "Grupa elementów dashboardu powinna należeć do dashboardu. Użyj właściwości Dashboard.Groups."
    "DashboardStringId.MessageWrongAxisName"                               = "Oś danych o podanej nazwie nie istnieje w tym elemencie dashboardu. Zobacz klasę DashboardDataAxisNames."
    "DashboardStringId.MessageWrongDateTimePeriodName"                     = "Kolekcja DateTimePeriodCollection nie zawiera elementu o podanej nazwie."
    "DashboardStringId.MessageWrongExcelDataSourceConnectionParametersType"  = "Nieprawidłowe parametry połączenia. Źródło Excel obsługuje tylko ExcelDataSourceConnectionParameters."
    "DashboardStringId.MessageWrongExtractDataSourceConnectionParametersType" = "Nieprawidłowe parametry połączenia. Wyodrębnione źródło obsługuje tylko ExtractDataSourceConnectionParameters."

    # Prefiks nowego parametru
    "DashboardStringId.NewParameterNamePrefix"                     = "Parametr"

    # Format liczbowy
    "DashboardStringId.NumericFormatUnitOnesCaption"               = "Jedności"

    # OLAP
    "DashboardStringId.OlapCubeNotFoundError"                      = "Nie można znaleźć kostki o nazwie: {0}."
    "DashboardStringId.OlapConnectionError"                        = "Nie można połączyć się z serwerem OLAP. Sprawdź ustawienia połączenia i spróbuj ponownie."
    "DashboardStringId.OLAPUnavailableRawData"                     = "Źródło danych OLAP — dane niedostępne"

    # Parametry
    "DashboardStringId.ParameterNullExportValue"                   = "null"
    "DashboardStringId.ParametersFormAllowNullColumnCaption"       = "Przekaż Null"
    "DashboardStringId.ParametersFormNameColumnCaption"            = "Parametr"

    # Okresy
    "DashboardStringId.PeriodLastDay"                              = "Ostatni dzień"
    "DashboardStringId.PeriodLastHour"                             = "Ostatnia godzina"
    "DashboardStringId.PeriodLastMinute"                           = "Ostatnia minuta"
    "DashboardStringId.PeriodNextDay"                              = "Następny dzień"
    "DashboardStringId.PeriodThisDay"                              = "Ten dzień"
    "DashboardStringId.PeriodThisHour"                             = "Ta godzina"
    "DashboardStringId.PeriodThisMinute"                           = "Ta minuta"
    "DashboardStringId.PeriodThisSecond"                           = "Ta sekunda"

    # Obliczenia kołowe
    "DashboardStringId.PieCalculationAlongArgumentsAndSeries"      = "Argumenty / Serie"
    "DashboardStringId.PieCalculationAlongSeriesAndArguments"      = "Serie / Argumenty"

    # Obliczenia przestawne
    "DashboardStringId.PivotCalculationAlongColumnsAndRows"              = "Kolumny / Wiersze"
    "DashboardStringId.PivotCalculationAlongGroupsInColumns"             = "Kolumny w grupach"
    "DashboardStringId.PivotCalculationAlongGroupsInColumnsAndRows"      = "Kolumny / Wiersze w grupach"
    "DashboardStringId.PivotCalculationAlongGroupsInRows"                = "Wiersze w grupach"
    "DashboardStringId.PivotCalculationAlongGroupsInRowsAndColumns"      = "Wiersze / Kolumny w grupach"
    "DashboardStringId.PivotCalculationAlongRowsAndColumns"              = "Wiersze / Kolumny"

    # Etykiety punktów
    "DashboardStringId.PointLabelContentTypeSeriesName"            = "Nazwa serii"

    # Filtr zakresu
    "DashboardStringId.RangeFilterCalculationAlongArgumentAndSeries"     = "Argument / Serie"
    "DashboardStringId.RangeFilterCalculationAlongSeriesAndArgument"     = "Serie / Argument"
    "DashboardStringId.RangeFilterEmptyArgument"                         = "Określ argument filtru zakresu"
    "DashboardStringId.RangeFilterEmptySeries"                           = "Określ wartości filtru zakresu"
    "DashboardStringId.RangeFilterHasNoData"                             = "Filtr zakresu nie zawiera danych do wyświetlenia."
    "DashboardStringId.RangeFilterIncompatibleArgument"                  = "Argument filtru zakresu musi mieć typ Numeric, DateTime lub TimeSpan."
    "DashboardStringId.RangeFilterIncompatibleArgumentSorting"           = "Argument filtru zakresu nie powinien być sortowany malejąco ani według innego elementu danych."
    "DashboardStringId.RangeFilterIncompatibleDateTimeGroupInterval"     = "Wartości argumentu daty/czasu powinny identyfikować rzeczywiste daty lub przedziały czasu (muszą zawierać rok). Zmień interwał grupowania."
    "DashboardStringId.RangeFilterIncompatibleNumericScale"              = "Numeryczne wartości argumentu filtru zakresu powinny tworzyć ciągłą oś. Ustaw skalę numeryczną na Continuous."
    "DashboardStringId.RangeFilterIncompatibleSeriesType"                = "Filtr zakresu może zawierać tylko serie Liniowe, Obszarowe i Słupkowe."
    "DashboardStringId.RangeFilterIncompatibleTopN"                      = "Argument filtru zakresu nie obsługuje funkcji Top N."
    "DashboardStringId.RangeFilterOLAPDataSource"                        = "Filtr zakresu nie jest obsługiwany w trybie OLAP."
    "DashboardStringId.RangeFilterSelectRangeToCaption"                  = "Do:"

    # Typy rankingu
    "DashboardStringId.RankTypeCompetition"                        = "Konkurencja"
    "DashboardStringId.RankTypeDense"                              = "Gęsty"
    "DashboardStringId.RankTypePercentile"                         = "Percentyl"

    # Format daty dokładnej
    "DashboardStringId.ResetExactDateFormatToDefault"              = "Przywróć domyślny"
    "DashboardStringId.ResetExactTimeFormatToDefault"              = "Przywróć domyślny"

    # Eksport
    "DashboardStringId.Resolution"                                 = "Rozdzielczość (dpi)"
    "DashboardStringId.ScaleFactor"                                = "Współczynnik skali"
    "DashboardStringId.ScaleMode"                                  = "Tryb skalowania"
    "DashboardStringId.ScaleModeAutoFitToPagesWidth"               = "Automatyczne dopasowanie szerokości"
    "DashboardStringId.ScaleModeUseScaleFactor"                    = "Użyj współczynnika skali"
    "DashboardStringId.SizeMode"                                   = "Tryb rozmiaru"

    # Typy serii wykresów
    "DashboardStringId.SeriesTypeCandleStick"                      = "Świecowy"
    "DashboardStringId.SeriesTypeFullStackedArea"                  = "Pełny skumulowany obszar"
    "DashboardStringId.SeriesTypeFullStackedBar"                   = "Pełny skumulowany słupek"
    "DashboardStringId.SeriesTypeFullStackedLine"                  = "Pełna skumulowana linia"
    "DashboardStringId.SeriesTypeFullStackedSplineArea"            = "Pełny skumulowany obszar krzywy"
    "DashboardStringId.SeriesTypeGroupRangeFilter"                 = "Filtr zakresu"
    "DashboardStringId.SeriesTypeHighLowClose"                     = "Wysoki-Niski-Zamknięcie"
    "DashboardStringId.SeriesTypeRangeArea"                        = "Obszar zakresu"
    "DashboardStringId.SeriesTypeSideBySideFullStackedBar"         = "Pełny skumulowany słupek obok"
    "DashboardStringId.SeriesTypeSideBySideRangeBar"               = "Słupek zakresu obok"
    "DashboardStringId.SeriesTypeSideBySideStackedBar"             = "Skumulowany słupek obok"
    "DashboardStringId.SeriesTypeSpline"                           = "Krzywa"
    "DashboardStringId.SeriesTypeSplineArea"                       = "Obszar krzywej"
    "DashboardStringId.SeriesTypeStackedBar"                       = "Skumulowany słupek"
    "DashboardStringId.SeriesTypeStackedLine"                      = "Skumulowana linia"
    "DashboardStringId.SeriesTypeStackedSplineArea"                = "Skumulowany obszar krzywej"
    "DashboardStringId.SeriesTypeStepArea"                         = "Obszar schodkowy"
    "DashboardStringId.SeriesTypeStepLine"                         = "Linia schodkowa"

    # Separator wykresu przebiegu
    "DashboardStringId.SparklineArgumentValueSeparator"            = "-"
    "DashboardStringId.SparklineValuesSeparator"                   = ","

    # Typy podsumowań
    "DashboardStringId.SummaryTypeCountDistinct"                   = "Liczba unikalna"
    "DashboardStringId.SummaryTypeStdDev"                          = "OdchStd"
    "DashboardStringId.SummaryTypeStdDevp"                         = "OdchStdP"
    "DashboardStringId.SummaryTypeVar"                             = "Wariancja"
    "DashboardStringId.SummaryTypeVarp"                            = "WariancjaP"

    # Wartość docelowa
    "DashboardStringId.TargetValueCaption"                         = "Cel"

    # Etykietki
    "DashboardStringId.TooltipDataItemsHeader"                     = "ELEMENTY DANYCH ETYKIETKI"

    # Mapa drzewa
    "DashboardStringId.TreemapLabelArgumentTemplate"               = "{0} — {1}"
    "DashboardStringId.TreemapLabelValueTemplate"                  = "{0}: {1}"

    # Walidacja
    "DashboardStringId.UniqueCalculatedFieldNameValidationMessage" = "{0} zawiera już pole o nazwie {1}."
    "DashboardStringId.UniqueNameValidationMessage"                = "Nazwa musi być unikalna."
    "DashboardStringId.UriCaption"                                 = "URI"
    "DashboardStringId.WindowFunctionValidationMessage"            = "Uwaga: Tego pola nie można użyć jako elementu danych. Wyrażenie {0} jest prawidłowe tylko wewnątrz funkcji w() lub jako wyrażenie niestandardowe miary."

    # Palety kolorów
    "DashboardStringId.PaletteNameDefault"                         = "Domyślna"
    "DashboardStringId.PaletteNameHighContrast"                    = "Wysoki kontrast"
    "DashboardStringId.PaletteNameBright"                          = "Jasna"
    "DashboardStringId.PaletteNameVibrant"                         = "Żywa"
    "DashboardStringId.PaletteNameSunset"                          = "Zachód słońca"
    "DashboardStringId.PaletteNameWarmGradient"                    = "Ciepły gradient"
}

[xml]$xml = Get-Content $PlResx -Encoding UTF8
$added = 0; $skipped = 0
foreach ($key in $translations.Keys) {
    if ($xml.root.data | Where-Object { $_.name -eq $key }) { $skipped++; continue }
    $node = $xml.CreateElement("data")
    $node.SetAttribute("name", $key)
    $node.SetAttribute("xml:space", "preserve")
    $val = $xml.CreateElement("value"); $val.InnerText = $translations[$key]
    $null = $node.AppendChild($val); $null = $xml.root.AppendChild($node)
    $added++
}
Write-Host "Dashboard.Core PL: dodano=$added pominięto=$skipped"
$s = [System.Xml.XmlWriterSettings]::new()
$s.Encoding = [System.Text.UTF8Encoding]::new($true); $s.Indent = $true; $s.NewLineChars = "`r`n"
$xw = [System.Xml.XmlWriter]::Create($PlResx, $s); $xml.Save($xw); $xw.Close()
