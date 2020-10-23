:menu
@echo off
cls
echo.
echo Press 1 for Screamer 2 Low Resolution
echo Press 2 for Screamer 2 High Resolution
echo Press 3 for Screamer 2 3DFX
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto 3dfx
if errorlevel = 2 goto lo
if errorlevel = 1 goto hi

:hi
aspect false
cd s2
cls
start65l
cd ..
goto menu

:lo
cd s2
cls
start65h
cd ..
goto menu

:3dfx
cls
cd s2
S2_3DFX
cd ..
goto menu

:quit
exit