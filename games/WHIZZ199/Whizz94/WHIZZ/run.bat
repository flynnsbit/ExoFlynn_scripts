:menu
@echo off
cls
echo.
echo Press 1 for Whizz w/ SoundBlaster
echo Press 2 for Whizz w/ MT-32
echo Press 3 for Whizz w/ Sound Canvas
echo Press 4 for Whizz w/ CD music
echo Press 5 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
echo.
echo At the Select Music Source screen,
echo choose 1: Sound Card Music,
echo then choose SoundBlaster.
echo.
pause
@GO
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
echo.
echo At the Select Music Source screen,
echo choose 1: Sound Card Music,
echo then choose Roland LAPC1.
echo.
pause
@GO
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
echo.
echo At the Select Music Source screen,
echo choose 1: Sound Card Music,
echo then choose Roland SCC1.
echo.
pause
@GO
goto quit

:CDA
CONFIG -set "mididevice=default"
cls
echo.
echo At the Select Music Source screen,
echo choose 2: CD Digital Audio,
echo then choose SoundBlaster for Sound Card.
echo.
pause
@GO
goto quit

:quit
exit