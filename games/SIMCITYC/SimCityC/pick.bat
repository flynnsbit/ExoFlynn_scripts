@echo off
:choc
cls
echo.
echo Press 1 to play Simcity
echo Press 2 to change settings
rem echo Press 3 to launch the Terrain Editor
echo Press 3 to Quit
echo.
echo Note: Graphics packs have been installed.
echo Choose "Load Graphics" to pick between them.
echo.
choice /c:123 /N

if errorlevel = 3 goto quit
rem if errorlevel = 3 goto ter
if errorlevel = 2 goto set
if errorlevel = 1 goto sim

:sim
cls
simcity
goto quit

:set
cls
settings
goto choc

:ter
cls
TERRAIN
goto choc

:quit