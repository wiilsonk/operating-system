@"
Info: System started
Error: Failed to load module
Warning: Low memory
Error: Connection lost
Info: Task complete
Error: Invalid input
"@ | Out-File -FilePath server.log

$count = (Select-String -Path server.log -Pattern "Error").Count
Write-Host "Number of lines containing 'Error': $count"
