:menu
@echo off
cls
echo.
echo Press 1 for Leather Goddesses of Phobos 
echo Press 2 for Leather Goddesses of Phobos Solid Gold Edition
echo Press 3 to Quit
echo.
echo The Solid Gold re-release included a built in hint
echo system. Typing HINT will activiate it.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto GOLD
if errorlevel = 1 goto FROTZ

:FROTZ
cls
@leather
goto quit

:GOLD
cd phobos
cls
@leather
rem @frotz -d 0 Planetfa.dat
goto quit

:quit
exit