:menu
@echo off
cls
echo.
echo Press 1 for KGB Conspiracy w/ SoundBlaster
echo Press 2 for KGB Conspiracy w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
d:
cls
@CSPPRG AMR ADP220 SBP2227 EMS 386 SAF WRIC:\CONSPCD\
goto quit

:MT32
CONFIG -set "mididevice=mt32"
d:
cls
@CSPPRG AMR MID330 SBP2227 EMS 386 SAF WRIC:\CONSPCD\
goto quit

:quit
exit