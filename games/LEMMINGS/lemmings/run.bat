:menu
@echo off
cls
echo.
echo Press 1 for Lemmings w/ Adlib Music
echo Press 2 for Lemmings w/ CD Music
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
call lemmings
goto menu

:epi2
cls
cd CDLEMM
lemmings
cd ..
goto menu

:quit
exit