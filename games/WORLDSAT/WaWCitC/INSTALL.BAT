echo off
cls
echo -------------------------------------------------------------------
echo -      WORLDS AT WAR
echo -      HARD DISK INSTALLATION                                     -
echo -------------------------------------------------------------------
if "%1" == "c:" goto install
if "%1" == "d:" goto install
if "%1" == "e:" goto install
if "%1" == "f:" goto install
if "%1" == "C:" goto install
if "%1" == "D:" goto install
if "%1" == "E:" goto install
if "%1" == "F:" goto install
echo - 
echo - Welcome to our hard disk installation procedure.
pause
echo -
echo - No installation is required for floppy disk users,
echo - but you should make backups of your master disks!
echo -
echo - To run 'Worlds at War' from Floppys, do the following:
echo -    1. Type the command:     
echo -          worlds
echo -    2. Hit the Enter Key.
echo -
echo - If you wish to install WAW on your hard drive, you must:
echo -    1. Log onto the installation drive.
echo -    2. Type the INSTALL command with a drive name.
echo -
echo - For example, to install from drive A: to drive C:, type:
echo -          a: [Enter]
echo -          install c: [Enter]
goto end
:install
echo -
echo - Installing 'Worlds at War' on drive %1
echo -
pause
echo -
echo - Copying files to your Hard Disk... Please stand by
echo -
mkdir %1\worlds
copy *.* %1\worlds
cls
echo -
echo - Installation Complete!
echo -
echo - To run 'Worlds at War' from your Hard Disk, do the following:
echo -      1. Move to the program directory by
echo -         typing the commands: 
echo -            %1 [Enter]
echo -            cd \worlds [Enter]
echo -      2. Run the program by typing the command:
echo -            worlds [Enter]
echo -
:end

