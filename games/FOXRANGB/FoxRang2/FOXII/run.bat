:menu
@echo off
cls
echo.
echo Press 1 for Fox Ranger 2 w/ PC Speaker
echo Press 2 for Fox Ranger 2 w/ SoundBlaster
echo Press 3 for Fox Ranger 2 w/ MT-32
echo Press 4 for Fox Ranger 2 w/ Sound Canvas
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:Tandy
cls
echo.
echo Press 1 to Play the Intro
echo Press 2 to Skip the Intro
echo Press 3 to Return to the Main Menu
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto TANDYn
if errorlevel = 1 goto TANDYi

:SB16
cls
echo.
echo Press 1 to Play the Intro
echo Press 2 to Skip the Intro
echo Press 3 to Return to the Main Menu
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto SB16n
if errorlevel = 1 goto SB16i

:MT32
cls
echo.
echo Press 1 to Play the Intro
echo Press 2 to Skip the Intro
echo Press 3 to Return to the Main Menu
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto MT32n
if errorlevel = 1 goto MT32i

:SC55
cls
echo.
echo Press 1 to Play the Intro
echo Press 2 to Skip the Intro
echo Press 3 to Return to the Main Menu
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto SC55n
if errorlevel = 1 goto SC55i

:Tandyi
CONFIG -set "mididevice=default"
copy .\speaker\*.* .\
cls
@fr2 I v
goto quit

:SB16i
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@fr2 A v
goto quit

:MT32i
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@fr2 M v
goto quit

:SC55i
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@fr2 S v
goto quit

:Tandyn
CONFIG -set "mididevice=default"
copy .\speaker\*.* .\
cls
@fr2 I v N
goto quit

:SB16n
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@fr2 A v N
goto quit

:MT32n
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@fr2 M v N
goto quit

:SC55n
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@fr2 S v N
goto quit

:quit
exit