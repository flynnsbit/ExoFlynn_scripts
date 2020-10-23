@rem INNOCENT until caught
@rem (c)1993 Divide By Zero
@
@echo off
if exist innocent.ini goto installed

set_iuc

:installed

crack
innocent %1 %2 %3 %4 %5 %6 %7 %8 %9
