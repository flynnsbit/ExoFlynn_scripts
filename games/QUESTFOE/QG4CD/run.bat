:menu
@echo off
cls
echo.
echo Press 1 for Quest for Glory IV: Shadows of Darkness w/ SoundBlaster
echo Press 2 for Quest for Glory IV: Shadows of Darkness w/ MT32
echo Press 3 for Quest for Glory IV: Shadows of Darkness w/ Sound Canvas
echo Press 4 to Transfer a Character from a Previous Game
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto tran
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set mididevice=default
del RESOURCE.CFG
copy .\sb16\*.*
cls
@SIERRA
goto quit
cls

:MT32
CONFIG -set mididevice=mt32
del RESOURCE.CFG
copy .\mt32\*.*
cls
@SIERRA
goto quit
cls

:SC55
CONFIG -set mididevice=fluidsynth
del RESOURCE.CFG
copy .\sc55\*.*
cls
@SIERRA
goto quit
cls

:tran
cd ..
cls
echo.
echo Characters can be transferred from any of the previous games.
echo To transfer a character, please ensure the following:
echo 1: Quest for Glory I, II, or III is installed
echo 2: You have completed the game with a character and chosen the
echo    option to export a SAV file.
echo 3: Once copied, start the game, select "Play Game", select
echo    "Import Character", and then scroll down to proper .SAV file.
echo.
echo Press 1 to Transfer from Quest for Glory I (Original)
if exist .\QG1OLD\*.sav echo         (A transferable character is detected)
if not exist .\QG1OLD\*.sav echo         (No transferrable character detected)
echo Press 2 to Transfer from Quest for Glory I (Upgrade)
if exist .\QG1NEW\*.sav echo         (A transferable character is detected)
if not exist .\QG1NEW\*.sav echo         (No transferrable character detected)
echo Press 3 to Transfer from Quest for Glory II
if exist .\QG2\*.sav echo         (A transferable character is detected)
if not exist .\QG2\*.sav echo         (No transferrable character detected)
echo Press 4 to Transfer from Quest for Glory III
if exist .\QG3E\*.sav echo         (A transferable character is detected)
if not exist .\QG3E\*.sav echo         (No transferrable character detected)
echo. 
echo Press 5 to Return to the Previous Menu
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto menu
if errorlevel = 4 goto QG3
if errorlevel = 3 goto QG2
if errorlevel = 2 goto QG1N
if errorlevel = 1 goto QG1O

:QG1N
@copy .\QG1NEW\*.sav .\QG4CD\
if not exist .\QG1NEW\*.sav goto fail
cd QG4CD
goto menu

:QG1O
@copy .\QG1OLD\*.sav .\QG4CD\
if not exist .\QG1OLD\*.sav goto fail
cd QG4CD
goto menu

:QG2
@copy .\QG2\*.sav .\QG4CD\
if not exist .\QG2\*.sav goto fail
cd QG4CD
goto menu

:QG3
@copy .\QG3E\*.sav .\QG4CD\
if not exist .\QG3E\*.sav goto fail
cd QG4CD
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