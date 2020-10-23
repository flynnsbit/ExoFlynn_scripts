:------------------------------------------------------------------------------
@echo off
cls

:------------------------------------------------------------------------------
if "%1"=="" goto trgmiss
goto proceed

:------------------------------------------------------------------------------
:trgmiss
echo ÿ
echo ÿ
echo  Fehler:   Laufwerksangabe fehlt!
echo ÿ
echo ÿ
echo  Beispiel: INSTALL  C:
echo ÿ
echo            C:       Ziellaufwerk, kann auch D: oder E: sein
echo                     Das Programm ist auch von Diskette aus lauffhig!
echo                     Einfach nach A: mit HELI starten.
echo ÿ
goto end

:------------------------------------------------------------------------------
:proceed
echo off
cls
echo     ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                     บ
echo     บ   Helicopter Mission kann nun installiert werden. Um fortzufahren,  บ
echo     บ   drcken Sie nun eine Taster oder CTRL-C um die Installation       บ
echo     บ   abzubrechen.                                                      บ
echo     บ                                                                     บ
echo     ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
echo ÿ
echo  Laufwerksangabe ungltig, Laufwerke nur zwischen C und J untersttzt.
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
echo ÿ
echo  einen Moment bitte....
echo ÿ
md %1:\HELI
xcopy A:*.* %1:\HELI /S    > nul
%1:
cd\HELI
cls
echo Installation abgeschlossen. Start mit HELI und ฤู.
goto end

:------------------------------------------------------------------------------
:nextski
if errorlevel 1 goto failed
cls
echo ÿ
echo  einen Moment bitte....
echo ÿ
md %1\HELI
xcopy A:*.* %1\HELI /S    > nul
%1
cd\HELI
cls
echo Installation abgeschlossen. Start mit HELI und ฤู.
goto end

:------------------------------------------------------------------------------
:failed
echo ÿ
echo  Installationsfehler, bitte berprfen Sie Ihre Angaben oder rufen Sie
echo  die Hotline unter 07121-930982 an!

:------------------------------------------------------------------------------
:end
echo ÿ ÿ
echo ÿ








