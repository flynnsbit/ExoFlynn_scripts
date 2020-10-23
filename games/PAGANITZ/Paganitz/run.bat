:menu
@echo off
cls
echo.
echo Press 1 for Paganitzu Part 1: Romancing the Rose
echo Press 2 for Paganitzu Part 2: Quest for the Silver Dagger
echo Press 3 for Paganitzu Part 3: Jewel of the Yucatan
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
paga1 -E -K -S
goto menu

:bio2
cls
paga2  -E -K -S
goto menu

:bio3
cls
paga3  -E -K -S
goto menu

:quit
exit