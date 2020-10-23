:menu
@echo off
cls
echo.
echo Press 1 to read the Story
echo Press 2 to read the Instructions
echo Press 3 to play Marco Polo
echo Press 4 to return to the menu.
echo.
choice /C:1234 /N Please Choose: 

if errorlevel = 4 goto end
if errorlevel = 3 goto marco
if errorlevel = 2 goto inst
if errorlevel = 1 goto story

:story
cls
more marco_s.txt
pause
goto menu

:inst
cls
more marco_i.txt
pause
goto menu

:marco
cls
@gwbasic marco.bas
goto menu


:end