@echo off
echo Clearing RAM cache...
powershell -command "Clear-Host; for ($i = 0; $i -lt 10; $i++) { [System.GC]::Collect(); [System.GC]::WaitForPendingFinalizers(); [System.GC]::Collect() }"
echo RAM cache cleared!
pause
