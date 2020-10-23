@echo off
echo === Hard-Drive Installation for Annihilator Tank ===
echo This batch file will install Annihilator Tank to your harddrive.
echo :
echo From the DOS prompt, type "install c d" where "c" is the drive 
echo letter of your hard drive and "d" is the drive letter of your CDROM drive.
echo If you'd like to provide the name of the directory that
echo will be created on the hard drive, add that at the end, for example
echo "install c d at". The default directory is \atank.
echo :
echo Once installed, to run the game, type AT.
echo:
pause
:: Need to check parameters
if "%1"=="" goto usage
if "%2"=="" goto usage
if not "%3"=="" goto given
:: directory was not given, using default instead
goto default
:default
:: Make a directory in hard disk if it doesn't exist
echo Making Directory...
if not exist %1:\atank mkdir %1:\atank
echo Installing Files...
copy %2:\atank\*.* %1:\atank
echo ==================
echo Hard Drive directory created and files copied.
Echo Ready to run Annihilator Tank.
pause
%1:
cd %1:\atank
echo:
echo To run the Game type AT and press Enter.
echo To run the game later, goto your %1:\atank directory and type AT.
echo:
goto end
:given
:: Make a directory in hard disk if it doesn't exist
echo Making Directory...
if not exist %1:\%3 mkdir %1:\%3
echo Installing Files...
copy %2:\atank\*.* %1:\%3
echo ==================
echo Hard Drive directory created and files copied.
echo Ready to run Annihilator Tank.
pause
%1:
cd %1:\%3
echo:
echo To run the Game type AT and press Enter.
echo To run the game later, goto your %1:\%3 directory and type AT.
echo:
goto end
:usage
echo Usage: INSTALL.BAT HARD-DRIVE CD-DRIVE [directory]
echo        (e.g., INSTALL.BAT C D atank)
goto end
:end
