@echo off
title System Uptime Checker
color 5A
echo.
echo ========================================
echo          System Uptime Checker
echo ========================================
echo.
echo Checking system uptime...
echo.
powershell -command "(Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime"
echo.
echo Press any key to exit...
pause >nul
echo.
