@echo off
title RAM Cache Cleaner
color AA
echo.
echo ========================================
echo          RAM Cache Cleaner
echo ========================================
echo.
echo Clearing RAM cache...
echo.
powershell -command "Clear-Host; for ($i = 0; $i -lt 10; $i++) { [System.GC]::Collect(); [System.GC]::WaitForPendingFinalizers(); [System.GC]::Collect() }"
echo.
echo RAM cache cleared!
echo.
echo Press any key to exit...
pause >nul
echo.
