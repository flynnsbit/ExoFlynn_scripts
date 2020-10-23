echo off

rem 	Parameters are
rem 		%1:	drive on which to install the program
rem 		%2:	drive from which installation is taking place
rem             %3:     e/l load ega or low res files to hard disk
rem	Check to see that there is enough space for the installation.
space %1: 1000kb
if errorlevel 1 goto NoSpace

godir %1:\sierra\thex2
if errorlevel 1 goto CantCreate
echo Copying files...
copy %2:exists.com >nul
copy %2:thex2.bat .. >nul
copy %2:__insth.bat >nul
__insth %1 %2 %3

:NoSpace
echo "There is not enough space on %1 to install FIREHAWK!"
echo "1 MegaBytes of disk space are necessary."
pause
goto Exit

:CantCreate
echo "Unable to create directory %1."
pause
goto Exit

:Exit

