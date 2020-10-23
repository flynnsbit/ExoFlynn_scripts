:menu
@echo off
cls
echo.
echo Press 1 for Whiplash w/ SoundBlaster
echo Press 2 for Whiplash w/ MT-32
echo Press 3 for Whiplash w/ Sound Canvas
echo Press 4 for Whiplash w/ CD music
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CONFIG.INI
copy .\sb16\*.*
cls
goto video

:MT32
CONFIG -set "mididevice=mt32"
del CONFIG.INI
copy .\mt32\*.*
cls
goto video

:SC55
CONFIG -set "mididevice=fluidsynth"
del CONFIG.INI
copy .\sc55\*.*
cls
goto video

:CDA
CONFIG -set "mididevice=fluidsynth"
del CONFIG.INI
copy .\cda\*.*
cls
goto video


:video
@echo off
cls
echo.
echo Press 1 for Software Rendering
echo Press 2 for 3DFX Acceleration
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
@call whiplash
goto menu

:bio2
cls
@call whip3dfx.bat
goto menu

:quit
exit