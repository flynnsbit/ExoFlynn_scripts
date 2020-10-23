@echo off
if not exist UNIVBE.DRV goto univbe
goto ok
:univbe
uvconfig -gen
:ok
stormpc.exe %1 %2 %3 %4 %5 %6 %7 %8 %9
