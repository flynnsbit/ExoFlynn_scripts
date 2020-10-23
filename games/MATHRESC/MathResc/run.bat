@echo off
cls
echo.
echo Press 1 for Math Rescue: Episode 1
echo Press 2 for Math Rescue: Episode 2
echo Press 3 for Math Rescue: Episode 3
echo Press 4 to Quit
echo.
choice /c:1234 /n Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto ep3
if errorlevel = 2 goto ep2
if errorlevel = 1 goto ep1

:ep1
cls
mr1
goto quit

:ep2
cls
mr2
goto quit

:ep3
cls
mr3
goto quit

:quit