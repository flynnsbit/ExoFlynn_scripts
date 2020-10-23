:menu
@echo off
cls
echo.
echo Press 1 for Ishar 3: The Seven Gates of Infinity
echo Press 2 to Transfer a Character from a Previous Game
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto tran
if errorlevel = 1 goto GAME

:GAME
d:
cls
@call start
goto quit

:tran
cd ..
cls
echo.
echo This game supports the transfer of save files from Ishar I and Ishar II.
echo For this to work, Ishar I or Ishar II must be installed and you must have
echo created a save game.
echo.
echo Once you start Ishar III click "Load Game"
echo You will need to know the exact file name to load the save. 
echo.
@cd ishar1
echo Here is a list of the detected save files from Ishar I:
echo -------------------------------------------------------
If exist *.sav dir *.sav /B
If not exist *.sav echo No Save Files Detected
@cd ..
echo.
@cd ishar2
echo Here is a list of the detected save files from Ishar II:
echo -------------------------------------------------------
If exist *.sav dir *.sav /B
If not exist *.sav echo No Save Files Detected
@cd ..
echo.
pause
copy .\ishar1\*.sav .\ishar3\
copy .\ishar2\*.sav .\ishar3\
goto menu

:quit
exit