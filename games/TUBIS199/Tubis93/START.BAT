echo off
cls
echo.
echo.
echo.
echo.
echo           Bitte beachten Sie folgende Hinweise zur Installation       
echo                              von TUBIS
echo.
echo.
echo.
echo           -  Das Programm ist nur auf einer Festplatte lauff„hig.
echo.
echo           -  Auf der Festplatte C,D oder E wird das Verzeichnis SYBGAMES
echo              mit dem Unterverzeichnis TUBIS erzeugt.
echo.
echo           -  in das Hauptverzeichnis Ihrer Festplatte wird eine
echo              Start - Datei zum Aufruf des Programms hinterlegt.
echo.
pause
CLS
rem
rem
if "%1"=="" goto NO_DRIVE
if "%1"=="C" goto startinst
if "%1"=="c" goto startinst
if "%1"=="D" goto startinst
if "%1"=="d" goto startinst
if "%1"=="e" goto startinst
if "%1"=="E" goto startinst
echo.
echo.
echo                           Falsche Laufwerksangabe
echo.
GOTO DRIVE_ERR
rem
rem
:STARTINST
rem
rem
:NO_DRIVE
if not ARG==ARG%1 GOTO inst
cls
rem
echo         Sie haben vergessen, daá Laufwerk anzugeben, auf dem
echo                   TUBIS installiert werden soll.
echo.
echo         Starten Sie dieses Installationsprogramm erneut wie im
echo                      folgenden Beispiel gezeigt:
echo.
echo.
echo               START C ( TUBIS wird auf Festplatte C installiert )
echo.                     
rem
echo               START D ( TUBIS wird auf Festplatte D installiert )
echo.                           
echo.
echo               START E ( TUBIS wird auf Festplatte E installiert )
echo.
rem
:DRIVE_ERR
echo               Ungltiger Laufwerksbuchstabe wurde angegeben
rem
goto STOP
rem
rem
:INST
md %1:\SYBGAMES > nul
md %1:\SYBGAMES\TUBIS > nul
if "%1"=="c" goto ALLES
if "%1"=="C" goto ALLES
if "%1"=="d" goto ALLES
if "%1"=="D" goto ALLES
if "%1"=="e" goto ALLES
if "%1"=="E" goto ALLES
rem
echo                            Installationsfehler
goto STOP
:ALLES
rem
cls
echo.
echo.
echo.
echo                       TUBIS wird in das Verzeichnis
echo                        %1:\SYBGAMES\TUBIS kopiert.
echo.
echo.
echo.
echo                      Bitte haben Sie etwas Geduld.
echo.
copy *.* %1:\SYBGAMES\TUBIS >nul
copy TUBIS.BAT %1:\ >nul
%1:
goto INSTOK
rem
:INSTOK
echo.
echo.
echo.
echo                  Die Installation wurde erfolgreich beendet.
echo.
echo                  Sie k”nnen nun TUBIS mit der Eingabe "TUBIS" starten
goto STOP
:INSTERR
echo.
echo.
echo                            FEHLER BEIM INSTALLIEREN
echo                            INSTALLATION ABGEBROCHEN
:STOP
echo.
echo.
