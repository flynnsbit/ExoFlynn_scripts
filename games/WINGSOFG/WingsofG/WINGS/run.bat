:menu
@echo off
cls
echo.
echo Press 1 for Wings of Glory w/ SoundBlaster
echo Press 2 for Wings of Glory w/ Sound Canvas
echo Press 3 to Quit
echo.
echo This package includes a patch known as the Customer Request 
echo Update. The updates are not documented however, so here are the
echo new features:
echo.
echo Alt S - Allows the plane to spin much easier. Only works if Stalls are on
echo Alt R - Faster rotation response. Makes the plane act like a jet.
echo Alt P - Black Outs. Allows your pilot to black out.
echo F8 - Lewis Gun View. Gives 45 degree upward angle view.echo
echo Alt U - Unlimited Fuel
echo This also adds Far Terrain Clipping automatically, to relieve line blocking
echo in the terrain from distances.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del WG.CFG
copy .\sb16\*.*
cls
@WG
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del WG.CFG
copy .\sc55\*.*
cls
@WG
goto quit

:quit
exit