:menu
@echo off
cls
echo.
echo Press 1 for Soltys w/ SoundBlaster
echo Press 2 for Soltys w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@echo off
echo.
echo For Creative SoundBlaster Music,
echo choose SoundBlaster,
echo when asked to choose sound card.
echo.
echo Port: 220, IRQ: 7, DMA: 1, or just choose Auto
echo.
pause
cls
@CGE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@echo off
echo.
echo For Sound Canvas Music,
echo choose SoundBlaster + General MIDI,
echo when asked to choose sound card.
echo.
echo SB Port: 220, IRQ: 7, DMA: 1, MIDI Port: 330
echo.
pause
@CGE
goto quit

:quit
exit