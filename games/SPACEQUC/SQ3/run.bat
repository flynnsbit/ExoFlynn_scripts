:menu
@echo off
cls
echo.
echo Press 1 for Space Quest III w/ SoundBlaster
echo Press 2 for Space Quest III w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
copy .\config\RESOURCE.SB .\RESOURCE.CFG
CONFIG -set "mididevice=default"
cls
@sierra
goto quit

:MT32
copy .\config\RESOURCE.M32 .\RESOURCE.CFG
CONFIG -set "mididevice=mt32"
cls
@sierra
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@sierra
goto quit

:quit
exit