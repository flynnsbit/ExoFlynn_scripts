:menu
@echo off
cls
echo.
echo Press 1 for Vengeance of Excalibur w/ Tandy
echo Press 2 for Vengeance of Excalibur w/ Game Blaster
echo Press 3 for Vengeance of Excalibur w/ SoundBlaster
echo Press 4 for Vengeance of Excalibur w/ MT-32
if exist a:\START.EXE echo Press I to Import a Character from Spirit of Excalibur
echo Press Q to Quit
echo.
if not exist A:\START.EXE echo Note: It is possible to import characters from Spirit of Excalibur.
if not exist A:\START.EXE echo To do this, you must have Spirit of Excalibur installed.
if not exist A:\START.EXE echo.
choice /C:1234IQ /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto IMPORT
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto CMS
if errorlevel = 1 goto TANDY

:tandy
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cls
@vex
goto quit

:CMS
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
copy .\cms\*.* .\
cls
@vex
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@vex
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@vex
goto quit

:IMPORT
cls
echo.
echo The import process requires the initial setup process for Vengeance
echo of Excalibur to be run. When prompted: 
echo Choose A as the letter of your floppy disk
echo Choose your save file.
echo Choose your Knights
echo Choose N to run the game now.
echo.
echo After this is complete you will be returned to the first menu where
echo you can choose your preferred sound type and over write any values
echo chosen during the install process.
echo.
pause
install
goto menu

:quit
exit