@echo off
title Registry Backup Tool
color 2A
echo.
echo ========================================
echo          Registry Backup Tool
echo ========================================
echo.
echo Backing up registry...
echo.
powershell -command "reg export HKLM registry_backup_$(Get-Date -Format yyyyMMdd).reg"
echo.
echo Registry backup completed!
echo.
echo Press any key to exit...
pause >nul
echo.
