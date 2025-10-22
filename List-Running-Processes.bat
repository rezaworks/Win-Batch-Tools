@echo off
title Process Lister
color 0C
echo.
echo ========================================
echo          Process Lister
echo ========================================
echo.
echo Listing running processes...
echo.
powershell -command "Get-Process | Select-Object ProcessName, Id, CPU, Memory"
echo.
echo Press any key to exit...
pause >nul
echo.
