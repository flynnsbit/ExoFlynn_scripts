:menu
@echo off
cls
echo.
echo Press 1 for Keef the Thief w/ Tandy
echo Press 2 for Keef the Thief w/ GameBlaster
echo Press 3 for Keef the Thief w/ SoundBlaster
echo Press 4 for Keef the Thief w/ MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto CMS
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
cls
@kf vga mouse tandy single 
goto quit

:CMS
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@kf vga mouse cms single 
goto quit

:SB16
CONFIG -set "mididevice=default"
cls
@kf vga mouse adlib single 
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
kf vga mouse mt32 single 
goto quit

:quit
exit