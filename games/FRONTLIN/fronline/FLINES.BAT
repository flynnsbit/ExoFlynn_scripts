@ECHO OFF
CLS
CHECK
if errorlevel 0 goto DONE
VESADRVR.EXE
:DONE
FL.EXE %1 %2 %3 %4 %5 %6 %7 %8 %9
