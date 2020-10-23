@echo off
rem Batch file to run Descent 2 for S3 Virge 
if exist *.swp del *.swp
d2virge %1 %2 %3 %4 %5 %6 %7 %8 %9
if exist *.swp del *.swp
