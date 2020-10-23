:menu
@echo off
cls
echo.
echo Press 1 for Virtual Reality Studio 2.0 w/ SoundBlaster
echo Press 2 for Virtual Reality Studio 2.0 w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
goto menu2

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
goto menu2

:menu2
@echo off
cls
echo.
echo Press 1 for the 3D Editor
echo Press 2 for the Make Utility (requires a pre-existing World)
echo Press 3 to view the Readme
echo Press 4 to Quit
echo.
choice /c:1234 /N Please Choose

if errorlevel = 4 goto quit
if errorlevel = 3 goto 3dr
if errorlevel = 2 goto 3dm
if errorlevel = 1 goto 3de

:3dr
cls
3dreadme
goto menu2

:3dm
cls
3dmake
goto menu2

:3de
cls
3dedit
goto menu2

:quit