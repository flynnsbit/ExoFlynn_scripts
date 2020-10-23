:menu
echo off
cls
echo.
echo Press 1 for Command & Conquer GDI Campaign
echo Press 2 for Command & Conquer NOD Campaign
echo Press 3 for Command & Conquer Covert Operations
echo Press 4 for Command & Conquer Hidden Campaign
echo Press 5 to Quit
echo.
echo This game contains 3 discs. The choice above loads the required
echo disc for that campaign. If you attempt to start a different
echo campaign than the one you select here, you will have to hit
echo ctrl-f4 to switch through the mounted CD's until you find the
echo right one.
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto FUNPARK
if errorlevel = 3 goto COVERT
if errorlevel = 2 goto NOD
if errorlevel = 1 goto GDI

:GDI
imgset ide10 "/cd/comcon/comma1.iso"


pause
cls
dos32a game.new
goto menu

:NOD
imgset ide10 "/cd/comcon/comma2.iso"
pause
cls
dos32a game.new
goto menu

:COVERT
imgset ide10 "/cd/comcon/cover3.cue"
pause
cls
dos32a game.new
goto menu

:FUNPARK
imgset ide10 "/cd/comcon/comma1.iso"


pause
cls
dos32a game.new funpark
goto menu

:quit
exit
