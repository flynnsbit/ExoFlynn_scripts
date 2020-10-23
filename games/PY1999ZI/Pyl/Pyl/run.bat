:menu
@echo off
cls
echo.
echo Press 1 for Pyl
echo Press 2 for Pyl w/ 3DFX
echo Press 3 to Quit
echo.
echo This game has been modified with an English Translation.
echo.
echo To play the original Polish version, press 5.
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto polish
if errorlevel = 4 goto polish
if errorlevel = 3 goto quit
if errorlevel = 2 goto 3dfx
if errorlevel = 1 goto no3dfx

:no3dfx
copy .\no3dfx\*.* .\
cls
@PYL
goto quit

:3dfx
copy .\3dfx\*.* .\
cls
@PYL
goto quit

:polish
d:
cls
@pyl
goto quit

:quit
exit