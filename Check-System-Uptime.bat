@echo off
echo Checking system uptime...
powershell -command "(Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime"
pause
