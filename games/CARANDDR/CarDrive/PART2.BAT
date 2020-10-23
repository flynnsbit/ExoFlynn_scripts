@echo off
rem --- part2 for 5.25" disks
rem ----------------------------------------------------
:disk2
echo Please insert Disk 2
pause
:exists2
if exist %1\c&d.000 goto disk2_ok
echo Wrong disk: Please make sure disk 2 is in drive %1
pause
goto exists2
:disk2_ok
echo Copying...
copy %1\c&d.000
if not exist %2\C&D\c&d.000 goto error
if %_mag%==n goto SkipMag
rem ----------------------------------------------------
:disk3
echo Please insert Disk 3
pause
:exists3
if exist %1\magazine.000 goto disk3_ok
echo Wrong disk: Please make sure disk 3 is in drive %1
pause
goto exists3
:disk3_ok
echo Copying...
copy %1\magazine.000
if not exist %2\C&D\magazine.000 goto error
rem ----------------------------------------------------
:disk4
echo Please insert Disk 4
pause
:exists4
if exist %1\magazine.001 goto disk4_ok
echo Wrong disk: Please make sure disk 4 is in drive %1
pause
goto exists4
:disk4_ok
echo Copying...
copy %1\magazine.001
if not exist %2\C&D\magazine.001 goto error
rem ---------------------------------------------------
:disk5
echo Please insert Disk 5
pause
:exists5
if exist %1\magazine.002 goto disk5_ok
echo Wrong disk: Please make sure disk 5 is in drive %1
pause
goto exists5
:disk5_ok
echo Copying...
copy %1\magazine.002
if not exist %2\C&D\magazine.002 goto error
rem ---------------------------------------------------
copy /b magazine.000+magazine.001+magazine.002+magazine.003 magazine.lzh
if not exist %2\C&D\magazine.lzh goto error
del magazine.00?
lha x magazine
if not exist %2\c&d\magazine\trc.mag goto error
del magazine.lzh
rem ---------------------------------------------------
:SkipMag
copy /b c&d.000+c&d.001 c&d.lzh
if not exist %2\C&D\c&d.lzh goto error
del c&d.00?
lha x c&d
if not exist %2\c&d\magazine\lglass.mag goto error
del c&d.lzh
del lha.exe
if not exist %2\c&d\car.set goto error
goto Setup
rem --------------------------------------------------
rem --- general installation error.
:error
echo 
echo 
echo Installation Error:  Perhaps there isn't enough space on your destination
echo disk.  Car and Driver requires around 13 megabytes of disk space for the
echo full installation.
goto errorDone
rem --------------------------------------------------
rem --- goto here after an error is detected, to print a message and exit.
:errorDone
echo 
echo Car and Driver was not installed correctly.
echo Please try again.
rem --------------------------------------------------
:Setup
setup
:done
