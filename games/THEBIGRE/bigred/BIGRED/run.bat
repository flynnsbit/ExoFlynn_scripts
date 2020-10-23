:menu
@echo off
cls
echo.
echo Press 1 for Big Red Adventure w/ SoundBlaster
echo Press 2 for Big Red Adventure w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
D:
D:\sbeff
D:\adlibmsc
D:\mdrv
D:\adv -l0 -cC:\BIGRED -dD
D:\uninst
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
D:
D:\sbeff
D:\sbmidi
D:\mdrv
D:\adv -l0 -cC:\BIGRED -dD
D:\uninst
goto quit

:quit
exit