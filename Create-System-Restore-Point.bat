@echo off
title System Restore Point Creator
color 0D
echo.
echo ========================================
echo          System Restore Point Creator
echo ========================================
echo.
echo Creating system restore point...
echo.
powershell -command "Checkpoint-Computer -Description 'Manual Restore Point'"
echo.
echo Restore point created!
echo.
echo Press any key to exit...
pause >nul
echo.
