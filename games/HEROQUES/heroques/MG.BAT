echo off
cls
if exist %1:quest.exe goto :loop2


:loop1
echo
echo Please insert disk #2
pause
if not exist %1:quest.exe goto :loop1
copy %1:*.*

if exist %1:furn.ega goto :loop4

:loop2
echo
echo Please insert disk #3
pause
if not exist %1:furn.ega goto :loop2

:loop3
copy %1:*.*

:loop4
cls
echo
echo
echo Heroquest is now installed.
echo Type HERO to play.
