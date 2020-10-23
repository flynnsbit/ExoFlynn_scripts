echo off
ECHO HELTER SKELTER works in either CGA or EGA graphics mode
ECHO it should automatically detect whether your computer supports EGA mode.
ECHO You can load either version directly by typing HELTERC or HELTERE
which
if errorlevel 1 goto EGA
:CGA
helterc
goto    EXIT
:EGA
heltere
goto    EXIT
:EXIT
