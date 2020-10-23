:menu
@echo off
cls
echo.
echo Press 1 for Wishbringer
echo Press 2 for Wishbringer w/ Amiga Text
echo Press 3 for Wishbringer Solid Gold Edition
echo Press 4 to Quit
echo.
echo The Solid Gold re-release included a built in hint
echo system. Typing HINT will activiate it.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto GOLD
if errorlevel = 2 goto AMIGA
if errorlevel = 1 goto FROTZ

:FROTZ
cls
@frotz -d 0 wishbrin.dat
goto quit

:AMIGA
cls
@frotz -d 5 wishbrin.dat
goto quit

:GOLD
cd wish
cls
@frotz -d 0 wishbrin.z5
goto quit

:quit
exit