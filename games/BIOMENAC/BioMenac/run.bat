:menu
@echo off
cls
echo.
echo Press 1 for BioMenace Episode 1: Dr. Mangle's Lab
echo Press 2 for BioMenace Episode 2: The Hidden Lab
echo Press 3 for BioMenace Episode 3: Master Cain
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
BioPatch.exe
BMENACE1
goto menu

:bio2
cls
BioPatch.exe
BMENACE2
goto menu

:bio3
cls
BioPatch.exe
BMENACE3
goto menu

:quit
exit