
:try2
CLS
echo                      �����������������������������������Ŀ
ECHO                      �  Inserta el DISCO 2 en la unidad  �
ECHO                      �         y pulsa una tecla         �
echo                      �������������������������������������
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

:ciclo1
CLS
echo                �����������������������������������������������Ŀ
ECHO                �       Inserta el DISCO 1 en la unidad         �
ECHO                �y NO LO EXTRAIGAS HASTA QUE SE EJECUTE EL JUEGO�
ECHO                �               (pulsa una tecla)               �
echo                �������������������������������������������������
echo 
cd
pause
if exist D1.LZH goto desarc
echo 
goto ciclo1
:desarc
CLS
ECHO                          DESCOMPRIMIENDO...
%1
cd %1\OLIMP
LHA X D1.LZH
DEL D1.LZH
LHA X D2.LZH
DEL D2.LZH
LHA X SB.LZH
DEL SB.LZH

if not exist %1\OLIMP\SON11.VOC goto InstallError


cls
ECHO                ���������������������������������������������������Ŀ
ECHO                �  "OLIMPIADAS 92" Ha sido instalado correctamente  �
echo                �����������������������������������������������������
ECHO        Cada vez que desees jugar teclea:
ECHO                                %1          [Pulsa return]
ECHO                                cd OLIMP    [Pulsa return]
echo                                GIM         [Pulsa return]
pause
goto EXECUTE

:InstallError
:InstallError
echo            �����������������������������������������������������������ͻ
echo            � ERROR:  No he podido instalar OLIMPIADAS 92 correctamente �
echo            �����������������������������������������������������������ͼ
echo                    Puede deberse a que tu disco duro est� lleno.
echo              "OLIMPIADAS 92" Necesita un minimo de 7 Megas libres
echo 
GOTO END
:EXECUTE

GIM
:End