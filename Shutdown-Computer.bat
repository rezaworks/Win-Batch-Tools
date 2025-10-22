@echo off
title Computer Shutdown Tool
color 3A
echo.
echo ========================================
echo          Computer Shutdown Tool
echo ========================================
echo.
echo Shutting down in 60 seconds...
echo.
powershell -command "Stop-Computer -Force -Delay 60"
echo.
echo Press any key to exit...
pause >nul
echo.
