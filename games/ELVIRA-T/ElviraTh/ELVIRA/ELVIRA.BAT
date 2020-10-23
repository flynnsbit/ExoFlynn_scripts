echo off
setup
introega
if errorlevel=1 goto adlib
introvga
if errorlevel=1 goto adlib
:games
elvega
elvmcga
goto exit
:adlib
bitpause title.mdi
goto games
:exit
echo *** Back To Dos ***
