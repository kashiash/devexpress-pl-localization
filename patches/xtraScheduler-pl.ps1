# Tłumaczenia PL dla DevExpress.XtraScheduler.Core — brakujące stringi (v26.1)
# Wywołanie: .\xtraScheduler-pl.ps1 -PlResx <ścieżka do LocalizationRes.pl.resx>
param([Parameter(Mandatory)][string]$PlResx)

$translations = [ordered]@{
    "SchedulerStringId.Caption_AllDayResource"                          = "Cały dzień"
    "SchedulerStringId.Caption_AppointmentDependencyTypeFinishToFinish" = "Koniec–Koniec"
    "SchedulerStringId.Caption_AppointmentDependencyTypeFinishToStart"  = "Koniec–Początek"
    "SchedulerStringId.Caption_AppointmentDependencyTypeStartToFinish"  = "Początek–Koniec"
    "SchedulerStringId.Caption_AppointmentDependencyTypeStartToStart"   = "Początek–Początek"
    "SchedulerStringId.Caption_FullWeekViewDescription"                 = "Pełny tydzień"
    "SchedulerStringId.Caption_ModifyAppointmentDependencyMappingsTransactionDescription" = "Modyfikuj mapowania zależności"
    "SchedulerStringId.Caption_ModifyAppointmentDependencyStorageTransactionDescription"  = "Modyfikuj magazyn zależności"
    "SchedulerStringId.Caption_WorkingElsewhere"                        = "Praca zdalna"
    "SchedulerStringId.Caption_YearViewDescription"                     = "Rok"
    "SchedulerStringId.FlyoutCaption_End"                               = "Koniec"
    "SchedulerStringId.FlyoutCaption_Start"                             = "Początek"
    "SchedulerStringId.MenuCmd_None"                                    = "(Brak)"
    "SchedulerStringId.MenuCmd_SwitchToAgendaView"                      = "Agenda"
    "SchedulerStringId.MenuCmd_SwitchToFullWeekView"                    = "Pełny tydzień"
    "SchedulerStringId.MenuCmd_SwitchToYearView"                        = "Rok"
    "SchedulerStringId.MenuCmd_TimeScaleWorkDay"                        = "Dzień roboczy"
    "SchedulerStringId.MenuCmd_TimeScaleWorkHour"                       = "Godzina robocza"
    "SchedulerStringId.MenuCmd_WorkingElsewhere"                        = "Praca zdalna"
    "SchedulerStringId.Msg_DateOutsideLimitInterval"                    = "Data jest poza dozwolonym zakresem."
    "SchedulerStringId.Msg_InvalidAppointmentTime"                      = "Nieprawidłowy czas terminu."
    "SchedulerStringId.Msg_InvalidHourCount"                            = "Liczba godzin jest nieprawidłowa."
    "SchedulerStringId.Msg_InvalidHourCountValue"                       = "Liczba godzin musi być liczbą całkowitą od 0 do {0}."
    "SchedulerStringId.Msg_InvalidMinuteCount"                          = "Liczba minut jest nieprawidłowa."
    "SchedulerStringId.Msg_InvalidMinuteCountValue"                     = "Liczba minut musi być liczbą całkowitą od 0 do {0}."
    "SchedulerStringId.Msg_InvalidTime"                                 = "Nieprawidłowy czas."
    "SchedulerStringId.TimeScaleDisplayName_WorkDay"                    = "Dzień roboczy"
    "SchedulerStringId.TimeScaleDisplayName_WorkHour"                   = "Godzina robocza"
    "SchedulerStringId.ViewDisplayName_Agenda"                          = "Agenda"
    "SchedulerStringId.ViewDisplayName_FullWeek"                        = "Pełny tydzień"
    "SchedulerStringId.ViewDisplayName_Year"                            = "Rok"
    "SchedulerStringId.ViewShortDisplayName_Agenda"                     = "Agenda"
    "SchedulerStringId.ViewShortDisplayName_FullWeek"                   = "Tydz."
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
Write-Host "XtraScheduler.Core PL: dodano=$added pominięto=$skipped"
$s = [System.Xml.XmlWriterSettings]::new()
$s.Encoding = [System.Text.UTF8Encoding]::new($true); $s.Indent = $true; $s.NewLineChars = "`r`n"
$xw = [System.Xml.XmlWriter]::Create($PlResx, $s); $xml.Save($xw); $xw.Close()
