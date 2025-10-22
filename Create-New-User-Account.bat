@echo off
title User Account Creator
color 8A
echo.
echo ========================================
echo          User Account Creator
echo ========================================
echo.
echo Creating new user account...
echo.
powershell -command "New-LocalUser -Name 'NewUser' -Password (ConvertTo-SecureString 'Password123' -AsPlainText -Force) -FullName 'New User' -Description 'Created by script'"
echo.
echo User account created!
echo.
echo Press any key to exit...
pause >nul
echo.
