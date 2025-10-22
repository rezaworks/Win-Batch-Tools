@echo off
echo Checking disk space...
echo.
powershell -command "Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, @{Name='Size(GB)';Expression={[math]::Round($_.Size/1GB,2)}}, @{Name='FreeSpace(GB)';Expression={[math]::Round($_.FreeSpace/1GB,2)}} | Format-Table -AutoSize"
echo.
pause
