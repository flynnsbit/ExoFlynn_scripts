@echo off
cls
if exist jmain.exe goto :three


:loop1
echo

echo Please insert disk #2
pause
if not exist %1:jmain.exe goto :loop1
copy %1:*.*


:loop2
echo

echo Please insert disk #3
pause
if not exist %1:galley.cmp goto :loop2
copy %1:*.*

if exist %1:mushroom.cmp goto :end

:loop3
echo

echo Please insert disk #4
pause
if not exist %1:mushroom.cmp goto :loop3
copy %1:*.*
goto :end

:three

echo

echo Please insert disk #2
pause
if not exist %1:galley.cmp goto :three
copy %1:*.*


:end

cls
echo

echo

echo Spacewrecked is now installed.
echo Type SPACE to play.
