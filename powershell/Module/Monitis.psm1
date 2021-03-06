. $psScriptRoot\Add-MonitisCustomMonitor.ps1
. $psScriptRoot\Add-MonitisResellerCustomMonitor.ps1
. $psScriptRoot\Add-MonitisCustomMonitorUpdater.ps1
. $psScriptRoot\Add-MonitisContact.ps1
. $psScriptroot\Add-MonitisNotificationRule.ps1
. $psScriptroot\Add-MonitisPage.ps1
. $psScriptRoot\Add-MonitisExternalMonitor.ps1
. $psScriptRoot\Connect-Monitis.ps1
. $psScriptRoot\Get-MonitisCustomMonitor.ps1
. $psScriptRoot\Get-MonitisExternalMonitor.ps1
. $psScriptroot\Get-MonitisMonitorResult.ps1
. $psScriptroot\Get-MonitisContact.ps1
. $psScriptRoot\Remove-MonitisExternalMonitor.ps1
. $psScriptRoot\Remove-MonitisCustomMonitor.ps1
. $psScriptRoot\Suspend-MonitisExternalMonitor.ps1
. $psScriptRoot\Resume-MonitisExternalMonitor.ps1
. $psScriptRoot\Update-MonitisCustomMonitor.ps1

 
if (-not (Test-Path $psScriptRoot\UpdateCommands)) {
    $null = New-Item -ItemType Directory -Path $psScriptRoot\UpdateCommands 
}

Get-ChildItem -Path $psScriptRoot\UpdateCommands -Filter *.ps1 |
    ForEach-Object {
        . $_.Fullname
    }