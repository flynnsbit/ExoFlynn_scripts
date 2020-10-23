:menu
@echo off
cls
echo.
echo Press 1 for Night of the Walking Dead
echo Press 2 for Frankenstein's Legacy
echo Press 3 for The Sea Phantom
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
dead
goto menu

:bio2
cls
legacy
goto menu

:bio3
cls
phantom
goto menu

:quit
exit