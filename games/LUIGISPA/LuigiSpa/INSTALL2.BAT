ECHO OFF
CLS
IF EXIST %1\LUIGI\INSTALL2.BAT GOTO try2
echo  
ECHO PARA INSTALAR TECLEA:
ECHO INSTALAR [UNIDAD DE DESTINO]:   (Pej. INSTALAR C:)
GOTO END
:try2
CLS
echo                      旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO                      �  Inserta el DISCO 2 en la unidad  �
ECHO                      �         y pulsa una tecla         �
echo                      읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo 
ECHO.
ECHO.
ECHO.
pause
if exist TOPO.BA& goto docopy2
echo 
goto try2
:docopy2
cls
echo Instalando "Disco 2"......
COPY *.* %1\LUIGI > NUL
IF NOT EXIST %1\LUIGI\Topo.BA& GOTO InstallError

:desarc
CLS
ECHO                      旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
ECHO                      �        DESCOMPRIMIENDO...        �
ECHO                      읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
%1
cd %1\LUIGI
DESCOMPR /E /D *.??&
IF ERRORLEVEL=6 GOTO INSTALLERROR
IF ERRORLEVEL=5 GOTO INSTALLERROR
IF ERRORLEVEL=2 GOTO INSTALLERROR
IF ERRORLEVEL=1 GOTO INSTALLERROR

if not exist %1\LUIGI\Topo.bat goto InstallError
DEL INSTALAR.BAT
DEL DESCOMPR.COM



cls
ECHO              旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO              �  "LUIGI & SPAGHETTI" Ha sido instalado correctamente  �
echo              읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO        Cada vez que desees jugar teclea:
ECHO                                %1          [Pulsa return]
ECHO                                cd LUIGI    [Pulsa return]
echo                                TOPO        [Pulsa return]
pause
goto EXECUTE

:InstallError
:InstallError
echo     �袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�
echo     �  ERROR:  No he podido instalar LUIGI & SPAGHETTI  correctamente. �
echo     훤袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴暠
echo                    Puede deberse a que tu disco duro este lleno.
echo             "LUIGI & SPAGHETTI" Necesita un minimo de 3.4 Megas libres
echo 
GOTO END
:EXECUTE
TOPO
:End
