@ECHO OFF
SET DOS4GVM=@PCGOL.VMC
MEMDOS 565
IF ERRORLEVEL==1 GOTO NOMEM
FUTBOL SB
GOTO END
:NOMEM
ECHO No tiene memoria suficiente utilizar Sound Blaster
ECHO Necesita al menos 570 kb de memoria base.
ECHO Consulte el manual de su Sistema Operativo para optimizar su memoria
ECHO o ejecute MEMMAKER
PAUSE
FUTBOL
:END
