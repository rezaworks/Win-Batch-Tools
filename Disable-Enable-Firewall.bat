@echo off
title Firewall Manager
color 6A
echo.
echo ========================================
echo          Firewall Manager
echo ========================================
echo.
echo Disabling firewall...
echo.
powershell -command "Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False"
echo.
echo Firewall disabled!
echo.
echo Press any key to exit...
pause >nul
echo.
