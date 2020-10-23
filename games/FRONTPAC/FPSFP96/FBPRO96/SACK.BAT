@echo off

punt.exe %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel == 1 goto THE_LOOP
goto END

:THE_LOOP
punt.exe -blah %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel == 1 goto THE_LOOP

:END
