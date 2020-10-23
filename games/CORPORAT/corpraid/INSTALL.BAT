echo off
cls
if "%1"=="" goto instruct
echo off
echo about to install to %1. To exit, hold down the CTRL key and press C or...

pause
cosminst %1
cls
ECHO HARD DISK INSTALLATION COMPLETE
ECHO.
ECHO Change to the %1 directory and type SG to run Solid Gold.
echo For example, if the path is C:\SOLID, then to change
echo to that directory type C: and press Enter. Then type
ECHO CD\SOLID and press Enter. Then type SG and press Enter.
ECHO ENJOY!!
goto exitt
:instruct
echo if you wish to install TOP 10 SOLID GOLD to a hard disk,
echo then please enter the following:
ECHo                                                                       .
ECHO		INSTALL [PATH]
ECHO	                                                                   .
ECHO Where [path] is the full directory path name.
echo EXAMPLE: INSTALL C:\SOLID
echo The example above will create a directory on the C drive called
echo SOLID and will copy the files from the floppy disks to that
echo directory.
echo	                                                                   .
echo If you will be running the program from a floppy then make backup copies
echo of the disks (refer to the DISKCOPY command of your DOS manual).
echo Then with your copy of disk #1 in the drive type: SG and press the
echo enter key.
:exitt
ECHO ENJOY!!
