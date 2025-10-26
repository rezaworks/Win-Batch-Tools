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
powershell -command "try { Clear-Host; [System.GC]::Collect(); [System.GC]::WaitForPendingFinalizers(); rundll32.exe advapi32.dll,ProcessIdleTasks; Write-Host 'RAM cache cleared.' } catch { Write-Host 'Error clearing RAM cache.' }"
echo.
echo RAM cache cleared!
echo.
echo Press any key to exit...
pause >nul
echo.
