:menu
@echo off
cls
echo.
echo Press 1 for SideLine w/ SoundBlaster
echo Press 2 for SideLine w/ MT-32
echo Press 3 for SideLine w/ Sound Canvas
echo Press 4 for SideLine w/ CD Audio & SB16 Menus
echo Press 5 for SideLine w/ CD Audio & MT32 Menus
echo Press 6 for SideLine w/ CD Audio & SC55 Menus
echo Press 7 to Quit
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto CDASC
if errorlevel = 5 goto CDAMT
if errorlevel = 4 goto CDASB
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\midi\*.* .\
cd driver
copy .\sb16\*.* .\
cd ..
cls
@call SL
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\midi\*.* .\
cd driver
copy .\mt32\*.* .\
cd ..
cls
@call SL
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\midi\*.* .\
cd driver
copy .\sc55\*.* .\
cd ..
cls
@call SL
goto quit

:CDASC
CONFIG -set "mididevice=fluidsynth"
copy .\cda\*.* .\
cd driver
copy .\sc55\*.* .\
cd ..
cls
@call SL
goto quit

:CDASB
CONFIG -set "mididevice=fluidsynth"
copy .\cda\*.* .\
cd driver
copy .\sb16\*.* .\
cd ..
cls
@call SL
goto quit

:CDAMT
CONFIG -set "mididevice=fluidsynth"
copy .\cda\*.* .\
cd driver
copy .\mt32\*.* .\
cd ..
cls
@call SL
goto quit

:quit
exit