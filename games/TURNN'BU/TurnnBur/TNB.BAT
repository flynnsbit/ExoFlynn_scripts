echo off
cls
game
if errorlevel=3 goto doega
if errorlevel=2 goto docga
if errorlevel=1 goto doherc

:doega
echo Loading EGA version
ega
goto donowt

:docga
echo Loading CGA version
cga
goto donowt

:doherc
cls
echo Loading HERCULES version
sparky
herc
cls
goto donowt

:donowt

