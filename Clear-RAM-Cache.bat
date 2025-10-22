@echo off
echo Clearing RAM cache...
powershell -command "Clear-Host; [System.GC]::Collect(); [System.GC]::WaitForPendingFinalizers(); [System.GC]::Collect()"
echo RAM cache cleared!
pause
