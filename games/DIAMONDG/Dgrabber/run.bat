:menu
@echo off
cls
echo.
echo Press 1 for Diamond Grabber 1
echo Press 2 for Diamond Grabber 2
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd 1
dgrab
cd ..
goto menu

:bio2
cls
cd 2
dgrab2
cd ..
goto menu

:quit
exit