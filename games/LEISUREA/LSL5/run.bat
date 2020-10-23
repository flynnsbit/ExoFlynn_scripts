:menu
@echo off
cls
echo.
echo Press 1 for Leisure Suit Larry 5 w/ SoundBlaster
echo Press 2 for Leisure Suit Larry 5 w/ MT32
echo Press 3 for Leisure Suit Larry 5 w/ Sound Canvas
echo Press 4 for Leisure Suit Larry 5 EGA w/ Game Blaster
echo Press 5 for Leisure Suit Larry 5 EGA w/ SoundBlaster
echo Press 6 for Leisure Suit Larry 5 EGA w/ MT32
echo Press 7 to Quit
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto EGAMT32
if errorlevel = 5 goto EGASB
if errorlevel = 4 goto EGAGB
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
CONFIG -set "mididevice=default"
@SCIDHUV SESOURCE.CFG
cls
goto quit

:MT32
CONFIG -set "mididevice=mt32"
@SCIDHUV MESOURCE.CFG
cls
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
@SCIDHUV GESOURCE.CFG
cls
goto quit

:EGAGB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
CD EGA
@SCIDUV GESOURCE.CFG
rem cls
goto quit

:EGASB
CONFIG -set "mididevice=default"
CD EGA
@SCIDUV SESOURCE.CFG
rem cls
goto quit

:EGAMT32
CONFIG -set "mididevice=mt32"
CD EGA
@SCIDUV MESOURCE.CFG
rem cls
goto quit

:quit
rem exit