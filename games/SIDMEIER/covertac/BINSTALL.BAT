echo off
REM this program installs for 5 1/4" disks only
REM test for existing COVERT subdirectory
if EXIST %1:\MPS\COVERT\game.exe goto ClearDir
if EXIST %1:\MPS\COVERT\egraphic.exe goto ClearDir
goto NewDir

:ClearDir
REM  this will clear the subdirectory %1:\MPS\COVERT
cls
echo Please answer "Y" to following question,
echo they clear out the old COVERT files.
echo on
erase %1:\MPS\COVERT\*.*
echo off
goto CopyFiles

:NewDir
REM  this installs new COVERT subdirectory; errorlevel 0 means success
MD %1:\MPS
MD %1:\MPS\COVERT
if errorlevel 0 goto MakeDir
cls
echo Error creating %1:\MPS\COVERT subdirectory, do not use INSTALL program.
echo You must install COVERT ACTION manually. Sorry. 
goto End
:MakeDir

:CopyFiles
REM  this copies files from floppies in to %1:\MPS\COVERT

cls
echo Insert disk labelled "A" into your B: disk drive, then...
PAUSE
copy B:*.* %1:\MPS\COVERT
copy B:covert.bat %1:\MPS

cls
echo Insert disk labelled "B" into your B: disk drive, then...
PAUSE
copy B:*.* %1:\MPS\COVERT

if EXIST %1:\MPS\COVERT\TAC.EXE goto TwoDisks

cls
echo Insert disk labelled "C" into your B: disk drive, then...
PAUSE
copy B:*.* %1:\MPS\COVERT

cls
echo Insert disk labelled "D" into your B: disk drive, then...
PAUSE
copy B:*.* %1:\MPS\COVERT

:TwoDisks
copy B:covert.bat %1:\mps

cls
%1:
cd \mps
echo Type 'COVERT' to begin game.
:End
echo INSTALL FINISHED

