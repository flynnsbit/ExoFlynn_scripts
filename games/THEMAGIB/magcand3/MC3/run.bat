:menu
@echo off
cls
echo.
echo Press 1 for Magic Candle III
echo Press 2 to Transfer Characters from Magic Candle II
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto TRAN
if errorlevel = 1 goto GAME

:GAME
cls
@mc3
goto quit

:TRAN
cls
echo.
echo This will copy over your save files from Magic Candle 2. For this
echo to work, Magic Candle 2 must be installed and you must have created
echo a save game.
echo.
echo Once you start the game, select "Bring" from the menu to import your
echo characters. If it prompts for a path it is "MC3"
echo.
@e:
if exist .\magcand2\mc2\*.mci echo Save Games *ARE* detected in your Magic Candle 2 Folder
if not exist .\magcand2\mc2\*.mci echo Save Games *ARE NOT* detected in your Magic Candle 2 Folder
echo.
pause
echo.
if exist .\magcand2\mc2\*.mci echo Save Game has been Imported.
@copy .\magcand2\mc2\*.mci .\magcand3\mc3\
@copy .\magcand2\mc2\*.mcs .\magcand3\mc3\
echo.
@c:
pause
goto menu

:quit
exit