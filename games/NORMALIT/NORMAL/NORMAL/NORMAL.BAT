@echo off
copy normal.bat maps\silly.das >NUL
del maps\*.das
norm %1 %2 %3 %4 %5 %6 %7 %8 %9
echo Stay Normal!
