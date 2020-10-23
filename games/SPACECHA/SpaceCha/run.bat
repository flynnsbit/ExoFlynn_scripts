:menu
@echo off
cls
echo.
echo Press 1 for Space Chase Part 1: City Under Siege
echo Press 2 for Space Chase Part 2: Fortress of Doom!
echo Press 3 for Space Chase Part 3: Showdown in Orbit
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd sc1
storm1
cd ..
goto menu

:bio2
cls
cd sc2
storm2
cd ..
goto menu

:bio3
cls
cd sc3
storm3
cd ..
goto menu

:quit
exit