:menu
@echo off
cls
echo.
echo Press 1 for Worlds of Legend: Son of the Empire 
echo Press 2 to Transfer Characters from The Four Crystals of Trazere
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto TRAN
if errorlevel = 1 goto GAME

:GAME
c:
cls
@call empire
goto quit

:TRAN
cls
echo.
echo This will copy over your save files from The Four Crystals of Trazere.
echo For this to work, The Four Crystals of Trazere must be installed and you
echo must have created a save game.
echo.
echo Once you start the game, press F1 to load a game, then press F4 to import
echo a save. Then type your save slot number.
echo.
@e:
if exist .\4crysTr\LEGEND00.SAV echo Save Slot 0 Detected. Press A to import it.
if exist .\4crysTr\LEGEND01.SAV echo Save Slot 1 Detected. Press B to import it.
if exist .\4crysTr\LEGEND02.SAV echo Save Slot 2 Detected. Press C to import it.
if exist .\4crysTr\LEGEND03.SAV echo Save Slot 3 Detected. Press D to import it.
if exist .\4crysTr\LEGEND04.SAV echo Save Slot 4 Detected. Press E to import it.
if exist .\4crysTr\LEGEND05.SAV echo Save Slot 5 Detected. Press F to import it.
if exist .\4crysTr\LEGEND06.SAV echo Save Slot 6 Detected. Press G to import it.
if exist .\4crysTr\LEGEND07.SAV echo Save Slot 7 Detected. Press H to import it.
if exist .\4crysTr\LEGEND08.SAV echo Save Slot 8 Detected. Press I to import it.
if exist .\4crysTr\LEGEND09.SAV echo Save Slot 9 Detected. Press J to import it.
echo Press R to Return to the previous menu.
echo.
choice /C:ABCDEFGHIJR /N Please Choose:

if errorlevel = 11 goto menu
if errorlevel = 10 goto SLOT9
if errorlevel = 9 goto SLOT8
if errorlevel = 8 goto SLOT7
if errorlevel = 7 goto SLOT6
if errorlevel = 6 goto SLOT5
if errorlevel = 5 goto SLOT4
if errorlevel = 4 goto SLOT3
if errorlevel = 3 goto SLOT2
if errorlevel = 2 goto SLOT1
if errorlevel = 1 goto SLOT0

:SLOT0
cls
copy .\4crysTr\LEGEND00.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND00.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND00.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu

:SLOT1
cls
copy .\4crysTr\LEGEND01.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND01.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND01.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu


:SLOT2
cls
copy .\4crysTr\LEGEND02.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND02.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND02.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu


:SLOT3
cls
copy .\4crysTr\LEGEND03.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND03.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND03.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu


:SLOT4
cls
copy .\4crysTr\LEGEND04.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND04.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND04.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu


:SLOT1
cls
copy .\4crysTr\LEGEND05.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND05.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND05.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu


:SLOT6
cls
copy .\4crysTr\LEGEND06.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND06.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND06.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu


:SLOT7
cls
copy .\4crysTr\LEGEND07.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND07.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND07.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu


:SLOT8
cls
copy .\4crysTr\LEGEND08.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND08.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND08.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu


:SLOT9
cls
copy .\4crysTr\LEGEND09.SAV .\wlsonemp\
echo.
if exist .\wlsonemp\LEGEND09.SAV echo Sucessfully copied.
if not exist .\wlsonemp\LEGEND09.SAV echo Save file not found. Nothing was Imported.
echo.
pause
goto menu

:quit
exit