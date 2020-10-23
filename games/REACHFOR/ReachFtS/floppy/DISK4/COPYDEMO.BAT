@echo off
break on
set junkpath=
if '%1' == '' copydemo c:\reach
cls
echo		Reach For The Skies Demo Installation
echo		ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo	Usage: COPYDEMO d:\targdir
echo	- Where d	is the diskdrive you want to copy the demo to
echo	- and   targdir	is the directory you want to copy the demo to
echo	default is:	c:\reach
echo	ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
echo	The directory %1 is about to be created if necessary,
echo	and then the files will be copied to it.
echo	If not acceptable please press Break or Ctrl and C together.
if "%PATH%" == "" goto RetryDOS
:TryAgain
%junkpath%xcopy	*.sel %1\ /v /w
IF not errorlevel 1 goto InstalledOK
:PrintAnError
if exist %1\demo*.sel del %1\demo*.sel
echo	There were problems installing the files which make up the
echo	Reach for the Skies demo to the directory %1.
echo	ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
echo	Possibly, your PATH does not give access to the XCOPY command.
echo	This command is used to install the demo.
echo	A path to your DOS directory is required to use XCOPY.
echo	On the command-line type:	PATH=disk:\dospath
echo	Example:			PATH=C:\DOS
echo	and then try again. 
echo	ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
echo	This demo requires approximately 1.26 MB of disk space.
echo	Sorry, the demo will not fit on a standard 1.2MB 5¬ in. floppy
goto	stopdemo
:InstalledOK
if exist %1\demo*.sel goto Continstall
if "%junkpath%" == "" goto trydos
echo	A path to your DOS directory is required to use XCOPY. 
echo	On the command-line type:	PATH=disk:\dospath
echo	Example	(already tried):	PATH=C:\DOS
echo	and then try again.
goto	stopdemo
:trydos
echo	Looking for XCOPY in C:\DOS...
:RetryDos
set junkpath=c:\dos\
goto TryAgain
:ContInstall
if not exist %1\loadbobg.sel goto PrintAnError
echo Copying Remaining Files...
%junkpath%xcopy	*.sen %1 /v >NUL
%junkpath%xcopy	*.sev %1 /v >NUL
%junkpath%xcopy	tv_*.sec %1 /v >NUL
for %%i in (tv_home.seq gamepal.sep demtrol.exe RFTSDEMO.exe loadms.stt copydemo.bat) do %junkpath%xcopy %%i %1 /v >NUL
%junkpath%xcopy	bob*.com %1 /v >NUL
%junkpath%xcopy	ju8*.com %1 /v >NUL
%junkpath%xcopy	???n?e?.com %1 /v >NUL
%junkpath%xcopy	r???net.bin %1 /v >NUL
%junkpath%xcopy	b?music.drv %1	/v >NUL
echo	The Reach for the Skies demo is now installed on your hard disk.
echo	To start it enter RFTSDEMO when in the %1 directory.
cd %1
:stopdemo
set junkpath=
