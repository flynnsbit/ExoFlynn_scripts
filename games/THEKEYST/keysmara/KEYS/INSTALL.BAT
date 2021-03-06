echo off
cls
if "%1" == "MORE" goto FromHard
echo Installation of "The Keys to Maramon"
echo -------------------------------------
echo  
echo To protect your original diskette, you should play "The Keys to Maramon"
echo from a hard disk or from a working copy of your diskette.
echo  
echo Do you want to -
echo  
echo    A.  Install "The Keys to Maramon" on your hard disk?
echo    B.  Play "The Keys to Maramon" from a working copy?
echo   Esc  Quit for now and do it later?
echo  
getyn "Select an option" /B
if errorlevel 2 goto DoDiskcopy
if errorlevel 1 goto A0
cls
goto X
:A0
cls
echo Hard Disk Installation of "The Keys to Maramon"
echo -----------------------------------------------
echo  
if not "%3" == "" goto A1
echo This procedure will create a \KEYS directory
goto A2
:A1
echo This procedure will create a %3 directory
:A2
echo on your hard disk and copy "The Keys to Maramon"
echo into it for ease of play.
echo  
if "%2" == "" goto NoParms
if not "%3" == "" goto HasDir
echo You may specify a directory other than \KEYS
echo if you wish.  For instance, to install in the
echo directory \MCRAFT, type
echo     INSTALL %1 %2 \MCRAFT
echo  
:HasDir
getyn "Are you ready to proceed"
if errorlevel 1 goto X
cls
%2:
if "%3" == "" goto KeysDir
mkdir %3
chdir %3
goto CopyInst
:KeysDir
mkdir \KEYS
chdir \KEYS
:CopyInst
copy %1:INSTALL.BAT
install MORE %1 %2
:NoParms
echo To run INSTALL, specify the "from" and "to" drives.
echo For example, to install from diskette drive A: to
echo hard disk C:, type
echo     INSTALL A C
echo  
goto X
:FromHard
rem - the batch file has been copied to the hard disk,
rem - and now we're getting serious.
echo Now copying program, data and graphics files . . .
copy %2:*.*
echo  
echo All done.
:X0
echo  
echo To play "The Keys to Maramon," type
echo     KM
echo  
goto X
:DoDiskcopy
echo  
echo  
echo Use DISKCOPY or any other diskette copying utility to
echo make your working copy.
goto X0
:X
echo  
