Get-Process |
Sort-Object -Property WS -Descending |
Select-Object -First 5 |
Format-Table Name, Id, @{Name="Memory(MB)";Expression={[math]::Round($_.WS/1MB,2)}}
