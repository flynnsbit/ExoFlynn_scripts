:menu
@echo off
cls
echo.
echo Press 1 for Space Quest IV: Roger Wilco and the Time Rippers w/ SB16
echo Press 2 for Space Quest IV: Roger Wilco and the Time Rippers w/ MT32
echo Press 3 for Space Quest IV: Roger Wilco and the Time Rippers w/ Sound Canvas
echo Press 4 for Space Quest IV: Roger Wilco and the Time Rippers Hacked*
echo Press 5 to Quit
echo.
echo *The hacked version takes assets from both the CD and Floppy and
echo. combines them to create an "ultimate" version. 
echo. It also fixes many bugs.
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto HACK
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@sierra SESOURCE.CFG
cls
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@sierra MESOURCE.CFG 
cls
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@sierra GESOURCE.CFG 
cls
goto quit

:HACK
CONFIG -set "mididevice=mt32"
@echo off
cd patch
cls
@sierra
cd ..
cls
goto quit

:quit
exit