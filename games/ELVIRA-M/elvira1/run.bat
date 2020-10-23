:menu
@echo off
cls
echo.
echo Press 1 for Elvira: Mistress of the Dark w/ Tandy
echo Press 2 for Elvira: Mistress of the Dark w/ Game Blaster
echo Press 3 for Elvira: Mistress of the Dark w/ SoundBlaster
echo Press 4 for Elvira: Mistress of the Dark w/ General Midi
echo Press 5 for Elvira: Mistress of the Dark w/ MT-32
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto MT32
if errorlevel = 4 goto GM
if errorlevel = 3 goto SB16
if errorlevel = 2 goto GB
if errorlevel = 1 goto TANDY

:SB16
CONFIG -set "mididevice=default"
cls
@runvga gamepc /s >tmp.txt
goto quit

:TANDY
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=none"
cls
@runvga gamepc /t >tmp.txt
goto quit

:GB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@runvga gamepc /c >tmp.txt
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@runvga gamepc /m1 >tmp.txt
goto quit

:GM
CONFIG -set "mididevice=fluidsynth"
cls
@runvga gamepc /m0 >tmp.txt
goto quit

:quit
exit