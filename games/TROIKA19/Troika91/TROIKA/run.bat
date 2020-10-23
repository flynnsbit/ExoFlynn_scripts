:menu
@echo off
cls
echo.
echo Press 1 for Troika w/ SoundBlaster Music
echo Press 2 for Troika w/ SoundBlaster Effects
echo Press 3 for Troika w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto SB16m

:SB16
CONFIG -set "mididevice=default"
cd ivan
copy .\sb16\*.* .\
cd ..
cd mh
copy .\sb16\*.* .\
cd ..
cd rp
copy .\sb16\*.* .\
cd ..
cls
@TROIKA.exe
goto quit

:SB16m
CONFIG -set "mididevice=default"
cd ivan
copy .\sb16m\*.* .\
cd ..
cd mh
copy .\sb16m\*.* .\
cd ..
cd rp
copy .\sb16m\*.* .\
cd ..
cls
@TROIKA.exe
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd ivan
copy .\mt32\*.* .\
cd ..
cd mh
copy .\mt32\*.* .\
cd ..
cd rp
copy .\mt32\*.* .\
cd ..
cls
@TROIKA.exe
goto quit

:quit
exit