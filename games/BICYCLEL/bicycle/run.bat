@echo off 
:menu
cls
echo.
echo Press 1 for Bicycle Bridge
echo Press 2 for Bicycle Cribbage
echo Press 3 for Bicycle Poker
echo Press 4 for Bicycle Solitaire
echo Press 5 to Quit
echo.
choice /C:12345 /N

if errorlevel = 5 goto end
if errorlevel = 4 goto soli
if errorlevel = 3 goto poke
if errorlevel = 2 goto crib
if errorlevel = 1 goto brid

:brid
cd bridge
bridge
cd ..
goto menu

:crib
cd crib
cribbage
cd ..
goto menu

:poke
cd poker
poker
cd ..
goto menu

:soli
cd soli
sol
cd ..
goto menu

:end