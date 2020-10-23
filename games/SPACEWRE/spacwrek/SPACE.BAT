echo off
cls
jsub

:loop
if exist jmain.exe goto :load
echo Please insert disk #2
pause
goto :loop


:load
jmain
