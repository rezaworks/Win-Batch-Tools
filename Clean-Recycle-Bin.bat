@echo off
title Recycle Bin Cleaner
color 0F
echo.
echo ========================================
echo          Recycle Bin Cleaner
echo ========================================
echo.
echo Cleaning Recycle Bin...
echo.
powershell -command "Clear-RecycleBin -Force"
echo.
echo Recycle Bin cleaned!
echo.
echo Press any key to exit...
pause >nul
echo.
