@echo off
cls
echo ------------------
echo SAVE GAMES REMOVER
echo ------------------
echo.
echo BE SURE YOU HAVE SAVED.GOD INTO YOUR DIR
echo NEVER DELETE THAT FILE
echo.
echo THIS BATCH FILE WILL REMOVE ALL SAVEGAMES
echo FOR ALL HOUSES. PRESS A KEY TO PROCEED OR
echo PRESS CTRL-BREAK TO STOP.
pause
echo DELETING...
del *.sav
del *.sa1
del *.sa2
del saves.dat
del saves.da1
del saves.da2
copy saves.god saves.dat
copy saves.god saves.da1
copy saves.god saves.da2
echo DONE!
echo Batch File by Stefan Hendriks for Arrakis 1.12
