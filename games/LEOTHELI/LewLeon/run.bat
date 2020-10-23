:menu
echo off
cls
echo.
echo Press 1 for Leo the Lion
echo Press 2 for Lew Leon (Polish version)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto POL
if errorlevel = 1 goto ENG

:ENG
imgset ide10 "/cd/LewLeon/leothel.iso"


pause
cd LONGSOFT
cls
slowread
call LEO
goto quit

:POL
imgset ide10 "/cd/LewLeon/lewleon.img"


pause
cd LONGSOFT
cls
call LEW
goto quit

:quit
exit
