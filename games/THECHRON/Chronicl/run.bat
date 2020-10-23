:menu
@echo off
cls
echo.
echo Press 1 for The Chronicles of Aarbron Part 1
echo Press 2 for The Chronicles of Aarbron Part 2: The Eye of the Serpent!
echo Press 3 for The Chronicles of Aarbron Part 3: The Curse of Maletoth
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
call aa1
goto menu

:bio2
cls
call aa2
goto menu

:bio3
cls
call aa3
goto menu

:quit
exit