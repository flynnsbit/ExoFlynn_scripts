@echo off
cls
rem  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
rem  บ Installationsroutine fr DIAMOND PETER. Die Routine wird บ
rem  บ gestartet mit INSTALL [quellaufwerk:] [ziellaufwerk].    บ
rem  บ Beispiel:     INSTALL B: F:                              บ
rem  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
echo   drcken Sie bitte irgendeine Taste und das Spiel beginnt.
echo.
echo.
echo   Zum nchsten Programmstart wechseln Sie bitte in das Verzeichnis
echo   DPETER und rufen
echo                     START  auf.
echo.
echo.
echo   So, nun viel Spaแ beim Spielen!
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
echo   ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo   บ           Zac Soft  "Software, Hardware und Computerzubeh”r"             บ
echo   บ           Droste-Hlshoff-Weg 3a         D-42499 Hckeswagen             บ
echo   บ           Telefon 02192-6790             FAX 02192-83843                 บ
echo   วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo   บ     Dieses Programm bernimmt die Installation des Programmes auf Ihre   บ
echo   บ     Festplatte.                                                          บ
echo   บ                                                                          บ
echo   บ     Benutzen Sie zum Aufruf dieses Programmes bitte folgende Syntax      บ
echo   บ                                                                          บ
echo   บ         INSTALL QUELLE: ZIEL:                                            บ
echo   บ                                                                          บ
echo   บ         QUELLE     : Laufwerk von dem Sie das Programm installieren      บ
echo   บ         ZIEL       : Hier wird das Programm installiert                  บ
echo   บ                                                                          บ
echo   บ         Beispiel   : INSTALL A: C:                                       บ
echo   บ                      Installiert von A: nach C:\DPETER                   บ
echo   บ                                                                          บ
echo   บ                      install B: D:                                       บ
echo   บ                      Installiert von B: nach D:\DPETER                   บ
echo   บ                                                                          บ
echo   ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause
goto ende
:error
cls
echo.
echo   Sie  haben ein  Verzeichnis gewhlt, welches noch nicht existiert !
echo   Bitte erstellen Sie dies als erstes von Hand (md %2). Dann kopieren
echo   Sie  die  Dateien  von  Ihrer  Diskette  in  Ihr neues Verzeichnis,
echo   wechseln dorthin und starten mit      DPETER!
echo.  Das Programm entpackt sich dann von selbst.
echo.
echo.
pause
:ende
cls
