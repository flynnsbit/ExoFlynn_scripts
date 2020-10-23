@echo off
IF NOT EXIST DOSINST.BAT GOTO CheckDrive
:Start
cd \dossetup
install

if errorlevel 3 goto done

if errorlevel 1 goto exit
echo In the future type Rumpel
echo     to run the game
echo The game will now auto start
pause
rumpel
goto end1

:done
echo    You must load your mouse
echo  driver before running the game
goto end

:exit

echo        The installation for demo was incomplete.
echo            The game will not run correctly.
echo Please go to the \dossetup\techhelp directory on the CD and 
echo  type README for more information on possible solutions or
echo          call TerraGlyph Technical Support at
echo 	             Voice (847) 781-4196
echo	             Fax    (847) 781-1558
echo    Support is available at these numbers from 9am to 6pm 
echo                 Monday through Friday.

GOTO end

:CheckDrive
IF "%1" == "" GOTO Error1
%1
cd \
IF EXIST DOSINST.BAT GOTO Start
:Error1
echo	Change drives to the CD-ROM and 
echo type DOSINST, or add the drive letter
echo	for the CD-ROM (ex.  DOSINST D:).
:end
cd \
:end1
