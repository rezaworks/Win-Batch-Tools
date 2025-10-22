@echo off
echo Disabling firewall...
powershell -command "Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False"
echo Firewall disabled!
pause
