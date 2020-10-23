:menu
@echo off
cls
echo.
echo Press 1 for General Budda's Labyrinth Episode 1: The Orbs of Destruction
echo Press 2 for General Budda's Labyrinth Episode 2: Evil Secrets
echo Press 3 for General Budda's Labyrinth Episode 3: General Budda's Lair
echo Press 4 for General Budda's Labyrinth Editor
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto bio4
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
GBL1
goto menu

:bio2
cls
GBL2
goto menu

:bio3
cls
GBL3
goto menu

:bio4
cls
GBLEDIT
goto menu

:quit
exit