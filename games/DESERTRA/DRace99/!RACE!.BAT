@echo off
cls
if "%1"=="nosound" goto nosound
copy sound sound.mod > nul
cmodtsr sound.mod

:nosound
type title.asc
if exist main.dat ren main.dat main.bat
pause > nul

:menu
mode co40
cls
echo.
echo.
echo.
echo.
echo         WHAT DO YOU WANT TO DO?
echo.
echo   Press the first letter of the option.
echo.
echo.
echo               Start game.
echo               ~
echo.
echo               Read instructions.
echo               ~
echo.
echo               View credits.
echo               ~
echo.
echo               Quit.
echo               ~

:choiss
choice /c:srvq /n 
if errorlevel 255 goto choiss
if errorlevel 4 goto end
if errorlevel 3 goto credits
if errorlevel 2 goto instr
if errorlevel 1 goto game
if errorlevel 0 goto choiss

:credits
cls
mode co40
echo.
echo.
echo THIS ONE WAS CREATED BY AL-NAJJIR,
echo RESIDENT MUSICIAN IN ASPIRINE.
echo.
echo PARTY VERSION USES ALSO MOD PLAYA'
echo BY FLAP/CAPACALA
echo.
echo COPYLEFT 1999 BLABLABLA
echo.
echo CHECK-OUT HIS SITE FOR SOME MORE 
echo.
echo FRESH TEXT STUFF:
echo.
echo WWW.PROMAIL.PL/~ALNAJJIR
echo.
echo Press something to go to previous
echo menu ...
pause > nul
goto menu

:instr
mode co80
cls
type instruct.txt
echo.
echo.
echo                              Press something ...
pause > nul
goto menu

:game
mode co80
call main s 1 2 1 2 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38
goto menu

:end
if exist main.bat ren main.bat main.dat 
del *.pos > nul
if exist sound.mod goto soundoff
goto exit

:soundoff
:: ren sound.mod sound
del sound.mod
cmodtsr.exe

:exit
mode co80
cls

