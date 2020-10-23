:menu
@echo off
cls
echo.
echo Press 1 for The Hitchhiker's Guide to the Galaxy
echo Press 2 for The Hitchhiker's Guide to the Galaxy w/ Amiga Text
echo Press 3 for The Hitchhiker's Guide to the Galaxy Solid Gold Edition
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
@frotz -d 0 hitchhik.dat
goto quit

:AMIGA
cls
@frotz -d 5 hitchhik.dat
goto quit

:GOLD
cd HGG
cls
@frotz -d 0 hitchhik.dat
goto quit

:quit
exit