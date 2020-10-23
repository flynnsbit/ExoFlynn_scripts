:menu
@echo off
cls
echo.
echo Press 1 for Shadow Warrior (CD Audio)
echo Press 2 for Shadow Warrior Shareware w/ SB16 Midi
echo Press 3 for Shadow Warrior Shareware w/ SC-55 Midi
echo Press 4 for Shadow Warrior 3DFX
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto 3dfx
if errorlevel = 3 goto swsc
if errorlevel = 2 goto swsb
if errorlevel = 1 goto bio1

:bio1
cls
cd sw
sw
cd ..
goto menu

:swsb
CONFIG -set "mididevice=default"
cd sw_shar
copy .\sb16\*.* .\
cls
sw
cd ..
goto menu

:swsc
CONFIG -set "mididevice=fluidsynth"
cd sw_shar
copy .\sc55\*.* .\
cls
sw
cd ..
goto menu

:3dfx
cls
cd sw
SW3DFX
cd ..
goto menu

:quit
exit