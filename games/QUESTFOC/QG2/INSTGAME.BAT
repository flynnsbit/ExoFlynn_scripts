echo off

rem 	Parameters are
rem 		%1:	drive on which to install the program
rem 		%2:	drive from which installation is taking place

rem	Check to see that there is enough space for the installation.
space %1: 4000kb
if errorlevel 1 goto NoSpace

godir %1:\sierra\trial
if errorlevel 1 goto CantCreate
echo Copying drivers...
copy %2:*.drv >nul
copy %2:exists.com >nul
copy %2:_hdtrial.bat ..\trial.bat >nul
copy %2:__insth.bat >nul
__insth %1 %2

:NoSpace
echo "There is not enough space on %1 to install"
echo "    Quest for Glory II: Trial By Fire!"
echo " 4 megabytes of disk space are necessary."
pause
goto Exit

:CantCreate
echo "Unable to create directory %1."
pause
goto Exit

:Exit

