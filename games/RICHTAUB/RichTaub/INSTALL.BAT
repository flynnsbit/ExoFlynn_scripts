@echo off
cls
if %1x==x a:install C:
%1
cd \
echo    �
echo                     ________________________________________
echo    �    
echo                                    BASS CHAMP      
echo    �
echo                    Copyright 1991 by Shadowfax Software, Inc.
echo �
echo                               Hard-Disk Installation
echo                     ________________________________________
echo    �
echo    �
echo Welcome!  This installation program copies the files from the BASS
echo CHAMP Master Disk to a directory named \BASSIN on your hard disk 
echo (drive %1).  Your BASS CHAMP Master Disk should now be in drive A.
echo �
echo Once you have completed this installation, you will be able to run the 
echo program directly from your hard disk.
echo �
echo �
echo �
echo �
echo �
echo If you want to quit this installation procedure now or at any time, press
echo CTRL-BREAK and answer Y to the question "Terminate batch job (Y/N)?"
echo �
echo �
pause
echo �
echo �
echo �
if exist %1\bassin\bass.exe goto reinst
md %1\bassin
:reinst
copy a:. %1\bassin
del %1\bassin\*.bat
a:
echo �
echo �
if exist %1\bassin\bass.exe goto aok
goto prob
:aok
echo Bass Champ installed OK. 
echo Tp start the program, type cd \bassin
echo �
echo For your convenience, BASS CHAMP is not copy-protected.
echo Thanks for respecting our copyright.
echo �
pause
cls
type a:readme.doc
goto end
:prob
echo Unable to install BASS CHAMP on drive %1.  Please check to see there is
echo room on drive %1, and that your computer recognizes %1 as a disk drive.
:end

