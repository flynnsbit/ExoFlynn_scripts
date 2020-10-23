:menu
@echo off
cls
echo.
echo Press 1 for Indianapolis Motor Speedway
echo Press 2 for the RaceCar Paint Kit
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
@cd indycar
@run2
@cd ..
goto menu

:bio2
cls
@cd indycar
@PAINTKIT
@cd ..
goto menu

:quit
exit