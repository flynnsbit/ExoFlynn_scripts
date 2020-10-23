:menu
@echo off
cls
echo.
echo Press 1 for Checkers
echo Press 2 for Cribbage King \ Gin King
echo Press 3 for Backgammon
echo Press 4 to Quit
echo.
choice /C:1234 /N

if errorlevel = 4 goto end
if errorlevel = 3 goto back
if errorlevel = 2 goto crib
if errorlevel = 1 goto check

:check
cd games
call checkers
pause
cd ..
goto menu

:crib
cd games
call cribgin
cd ..
goto menu

:back
cd games
call gammon
cd ..
goto menu

:end