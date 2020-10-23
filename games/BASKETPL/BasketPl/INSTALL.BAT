echo off
cls
echo INSTALL PC-PLAYOFF PC 5¬ e 3«
if EXIST C:\PLAYOFF\INSTALL.BAT goto ERROR   
goto NewDir

:NewDir
MD C:\PLAYOFF
MD C:\PLAYOFF\GFXE
MD C:\PLAYOFF\GFXC
if errorlevel 0 goto CopyFiles
echo Errore nella creazione della directory  PLAYOFF, o delle sue subdirectory.
echo Spiacenti, ma dovrete  controllare manualmente (il manuale del computer 
echo pu• esservi di grande aiuto).
echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
echo Error in the creation of PLAYOFF directory and subdirectories.
echo Sorry, but you'llhave to check it through yourself (please refer to your
echo computer manual for instruction).
pause
goto Stop

:CopyFiles
echo Inserire il disco principale nel drive e poi premere un tasto qualunque.
echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
echo Insert the original game disk into the drive and press any key to
echo continue.
PAUSE
if not EXIST play.exe goto ERROR   
copy *.* C:\PLAYOFF
copy \GFXC\*.* C:\PLAYOFF\GFXC
copy \GFXE\*.* C:\PLAYOFF\GFXE
cls
echo Inserire il DATA DISK nel drive A: e poi premere un tasto qualunque.
echo (ATTENZIONE: se avete la versione del gioco in un unico disco da 3«, 
echo lasciarlo dentro e continuare come se niente fosse...)
echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
echo Insert the DATA DISK into drive A: and press any key to continue.
echo (WARNING: if you have a single 3« disk game version , leave the
echo disk in the drive and continue...)
PAUSE
if not EXIST playe.exe goto ERROR
copy *.* C:\PLAYOFF
copy \GFXE\*.* C:\PLAYOFF\GFXE
goto :End

:ERROR
cls
echo ATTENZIONE!! Qualcosa Љ andato storto. 
echo Forse esiste gi… una subdirectory con il nome PLAYOFF.
echo Forse il gioco Љ gi… stato installato in precedenza (basta installarlo 
echo una volta sola !).
echo Forse  non  c'Љ abbastanza  spazio libero sul disco  fisso  (occorrono 
echo almeno 700 KBytes liberi!).
echo Forse Љ stato inserito nel drive il disco sbagliato! Forse...
echo Spiacenti, ma dovete scoprire e risolvere il problema (il manuale del 
echo computer  pu•   essere  di  grande  aiuto) da  soli  (ricordatevi  di 
echo cancellare tutto quanto eventualmente copiato da  INSTALL  sul  disco 
echo fisso prima di riprovare).   
echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
echo WARNING!! Something's gone wrong.
echo You may already have a subdirectory called PLAYOFF.
echo You may already, have installed the game (once is enough!).
echo You may not have enough free space on your harddisk (you need at least
echo 700 free Kbytes!).
echo You may have inserted the wrong disk ! Maybe ...
echo Sorry but you have to solve the problem by yourself (the computer manual
echo may be able to help you). Before trying it again , delete anything you
echo may have copied from install into harddisk.
goto :Stop

:End
cls
echo Terminata l'installazione!
echo Ora, e tutte le prossime volte che vorrete giocare a "BASKET PLAYOFF",  
echo entrate nella directory   C:\PLAYOFF   (consultate il manuale del  computer,
echo se non sapete come fare)  e  scrivete  PLAY  (premendo poi il tasto ENTER).
echo BUON DIVERTIMENTO (e non dimenticate di spedire la cartolina di garanzia)!
echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
echo Installation is completed!
echo From now on, when you want to play "BASKET PLAYOFF", just enter into 
echo the directory  C:\PLAYOFF (refer to your computer manual for instruction)
echo and type PLAYOFF (press enter).
echo Have fun (and don't forget to send us your warranty card!),

:Stop
