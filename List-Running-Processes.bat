@echo off
echo Listing running processes...
powershell -command "Get-Process | Select-Object ProcessName, Id, CPU, Memory"
pause
