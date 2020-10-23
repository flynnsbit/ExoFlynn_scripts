:menu
@echo off
cls
echo.
echo Press 1 for Shaw's Nightmare
echo Press 2 for Shaw's Nightmare FOTOM Edition
echo Press 3 to Quit
echo.
echo The FOTOM Edition includes an expansion pack
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto FOTOM
if errorlevel = 1 goto SWNM

:FOTOM
cd FOTOM
@echo off
cls
echo.
echo Press 1 for SoundBlaster
echo Press 2 for MT32
echo Press 3 for General MIDI
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto FSC55
if errorlevel = 2 goto FMT32
if errorlevel = 1 goto FSB

:FSB
CONFIG -set "mididevice=default"
del SN.SET
COPY .\sb16\*.* .\
cls
@sn
cls
goto quit

:FMT32
CONFIG -set "mididevice=mt32"
del SN.SET
COPY .\mt32\*.* .\
cls
@sn
cls
goto quit

:FSC55
CONFIG -set "mididevice=default"
del SN.SET
COPY .\sc55\*.* .\
cls
@sn
cls
goto quit

:quit
exit

:SWNM
cd SHAW
@echo off
cls
echo.
echo Press 1 for SoundBlaster
echo Press 2 for MT32
echo Press 3 for General MIDI
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
CONFIG -set "mididevice=default"
del SN.SET
COPY .\sb16\*.* .\
cls
@sn
cls
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SN.SET
COPY .\mt32\*.* .\
cls
@sn
cls
goto quit

:SC55
CONFIG -set "mididevice=default"
del SN.SET
COPY .\sc55\*.* .\
cls
@sn
cls
goto quit

:quit
exit