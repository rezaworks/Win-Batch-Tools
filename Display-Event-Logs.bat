@echo off
echo Displaying recent system events...
powershell -command "Get-EventLog -LogName System -Newest 10"
pause
