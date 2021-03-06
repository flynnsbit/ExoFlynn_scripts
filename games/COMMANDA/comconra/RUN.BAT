:menu
echo off
cls
echo.
echo Press 1 for Command & Conquer: Red Alert Allied Campaign
echo Press 2 for Command & Conquer: Red Alert Soviet Campaign
echo Press 3 for Command & Conquer: Red Alert Aftermath
echo Press 4 for Command & Conquer: Red Alert Counter Strike
echo Press 5 to Quit
echo.
echo This game contains 4 discs. The choice above loads the required
echo disc for that campaign. If you attempt to start a different
echo campaign than the one you select here, you will have to hit
echo ctrl-f4 to switch through the mounted CD's until you find the
echo right one.
echo.
echo To play the hidden campaign, choose Counterstrike and hold
echo SHIFT while clicking on the speaker on the main menu.
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CS
if errorlevel = 3 goto AM
if errorlevel = 2 goto RAS
if errorlevel = 1 goto RAA

:RAA
imgset ide10 "/cd/comconra/redal1.iso"


pause
cls
dos32a game.dat
goto quit

:RAS
imgset ide10 "/cd/comcon/redal2.iso"
pause
cls
dos32a game.dat
goto quit

:AM
imgset ide10 "/cd/comcon/redal4.iso"
pause
cls
dos32a game.dat
goto quit

:CS
imgset ide10 "/cd/comcon/redal3.iso"
pause
cls
dos32a game.dat
goto quit

:quit
exit
