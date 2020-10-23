@ECHO OFF
IF EXIST hmiset.cfg GOTO GO
HMISETUP.EXE
:GO
@ECHO OFF
IF "%1" == "$CALL$" GOTO L_CALL

IF EXIST _RUNVM.VMC GOTO L_TEST

CLS
GOTO L_END

:L_TEST
IF NOT "%COMSPEC%" == "" GOTO L_SPC

IF EXIST $MADTV$.000 DEL $MADTV$.000
COMMAND /C COPY MAD_8MB.BAT $MADTV$.000
IF EXIST $MADTV$.000 GOTO L_COM

CLS
ECHO.
ECHO **** FEHLER: DOS BEFEHLSINTERPRETER NICHT GEFUNDEN ****
ECHO Dieses Programm benîtigt den DOS Befehlsinterpreter, um
ECHO zu starten. Weder die  Umgebungsvariable  COMSPEC  noch
ECHO der DOS Befehlsinterpreter COMMAND.COM konnten gefunden
ECHO bzw. ausgefÅhrt werden.  Bitte  konsultieren  Sie  Ihre
ECHO DOS Anleitung oder eine evtuelle Online-Hilfe.
ECHO.
GOTO L_END

:L_SPC
%COMSPEC% /E:16384 /C MAD_8MB.BAT $CALL$ %1 %2 %3 %4 %5 %6 %7 %8
GOTO L_END

:L_COM
DEL $MADTV$.000
COMMAND /E:16384 /C MAD_8MB.BAT $CALL$ %1 %2 %3 %4 %5 %6 %7 %8
GOTO L_END

:L_CALL
SET DOS4GVM=@_RUNVM.VMC
IF %DOS4GVM% == @_RUNVM.VMC GOTO L_VMM

CLS
ECHO.
ECHO ***** FEHLER: KEIN PLATZ IN UMGEBUNGSBEREICH FREI *****
ECHO Es wurde ein DOS Befehlsinterpreter mit 16 Kilobyte fÅr
ECHO den Umgebungsbereich gestartet. Trotzdem ist der  Platz
ECHO nicht  ausreichend.  Bitte  konsultieren  Sie Ihre DOS-
ECHO Anleitung oder eine eventuelle Online-Hilfe.
ECHO.
GOTO L_END

:L_VMM
CLS
SHIFT
GAME.EXE %1 %2 %3 %4 %5 %6 %7 %8

:L_END

