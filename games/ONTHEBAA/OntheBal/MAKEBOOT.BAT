@echo off
CLS
echo   ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo   บ                   A N S T O S S  BootDisk-Generator                 บ
echo   บ                                                                     บ
echo   บ                     (C) 1994  ASCON Software-GmbH                   บ
echo   ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
IF "%1"=="a:" GOTO flag1
IF "%1"=="A:" GOTO flag1
IF "%1"=="b:" GOTO flag1
IF "%1"=="B:" GOTO flag1
:error
echo       Laufwerks-Angabe hinter MAKEBOOT ist fehlerhaft oder fehlt !
echo       M”glich sind als Ziellaufwerk:   A: B:ÿ
goto end
:flag1
echo       Eine ANSTOSS-Boot-Konfiguration wird auf Ihrer Diskette angelegt.
echo.
echo       Es wird davon ausgegangen, dass sich Ihre Systemdateien sowie
echo       ein Maustreiber (moeglichst Microsoft) auf C:\DOS befinden,
echo       und dass ANSTOSS auf C:\ANSTOSS installiert ist.
echo       Bei Abweichungen bitte  config.sys / autoexec.bat  anpassen !
echo	   Achten Sie bei komprimierten Laufwerken (DoubleSpace etc.)
echo	   bitte auch auf die Einbindung der entsprechenden Treiber.
echo.
echo       Zum Abbrechen drcken Sie STRG/PAUSE oder CTRL/BREAK
echo.
echo.
echo       Legen Sie bitte eine unformatierte Diskette in das Laufwerk %1 !
echo.
pause
echo.
echo       MakeBoot luft........
echo.
format %1 /s /u
copy autoexec.boo %1autoexec.bat
copy config.boo %1config.sys

echo.
echo       Boot-Disk ist fertig.
echo       Zum Spielen bitte Disk in Boot-Laufwerk einlegen  
echo       und Neustart des Systems durchfuehren !
:end
echo.
