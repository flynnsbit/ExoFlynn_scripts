:menu
@echo off
cls
echo.
echo Press 1 for Betrayal at Krondor w/ SoundBlaster
echo Press 2 for Betrayal at Krondor w/ MT32
echo Press 3 for Betrayal at Krondor w/ Sound Canvas
echo Press 4 for Betrayal at Krondor w/ CD Audio
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
del krondor.exe
del FRP.SX
del SX.OVL
del RESOURCE.CFG
del KRONDOR.CFG
CONFIG -set mididevice=default
copy .\sb16\*.*
cls
@krondor
goto quit
cls

:CDA
del krondor.exe
del FRP.SX
del SX.OVL
del RESOURCE.CFG
del KRONDOR.CFG
CONFIG -set mididevice=default
copy .\cda\*.*
cls
@krondor
goto quit
cls

:MT32
del krondor.exe
del FRP.SX
del SX.OVL
del RESOURCE.CFG
del KRONDOR.CFG
CONFIG -set mididevice=mt32
copy .\mt32\*.*
cls
@krondor
goto quit
cls

:SC55
del krondor.exe
del FRP.SX
del SX.OVL
del RESOURCE.CFG
del KRONDOR.CFG
CONFIG -set mididevice=fluidsynth
copy .\sc55\*.*
cls
@krondor
goto quit
cls

:quit
exit