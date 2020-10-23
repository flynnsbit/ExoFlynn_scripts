:menu
@echo off
cls
echo.
echo Press 1 for Realms of Arkania 3: Shadows over Riva
echo Press 2 to Transfer a Save from a Previous Game
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto TRAN
if errorlevel = 1 goto GAME

:GAME
cls
@RIVA
goto quit

:tran
cd ..
cls
echo.
echo To transfer a character from Realms of Arkania II: Star Trail,
echo please ensure the following:
echo 1: Realms of Arkania I or II is installed
echo 2: You have created your characters and saved them in a party.
echo.
echo Once you start Realms of Arkania III, load your old game. This will
echo bring in your original party members.
echo.
echo Press 1 to Transfer from Realms of Arkania: Blade of Destiny
echo Press 2 to Transfer from Realms of Arkania II: Star Trail
echo Press 3 to Return to the Previous Menu
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto STAR
if errorlevel = 1 goto BLADE

:BLADE
@copy ..\rarkani1\*.chr .\rarkani3\GAMES\
@copy ..\rarkani1\*.gam .\rarkani3\GAMES\
cd rarkani3
goto menu

:STAR
@copy ..\STAR\GAMES\*.chr .\rarkani3\GAMES\
@copy ..\STAR\GAMES\*.gam .\rarkani3\GAMES\
cd rarkani3
goto menu

:quit
exit