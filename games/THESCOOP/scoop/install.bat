echo off
cls
set d=c:
if .%1%== . goto start 
set d=%1%
echo -1>%d%test
if not exist %d%test goto :error
del %d%test
:start
echo The Scoop Install Procedure copies all program
echo files onto your hard drive in a directory called
echo %d%\SCOOP.                   
echo If you want to install Scoop onto any other
echo drive, press Ctrl-Break to exit and type
echo INSTALL followed by the drive specification.
echo     example:   INSTALL D:
echo     Installs Scoop onto drive D:
pause
:begin1
if exist scoop.exe goto begin2
cls
echo ***************************
echo *  Insert Scoop Disk #1  *
echo ***************************
pause
goto begin1
:begin2
mkdir %d%\scoop
copy *.* %d%\scoop 
:begin3
if exist scapix goto begin4
cls
echo ***************************
echo *  Insert Scoop Disk #2  * 
echo ***************************
pause
goto begin3
:begin4
copy *.* %d%\scoop
%d%
cd \scoop  
cls 
echo ***************************
echo *  Installation Complete  *
echo *                         *
echo *  Type:     SCOOP        *
echo *                         *
echo *  Then press (ENTER)     *
echo *  To start the Playing   *
echo *      The Scoop          *
echo ***************************
goto end
:error
echo The computer cannot copy the program files where you specified. Please
echo retype the drive specification. Example: Install D: will place the 
echo  program  files on disk drive D: in a sub-directy called better. 
REM RDW
:end


