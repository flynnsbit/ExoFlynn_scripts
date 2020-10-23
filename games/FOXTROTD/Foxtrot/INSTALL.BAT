ECHO OFF
CLS
ECHO 
ECHO 
ECHO                               
ECHO 
SET DIRNAM=FOXTROT
IF "%1" == "C:" GOTO OK
IF "%1" == "D:" GOTO OK
IF "%1" == "E:" GOTO OK
IF "%1" == "c:" GOTO OK
IF "%1" == "d:" GOTO OK
IF "%1" == "e:" GOTO OK
ECHO The correct way to use install is to type
ECHO 
ECHO INSTALL C:          and then press return.
ECHO 
ECHO 
ECHO  You may use C: or D: or E: if you have these hard disks.
ECHO 
ECHO 
ECHO                               
ECHO 
GOTO END
:OK
ECHO 
ECHO Press CTRL & C together to stop the INSTALL process, OR
PAUSE
IF NOT EXIST %1\%DIRNAM%\FOX*.EXE GOTO SKIP1
ECHO 
ECHO 
ECHO Directory %1\%DIRNAM% exists.
ECHO Existing files will be replaced with new versions.
ECHO 
ECHO Press CTRL & C together to stop the INSTALL process, OR
PAUSE
DEL %1\%DIRNAM%\WILPEN.*
GOTO OK1
:SKIP1
MKDIR %1\%DIRNAM%
:OK1
ECHO INSTALL will now copy all FOXTROT DELTA files to %1\%DIRNAM%
ECHO 
COPY *.* %1\%DIRNAM%
IF EXIST %1\%DIRNAM%\WILPEN GOTO FINISHED
ECHO 
ECHO 
ECHO Now place the FOXTROT DELTA DATA diskette in the drive, and
PAUSE
COPY *.* %1\%DIRNAM%
:FINISHED
CLS
ECHO 
ECHO 
ECHO 
ECHO 
ECHO INSTALL has finished.
ECHO To use FOXTROT DELTA you should enter ;
ECHO 
ECHO %1                             and press return;
ECHO 
ECHO CD\%DIRNAM%                    and press return;
ECHO 
ECHO FOX or FOXH (For HERCULES)     and press return;
ECHO                                            as instructed in the manual.
ECHO 
ECHO 
:END

