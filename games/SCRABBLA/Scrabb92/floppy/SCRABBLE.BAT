@echo off
rem Batch file to play the front end and then start a game of SCRABBLE from
rem hard disk.
cls
if not exist tsp.exe goto baddrive
if "%1"=="n" goto game
if "%1"=="N" goto game
intro
:game
tsp.exe %1 %2 %3 %4
goto end

:baddrive
echo.
echo ERROR : You must be in the SCRABBLE directory to play SCRABBLE.
echo.
echo Goto the correct directory on your hadr disk and then try again.
echo.

:end