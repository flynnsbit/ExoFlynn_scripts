@echo off
cls
rem  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
rem  � Installationsroutine f�r DIAMOND PETER. Die Routine wird �
rem  � gestartet mit INSTALL [quellaufwerk:] [ziellaufwerk].    �
rem  � Beispiel:     INSTALL B: F:                              �
rem  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
if "%1"=="" goto syntax
if "%2"=="" goto syntax
if not exist %2\DPETER\NUL goto nitdo
:nitdo
if not exist %2\NUL goto error
md %2\DPETER
cls
echo.
echo   Bitte haben Sie einen Moment Geduld ...
echo.
copy %1\*.* %2\DPETER > NUL
%2\DPETER\DPETER! %2\DPETER
del %2\DPETER\DPETER!.exe
:weiter
cls
echo.
echo   Die Installation ist nun abgeschlossen! Um DIAMOND PETER zu starten,
echo   dr�cken Sie bitte irgendeine Taste und das Spiel beginnt.
echo.
echo.
echo   Zum n�chsten Programmstart wechseln Sie bitte in das Verzeichnis
echo   DPETER und rufen
echo                     START  auf.
echo.
echo.
echo   So, nun viel Spa� beim Spielen!
echo.
echo.
echo                     Christoph Schneiders und das Zac Soft Team
echo.
echo.
echo.
echo.
pause
cls
%2
cd\DPETER
START
goto ende
:syntax
echo.
echo   浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo   �           Zac Soft  "Software, Hardware und Computerzubeh�r"             �
echo   �           Droste-H�lshoff-Weg 3a         D-42499 H�ckeswagen             �
echo   �           Telefon 02192-6790             FAX 02192-83843                 �
echo   把陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳超
echo   �     Dieses Programm �bernimmt die Installation des Programmes auf Ihre   �
echo   �     Festplatte.                                                          �
echo   �                                                                          �
echo   �     Benutzen Sie zum Aufruf dieses Programmes bitte folgende Syntax      �
echo   �                                                                          �
echo   �         INSTALL QUELLE: ZIEL:                                            �
echo   �                                                                          �
echo   �         QUELLE     : Laufwerk von dem Sie das Programm installieren      �
echo   �         ZIEL       : Hier wird das Programm installiert                  �
echo   �                                                                          �
echo   �         Beispiel   : INSTALL A: C:                                       �
echo   �                      Installiert von A: nach C:\DPETER                   �
echo   �                                                                          �
echo   �                      install B: D:                                       �
echo   �                      Installiert von B: nach D:\DPETER                   �
echo   �                                                                          �
echo   藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo.
pause
goto ende
:error
cls
echo.
echo   Sie  haben ein  Verzeichnis gew�hlt, welches noch nicht existiert !
echo   Bitte erstellen Sie dies als erstes von Hand (md %2). Dann kopieren
echo   Sie  die  Dateien  von  Ihrer  Diskette  in  Ihr neues Verzeichnis,
echo   wechseln dorthin und starten mit      DPETER!
echo.  Das Programm entpackt sich dann von selbst.
echo.
echo.
pause
:ende
cls
