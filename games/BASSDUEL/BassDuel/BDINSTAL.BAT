echo off
if "%1" == "" goto usage
copy BD.BAT %1\
mkdir %1\bduel
copy *.* %1\bduel
cls
echo -- Installation is complete. A directory called BDUEL has been
echo -- created on the disk drive you specified. To run BassDuel in the
echo -- future, change to the BDUEL directory, then type BASSDUEL. 
echo --
echo -- To run BassDuel now, type BASSDUEL then press the ENTER key.
goto end

:usage
echo -- You must specify a disk drive where BassDuel is to be installed:
echo --
echo -- EXAMPLES:            bdinstal c: 
echo --                          -OR-
echo --                      bdinstal d:
echo --
echo -- Notice the c: and the d: at the end of the command. These specify
echo -- where you want to install BassDuel.
goto end

:end
%1
cd\bduel