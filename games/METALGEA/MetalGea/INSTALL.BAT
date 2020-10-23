echo off
cls
if %1a == a goto oops
if %1 == c: goto start
if %1 == C: goto start
if %1 == d: goto start
if %1 == D: goto start
if %1 == e: goto start
if %1 == E: goto start
if %1 == f: goto start
if %1 == F: goto start
goto oops
:start
if not exist mtlgr.ovr goto NoNewDir
echo METAL GEAR INSTALLATION ON DISK %1
echo IF THIS IS NOT A FIRST TIME INSTALLATION REMOVE DIRECTORY %1\GEAR
echo AND RUN INSTALL AGAIN...
pause
echo Creating directory %1\GEAR...
if not exist %1\GEAR\*.* md %1\GEAR
:1
cls
echo Insert the METAL GEAR DISK in the disk drive.
pause
copy *.* %1\GEAR
echo METAL GEAR IS NOW INSTALLED CORRECTLY
goto DONE
:oops
echo ****** Error  *******
echo **** INSTALLATION ABOARTED,CHECK DISK DRIVE****
:DONE
