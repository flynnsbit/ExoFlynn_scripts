:menu
@echo off
cls
echo.
echo Press 1 for Bicycle Holiday: Bridge
echo Press 2 for Bicycle Holiday: Cribbage
echo Press 3 for Bicycle Holiday: Poker
echo Press 4 for Bicycle Holiday: Solitaire
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SOLI
if errorlevel = 3 goto POKE
if errorlevel = 2 goto CRIB
if errorlevel = 1 goto BRID

:BRID
cls
@bridge
goto quit

:CRIB
cls
@CRIBBAGE
goto quit

:POKE
cls
@POKER
goto quit

:SOLI
cls
@SOL
goto quit

:quit
exit