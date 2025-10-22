@echo off
title Event Log Viewer
color 4A
echo.
echo ========================================
echo          Event Log Viewer
echo ========================================
echo.
echo Displaying recent system events...
echo.
powershell -command "Get-EventLog -LogName System -Newest 10"
echo.
echo Press any key to exit...
pause >nul
echo.
