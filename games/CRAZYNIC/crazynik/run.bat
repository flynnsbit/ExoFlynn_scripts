@echo off
:menu
cls
echo.
echo Welcome to Crazy Nick's Software Picks.
echo.
echo Press 1 for Leisure Suit Larry's Casino
echo Press 2 for King Graham's Board Game Challenge
echo Press 3 for Parlor Games With Laura Bow
echo Press 4 for Robin Hood's Game Of Skill And Chance
echo Press 5 for Roger Wilco's Spaced Out Game Pack
echo Press 6 to Quit
echo.
choice /C:123456 /N

IF ERRORLEVEL = 6 GOTO end
IF ERRORLEVEL = 5 GOTO sq
IF ERRORLEVEL = 4 GOTO robin
IF ERRORLEVEL = 3 GOTO parlor
IF ERRORLEVEL = 2 GOTO kq
IF ERRORLEVEL = 1 GOTO larry

:larry
cd larry
scidhuv -s
cd ..
goto menu

:kq
cd kq
scidhuv -s
cd ..
goto menu

:parlor
cd parlor
scidhuv -s
cd ..
goto menu

:robin
cd robin
scidhuv -s
cd..
goto menu

:sq
cd sq
scidhuv -s
cd ..
goto menu

:end