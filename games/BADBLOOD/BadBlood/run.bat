:menu
@echo off
cls
echo.
echo Press 1 for Bad Blood w/ Tandy
echo Press 2 for Bad Blood w/ CMS
echo Press 3 for Bad Blood w/ Adlib
echo Press 4 for Bad Blood w/ MT32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto mt32
if errorlevel = 3 goto Adlib
if errorlevel = 2 goto cms
if errorlevel = 1 goto tandy

:tandy
del CONFIG.BB
copy .\tandy\CONFIG.BB .\
cls
BADBLOOD
goto menu

:adlib
CONFIG -set "mididevice=default"
del CONFIG.BB
copy .\adlib\CONFIG.BB .\
cls
BADBLOOD
goto menu

:cms
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
del CONFIG.BB
copy .\cms\CONFIG.BB .\
cls
BADBLOOD
goto menu

:mt32
CONFIG -set "mididevice=mt32"
del CONFIG.BB
copy .\mt32\CONFIG.BB .\
cls
BADBLOOD
goto menu

:quit
exit