:menu
@echo off
cls
echo.
echo Press 1 for Rock Invaders
echo Press 2 for Rock Man
echo Press 3 for Rock Out
echo Press 4 for Rock Tris
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto TRIS
if errorlevel = 3 goto OUT
if errorlevel = 2 goto MAN
if errorlevel = 1 goto INV

:INV
cls
@rockinv
goto menu

:MAN
cls
@rockman
goto menu

:OUT
cls
@rockout
goto menu

:TRIS
cls
@rocktris
goto menu

:quit
exit