echo off
cls
if %0==a:install goto adrive
if %0==A:install goto adrive
if %0==A:INSTALL goto adrive
if %0==b:install goto bdrive
if %0==B:install goto bdrive
if %0==B:INSTALL goto bdrive
if %0==install goto doinstall
if %0==INSTALL goto doinstall
if %0==a:install.bat goto adrive
if %0==A:install.bat goto adrive
if %0==A:INSTALL.BAT goto adrive
if %0==b:install.bat goto bdrive
if %0==B:install.bat goto bdrive
if %0==B:INSTALL.BAT goto bdrive
if %0==install.bat goto doinstall
if %0==INSTALL.BAT goto doinstall
echo 
echo 
echo    Posizionarsi sul drive da cui effettuare l'installazione.
echo    Ad esempio, per installare dal drive A:
echo    Digitare        A:           e confermare con ENTER
echo    poi digitare    INSTALL %1   e confermare con ENTER
echo 
goto End

:adrive
a:
goto doinstall

:bdrive
b:

:doinstall
if "%1"=="" goto DriveNeeded
if %1==c: goto MakeDir
if %1==C: goto MakeDir
if %1==d: goto MakeDir
if %1==D: goto MakeDir
if %1==e: goto MakeDir
if %1==E: goto MakeDir
if %1==f: goto MakeDir
if %1==F: goto MakeDir
if %1==g: goto MakeDir
if %1==G: goto MakeDir
if %1==h: goto MakeDir
if %1==H: goto MakeDir
if %1==i: goto MakeDir
if %1==I: goto MakeDir
if %1==j: goto MakeDir
if %1==J: goto MakeDir
if %1==k: goto MakeDir
if %1==K: goto MakeDir
if %1==l: goto MakeDir
if %1==L: goto MakeDir
if %1==m: goto MakeDir
if %1==M: goto MakeDir
if %1==n: goto MakeDir
if %1==N: goto MakeDir
if %1==o: goto MakeDir
if %1==O: goto MakeDir
if %1==p: goto MakeDir
if %1==P: goto MakeDir

:InvalidDrive
cls
echo 
echo    "%1" non  un nome di drive valido. Usare la lettera del drive
echo    scelto seguita dai due punti:
goto Example

:DriveNeeded
cls
echo 
echo    Specificare su quale drive si vuole installare il programma,
echo    ad esempio:

:Example
echo 
echo            install c:
goto End

:MakeDir
cls
echo 
echo       ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo       บ                                                               บ
echo       บ               IL GRANDE GIOCO DI TANGENTOPOLI                 บ
echo       บ                                                               บ
echo       บ            Utility per installazione su Hard Disk             บ
echo       บ                                                               บ
echo       บ   Questo programma installer… tutti i file in una directory   บ
echo       บ   chiamata "TANGENT" sul drive %1.                            บ
echo       บ   Se non si vuol proseguire  con l'installazione, premere     บ
echo       บ   Ctrl-C per tornare al DOS.                                  บ
echo       บ                                                               บ
echo       ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
pause
echo 
if exist %1\TANGENT\*.* goto DirExists
if exist %1\TANGENT goto FileExists
if not exist %1\TANGENT goto MakeDir_1
del %1\TANGENT > nul

:MakeDir_1
mkdir %1\TANGENT
goto CopyFiles

:FileExists
echo 
echo    ATTENZIONE!:  In %1\ esiste il file TANGENT. Questo non permette  la
echo    creazione della directory TANGENT e percio' tale file verr… cancellato.
echo    Se non si vuole proseguire nella installazione e perdere quindi questo
echo    file, premere Ctrl-C per terminare qui l'installazione.
echo 
pause
del %1\TANGENT
goto MakeDir_1

:DirExists
echo 
echo    ATTENZIONE!:  La directory %1\TANGENT esiste gi…. Se non si vuole proseguire
echo    nell'installazione e sovrascrivere quindi i files di questa directory,
echo    premere Ctrl-C per terminare qui l'installazione.
echo 
pause
echo 

:CopyFiles

echo    COPIA DEI FILES DI TANGENTOPOLI... IN CORSO!
echo.
copy *.exe %1\TANGENT > NUL
copy resource.* %1\TANGENT > NUL
if exist leggimi.doc copy leggimi.doc %1\TANGENT > NUL
cls
echo 
echo       ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo       บ                                                               บ
echo       บ               IL GRANDE GIOCO DI TANGENTOPOLI                 บ
echo       บ                                                               บ
echo       บ                  Installazione completata                     บ
echo       บ                                                               บ
echo       บ   Per giocare al grande gioco di Tangentopoli, bastera'       บ
echo       บ   entrare nella directory %1\TANGENT, digitare START e        บ
echo       บ   premere invio.                                              บ
echo       บ                                                               บ
echo       ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 

:End
echo 
