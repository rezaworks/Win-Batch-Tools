@echo off
echo Monitoring network traffic...
powershell -command "Get-NetTCPConnection | Select-Object LocalAddress, LocalPort, RemoteAddress, RemotePort, State"
pause
