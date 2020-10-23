echo off
cls
if exist PSMCFG2.DAT goto play_game
psmcfg2
if exist PSMCFG2.DAT goto play_game
echo ˇ
echo Sie mÅssen zuerst "PSMCFG2.EXE" aufrufen, um die Soundkarte einzustellen!
echo ˇ
goto end_of_batch
:play_game
ssprog %1 %2 %3 %4 %5 %6 %7 %8 %9
:end_of_batch
