:menu
@echo off
cls
echo.
echo Press 1 for Battlecruiser 3000AD v1.00
echo Press 2 for Battlecruiser 3000AD v2.09
echo Press 3 for Battlecruiser 3000AD v2.09 3DFX (disabled)
echo Press 4 to Quit
echo.
echo. Note: The 2.09 versions *do* work, however after clicking
echo. 'Start a New Game' it will take several minutes to load.
echo.
echo 3DFX Version disabled due to extreme instability, however all
echo of the files remain in the folder if you want to try it yourself.
echo.
choice /C:124 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto menu2
if errorlevel = 1 goto menu1

:menu1
@echo off
cls
echo.
echo Press 1 for Battlecruiser 3000AD w/ SoundBlaster
echo Press 2 for Battlecruiser 3000AD w/ MT-32
echo Press 3 for Battlecruiser 3000AD w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd bcruis3k
copy .\sb16\*.* .\
cls
@BC3000AD
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd bcruis3k
copy .\mt32\*.* .\
cls
@BC3000AD
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd bcruis3k
copy .\sc55\*.* .\
cls
@BC3000AD
goto quit

:menu2
@echo off
cls
echo.
echo Press 1 for Battlecruiser 3000AD w/ SoundBlaster
echo Press 2 for Battlecruiser 3000AD w/ MT-32
echo Press 3 for Battlecruiser 3000AD w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC552
if errorlevel = 2 goto MT322
if errorlevel = 1 goto SB162

:SB162
CONFIG -set "mididevice=default"
cd BC3000AD
copy .\sb16\*.* .\
cls
@BC3000AD
goto quit

:MT322
CONFIG -set "mididevice=mt32"
cd BC3000AD
copy .\mt32\*.* .\
cls
@BC3000AD
goto quit

:SC552
CONFIG -set "mididevice=fluidsynth"
cd BC3000AD
copy .\sc55\*.* .\
cls
@BC3000AD
goto quit

:bio3
cls
cd BC3000AD
copy .\sb16\*.* .\
BC3000AD /g
cd ..
goto quit

:quit
exit