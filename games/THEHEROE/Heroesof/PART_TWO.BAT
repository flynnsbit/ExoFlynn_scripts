rem --- if we already copied files from Disk 2, don't bother doing it again
if exist %2\P51\HEROES2.EXE goto 2c

rem --- make sure drive %1 contains Disk 2.
:2a
if exist %1\HEROES2.EXE goto 2b
cls
echo Insert HEROES OF THE 357th Disk 2 in drive %1.
pause
goto 2a
:2b

rem --- copy Disk 2 files to the destination disk.
echo 
echo Copying files...
copy %1\HEROES2.EXE %2\P51
:2c
if not exist %2\P51\HEROES2.EXE goto error

rem --- run HEROES2 to decompress files then delete compressed file.
%2
cd \P51
HEROES2.EXE
del HEROES2.EXE > nul

if not exist %2\P51\P51.EXE goto error
if not exist %2\P51\P51B.EXE goto error
if not exist %2\P51\P51A.DAT goto error
if not exist %2\P51\DATA2 goto error
if not exist %2\P51\P51.DAT goto error
if not exist %2\P51\DATA1 goto error
if not exist %2\P51\EDATA goto error
if not exist %2\P51\VDATA goto error

rem --- installation was successful!
:installDone
cd %2\P51
echo 
echo HEROES OF THE 357th is now installed on your destination disk.
echo To run it, type "P51".
echo 
%2
goto done

rem --- general installation error.
:error
echo 
echo Installation Error:  Perhaps there isn't enough space on your destination
echo disk.  HEROES OF THE 357th requires at least 2.5 megabytes of free space.
goto errorDone

rem --- goto here after an error is detected, to print a message and exit.
:errorDone
echo HEROES OF THE 357th was not installed correctly.

:done

