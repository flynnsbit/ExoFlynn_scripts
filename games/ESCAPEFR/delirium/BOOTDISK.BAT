@echo off
cls
echo This program will now create a bootdisk for Escape from Delirium!
echo Please insert a floppy disk into your drive A:
echo.
echo WARNING! The entire disk will be deleted/overwritten!
echo.
echo Dieses Programm erstellt eine BOOTDISK fÅr Escape from Delirium!
echo Bitte eine Diskette in Laufwerk A: einlegen!
echo.
echo ACHTUNG! Die Diskette wird komplett gelîscht!
echo.
echo Press CRTL+C to cancel!
echo DrÅcken Sie STRG+C um abzubrechen!
echo.
pause
cls
echo Please follow the instructions on the screen!
echo Bitte folgen Sie den Anweisungen auf Ihrem Bildschirm!
echo.
format a: /U /S
cls
echo Files are being copied to your Disk!
echo Systemdateien werden nun auf Ihre Festplatte kopiert!
echo.
if exist C:\COMMAND.COM copy command.com a:\
copy BOOTDISK.AUT A:\AUTOEXEC.BAT
copy BOOTDISK.CNF A:\CONFIG.SYS
echo.
echo Finished! Please reboot your computer and leave the disk inside the
echo disk-drive!
echo Fertig! Starten Sie Ihren Rechner bitte neu, lassen Sie aber die
echo Diskette im Laufwerk!
echo.


