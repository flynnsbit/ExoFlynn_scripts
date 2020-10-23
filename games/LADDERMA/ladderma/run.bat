@echo off
:menu
cls
echo.
echo Press 1 for Ladderman I
echo Press 2 for Ladderman II (Missing)
echo Press 3 for Ladderman III
echo Press 4 to Quit
echo.
choice /C:1234 /N

if errorlevel = 4 goto quit
if errorlevel = 3 goto lm3
if errorlevel = 2 goto lm2
if errorlevel = 1 goto lm1

:lm3
cd 3
LADDER3.EXE
cd ..
goto quit

:lm2
cls
echo.
echo Have not found Ladderman II yet.
echo.
pause
goto menu

:lm1
cd 1
ladder
cd ..
goto quit

:quit
