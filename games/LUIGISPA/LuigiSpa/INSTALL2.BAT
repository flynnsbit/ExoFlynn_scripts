ECHO OFF
CLS
IF EXIST %1\LUIGI\INSTALL2.BAT GOTO try2
echo  
ECHO PARA INSTALAR TECLEA:
ECHO INSTALAR [UNIDAD DE DESTINO]:   (Pej. INSTALAR C:)
GOTO END
:try2
CLS
echo                      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
ECHO                      ณ  Inserta el DISCO 2 en la unidad  ณ
ECHO                      ณ         y pulsa una tecla         ณ
echo                      ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
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
ECHO                      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
ECHO                      ณ        DESCOMPRIMIENDO...        ณ
ECHO                      ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
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
ECHO              ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
ECHO              ณ  "LUIGI & SPAGHETTI" Ha sido instalado correctamente  ณ
echo              ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
ECHO        Cada vez que desees jugar teclea:
ECHO                                %1          [Pulsa return]
ECHO                                cd LUIGI    [Pulsa return]
echo                                TOPO        [Pulsa return]
pause
goto EXECUTE

:InstallError
:InstallError
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ  ERROR:  No he podido instalar LUIGI & SPAGHETTI  correctamente. บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo                    Puede deberse a que tu disco duro este lleno.
echo             "LUIGI & SPAGHETTI" Necesita un minimo de 3.4 Megas libres
echo 
GOTO END
:EXECUTE
TOPO
:End
