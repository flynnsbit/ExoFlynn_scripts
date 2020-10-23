echo off
rem   ********************* After the C program sends a "  exit(1)   "
rem                         or 2 or 3,  this .bat file runs another.
keytoon.exe
if ERRORLEVEL 5 goto end
if ERRORLEVEL 4 goto prg4
if ERRORLEVEL 3 goto prg3
if ERRORLEVEL 2 goto prg2
if ERRORLEVEL 1 goto prg1
goto end

:prg1
par4.exe
go.bat

:prg2
football.exe
go.bat

:prg3
fbinst.exe
go.bat

:prg4
archery.exe
go.bat

:end
