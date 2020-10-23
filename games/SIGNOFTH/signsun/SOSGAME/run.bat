:menu
@echo off
cls
echo.
echo Press 1 for Sign of the Sun w/ Sound Blaster
echo Press 2 for Sign of the Sun w/ MT32
echo Press 3 for Sign of the Sun w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto mt32
if errorlevel = 1 goto sb16

:sb16
CONFIG -set "mididevice=default"
copy .\SB16\*.* .\
cls
SOS /CD D /LANG 0
@call fix.bat
goto menu

:mt32
CONFIG -set "mididevice=mt32"
copy .\MT32\*.* .\
cls
SOS /CD D /LANG 0
@call fix.bat
goto menu

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
SOS /CD D /LANG 0
@call fix.bat
goto quit

:quit
exit