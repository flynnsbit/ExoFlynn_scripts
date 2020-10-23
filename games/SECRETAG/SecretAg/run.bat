:menu
@echo off
cls
echo.
echo Press 1 for Secret Agent Mission 1: The Hunt for Red Rock Rover
echo Press 2 for Secret Agent Mission 2: Kill Again Island
echo Press 3 for Secret Agent Mission 3: Dr. No Body
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
SAM1
goto menu

:bio2
cls
SAM2
goto menu

:bio3
cls
SAM3
goto menu

:quit
exit