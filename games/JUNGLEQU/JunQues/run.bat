:menu
@echo off
cls
echo.
echo Jungle Quest is a book that teaches programming.  It is included
echo as the manual for this game.  As you read through, it introduces 5
echo programs to type in and run on your computer.  They have been typed
echo up here and are ready to run.  As you read the story, run the programs
echo below as needed.
echo.
echo Please only use capital letters, as these programs do not recognize
echo lower case.
echo.
echo Press 1 for Program 1: The Encoder/Decoder
echo Press 2 for Program 2: Element Analysis
echo Press 3 for Program 3: The Idol's Eye
echo Press 4 for Program 4: Maze
echo Press 5 for Program 5: Beam Deflector
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto bas5
if errorlevel = 4 goto bas4
if errorlevel = 3 goto bas3
if errorlevel = 2 goto bas2
if errorlevel = 1 goto bas1

:bas1
cls
gwbasic prog1.bas
goto menu

:bas2
cls
gwbasic prog2.bas
pause
goto menu

:bas3
cls
gwbasic prog3.bas
goto menu

:bas4
cls
bwbasic prog4.bas
goto menu

:bas5
cls
bwbasic prog5.bas
pause
goto menu

:quit
exit