:menu
@echo off
cls
echo.
echo Press 1 to run the GameScape Compiler
echo Press 2 to run the GameScape Editor
echo Press 3 to play the included Sample Adventure
echo Press 4 to play the included Easy Adventure
echo Press 5 to play the included Test Adventure
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto bio5
if errorlevel = 4 goto bio4
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
GSCAPE
goto menu

:bio2
cls
GSEDIT
goto menu

:bio3
cls
SCAPERUN SAMPLE
goto menu

:bio4
cls
SCAPERUN EASY
goto menu

:bio5
cls
SCAPERUN TEST
goto menu
:quit
exit