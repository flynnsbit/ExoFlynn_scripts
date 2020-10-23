@echo off
echo off
cls

if %1x==x goto spellItOut
if %2x==x goto spellItOut

if %1==a: goto try2nd
if %1==A: goto try2nd
if %1==b: goto try2nd
if %1==B: goto try2nd
goto unusual

:try2nd
if %2==a: goto doinstall
if %2==A: goto doinstall
if %2==b: goto doinstall
if %2==B: goto doinstall

:unusual
echo CHARDISK %1 %2 is invalid.  Please use the drive's letter followed by a colon:
goto sample

:spellItOut
echo Please specify the original drive and the character drive,  for example:
:sample
echo 
echo         chardisk a: b:
goto end

:doinstall

if %1 == %2 goto unusual

echo         �������������������������������������������������������������ͻ
echo         �                                                             �
echo         �                         Tunnels & Trolls                    �
echo         �                                                             �
echo         �                  Character Disk Creation Utility            �
echo         �                                                             �
echo         �                                                             �
echo         � This Utility requires that the TNT original Disk 1 be in    �
echo         � Drive %1 and a blank FORMATTED disk be in Drive %2          �
echo         �                                                             �
echo         � If you don't have TWO (2) floppy disk drives, please refer  �
echo         � to the Insert Sheet included with Tunnels & Trolls          �
echo         �                                                             �
echo         � If all is acceptable, press any key...                      �
echo         �                                                             �
echo         � If not, press Ctrl-C to exit.                               �
echo         �                                                             �
echo         �������������������������������������������������������������ͼ
echo 
pause
echo 

copy %1\ID? %2\ID7 >nul
copy %1\GCON.DAT %2\ >nul

if not exist %2\id7 goto error
if not exist %2\gcon.dat goto error
goto success

:error
echo ERROR:  Creation of the character disk was unsuccessful.  This might be
echo         because your disk is full.  Your characters need at least 1k
echo         free disk space.
goto end

:success
echo 
echo SUCCESS:  Creation of the character disk was successful.
echo 
:end
echo 
