:menu
@echo off
cls
echo.
echo Press 1 for Pinball Wizard 2000 w/ SoundBlaster
echo Press 2 for Pinball Wizard 2000 w/ Sound Canvas
echo Press 3 for Pinball Wizard 2000 w/ CD Music*
echo Press 4 to Quit
echo.
echo CD Audio is currently disabled until a CD version of the game hs been found.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto menu
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del PW2000.CFG
copy .\sb16\*.*
cls
@PW2000
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del PW2000.CFG
copy .\sc55\*.*
cls
@PW2000
goto quit

:CDA
cls
@echo off
echo eXo, please add the CD to the zip archive,
echo then launch the game with the CD mounted,
echo then go to the Setup menu, in game,
echo select CD music, then hit Esc.
echo.
echo This will make the CFG file use CD music,
echo now copy PW2000.CFG to the CDA folder.
echo Then delete these echoes and uncomment 
echo the commands below, in the run.bat file.
echo.
pause
#CONFIG -set "mididevice=default"
#del PW2000.CFG
#copy .\sb16\*.*
#cls
#@PW2000
goto quit

:quit
exit