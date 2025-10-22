@echo off
title Installed Programs Lister
color 7A
echo.
echo ========================================
echo          Installed Programs Lister
echo ========================================
echo.
echo Listing installed programs...
echo.
powershell -command "Get-WmiObject -Class Win32_Product | Select-Object Name"
echo.
echo Press any key to exit...
pause >nul
echo.
