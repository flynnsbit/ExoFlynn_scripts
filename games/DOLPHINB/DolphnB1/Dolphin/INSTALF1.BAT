echo ***     DUAL DISKETTE INSTALLATION ROUTINE    ***
copy A:COMMAND.COM B:
if exist b:command.com goto AOK
echo INSTALLATION UNSUCCESSFUL ! Cannot find COMMAND.COM from DOS.
echo Please check instructions, correct problem and restart !
goto ENDB
:AOK
echo IF there were NO BAD COMMAND messages above, then...
echo Your INSTALLATION is COMPLETE ! Please Reboot system, then put
echo MASTER Disk in Drive A: and VOYAGE Disk in Drive B:, then
echo type BOATING, to run the DOLPHIN BOATING SIMULATOR.
:ENDB
a:
