:menu
@echo off
cls
echo.
echo Press 1 for Prost Grand Prix 1998
echo Press 2 for Prost Grand Prix 1998 (3DFX)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto 3DFX
if errorlevel = 1 goto REG

:REG
del pgp3dfx.ini
cd PGP
cls
@call PGP
goto quit

:3DFX
copy .\CD\pgp3dfx.ini .\
cd PGP
cls
@call PGP
goto quit

:quit
exit