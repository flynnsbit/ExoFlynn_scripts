:menu
@echo off
cls
echo.
echo Press 1 for Compaq-DOS Games v1 (1983)
echo Press 2 for Compaq-DOS Games v2 (1984)
echo Press 3 for Compaq-DOS Games v3 (1985)
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto epi3
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
cd v1
call DEMO3
cd ..
goto menu

:epi2
cls
cd v2
call DEMO3
cd ..
goto menu

:epi3
cls
cd v3
call DEMO3
cd ..
goto menu

:quit
exit