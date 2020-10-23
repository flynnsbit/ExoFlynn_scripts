@ECHO OFF
REM Mario Teaches Sums Version 1.0.1
REM TM & Copyright (C) 1994 Nintendo
C:
cd C:\MARIOMCD
:start
C:\MARIOMCD\LAUNCHER.EXE -RESD:\MATHCD -RUNC:\MARIOMCD -TODDLER  %1 %2 %3 %4 %5
if not errorlevel 1 goto start
