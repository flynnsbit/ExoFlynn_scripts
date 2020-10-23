:menu
@echo off
cls
echo.
echo Press 1 for X-Mas Lemmings 1991
echo Press 2 for X-Mas Lemmings 1992
echo Press 3 for Holiday Lemmings 1993
echo Press 4 for Holiday Lemmings 1994
echo Press 5 to Quit 
echo.
choice /C:12345 /N

if errorlevel = 5 goto end
if errorlevel = 4 goto 94
if errorlevel = 3 goto 93
if errorlevel = 2 goto 92
if errorlevel = 1 goto 91

:91
cd 1991
call lemmings
cd..
goto menu

:92
cd 1992
call lemmings
cd ..
goto menu

:93
cd 1993
VGALEMMI.EXE
cd ..
goto menu

:94
cd 1994
call lemmings
cd ..
goto menu

:end