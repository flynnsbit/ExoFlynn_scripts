echo off
echo ***
echo ***
echo		The Global Dilemma: Guns or Butter Hard Disk Installation
echo ***
echo ***
if exist G&B.EXE goto LVL1
echo Wrong Game Diskette to start Installation.  Use Game Diskette #1.
goto EXIT

:LVL1
echo We will be copying the contents of the Game diskette(s) to the
echo default hard disk drive C: by creating a subdirectory (C:\G&B)
echo to which the game files will copied.
echo ***
echo To start the game after the install, just type:  GB
echo ***
echo To install to the hard disk, place the Game Diskette #1 into
echo drive A and type:
echo				A:
echo				INSTALHD
echo ***
echo To install to other than drive C:, specify a drive letter after
echo the INSTALHD command.  Example for drive D:, INSTALHD D:
echo ***
echo If you have not done this, you can stop at this time by typing
echo a CTRL C (^C) and a 'y' to the next question to exit.
echo ***
echo ***
pause

if "%1" == "" md c:\G&B
if not "%1" == "" md %1\G&B

if "%1" == "" goto CHKC
goto CHKOTHER
:CHKC
copy instalhd.bat c:\G&B
if exist c:\G&B\instalhd.bat goto LVL2
goto BAD
:CHKOTHER
copy instalhd.bat %1\G&B
if exist %1\G&B\instalhd.bat goto LVL2
goto BAD

:LVL2
echo Copying files...
if "%1" == "" copy *.* c:\G&B
if not "%1" == "" copy *.* %1\G&B
if exist G&B.OVL goto BYE
echo ***
echo ***

:LVL3
echo Please insert Game Diskette #2 now:
pause
if not exist G&B.OVL goto LVL3
echo Copying files...
if "%1" == "" copy *.* c:\G&B
if not "%1" == "" copy *.* %1\G&B

:BYE
if "%1" == "" C:
if not "%1" == "" %1
cd \G&B

:GOOD
echo ***
echo ***
echo The Installation is now Complete.
goto EXIT

:BAD
echo ***
echo ***
echo Sorry, error in Installing.  Exiting....

:EXIT
