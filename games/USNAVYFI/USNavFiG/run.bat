@echo off
cls
echo.
echo Press 1 to play U.S. Navy Fighters GOLD in Navy Fighters Mode
echo Press 2 to play U.S. Navy Fighters GOLD in Marine Fighters Mode
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto marine
if errorlevel = 1 goto navy

:navy
cd usnfgold
cls
USNF
goto quit

:marine
cd usnfgold
cls
call MF
goto quit

:quit