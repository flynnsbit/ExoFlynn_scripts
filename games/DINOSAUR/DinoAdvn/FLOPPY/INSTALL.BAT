echo off
cls
if %1*==* goto BADDRIVE
echo ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
echo Copying DINOSAUR ADVENTURE files from %1.  Please Wait...
copy %1\DINO\transfer.exe  
transfer -o -d %1\DINO\install1.dat logo.pcx
transfer -o -d %1\DINO\install2.dat imgs*.* *.cnf zoom/*.* sound.pcx *.fnt
transfer -o -d %1\DINO\disk1.dat  
:LOOPCOPY
If Exist zzz.zzz Goto DNE
cls
echo ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
echo                Install is finished copying this diskette.
echo                                                                        
echo        
echo             Please insert the next DINOSAUR Adventure disk...
echo        
echo        
echo ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
pause
cls
echo ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
echo Copying DINOSAUR ADVENTURE files from %1.  Please Wait...
transfer -o -d %1\disk*.dat  
copy %1\moresnds.dat >nul
Goto LOOPCOPY
del zzz.zzz
:DNE
SETUP
cls
echo        ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo        บ                                                            บ
echo        บ              DINOSAUR Adventure is now installed.          บ
echo        บ                                                            บ
echo        บ                Type  DINO  [Enter] to begin.               บ
echo        บ                                                            บ
echo        บ               Please call us at 818-542-4200               บ
echo        บ          if you have any questions or suggestions.         บ
echo        บ                                                            บ
echo        บ  NOTE:  For the latest information on DINOSAUR ADVENTURE   บ
echo        บ         type   README   [Enter].                           บ
echo        ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
