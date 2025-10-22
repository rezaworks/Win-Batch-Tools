@echo off
echo Creating new user account...
powershell -command "New-LocalUser -Name 'NewUser' -Password (ConvertTo-SecureString 'Password123' -AsPlainText -Force) -FullName 'New User' -Description 'Created by script'"
echo User account created!
pause
