:@ECHO OFF
REM	THIS IS THE MGA INSTALL COPY PROGRAM
REM 	PARAMETER 1 is CURRENT DIR = %1
REM THE FOLLOWING FILES ARE ON DISK 1:
echo ECHO INSERT DISK %%1 IN FLOPPY DRIVE %%2>RETRY.BAT
echo PAUSE>>RETRY.BAT
echo %%2:CHECKDSK %%1 %%2>>RETRY.BAT
If exist *.e* del	*.e* >NUL
If exist loadES.STT del loadES.STT >NUL
call	%1:CHECKDSK 1 %1
call	%1:COPYCOMM.BAT %1
call	%1:COPYLIBE.BAT	%1
REM THE FOLLOWING FILES ARE ON DISK 2:
call	%1:CHECKDSK 3 %1
%1:COPYARTE.EXE	>NUL
IF ERRORLEVEL 1 Goto Problems
ECHO 			--- INSTALLATION IS NOW COMPLETE ---
ECHO 			--- TYPE REACH IN THIS DIRECTORY ---
GOTO Done
:Problems
ECHO 			- ERROR DURING  WRITING - NO SPACE -
ECHO There was a write error, probably because the target disk is full.
ECHO The EGA version requires about 1.2MB of disk space.
ECHO After deleting something else you can type INSTALL in this directory
ECHO to repeat the same installation, or type INSTALL on the floppy %1 to
ECHO change the installation details.
ECHO The failed installation will now be deleted:
ATTRIB +R INSTALLE.BAT
@ECHO ON
DEL *.*
@ECHO OFF
ATTRIB -R INSTALLE.BAT
ECHO @ECHO OFF >INSTALL.BAT
ECHO INSTALLE %1>>INSTALL.BAT
DIR *.BAT
:Done
