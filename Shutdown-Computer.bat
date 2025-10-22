@echo off
echo Shutting down in 60 seconds...
powershell -command "Stop-Computer -Force -Delay 60"
pause
