:menu
@echo off
cls
echo.
echo There are two match disks to choose from. Please select one:
echo.
echo Press 1 for DiBiase
echo Press 2 for Savage
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
@copy /y DIBIASE
cls
@MLW2
goto menu

:epi2
cls
@copy /y SAVAGE
cls
@MLW2
goto menu

:quit
exit