@ECHO OFF
config
if ERRORLEVEL 1 echo FATAL ERROR:  Missing System Components
if NOT ERRORLEVEL 1 WATER %1 %2 %3 %4 %5 %6 %7
