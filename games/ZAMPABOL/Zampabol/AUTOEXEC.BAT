ECHO OFF
CLS
ECHO ÿ
ECHO ÿ
ECHO ÿ
ECHO ÿ
ECHO                PULSA LA OPCION DESEADA :
ECHO ÿ
ECHO                       (1) HERCULES RESOLUCION PEQUE¥A
ECHO ÿ
ECHO                       (2) HERCULES RESOLUCION  GRANDE
ECHO ÿ
ECHO                       (3)    TARJETA GRAFICA CGA
ELIGE 123 OPCION:
IF ERRORLEVEL 51 GOTO CGA
IF ERRORLEVEL 50 GOTO HG
:----------------------RESOLUCION PEQUE¥A------------------
:HP
ZANPA
ZAMPA
GOTO END
:----------------------RESOLUCION GRANDE -------------------
:HG
ZANPA $
ZAMPA
GOTO END
:------------------------CGA------------------------
:CGA
ZAMPA
:END
:COPYRIGHT  AZC....       (C)AZC 1989...........
