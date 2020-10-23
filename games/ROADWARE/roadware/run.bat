:menu
@echo off
cls
echo.
echo Press 1 for Roadwar Europe 
echo Press 2 to Transfer a Character from Roadwar 2000 
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto TRAN
if errorlevel = 1 goto game

:game
cls
@start
goto quit

:tran
cls
echo.
echo To import your ganf from Roadwar 2000 you must first have created
echo a save file in that game. 
echo.
echo When starting Roadwar Europa, select "N" when asked to recall saved game.
echo Then select "Y" when asked if you wish to use your former gang.
echo.
echo Now just follow the prompts to load your previous save.
echo.
if not exist a:\*.rws echo No Roadwar 2000 Save Detected
if exist a:\*.rws echo Roadwar 2000 Save Detected
echo.
pause
if exist a:\*.rws copy a:\*.rws c:\roadware\
cls
echo.
if exist *.rws echo Roadwar 2000 Save Successfully Copied
if not exist *.rws echo Roadwar 2000 Import Unsuccessful
echo.
pause
cls
goto menu

:quit
