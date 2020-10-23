@ECHO OFF
REM Mario's Early Years Deluxe Version 1.0.1
REM TM & Copyright (C) 1994 Nintendo
C:
cd C:\MEYCD
:start
C:\MEYCD\LAUNCHER.EXE -RESD:\MEY -RUNC:\MEYCD -TODDLER  %1 %2 %3 %4 %5
if not errorlevel 1 goto start
