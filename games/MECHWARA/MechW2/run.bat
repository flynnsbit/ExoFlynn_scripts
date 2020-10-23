echo off
cls
echo.
echo Press 1 to play MechWarrior 2: 31st Century Combat
echo Press 2 to play MechWarrior 2: Ghost Bear's Legacy
echo Press 3 to Quit
echo.
choice /c:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto gbl
if errorlevel = 1 goto mw2

:mw2
imgset ide10 "/cd/MechW2/mech2.cue"


pause
cd mech2
cls
call run

:gbl
imgset ide10 "/cd/MechW2/gbl.cue"


pause
cd gbl
cls
call run

:quit
exit
