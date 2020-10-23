echo off
cls

if %0==a:instalar goto adrive
if %0==A:instalar goto adrive
if %0==A:INSTALAR goto adrive
if %0==b:instalar goto bdrive
if %0==B:instalar goto bdrive
if %0==B:INSTALAR goto bdrive
if %0==instalar goto doinstall
if %0==INSTALAR goto doinstall
ECHO       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo       ³                    POR FAVOR                      ³
echo       ³ SELECCIONA LA UNIDAD DESDE LA QUE DESEES INSTALAR ³
echo       ³        OLIMPIADAS 92 -Gimnasia Deportiva-         ³
echo       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
ECHO       Por ejemplo:
echo             Para instalar desde la unidad A
echo             Teclea...         A: [Pulsa RETURN]
echo             Y despues....     INSTALAR %1
goto End

:adrive
a:
goto doinstall

:bdrive
b:
goto doinstall

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
echo "%1" es un nombre inv lido de unidad. Por favor usa la letra de la
echo unidad seguida de dos puntos (:)
goto Example

:DriveNeeded
echo Por favor especifica en que unidad quieres instalar OLIMPIADAS 92. Por ejemplo:
:Example
echo 
echo                                 instalar c:
goto End

:MakeDir
echo    ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo    ³                                                                    ³
echo    ³                OLIMPIADAS 92 -Gimnasia Deportiva-                  ³
echo    ³                                                                    ³
echo    ³                     Instalacion en DISCO DURO                      ³
echo    ³                necesitare al menos 7 MEGAS LIBRES                  ³
echo    ³                                                                    ³
echo    ³          Instalando en la unidad %1. Directorio "OLIMP"            ³
echo    ³                                                                    ³
echo    ³             Pulsa Ctrl-C para abortar la instalacion               ³
echo    ³                                                                    ³
echo    ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo 
pause
echo 

if exist %1\OLIMP\*.* goto DirExists
mkdir %1\OLIMP
goto CopyFiles

:DirExists
echo ATENCION!:    El directorio %1\OLIMP existe. Pulsa ahora Ctrl-C si no
echo           quieres sobreescribir el contenido de ese directorio.
echo 
pause
echo 

:CopyFiles
CLS
echo Instalando "Disco 1"......
copy LHA.EXE %1\OLIMP > NUL
copy *.LZH %1\OLIMP > NUL
COPY LEEME.BAT %1\OLIMP > NUL
copy INSTALL2.BAT %1\OLIMP > NUL

if not exist %1\OLIMP\LHA.EXE goto InstallError
if not exist %1\OLIMP\install2.bat goto InstallError

%1\OLIMP\install2 %1

goto End

:InstallError
CLS
echo ERROR:  La instalaci¢n de "OLIMPIADAS 92" en %1\OLIMP  NO a tenido ‚xito.
ECHO          Esto puede deberse a que tu disco duro est‚ lleno.
ECHO          "OLIMPIADAS 92" necesita  7 MEGAS de espacio libre como m¡nimo.
:End
echo 
