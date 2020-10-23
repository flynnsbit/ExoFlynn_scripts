:menu
@echo off
cls
echo.
echo Press 1 for ROBOT Junior
echo Press 2 for ROBOT I
echo Press 3 for ROBOT II
echo Press 4 for ROBOT III
echo Press 5 for ROBOT IV
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto epi5
if errorlevel = 4 goto epi4
if errorlevel = 3 goto epi3
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
call robjun
goto menu

:epi2
cls
call robot1
goto menu

:epi3
cls
call robot2
goto menu

:epi4
cls
call robot3
goto menu

:epi5
cls
call robot4
goto menu

:quit
exit