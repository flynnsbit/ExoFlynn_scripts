:menu
@echo off
cls
echo.
echo Press 1 for Word Whiz Part 1
echo Press 2 for Word Whiz Part 2
echo Press 3 for Word Whiz Part 3
echo Press 4 for Word Whiz Part 4
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose

if errorlevel = 5 goto quit
if errorlevel = 4 goto ww4
if errorlevel = 3 goto ww3
if errorlevel = 2 goto ww2
if errorlevel = 1 goto ww1

:ww1
cls
WW1
goto menu

:ww2
cls
WW2
goto menu

:ww3
cls
WW3
goto menu

:ww4
cls
WW4
goto menu

:quit