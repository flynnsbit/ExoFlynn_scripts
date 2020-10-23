:menu
@echo off
cls
echo.
echo Press 1 for Trivia Whiz - Vol. 1
echo Press 2 for Trivia Whiz - Vol. 2
echo Press 3 for Trivia Whiz - Vol. 3
echo Press 4 for Trivia Whiz - Vol. 4
echo Press 5 for Trivia Whiz - Vol. 5
echo Press 6 to Quit
echo.
choice /c:123456 /N Please Choose

if errorlevel = 6 goto quit
if errorlevel = 5 goto tw5
if errorlevel = 4 goto tw4
if errorlevel = 3 goto tw3
if errorlevel = 2 goto tw2
if errorlevel = 1 goto tw1

:tw1
cls
tw1
goto menu

:tw2
cls
tw2
goto menu

:tw3
cls
tw3
goto menu

:tw4
cls
tw4
goto menu

:tw5
cls
tw5
goto menu


:quit