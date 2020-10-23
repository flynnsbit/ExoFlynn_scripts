:@ECHO OFF
REM	THIS IS THE MGA INSTALL COPY PROGRAM
REM 	PARAMETER 1 is CURRENT DIR = %1
REM THE FOLLOWING FILES ARE ON DISK 1:
echo ECHO INSERT DISK %%1 IN FLOPPY DRIVE %%2>RETRY.BAT
echo PAUSE>>RETRY.BAT
echo %%2:CHECKDSK %%1 %%2>>RETRY.BAT
call	%1:CHECKDSK 1 %1
If exist *.m* del	*.m* >NUL
If exist loadES.STT del loadES.STT >NUL
call	%1:COPYCOMM.BAT %1
call	%1:COPYLIBM.BAT	%1
REM THE FOLLOWING FILES ARE ON DISK 2:
call	%1:CHECKDSK 2 %1
If exist *.?bm del	*.?bm >NUL
If exist PH256*.ser del	PH256*.ser >NUL
%1:COPYARTM.EXE >NUL
IF ERRORLEVEL 1 Goto Problems
REM THE FOLLOWING FILES ARE ON DISK 4 (the demo):
call	%1:CHECKDSK 4 %1
if exist de*.sel del de*.sel
if exist loadbobg.* del loadbobg.*
if exist *.sev del *.sev
if exist *.sen del *.sen
if exist *.sec del *.sec
if exist tv_*.seq del tv_*.seq
if exist *.sep del *.sep
if exist demtrol.* del demtrol.*
if exist rftsdemo.* del rftsdemo.*
if exist copyde*.* del copyde*.*
call	%1:COPYDPRT %1 >NUL
IF ERRORLEVEL 1 Goto Problems
ECHO 			- INSTALLATION IS NOW COMPLETE -
ECHO 			- TYPE REACH IN THIS DIRECTORY -
GOTO Done
:Problems
ECHO 		- ERROR DURING FILE WRITING - NO SPACE LEFT? -
ECHO There was a write error, probably because the target disk is full.
ECHO The 256 colour version requires about 3.1MB of disk space.
ECHO After deleting something else you can type INSTALL in this directory
ECHO to repeat the same installation, or type INSTALL on the floppy %1: to
ECHO change the installation details.
ECHO THE FAILED INSTALLATION WILL NOW BE DELETED:
ATTRIB +R INSTALLM.BAT
@ECHO ON
DEL *.*
@ECHO OFF
ATTRIB -R INSTALLM.BAT
ECHO @ECHO OFF >INSTALL.BAT
ECHO INSTALLM %1>>INSTALL.BAT
DIR *.BAT
:Done

