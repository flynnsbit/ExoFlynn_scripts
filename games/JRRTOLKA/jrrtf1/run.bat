:menu
@echo off
cls
echo.
echo Press 1 for J.R.R. Tolkien's The Lord of the Rings Vol 1 Floppy Tandy
echo Press 2 for J.R.R. Tolkien's The Lord of the Rings Vol 1 Floppy Soundblaster
echo Press 3 for J.R.R. Tolkien's The Lord of the Rings Vol 1 Floppy MT-32
echo Press 4 for J.R.R. Tolkien's The Lord of the Rings Vol 1 CD Version
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto cd
if errorlevel = 3 goto mt32
if errorlevel = 2 goto sb16
if errorlevel = 1 goto tandy

:CD
cd LORD-CD
cls
@call LORD
goto exit

:tandy
CONFIG -set "mididevice=default"
cd floppy
copy .\tandy\*.* .\
cls
@lord
goto exit

:SB16
CONFIG -set "mididevice=default"
cd floppy
copy .\sb16\*.* .\
cls
@lord
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd floppy
copy .\mt32\*.* .\
cls
@lord
goto quit

:quit
exit