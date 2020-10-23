echo off
echo ESPN Baseball Tonight Ver. 1.00
if exist espnbb1.exe goto startup
echo Please run ESPN Baseball Tonight from the directory in which
echo you have previously installed it.
goto :final
:startup
call checkcd.bat
if exist espnbb.cfg goto game
setup
:game
espnbb1
set DOS4G=QUIET
:loop
if errorlevel 1 goto end
espnbb2
espnbb1 fromactiongame
goto loop
:end
del null
:final
echo Thank you for playing ESPN Baseball Tonight!
