@echo off
echo Clearing RAM cache...
rundll32.exe advapi32.dll,ProcessIdleTasks
echo RAM cache cleared!
pause
