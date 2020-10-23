:menu
@echo off
cls
echo.
echo Starflight 2 overwrites the games executable files with your current
echo progress. 
echo.
echo If you have played before and want to backup your current game status,
echo use option 3. If things go wrong and you would like to return to it,
echo then use option 4.
echo.
echo Press 1 to continue your current game
echo Press 2 to start a new game
echo Press 3 to backup your current game
echo Press 4 to restore your last backup
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto restore
if errorlevel = 3 goto backup
if errorlevel = 2 goto new
if errorlevel = 1 goto cont

:cont
cls
STARFLT2
goto quit

:new
copy .\state\*.* .\
cls
@starflt2
goto quit

:backup
cls
@copy *.com .\backup\
cls
echo.
echo Game Sucessfully Backed-Up.
echo.
pause
goto menu

:restore
cls
@copy .\backup\*.* .\
cls
echo.
echo Game Sucessfully Restored.
echo.
pause
goto menu

:quit
exit