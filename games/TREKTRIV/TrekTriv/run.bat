:menu
@echo off
cls
echo.
echo Press A for Trek Trivia - Vol. 1
echo Press B for Trek Trivia - Vol. 2
echo Press C for Trek Trivia - Vol. 3
echo Press D for Trek Trivia - Vol. 4
echo Press E for Trek Trivia - Vol. 5
echo Press F for Trek Trivia - Vol. 6
echo Press G for Trek Trivia - Vol. 7
echo Press H for Trek Trivia - Vol. 8
echo Press I for Trek Trivia - Vol. 9
echo Press J for Trek Trivia - Vol. 10
echo Press Q to Quit
echo.
choice /C:ABCDEFGHIJQ /N Please Choose

if errorlevel = 11 goto quit
if errorlevel = 10 goto t10
if errorlevel = 9 goto t9
if errorlevel = 8 goto t8
if errorlevel = 7 goto t7
if errorlevel = 6 goto t6
if errorlevel = 5 goto t5
if errorlevel = 4 goto t4
if errorlevel = 3 goto t3
if errorlevel = 2 goto t2
if errorlevel = 1 goto t1

:t1
cls
Trek1
goto menu

:t2
cls
Trek2
goto menu

:t3
cls
Trek3
goto menu

:t4
cls
Trek4
goto menu

:t5
cls
Trek5
goto menu

:t6
cls
Trek6
goto menu

:t7
cls
Trek7
goto menu

:t8
cls
Trek8
goto menu

:t9
cls
Trek9
goto menu

:t10
cls
Trek10
goto menu

:quit