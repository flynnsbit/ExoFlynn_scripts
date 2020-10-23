:menu
@echo off
cls
echo.
echo Press 1 for Quest for Glory 4.5: So You Thought You Were a Hero? w/ SB16
echo Press 2 for Quest for Glory 4.5: So You Thought You Were a Hero? w/ SC55
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del ACSETUP.CFG
copy .\sb16\*.*
cls
@QFG
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del ACSETUP.CFG
copy .\sc55\*.*
cls
@QFG
goto quit

:quit
exit