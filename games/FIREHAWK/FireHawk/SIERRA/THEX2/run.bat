:menu
@echo off
cls
echo.
echo Press 1 for Fire Hawk: Thexder - The Second Contact w/ Tandy LoRes
echo Press 2 for Fire Hawk: Thexder - The Second Contact w/ Tandy HiRes
echo Press 3 for Fire Hawk: Thexder - The Second Contact w/ Game Blaster LoRes
echo Press 4 for Fire Hawk: Thexder - The Second Contact w/ Game Blaster HiRes
echo Press 5 for Fire Hawk: Thexder - The Second Contact w/ SoundBlaster LoRes
echo Press 6 for Fire Hawk: Thexder - The Second Contact w/ SoundBlaster HiRes
echo Press 7 for Fire Hawk: Thexder - The Second Contact w/ MT-32 LoRes
echo Press 8 for Fire Hawk: Thexder - The Second Contact w/ MT-32 HiRes
echo Press 9 to Quit
echo.
echo LoRes is 320x200 with 256 Color
echo HiRes is 640x200 with 16 Color
echo.
choice /C:123456789 /N Please Choose:

if errorlevel = 9 goto quit
if errorlevel = 8 goto mt32hi
if errorlevel = 7 goto mt32lo
if errorlevel = 6 goto sb16hi
if errorlevel = 5 goto sb16lo
if errorlevel = 4 goto cmshi
if errorlevel = 3 goto cmslo
if errorlevel = 2 goto tandyhi
if errorlevel = 1 goto tandylo

:tandylo
CONFIG -set "mididevice=default"
copy .\tandylo\*.* .\
cls
@SIERRA
goto quit

:tandyhi
CONFIG -set "mididevice=default"
copy .\tandyhi\*.* .\
cls
@SIERRA
goto quit

:cmslo
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
copy .\cmslo\*.* .\
cls
@SIERRA
goto quit

:cmshi
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
copy .\cmshi\*.* .\
cls
@SIERRA
goto quit

:SB16lo
CONFIG -set "mididevice=default"
copy .\sb16lo\*.* .\
cls
@SIERRA
goto quit

:SB16hi
CONFIG -set "mididevice=default"
copy .\sb16hi\*.* .\
cls
@SIERRA
goto quit

:MT32lo
CONFIG -set "mididevice=mt32"
copy .\mt32lo\*.* .\
cls
@sierra
goto quit

:MT32hi
CONFIG -set "mididevice=mt32"
copy .\mt32hi\*.* .\
cls
@sierra
goto quit

:quit
exit