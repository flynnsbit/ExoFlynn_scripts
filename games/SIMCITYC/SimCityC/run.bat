:menu
@echo off
cls
echo.
echo Press 1 for SimCity Classic w/ SoundBlaster & 256 Color (320x200)
echo Press 2 for SimCity Classic w/ SoundBlaster & 16 Color (640x480)
echo Press 3 for SimCity Classic w/ MT-32 & 256 Color (320x200)
echo Press 4 for SimCity Classic w/ MT-32 & 16 Color (640x480)
echo Press 5 for SimCity Classic w/ Sound Canvas & 256 Color (320x200)
echo Press 6 for SimCity Classic w/ Sound Canvas & 16 Color (640x480)
echo Press 7 to Quit
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto 16SC55
if errorlevel = 5 goto 256SC55
if errorlevel = 4 goto 16MT32
if errorlevel = 3 goto 256MT32
if errorlevel = 2 goto 16SB16
if errorlevel = 1 goto 256SB16

:16SB16
CONFIG -set "mididevice=default"
copy .\16sb16\*.* .\
cls
@simcity
goto quit

:16MT32
CONFIG -set "mididevice=mt32"
copy .\16mt32\*.* .\
cls
@simcity
goto quit

:16SC55
CONFIG -set "mididevice=fluidsynth"
copy .\16sc55\*.* .\
cls
@simcity
goto quit

:256SB16
CONFIG -set "mididevice=default"
copy .\256sb16\*.* .\
cls
@simcity
goto quit

:256MT32
CONFIG -set "mididevice=mt32"
copy .\256mt32\*.* .\
cls
@simcity
goto quit

:256SC55
CONFIG -set "mididevice=fluidsynth"
copy .\256sc55\*.* .\
cls
@simcity
goto quit

:quit
exit