@echo off
echo Checking for Windows Updates...
powershell -command "Get-WindowsUpdateLog"
echo Update check initiated!
pause
