@echo off
cls
echo.
echo Note: The main menu will claim it is Vol. 7: Monster Zoo no matter which
echo level you choose. Once you start the game you will see the actual Vol.
echo title.
echo.
echo Press 1 for Super ZZT Volume 5: Proving Grounds
echo Press 2 for Super ZZT Volume 6: Lost Forest
echo Press 3 for Super ZZT Volume 7: Monster Zoo
echo Press 4 for Super ZZT Editor
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto EDIT
if errorlevel = 3 goto VOL7
if errorlevel = 2 goto VOL6
if errorlevel = 1 goto VOL5

:VOL5
cls
@SUPERZ PROVING.SZT
goto quit

:VOL6
cls
@SUPERZ FOREST.SZT
goto quit

:VOL7
cls
@SUPERZ
goto quit

:EDIT
cls
echo.
echo Note: To go into the editor, press E at the Main Menu
echo.
pause
cls
@SUPERZ /E
goto quit

:quit