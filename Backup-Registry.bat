@echo off
echo Backing up registry...
powershell -command "reg export HKLM registry_backup_$(Get-Date -Format yyyyMMdd).reg"
echo Registry backup completed!
pause
