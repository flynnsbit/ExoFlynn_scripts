echo off
cls
:restart
driv.exe
if errorlevel 3 goto play3
if errorlevel 2 goto play2
if errorlevel 1 goto play1



:play1
poker.exe
goto again

:play2
bjack.exe
goto again

:play3
slot.exe
goto again

:again
goto restart
