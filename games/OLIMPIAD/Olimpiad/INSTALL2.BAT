
:try2
CLS
echo                      旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO                      �  Inserta el DISCO 2 en la unidad  �
ECHO                      �         y pulsa una tecla         �
echo                      읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo 
cd
pause
if exist disco2 goto docopy2
echo 
goto try2

:docopy2
CLS
echo Copiando ficheros...
COPY *.* %1\OLIMP > NUL
IF NOT EXIST %1\OLIMP\DISCO2 GOTO InstallError


:try3
CLS
echo                      旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO                      �  Inserta el DISCO 3 en la unidad  �
ECHO                      �         y pulsa una tecla         �
echo                      읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo 
cd
pause
if exist disco3 goto docopy3
echo 
goto try3

:docopy3
CLS
echo Copiando ficheros...
COPY *.* %1\OLIMP > NUL
IF NOT EXIST %1\OLIMP\DISCO3 GOTO InstallError

:ciclo1
CLS
echo                旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO                �       Inserta el DISCO 1 en la unidad         �
ECHO                퀉 NO LO EXTRAIGAS HASTA QUE SE EJECUTE EL JUEGO�
ECHO                �               (pulsa una tecla)               �
echo                읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo 
cd
pause
if exist atle.arj goto desarc
echo 
goto ciclo1
:desarc
CLS
ECHO                          DESCOMPRIMIENDO...
%1
cd %1\OLIMP
arj e atle.arj -y
DEL atle.arj

if not exist atle.a01 goto InstallError
arj e atle.a01 -y
DEL atle.a01

if not exist atle.a02 goto InstallError  
arj e atle.a02 -y
DEL atle.a02

if not exist atle.a03 goto InstallError  
arj e atle.a03 -y
DEL atle.a03

if not exist atle.a04 goto InstallError  
arj e atle.a04 -y
DEL atle.a04

if not exist atle.a05 goto InstallError  
arj e atle.a05 -y
DEL atle.a05


if not exist %1\OLIMP\SON41.VOC goto InstallError
if not exist %1\olimp\ol92m goto InstallError

cls
ECHO                旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO                �  "OLIMPIADAS 92" Ha sido instalado correctamente  �
echo                읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO        Cada vez que desees jugar teclea:
ECHO                                %1          [Pulsa return]
ECHO                                cd OLIMP    [Pulsa return]
echo                                OLIMP       [Pulsa return]
pause
goto EXECUTE

:InstallError
:InstallError
echo            �袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴敲
echo            � ERROR:  No he podido instalar OLIMPIADAS 92 correctamente �
echo            훤袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�
echo                    Puede deberse a que tu disco duro est� lleno.
echo              "OLIMPIADAS 92" Necesita un minimo de 8.1 Megas libres
echo 
GOTO END
:EXECUTE

OLIMP
:End
