:menu
@echo off
cls
echo.
echo Press 1 for King's Quest V: Absence Makes the Heart Go Yonder w/ SB16
echo Press 2 for King's Quest V: Absence Makes the Heart Go Yonder w/ MT32
echo Press 3 for King's Quest V: Absence Makes the Heart Go Yonder Floppy w/ SB16
echo Press 4 for King's Quest V: Absence Makes the Heart Go Yonder Floppy w/ MT32
echo Press 5 for King's Quest V: Absence Makes the Heart Go Yonder EGA
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto EGA
if errorlevel = 4 goto FLOP32
if errorlevel = 3 goto FLOPSB
if errorlevel = 2 goto SCIMT32
if errorlevel = 1 goto SCISB

:SCISB
CONFIG -set "mididevice=default"
@sierra SESOURCE.CFG
cls
goto quit

:SCIMT32
CONFIG -set "mididevice=mt32"
@sierra MESOURCE.CFG
cls
goto quit

:FLOPSB
CONFIG -set "mididevice=default"
cd floppy
cls
@sierra SESOURCE.CFG
cd ..
cls
goto quit

:FLOP32
CONFIG -set "mididevice=mt32"
cd floppy
cls
@sierra MESOURCE.CFG
cd ..
cls
goto quit

:EGA
CONFIG -set "mididevice=default"
cd EGA
cls
@sierra
cd ..
goto quit

:quit
exit