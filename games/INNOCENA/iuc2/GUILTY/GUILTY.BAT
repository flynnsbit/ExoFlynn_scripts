@echo off
call gbg_midi
call gbg_digi
if "%1" == "mem" goto memory
if "%2" == "mem" goto memory
if "%3" == "mem" goto memory
if "%4" == "mem" goto memory
if "%5" == "mem" goto memory
if "%6" == "mem" goto memory
if "%7" == "mem" goto memory
if "%8" == "mem" goto memory
if "%9" == "mem" goto memory
:normal
english %1 %2 %3 %4 %5 %6 %7 %8 %9
goto end
:memory
lh english %1 %2 %3 %4 %5 %6 %7 %8 %9
:end
