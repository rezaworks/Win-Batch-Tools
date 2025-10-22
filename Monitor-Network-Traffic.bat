@echo off
title Network Traffic Monitor
color 9A
echo.
echo ========================================
echo          Network Traffic Monitor
echo ========================================
echo.
echo Monitoring network traffic...
echo.
powershell -command "Get-NetTCPConnection | Select-Object LocalAddress, LocalPort, RemoteAddress, RemotePort, State"
echo.
echo Press any key to exit...
pause >nul
echo.
