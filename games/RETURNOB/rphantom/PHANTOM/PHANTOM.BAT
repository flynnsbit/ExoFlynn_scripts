@echo off

set oldmads=%mads%
set mads=

mainmenu -p %1 %2 %3 %4 %5 %6 %7 %8 %9

set mads=%oldmads%
set oldmads=

