@echo off
title System Time Updater
color 0B
echo.
echo ========================================
echo          System Time Updater
echo ========================================
echo.
echo Updating system time...
echo.
w32tm /resync
echo.
echo Time updated!
echo.
echo Press any key to exit...
pause >nul
echo.
