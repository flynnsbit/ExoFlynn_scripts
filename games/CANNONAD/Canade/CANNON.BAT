echo off
cls
if exist PSMCFG.DAT goto play_game
psmcfg
if exist PSMCFG.DAT goto play_game
echo �
echo You must run "PSMCFG.EXE" in order to install the proper sound card!
echo �
goto end_of_batch
:play_game
cnshow
cnprog
:end_of_batch
