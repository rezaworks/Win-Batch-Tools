@echo off
echo Defragmenting drive C:...
powershell -command "Optimize-Volume -DriveLetter C -Defrag"
echo Defragmentation completed!
pause
