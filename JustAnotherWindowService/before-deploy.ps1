$ios = Get-MsmqQueue -Name "ios"
$mac = Get-MsmqQueue -Name "mac"
$android = Get-MsmqQueue -Name "android"
$pc = Get-MsmqQueue -Name "pc"
$logs = Get-MsmqQueue -Name "logs"


If($ios -eq $null)
{
    New-MsmqQueue -Name "ios" -QueueType Private
}

If($mac -eq $null)
{
    New-MsmqQueue -Name "mac" -QueueType Private
}

If($android -eq $null)
{
    New-MsmqQueue -Name "android" -QueueType Private
}

If($pc -eq $null)
{
    New-MsmqQueue -Name "pc" -QueueType Private
}


If($logs -eq $null)
{
    New-MsmqQueue -Name "logs" -QueueType Private
}
