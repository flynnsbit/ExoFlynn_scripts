@echo off

rem ***********************************
rem ******
rem ******  Play & Play2 written by:
rem ******
rem ******  Thaddeus Pritchard
rem ******  4/15/1992
rem ******  (c) Sierra On-Line, Inc.
rem ******  All right reserved.
rem ******
rem ***********************************

cls
play2 %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 3 goto end
scidhuv -a
:end
