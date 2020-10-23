echo off
cls
intro.exe
type fileinfo.txt
echo      Press Any Key to Play the Game!
pause >nul
cd golf
playsnk %1
cd..
type pesite.pe
