:menu
@echo off
cls
echo.
echo Press 1 for Rex Blade w/ SoundBlaster
echo Press 2 for Rex Blade w/ MT32
echo Press 3 for Rex Blade w/ SoundCanvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto sc
if errorlevel = 2 goto mt
if errorlevel = 1 goto sb

:sb
CONFIG -set "mididevice=default"
cd DOMINAT1
copy .\sb16\*.* .\
cd ..
cd DOMINAT2
copy .\sb16\*.* .\
cd ..
cd DOMINAT3
copy .\sb16\*.* .\
cd ..
goto menu2

:mt
CONFIG -set "mididevice=mt32"
cd DOMINAT1
copy .\mt32\*.* .\
cd ..
cd DOMINAT2
copy .\mt32\*.* .\
cd ..
cd DOMINAT3
copy .\mt32\*.* .\
cd ..
goto menu2

:sc
CONFIG -set "mididevice=fluidsynth"
cd DOMINAT1
copy .\sc55\*.* .\
cd ..
cd DOMINAT2
copy .\sc55\*.* .\
cd ..
cd DOMINAT3
copy .\sc55\*.* .\
cd ..
goto menu2

:menu2
@echo off
cls
echo.
echo Press 1 for Rex Blade: The Battle Begins
echo Press 2 for Rex Blade: The Battle Rages On
echo Press 3 for Rex Blade: The Final Encounter
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd DOMINAT1
DOMINAT1
cd ..
goto menu

:bio2
cls
cd DOMINAT2
DOMINAT2
cd ..
goto menu

:bio3
cls
cd DOMINAT3
DOMINAT3
cd ..
goto menu

:quit
exit