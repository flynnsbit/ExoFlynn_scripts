echo ***         HARD DISK INSTALLATION ROUTINE          ***
if exist dms6cntl goto ASK0
echo *** INSTALLATION NOT SUCCESSFUL ! Please correct problem !
BOATERR
:ASK0
if exist \assign.com goto ASK1
if exist \DOS\assign.com goto ASK2
goto ASK3
:ASK1
copy \assign.com 
goto ASK3
:ASK2
copy \DOS\assign.com
:ASK3
if exist ASSIGN.COM goto AOK1
echo ***  CANNOT find ASSIGN.COM in ROOT or DOS directories !  ***
echo If you have a PATH statement to it, then proceed, otherwise,
echo please copy ASSIGN.COM from your DOS System into the DOLPHIN
echo directory to complete the Installation.
:AOK1
echo IF there were no BAD COMMAND messages above, then...
echo INSTALLATION COMPLETE ! Please insert VOYAGE DISK in Drive A:,
echo and type a:INSTALLV to install each VOYAGE disk.
:ENDB
cd\
