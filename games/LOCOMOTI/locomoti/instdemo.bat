@echo off
if x%1 == x goto help
cls
echo ����������������������������������������������������������������ͻ
echo � Installation der Demos: BALANCE - BUG BOMBER, (C) '92 KINGSOFT �
echo ����������������������������������������������������������������ͼ
if x%2 == x goto mkksdemo

echo �
echo Erzeuge Verzeichnis %1\%2
md %1\%2
echo �
echo Kopiere Dateien ins Verzeichnis %1\%2 ...
copy unarj.exe %1\%2
copy ksdemos.arj %1\%2
%1
cd \%2
goto weiter

:mkksdemo
echo �
echo Erzeuge Verzeichnis %1\ksdemo
md %1\ksdemo
echo �
echo Kopiere Dateien ins Verzeichnis %1\ksdemo ...
copy unarj.exe %1\ksdemo
copy ksdemos.arj %1\ksdemo
%1
cd \ksdemo

:weiter
echo �
echo Entpacke Dateien ...
unarj e ksdemos.arj
del unarj.exe
del ksdemos.arj
echo �
echo Die Installation der KINGSOFT-Demos ist beendet. 
echo Sie k�nnen die Programme jetzt mit folgenden Befehlen starten:
echo   BAL (RETURN) f�r BALANCE
echo   BUG (RETURN) f�r BUG BOMBER
echo Viel Spa� beim Ausprobieren w�nscht Ihnen KINGSOFT!
echo �
echo P.S. Wenn Sie sich zutrauen, selber ein Spiel in erstklassiger Qualit�t zu 
echo programmieren, wenden Sie sich doch einmal an unsere Entwicklungsabteilung!
echo KINGSOFT GmbH, Gr�ner Weg 29, D-5100 Aachen, Tel 0241/152051, Fax 0241/152054
echo �
goto end

:help
echo �
echo Aufruf mit:
echo             instdemo [Ziel-Laufwerk] [Ziel-Verzeichnis]
echo        z.B. instdemo c: demo
echo ���������������������������������������������������������������������������
echo Das Ziel-Laufwerk mu� angegeben werden.
echo Wird kein Ziel-Verzeichnis angegeben, wird in das Verzeichnis KSDEMO kopiert.
echo �
echo Nach der Installation belegen die Programme 0.8 MB auf dem Datentr�ger.
echo �

:end
