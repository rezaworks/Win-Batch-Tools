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
if %errorlevel% equ 0 (
    echo Time updated successfully!
) else (
    echo Failed to update time. Please check your internet connection or run as administrator.
)
echo.
echo Press any key to exit...
pause >nul
echo.
