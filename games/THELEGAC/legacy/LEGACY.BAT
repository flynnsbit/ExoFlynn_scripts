@echo off
@playscr intro.scr xintro.bin 0+
legship %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 9 goto ouch
if errorlevel 8 goto winG
if errorlevel 7 goto winF
if errorlevel 6 goto winE
if errorlevel 0 goto bye
goto bye
:ouch
echo Ouch! Something nasty happened!
goto bye
:winG
@playout outro.ger xintro.bin 1
goto winner
:winF
@playout outro.fre xintro.bin 1
goto winner
:winE
@playout outro.scr xintro.bin 1
:winner
@echo Please keep the file 'winner.inf'.
:bye
