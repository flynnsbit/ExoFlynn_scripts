@echo off
cls
echo COSMIC SPACEHEAD installer
if '%1'=='' goto error
if '%2'=='' goto error
if '%3'=='HD' goto cont

rem setting up paths from batch file on floppy disk
%2:
cd\
md cosmic
cd cosmic
md bin
copy %1:install.bat
install %1 %2 HD

:cont
%1:cosmic1
echo Please place disk 2 in drive %1
pause
cd bin
%1:cosmic2
cd\cosmic
rem copy loader.exe cosmic.exe
rem del loader.exe
echo To play Cosmic Spacehead type COSMIC
echo Have a good play dude!
goto stop

:error
echo Use install as follows :-
echo	INSTALL source dest
echo This will copy Cosmic Spacehead from the source drive to the dest drive
echo and place all of the files in a directory called cosmic.
echo Then to run Cosmic Spacehead go to that directory and type COSMIC
echo Example :-
echo	INSTALL A C
echo Cosmic Spacehead will be copied from Drive A to Drive C and be
echo set up in the directory COSMIC.

:stop
