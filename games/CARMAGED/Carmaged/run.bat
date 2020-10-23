echo off
:menu
cls
echo.
echo If you have chosen to run the game in fullscreen mode and are
echo presented with a black screen after the intro cinematics play,
echo right click the mouse to bring back the in-game menu.
echo.
echo Press 1 for Carmageddon
echo Press 2 for Carmageddon HiRes
echo Press 3 for Carmageddon 3DFX
echo.
echo Press 4 for Carmageddon Splat Pack
echo Press 5 for Carmageddon Splat Pack Hires
echo Press 6 for Carmageddon Splat Pack 3DFX
echo Press 7 to Quit
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto splat3d
if errorlevel = 5 goto splat3dhi
if errorlevel = 4 goto splat
if errorlevel = 3 goto car3d
if errorlevel = 2 goto car3dhi
if errorlevel = 1 goto car

:car
cls
imgset ide10 "/cd/Carmaged/carmage.cue"


pause
cd carma
cls
carma
goto quit

:car3d
cls
imgset ide10 "/cd/Carmaged/carmage.cue"


pause
cd carma
cls
Voodo2C.exe
goto quit

:car3dhi
cls
imgset ide10 "/cd/Carmaged/carmage.cue"


pause
cd carma
cls
voodo2c.exe -novoodoo -hires
goto quit

:splat
cls
imgset ide10 "/cd/Carmaged/splatpa.cue"


pause
cd carsplat
cls
carma
goto quit

:splat3d
cls
imgset ide10 "/cd/Carmaged/splatpa.cue"


pause
cd carsplat
cls
voodo2S.exe
goto quit

:splat3dhi
cls
imgset ide10 "/cd/Carmaged/splatpa.cue"


pause
cd carsplat
cls
voodo2S.exe -novoodoo -hires
goto quit

:quit
exit
