:menu
@echo off
cls
echo.
echo Press 1 for Magic Candle 2: The Four and Forty w/ SoundBlaster
echo Press 2 for Magic Candle 2: The Four and Forty w/ MT-32
echo Press 3 to Transfer Characters from Magic Candle 1
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto TRAN
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@mc2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@mc2
goto quit

:TRAN
cls
echo.
echo This will copy over your save files from Magic Candle 1. For this
echo to work, Magic Candle 1 must be installed and you must have created
echo a save game.
echo.
echo Once you start the game, select "Bring" from the menu to import your
echo characters. If it prompts for a path it is "MC2"
echo.
@e:
if exist .\magcand1\*.mci echo Save Games *ARE* detected in your Magic Candle 1 Folder
if not exist .\magcand1\*.mci echo Save Games *ARE NOT* detected in your Magic Candle 1 Folder
echo.
pause
echo.
if exist .\magcand1\*.mci echo Save Game has been Imported.
@copy .\magcand1\*.mci .\magcand2\mc2\
@copy .\magcand1\*.mcs .\magcand2\mc2\
echo.
@c:
pause
goto menu

:quit
exit