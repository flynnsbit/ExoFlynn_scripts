:menu
@echo off
cls
echo.
echo Press 1 for The Secret of Monkey Island Floppy w/ EGA & Tandy
echo Press 2 for The Secret of Monkey Island Floppy w/ EGA & Game Blaster
echo Press 3 for The Secret of Monkey Island Floppy w/ EGA & Adlib
echo Press 4 for The Secret of Monkey Island Floppy w/ VGA & Adlib
echo Press 5 for The Secret of Monkey Island Floppy w/ VGA & MT32 w/ SB SFX
echo Press 6 for The Secret of Monkey Island CD w/ CD Audio
echo Press 7 for The Secret of Monkey Island CD w/ MT32 + Ultimate Talkie Edition
echo Press 8 to Quit
echo.
choice /C:12345678 /N Please Choose:

if errorlevel = 8 goto quit
if errorlevel = 7 goto talkie
if errorlevel = 6 goto cdaudio
if errorlevel = 5 goto MT32
if errorlevel = 4 goto SB16
if errorlevel = 3 goto EGADLIB
if errorlevel = 2 goto gb
if errorlevel = 1 goto TANDY

:EGADLIB
CONFIG -set "mididevice=default"
c:
cd cga
cls
@monkey e a
goto quit

:TANDY
CONFIG -set "mididevice=default"
c:
cd cga
cls
@monkey e TS
goto quit

:SB16
CONFIG -set "mididevice=default"
c:
cd floppy
cls
@monkey a
goto quit

:MT32
CONFIG -set "mididevice=mt32"
c:
cd floppy
cls
@mtadl v mo
goto quit

:gb
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
c:
cd cga
cls
@monkey e g
goto quit

:talkie
CONFIG -set "mididevice=mt32"
cd talkie
cls
@monkey r1
goto quit

:CDaudio
CONFIG -set "mididevice=default"
d:
cd english
cls
@monkey
goto quit

:quit
exit