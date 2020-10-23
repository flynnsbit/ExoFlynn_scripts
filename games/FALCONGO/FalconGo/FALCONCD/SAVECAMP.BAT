@echo off
echo WARNING - this file will OVERWRITE your first squadron, replacing it
echo with your squadron from communications.
echo If you DO NOT want to do this, press Ctrl-C now.
pause
echo SAVECAMP in progress...
copy squad6.* squad0.*
echo SAVECAMP complete.
