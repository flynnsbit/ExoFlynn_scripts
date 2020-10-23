@echo off
IF EXIST SOUNDRV.COM GOTO OK
call setup
IF EXIST SOUNDRV.COM GOTO OK
echo Setup not completed.
GOTO DONE
:OK
multip
soundrv
BEGIN
IF ERRORLEVEL 2 GOTO NOPE
IF ERRORLEVEL 1 GOTO GAME
IF NOT EXIST MIDPAK.COM GOTO GAME
IF NOT EXIST MIDPAK.XMI GOTO OK2
echo ***************************** ATTENTION ******************************
echo There will be a short pause while your Roland sound card is configured.
echo **********************************************************************
:OK2
midpak 12
mwait
:GAME
688ii
:NOPE
IF NOT EXIST MIDPAK.COM GOTO SKIP
midpak U
:SKIP
soundrv U
multip U
IF ERRORLEVEL 3 GOTO NETB2
IF ERRORLEVEL 2 GOTO MODEM
IF ERRORLEVEL 1 GOTO COMIO
GOTO DONE
:NETB2
echo Removing Netbios connection.
netb2 u
GOTO DONE
:MODEM
echo Removing modem connection and hanging up phone.
modem u
GOTO DONE
:COMIO
echo Removing direct serial connection.
comio u
GOTO DONE
:DONE
echo Thankyou for playing Seawolf
:DONE2
