@echo off
echo Cleaning Recycle Bin...
powershell -command "Clear-RecycleBin -Force"
echo Recycle Bin cleaned!
pause
