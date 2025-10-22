@echo off
title Disk Space Checker
color 0A
echo.
echo ========================================
echo          Disk Space Checker
echo ========================================
echo.
echo Checking disk space...
echo.
powershell -command "Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, @{Name='Size(GB)';Expression={[math]::Round($_.Size/1GB,2)}}, @{Name='FreeSpace(GB)';Expression={[math]::Round($_.FreeSpace/1GB,2)}} | Format-Table -AutoSize"
echo.
echo Press any key to exit...
pause >nul
echo.
