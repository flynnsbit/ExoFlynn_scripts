echo off
alfgeo
if ERRORLEVEL 8 goto endit
if ERRORLEVEL 7 goto prg1
if ERRORLEVEL 6 goto prg2
if ERRORLEVEL 5 goto prg3
if ERRORLEVEL 4 goto prg4
if ERRORLEVEL 3 goto prg5
echo Illegal EXIT!
goto endit
:back
alfgeo part_two
if ERRORLEVEL 8 goto endit
if ERRORLEVEL 7 goto prg1
if ERRORLEVEL 6 goto prg2
if ERRORLEVEL 5 goto prg3
if ERRORLEVEL 4 goto prg4
if ERRORLEVEL 3 goto prg5
echo Illegal EXIT!
goto endit
:prg1
echo Loading...
terms.exe
goto back
:prg2
echo Loading...
alfstate.exe
goto back
:prg3a
echo Please Insert Diskette B:
pause
:prg3
if NOT EXIST landmark.exe goto prg3a
landmark.exe
goto la
:lbla
echo Please Insert Diskette A:
pause
:la
if NOT EXIST alfgeo.exe goto lbla
goto back
:prg4a
echo Please Insert Diskette B:
pause
:prg4
if NOT EXIST timeline.exe goto prg4a
timeline.exe
goto lb
:lblb
echo Please Insert Diskette A:
pause
:lb
if NOT EXIST alfgeo.exe goto lblb
goto back
:prg5a
echo Please Insert Diskette B:
pause
:prg5
if NOT EXIST tline.exe goto prg5a
tline.exe
goto lq
:lqlq
echo Please Insert Diskette A:
pause
:lq
if NOT EXIST alfgeo.exe goto lqlq
goto back
:endit
