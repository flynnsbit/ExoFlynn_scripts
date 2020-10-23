echo off
alfer
if ERRORLEVEL 8 goto endit
if ERRORLEVEL 7 goto prg1
if ERRORLEVEL 6 goto prg2
if ERRORLEVEL 5 goto prg3
if ERRORLEVEL 4 goto prg4
echo Illegal EXIT!
goto endit
:back
alfer part_two
if ERRORLEVEL 8 goto endit
if ERRORLEVEL 7 goto prg1
if ERRORLEVEL 6 goto prg2
if ERRORLEVEL 5 goto prg3
if ERRORLEVEL 4 goto prg4
echo Illegal EXIT!
goto endit
:prg1
echo Loading...
lesson1.exe
goto back
:prg2
echo Loading...
lesson2.exe
goto back
:prg3
echo Loading...
lesson3.exe
goto back
:prg4
echo Loading...
lesson4.exe
goto back
:endit
