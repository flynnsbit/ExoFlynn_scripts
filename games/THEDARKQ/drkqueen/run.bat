:menu
@echo off
cls
echo.
echo Press 1 for The Dark Queen of Krynn w/ SoundBlaster
echo Press 2 for The Dark Queen of Krynn w/ MT-32
echo Press 3 to Quit
echo.
echo Note: If you have Death Knights of Krynn installed you may
echo transfer savegame files or characters not currently in a
echo party into Dark Queen of Krynn via the game interface.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd disk1
copy .\sb16\*.* .\
cd ..
cls
@dqk
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd disk1
copy .\mt32\*.* .\
cd ..
cls
@dqk
goto quit

:quit
exit