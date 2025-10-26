@echo off
title Windows Update Checker
color 1A
echo.
echo ========================================
echo          Windows Update Checker
echo ========================================
echo.
echo Checking for Windows Updates...
echo.
powershell -command "try { Get-HotFix | Select-Object HotFixID, Description, InstalledOn | Format-Table -AutoSize } catch { Write-Host 'Error checking updates.' }"
echo.
echo Update check completed!
echo.
echo Press any key to exit...
pause >nul
echo.
