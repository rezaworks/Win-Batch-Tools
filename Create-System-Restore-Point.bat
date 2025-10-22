@echo off
echo Creating system restore point...
powershell -command "Checkpoint-Computer -Description 'Manual Restore Point'"
echo Restore point created!
pause
