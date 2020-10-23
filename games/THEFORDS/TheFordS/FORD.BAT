echo off
simul
:loop
if not ERRORLEVEL 1 goto done
if not ERRORLEVEL 2 goto first
if not ERRORLEVEL 3 goto second
buyers m m
if ERRORLEVEL 1 goto third
simul m
goto loop
:first
buyers
if ERRORLEVEL 1 goto third
simul m
goto loop
:second
buyers m
if ERRORLEVEL 1 goto third
simul m
goto loop
:third
simul m m
:done
