@echo off
if x%1 == x goto help
cls
echo ��������������������������������������������ͻ
echo � Installation LOCOMOTION, (C) 1992 KINGSOFT �
echo ��������������������������������������������ͼ
if x%2 == x goto mkloco

echo �
echo Erzeuge Verzeichnis %1\%2
md %1\%2
echo �
echo Kopiere Dateien ins Verzeichnis %1\%2 ...
copy unarj.exe %1\%2
copy loco.arj %1\%2
%1
cd \%2
goto weiter

:mkloco
echo �
echo Erzeuge Verzeichnis %1\loco
md %1\loco
echo �
echo Kopiere Dateien ins Verzeichnis %1\loco ...
copy unarj.exe %1\loco
copy loco.arj %1\loco
%1
cd \loco

:weiter
echo �
echo Entpacke Dateien ...
unarj e loco.arj
del unarj.exe
del loco.arj
echo �
echo Die Installation von LOCOMOTION ist beendet. 
echo Sie k�nnen das Spiel jetzt mit 'LOC' (RETURN) starten - viel Spa�!
echo �
echo P.S. Wenn Sie auf der Spieldiskette die Datei 'INSTDEMO' starten, k�nnen Sie 
echo sich noch Demos von unseren anderen neuen Spielen ansehen und ausprobieren.
echo �
goto end

:help
echo �
echo Aufruf mit:
echo             install [Ziel-Laufwerk] [Ziel-Verzeichnis]
echo        z.B. install c: locomo
echo ���������������������������������������������������������������������������
echo Das Ziel-Laufwerk mu� angegeben werden.
echo Wird kein Ziel-Verzeichnis angegeben, wird in das Verzeichnis LOCO kopiert.
echo �
echo Nach der Installation belegt das Programm 0.8 MB auf dem Datentr�ger.
echo �

:end
