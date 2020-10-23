:menu
@echo off
cls
echo.
echo Press 1 for MiG-29M Super Fulcrum
echo Press 2 for G-Force: A Strategic Flight Simulation w/ Tandy
echo Press 3 for G-Force: A Strategic Flight Simulation w/ SoundBlaster
echo Press 4 for G-Force: A Strategic Flight Simulation w/ MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto TANDY
if errorlevel = 1 goto MIG29

:MIG29
CONFIG -set "mididevice=default"
cd MIG29M
cls
@MIG29M
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd CAMPAIGN
del ADLIB.BIN
del TANDYSND.BIN
copy .\mt32\*.* .\
cls
@CAMPAIGN
goto quit

:SB16
CONFIG -set "mididevice=default"
cd CAMPAIGN
del ROLAND.BIN
del TANDYSND.BIN
copy .\sb16\*.* .\
cls
@CAMPAIGN
goto quit

:TANDY
CONFIG -set "mididevice=default"
cd CAMPAIGN
del ROLAND.BIN
del ADLIB.BIN
copy .\tandy\*.* .\
cls
@CAMPAIGN
goto quit

:quit
exit