:------------------------------------------------------------------------------
@echo off
cls

:------------------------------------------------------------------------------
if "%1"=="" goto trgmiss
goto proceed

:------------------------------------------------------------------------------
:trgmiss
echo �
echo �
echo  Fehler:   Laufwerksangabe fehlt!
echo �
echo �
echo  Beispiel: INSTALL  C:
echo �
echo            C:       Ziellaufwerk, kann auch D: oder E: sein
echo                     Das Programm ist auch von Diskette aus lauff�hig!
echo                     Einfach nach A: mit HELI starten.
echo �
goto end

:------------------------------------------------------------------------------
:proceed
echo off
cls
echo     ���������������������������������������������������������������������ͻ
echo     �                                                                     �
echo     �   Helicopter Mission kann nun installiert werden. Um fortzufahren,  �
echo     �   dr�cken Sie nun eine Taster oder CTRL-C um die Installation       �
echo     �   abzubrechen.                                                      �
echo     �                                                                     �
echo     ���������������������������������������������������������������������ͼ
pause > nul

:------------------------------------------------------------------------------
cls
if "%1"=="C"  goto no_colon
if "%1"=="c"  goto no_colon
if "%1"=="D"  goto no_colon
if "%1"=="d"  goto no_colon
if "%1"=="E"  goto no_colon
if "%1"=="e"  goto no_colon
if "%1"=="F"  goto no_colon
if "%1"=="f"  goto no_colon
if "%1"=="G"  goto no_colon
if "%1"=="g"  goto no_colon
if "%1"=="H"  goto no_colon
if "%1"=="h"  goto no_colon
if "%1"=="I"  goto no_colon
if "%1"=="i"  goto no_colon
if "%1"=="J"  goto no_colon
if "%1"=="j"  goto no_colon

if "%1"=="C:" goto c_colon
if "%1"=="c:" goto c_colon
if "%1"=="D:" goto d_colon
if "%1"=="d:" goto d_colon
if "%1"=="E:" goto e_colon
if "%1"=="e:" goto e_colon
if "%1"=="F:" goto f_colon
if "%1"=="f:" goto f_colon
if "%1"=="G:" goto g_colon
if "%1"=="g:" goto g_colon
if "%1"=="H:" goto h_colon
if "%1"=="h:" goto h_colon
if "%1"=="I:" goto i_colon
if "%1"=="i:" goto i_colon
if "%1"=="J:" goto j_colon
if "%1"=="j:" goto j_colon
cls
echo �
echo  Laufwerksangabe ung�ltig, Laufwerke nur zwischen C und J unterst�tzt.
echo  Bitte Befehl neu eingeben.
goto end

:------------------------------------------------------------------------------
:no_colon
cls
goto correctski

:------------------------------------------------------------------------------
:c_colon
cls
goto nextski

:------------------------------------------------------------------------------
:d_colon
cls
goto nextski

:------------------------------------------------------------------------------
:e_colon
cls
goto nextski

:------------------------------------------------------------------------------
:f_colon
cls
goto nextski

:------------------------------------------------------------------------------
:g_colon
cls
goto nextski

:------------------------------------------------------------------------------
:h_colon
cls
goto nextski

:correctski
if errorlevel 1 goto failed
cls
echo �
echo  einen Moment bitte....
echo �
md %1:\HELI
xcopy A:*.* %1:\HELI /S    > nul
%1:
cd\HELI
cls
echo Installation abgeschlossen. Start mit HELI und ��.
goto end

:------------------------------------------------------------------------------
:nextski
if errorlevel 1 goto failed
cls
echo �
echo  einen Moment bitte....
echo �
md %1\HELI
xcopy A:*.* %1\HELI /S    > nul
%1
cd\HELI
cls
echo Installation abgeschlossen. Start mit HELI und ��.
goto end

:------------------------------------------------------------------------------
:failed
echo �
echo  Installationsfehler, bitte �berpr�fen Sie Ihre Angaben oder rufen Sie
echo  die Hotline unter 07121-930982 an!

:------------------------------------------------------------------------------
:end
echo � �
echo �








