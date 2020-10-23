:menu
@echo off
cls
echo.
echo Press 1 for Subwar 2050 w/ SoundBlaster
echo Press 2 for Subwar 2050 w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
rem CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@call SUBWAR
goto quit

:MT32
rem CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@call SUBWAR
goto quit

:quit
exit