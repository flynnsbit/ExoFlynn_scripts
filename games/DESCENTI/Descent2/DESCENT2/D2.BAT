@echo off
rem Batch file to run Descent 2
if exist *.swp del *.swp
descent2 %1 %2 %3 %4 %5 %6 %7 %8 %9
if exist *.swp del *.swp
