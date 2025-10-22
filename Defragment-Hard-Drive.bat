@echo off
title Hard Drive Defragmenter
color 0E
echo.
echo ========================================
echo          Hard Drive Defragmenter
echo ========================================
echo.
echo Defragmenting drive C:...
echo.
powershell -command "Optimize-Volume -DriveLetter C -Defrag"
echo.
echo Defragmentation completed!
echo.
echo Press any key to exit...
pause >nul
echo.
