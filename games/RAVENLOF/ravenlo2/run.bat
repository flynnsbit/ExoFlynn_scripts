:menu
cd ravenlo2
@echo off
cls
echo.
echo Press 1 for Ravenloft: Stone Prophet w/ SoundBlaster
echo Press 2 for Ravenloft: Stone Prophet w/ Sound Canvas
echo Press 3 to Transfer a Character from a Previous Game
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto tran
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SOUND.CFG
copy .\sb16\*.*
cls
@SP
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SOUND.CFG
copy .\sc55\*.*
cls
@SP
goto quit

:tran
MD STRAHD
cd ..
cls
echo.
echo To transfer a character from Ravenloft: Strahd's Possession, please
echo ensure the following:
echo 1: Ravenloft: Strahd's Possession is installed
echo 2: You have created a character within the game
echo 3: Once copied, start the game, select "Import Characters"
echo    Click the DOWN arrow and select D>STRAHD
echo    Click the DOWN arrow and select SAVE.DAT
echo.
if exist .\ravenlof\SAVE01\*.dat echo Press A to Transfer from Ravenloft Slot 1
if not exist .\ravenlof\SAVE01\*.dat echo No Save Detected in Ravenloft Slot 1
if exist .\ravenlof\SAVE02\*.dat echo Press B to Transfer from Ravenloft Slot 2
if not exist .\ravenlof\SAVE02\*.dat echo No Save Detected in Ravenloft Slot 2
if exist .\ravenlof\SAVE03\*.dat echo Press C to Transfer from Ravenloft Slot 3
if not exist .\ravenlof\SAVE03\*.dat echo No Save Detected in Ravenloft Slot 3
if exist .\ravenlof\SAVE04\*.dat echo Press D to Transfer from Ravenloft Slot 4
if not exist .\ravenlof\SAVE04\*.dat echo No Save Detected in Ravenloft Slot 4
if exist .\ravenlof\SAVE05\*.dat echo Press E to Transfer from Ravenloft Slot 5
if not exist .\ravenlof\SAVE05\*.dat echo No Save Detected in Ravenloft Slot 5
if exist .\ravenlof\SAVE06\*.dat echo Press F to Transfer from Ravenloft Slot 6
if not exist .\ravenlof\SAVE06\*.dat echo No Save Detected in Ravenloft Slot 6
if exist .\ravenlof\SAVE07\*.dat echo Press G to Transfer from Ravenloft Slot 7
if not exist .\ravenlof\SAVE07\*.dat echo No Save Detected in Ravenloft Slot 7
if exist .\ravenlof\SAVE08\*.dat echo Press H to Transfer from Ravenloft Slot 8
if not exist .\ravenlof\SAVE08\*.dat echo No Save Detected in Ravenloft Slot 8
if exist .\ravenlof\SAVE09\*.dat echo Press I to Transfer from Ravenloft Slot 9
if not exist .\ravenlof\SAVE09\*.dat echo No Save Detected in Ravenloft Slot 9
if exist .\ravenlof\SAVE10\*.dat echo Press J to Transfer from Ravenloft Slot 10
if not exist .\ravenlof\SAVE10\*.dat echo No Save Detected in Ravenloft Slot 10
echo Press R to return to the Main Menu
echo.
choice /C:ABCDEFGHIJR /N Please Choose:

if errorlevel = 11 goto menu
if errorlevel = 10 goto SLOT10
if errorlevel = 9 goto SLOT9
if errorlevel = 8 goto SLOT8
if errorlevel = 7 goto SLOT7
if errorlevel = 6 goto SLOT6
if errorlevel = 5 goto SLOT5
if errorlevel = 4 goto SLOT4
if errorlevel = 3 goto SLOT3
if errorlevel = 2 goto SLOT2
if errorlevel = 1 goto SLOT1

:SLOT1
@copy ..\ravenlof\SAVE01\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE01\*.* goto fail
goto menu

:SLOT2
@copy ..\ravenlof\SAVE02\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE02\*.* goto fail
goto menu

:SLOT3
@copy ..\ravenlof\SAVE03\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE03\*.* goto fail
goto menu

:SLOT4
@copy ..\ravenlof\SAVE04\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE04\*.* goto fail
goto menu

:SLOT5
@copy ..\ravenlof\SAVE05\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE05\*.* goto fail
goto menu

:SLOT6
@copy ..\ravenlof\SAVE06\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE06\*.* goto fail
goto menu

:SLOT7
@copy ..\ravenlof\SAVE07\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE07\*.* goto fail
goto menu

:SLOT8
@copy ..\ravenlof\SAVE08\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE08\*.* goto fail
goto menu

:SLOT9
@copy ..\ravenlof\SAVE09\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE09\*.* goto fail
goto menu

:SLOT10
@copy ..\ravenlof\SAVE10\*.* .\ravenlo2\strahd\
if not exist .\ravenlof\SAVE10\*.* goto fail
goto menu

:FAIL
cls
echo.
echo No Save detected in that slot. Nothing was imported.
echo.
pause
goto menu

:quit
exit