echo off
moag -_- %1 %2 %3 %4 %5 %6 %7 %8 %9
:loop
if errorlevel 137 if not errorlevel 138 goto exit
3 -s
moag -_- -r %1 %2 %3 %4 %5 %6 %7 %8 %9
goto loop
:exit
