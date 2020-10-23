@echo off
echo off
cls
if "%1"=="" goto uso
if "%2"=="" goto uso
echo Se va a instalar PAC2000 en el disco duro en el directorio PAC2000
echo Si desea abortar la instalacion pulse Control-C
pause
:instala
echo Instalando PAC2000
if exist %2:\pac2000 goto creado
md %2:\pac2000
:creado
copy %1:*.* %2:\pac2000
%2:
cd %2:\pac2000
echo -------------------------------------------------
echo Para jugar teclee PAC en el directorio %2:\PAC2000
echo -------------------------------------------------
goto fin
:uso
echo Utilice:
echo %0 Unidad_origen Unidad_destino
echo ejemplo: para copiar el juego de la unidad A: a la C: teclee
echo  INSTALAR A C
:fin
