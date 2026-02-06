Write-Host "System Health Snapshot"
Write-Host "----------------------"
Write-Host "Date & Time: $(Get-Date)"
Write-Host "Hostname: $(hostname)"
Write-Host "Current User: $env:USERNAME"

$disk = Get-PSDrive C
Write-Host "Disk Usage: $([math]::Round($disk.Free/1GB,2)) GB free out of $([math]::Round($disk.Used/1GB + $disk.Free/1GB,2)) GB"
