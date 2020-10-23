:menu
@echo off
cls
echo.
echo Press 1 for Traffic Department 2192 Episode Alpha: Process of Elimination
echo Press 2 for Traffic Department 2192 Episode Beta: Cyborg Psychosis
echo Press 3 for Traffic Department 2192 Episode Gamma: Ultimatum
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd td
td1
cd ..
goto menu

:bio2
cls
cd td
td2
cd ..
goto menu

:bio3
cls
cd td
td3
cd ..
goto menu

:quit
exit