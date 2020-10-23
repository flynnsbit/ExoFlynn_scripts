:menu
@echo off
cls
echo.
echo Press 1 for Word Rescue Part 1
echo Press 2 for Word Rescue Part 2
echo Press 3 for Word Rescue Part 3
echo Press 4 for Word Rescue Plus
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose

if errorlevel = 5 goto quit
if errorlevel = 4 goto wrp
if errorlevel = 3 goto wr3
if errorlevel = 2 goto wr2
if errorlevel = 1 goto wr1

:wr1
cls
wr1
goto menu

:wr2
cls
wr2
goto menu

:wr3
cls
wr3
goto menu

:wrp
cls
wrplus
goto menu

:quit