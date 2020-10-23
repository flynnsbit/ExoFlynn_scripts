@ECHO OFF
CLS
ECHO                         ษอออออออออออออออออออออออออป
ECHO                         บ SEVENTH SWORD OF MENDOR บ
ECHO                         บ      Playable Demo      บ
ECHO                         วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
ECHO                         บ      Installation       บ
ECHO                         ศอออออออออออออออออออออออออผ
ECHO.
IF '%1' == '/?' GOTO Help
IF '%1' == '/H' GOTO Help
IF '%1' == '/h' GOTO Help
IF '%1' == '' GOTO Error


:MAKEDIR

MD %1\MENDOR
COPY sw7.7ws %1\MENDOR
IF NOT EXIST %1\MENDOR\sw7.7ws GOTO ERROR 
MD %1\MENDOR\SAVE
MD %1\MENDOR\DATA
IF errorlevel=0 GOTO CopyFiles
ECHO Error Creating %1\MENDOR, do not use INSTALL program.
ECHO You must install MENDOR manually. Please consult your consult your MS-DOS
ECHO manual for instruction in using the COPY command.
GOTO End

:CopyFiles
cls
ECHO Installation will now proceed to drive %1\MENDOR. Press CTRL C to cancel.
ECHO.
PAUSE
ECHO.
ECHO Copying files to %1\MENDOR
COPY *.* %1\MENDOR
CD DATA
COPY *.* %1\MENDOR\DATA
CD..
CD SAVE
COPY *.* %1\MENDOR\SAVE
CD..
IF EXIST %1\MENDOR\INST.EXE GOTO Ok3
GOTO ErrorI

:Ok3
ECHO INSTALL FINISHED
PAUSE
CLS
%1
CD\MENDOR
INST
GOTO End

:ErrorI
CLS
ECHO Error installing MENDOR demonstration.
GOTO End

:Help
ECHO.
ECHO To Install MENDOR you must change to the DEMOS/MENDOR directory on the CD-ROM
ECHO and then type INSTALL followd by the drive to install it to.
ECHO.
ECHO e.g.      E:
ECHO           INSTALL C:
ECHO.
ECHO This will create a directory called MENDOR on C: with all the files in it.
ECHO.
ECHO Make sure that the drive has 26 Megabytes of free space available!
ECHO.
ECHO When the demo has been installed you must configure it to your soundcard.
ECHO This is done by using the INST.EXE program. This program will run automatically 
ECHO when installation is completed.
ECHO.
ECHO Type MENDOR to run the demo from the DOS prompt.
ECHO.
ECHO If you have any press, sales or marketing enquiries contact Chris Warrender or
ECHO Patrick Draggon on :44 (0)181 680 7044 (Voice)  44 (0)181 688 7535 (Facsimile).
GOTO End

:Error
ECHO.
ECHO You need to specify a VALID drive letter.
ECHO.
ECHO Please type INSTALL /h for more information.
:End
ECHO.

