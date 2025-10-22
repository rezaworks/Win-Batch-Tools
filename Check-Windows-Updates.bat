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
powershell -command "Get-WindowsUpdateLog"
echo.
echo Update check initiated!
echo.
echo Press any key to exit...
pause >nul
echo.
