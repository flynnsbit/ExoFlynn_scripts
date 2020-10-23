:menu
c:
@echo off
cls
echo.
echo Press 1 for Quest for Glory II: Trial by Fire w/ SoundBlaster
echo Press 2 for Quest for Glory II: Trial by Fire w/ MT32
echo Press 3 to Transfer a Character from a Previous Game
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto TRAN
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@sierra sesource.cfg
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@sierra mesource.cfg
goto quit

:tran
f:
cls
echo.
echo To transfer a character from Quest for Glory I, please ensure
echo the following:
echo 1: Quest for Glory I is installed
echo 2: You have completed the game with a character and chosen the
echo    option to export a SAV file.
echo 3: Once copied, start the game, select "Import a Hero", and then
echo    scroll down to the proper .SAV file.
echo.
echo Press 1 to Transfer from Quest for Glory I (1989)
if exist .\QG1OLD\*.sav echo         (A transferable character is detected)
if not exist .\QG1OLD\*.sav echo         (No transferrable character detected)
echo.
echo Press 2 to Transfer from Quest for Glory I VGA (1992)
if exist .\QG1NEW\*.sav echo         (A transferable character is detected)
if not exist .\QG1NEW\*.sav echo         (No transferrable character detected)
echo.
echo Press 3 to Return to the Previous Menu
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto NEW
if errorlevel = 1 goto OLD

:old
@copy ..\QG1OLD\*.sav .\QG2\
if not exist .\QG1OLD\*.sav goto fail
cd QG2
goto menu

:new
@copy ..\QG1NEW\*.sav .\QG2\
if not exist .\QG1NEW\*.sav goto fail
cd QG2
goto menu

:fail
cls
echo.
echo No save file detected. Nothing was imported.
echo.
pause
goto menu

:quit
exit