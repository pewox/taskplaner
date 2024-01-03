$action = New-ScheduledTaskAction -Execute 'pwsh' '-ExecutionPolicy Bypass -File C:\PSProjekte\taskplaner\dummy.ps1'
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 60) -RepetitionDuration (New-TimeSpan -Days 3)
Register-ScheduledTask -taskname test -Action $action -Trigger $trigger -RunLevel Highest -Force | Out-Null