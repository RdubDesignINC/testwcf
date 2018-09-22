$mysched1 = Get-ScheduledTask MySched1
if($mysched1 -eq $null)
{
    echo "now you are going to get it my friend"



    $token = 'vhfbd63dvitncm9k7pa0'
    $headers = @{}
    $headers['Authorization'] = "Bearer $token"
    $headers["Content-type"] = "application/json"
    $build_info = Invoke-RestMethod -Uri 'https://ci.appveyor.com/api/environments/39631/settings' -Headers $headers -Method Get  | Select-Object -ExpandProperty environment

	$user = $build_info[0].settings.environmentVariables | Where-Object name -eq "Admin" | Select-Object -ExpandProperty value | Select-Object value
    $pw = $build_info[0].settings.environmentVariables | Where-Object name -eq "Password" | Select-Object -ExpandProperty value | Select-Object value

    Write-Host $pw.value " " $user.value

    $A = New-ScheduledTaskAction -Execute $env:APPLICATION_PATH + "\bin\Debug\consoleTest.exe"
    $S = New-ScheduledTaskSettingsSet
    $T = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Hours 1)
    #$P = New-ScheduledTaskPrincipal "desktop-dtu1uo9\JacobLenovo"
    $D = New-ScheduledTask -Description TEST -Action $A -Settings $S -Trigger $T
    Register-ScheduledTask MySched1 -InputObject $D  -User $user.value -Password $pw.value
}
else
{
  Write-Host "mysched1 already exits! dude"
}