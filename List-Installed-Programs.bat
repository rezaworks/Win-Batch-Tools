@echo off
echo Listing installed programs...
powershell -command "Get-WmiObject -Class Win32_Product | Select-Object Name"
pause
