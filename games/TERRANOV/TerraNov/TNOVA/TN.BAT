@echo off
rem if you want to disable memory checking, run tn +nomemcheck
info %1 %2 %3 %4
if errorlevel 3 goto not_enough_mem
if errorlevel 2 goto low_mem
goto lets_play
:low_mem
echo running minimal memory version of Terra Nova
if exist _sndextra.bat call _sndextra
call _tn +8M %1 %2 %3 %4 %5 %6 %7 %8 %9
goto go_on_home
:lets_play
if exist _sndextra.bat call _sndextra
call _tn %1 %2 %3 %4 %5 %6 %7 %8 %9
goto go_on_home
:not_enough_mem
echo Sorry, you need at least 6.8Mb of memory available to play Terra Nova
echo  Try freeing up some memory, or use setup to make a boot disk
:go_on_home
