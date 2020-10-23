echo off
cls
if exist PSMCFG.DAT goto play_game
psmcfg
if exist PSMCFG.DAT goto play_game
echo ÿ
echo Sie mssen zuerst "PSMCFG.EXE" aufrufen, um die Soundkarte einzustellen!
echo ÿ
goto end_of_batch
:play_game
ftprog
:end_of_batch
