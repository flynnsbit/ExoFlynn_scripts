:menu
@echo off
cls
echo.
echo Press 1 for Eagle Eye Mysteries w/ SoundBlaster
echo Press 2 for Eagle Eye Mysteries w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd EEMCDSAV
copy .\sb16\*.* .\
cd ..
d:
cls
@eemcd
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd EEMCDSAV
copy .\mt32\*.* .\
cd ..
d:
cls
@eemcd
goto quit

:quit
exit