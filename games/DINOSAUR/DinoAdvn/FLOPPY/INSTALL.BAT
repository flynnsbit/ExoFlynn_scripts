echo off
cls
if %1*==* goto BADDRIVE
echo 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo Copying DINOSAUR ADVENTURE files from %1.  Please Wait...
copy %1\DINO\transfer.exe  
transfer -o -d %1\DINO\install1.dat logo.pcx
transfer -o -d %1\DINO\install2.dat imgs*.* *.cnf zoom/*.* sound.pcx *.fnt
transfer -o -d %1\DINO\disk1.dat  
:LOOPCOPY
If Exist zzz.zzz Goto DNE
cls
echo 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
echo                Install is finished copying this diskette.
echo                                                                        
echo        
echo             Please insert the next DINOSAUR Adventure disk...
echo        
echo        
echo 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
pause
cls
echo 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo Copying DINOSAUR ADVENTURE files from %1.  Please Wait...
transfer -o -d %1\disk*.dat  
copy %1\moresnds.dat >nul
Goto LOOPCOPY
del zzz.zzz
:DNE
SETUP
cls
echo        �袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�
echo        �                                                            �
echo        �              DINOSAUR Adventure is now installed.          �
echo        �                                                            �
echo        �                Type  DINO  [Enter] to begin.               �
echo        �                                                            �
echo        �               Please call us at 818-542-4200               �
echo        �          if you have any questions or suggestions.         �
echo        �                                                            �
echo        �  NOTE:  For the latest information on DINOSAUR ADVENTURE   �
echo        �         type   README   [Enter].                           �
echo        훤袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴暠
echo        
echo        
Goto FINI
:BADDRIVE
cls
echo             You must specify the floppy drive to install from, as in:
echo
echo                                  INSTALL A:
echo
echo                     (You may use drives A:, B:, etc...)
echo 
echo 
:FINI
