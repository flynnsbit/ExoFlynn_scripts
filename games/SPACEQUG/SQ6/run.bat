:menu
@echo off
cls
echo.
echo Press 1 for Space Quest VI: Roger Wilco in the Spinal Frontier w/ SoundBlaster
echo Press 2 for Space Quest VI: Roger Wilco in the Spinal Frontier w/ MT32
echo Press 3 for Space Quest VI: Roger Wilco in the Spinal Frontier w/ Sound Canvas
echo Press 4 for Space Quest VI: Roger Wilco Interactive Demo
echo Press 5 to Quit
echo.
echo Note: The Demo contains a short sequence not available in the main game
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto DEMO
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:demo
CONFIG -set "mididevice=fluidsynth"
cd DEMO
cls
sierra
goto quit

:SB16
CONFIG -set "mididevice=default"
del RESOURCE.CFG
copy .\sb16\*.*
cls
call SQ6DOS
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del  RESOURCE.CFG
copy .\mt32\*.*
cls
call SQ6DOS
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del  RESOURCE.CFG
copy .\sc55\*.*
cls
call SQ6DOS
goto quit

:quit
exit