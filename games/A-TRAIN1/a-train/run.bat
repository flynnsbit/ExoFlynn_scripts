:menu
@echo off
cls
echo.
echo Press 1 for A-Train w/ SoundBlaster
echo Press 2 for A-Train w/ MT-32
echo Press 3 for A-Train Construction Kit w/ SoundBlaster
echo Press 4 for A-Train Construction Kit w/ MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto ACMT32
if errorlevel = 3 goto ACSB16
if errorlevel = 2 goto ATMT32
if errorlevel = 1 goto ATSB16

:ATSB16
CONFIG -set "mididevice=default"
cls
@at /480 /C /BLAST
goto quit

:ATMT32
CONFIG -set "mididevice=mt32"
cls
@at /480 /C /ROLAND
goto quit

:ACSB16
CONFIG -set "mididevice=default"
cls
@atcons /480 /C /BLAST
goto quit

:ACMT32
CONFIG -set "mididevice=mt32"
cls
@atcons /480 /C /ROLAND
goto quit

:quit
exit