echo off
cls
echo .
echo Nippon Safes, Inc
echo .
echo .
echo This game will load the program "musica.exe" into memory.
echo When you quit playing, musica.exe is not unloaded from
echo memory and takes up quit a bit of space; therefore, you
echo may want to restart your computer after playing Nippon Safes.
echo .
pause
check.exe
if NOT ERRORLEVEL 1  musica.exe
adv.exe

