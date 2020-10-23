:menu
@echo off
cls
echo.
echo Press 1 for Chess Wars: A Medieval Fantasy w/ SoundBlaster
echo Press 2 for Chess Wars: A Medieval Fantasy w/ MT-32
echo Press 3 for Chess Wars: A Medieval Fantasy w/ Sound Canvas
echo Press 4 to Quit
echo.
echo Press CTRL-F4 to switch CD's if prompted.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto mt32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CHESSWAR.CFG
copy .\sb16\*.*
cls
@call CHESS
goto quit

:mt32
CONFIG -set "mididevice=mt32"
del CHESSWAR.CFG
copy .\mt32\*.*
cls
@call CHESS
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del CHESSWAR.CFG
copy .\sc55\*.*
cls
@call CHESS
goto quit

:quit
exit