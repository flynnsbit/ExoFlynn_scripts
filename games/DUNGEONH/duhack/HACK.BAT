@echo off
set F=0

checksys 56 640
if ERRORLEVEL 1 goto EXIT

if exist savegame\settings.dat goto CHECKDEMO
md savegame

:CHECKDEMO
if NOT exist OPEN.RES goto CONTINUE
aesop open opening

:CONTINUE
aesop hack phase-one
set F=1
if ERRORLEVEL 3 goto CONTINUE
if ERRORLEVEL 2 goto CHECKDEMO
if ERRORLEVEL 1 goto EXIT
cd savegame
..\maze %1 %2
cd ..
if ERRORLEVEL 1 goto EXIT

aesop hack phase-two
if ERRORLEVEL 1 goto EXIT
goto CONTINUE

:EXIT
set F=
