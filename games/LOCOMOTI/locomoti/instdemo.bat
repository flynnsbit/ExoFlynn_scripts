@echo off
if x%1 == x goto help
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ Installation der Demos: BALANCE - BUG BOMBER, (C) '92 KINGSOFT บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
if x%2 == x goto mkksdemo

echo ÿ
echo Erzeuge Verzeichnis %1\%2
md %1\%2
echo ÿ
echo Kopiere Dateien ins Verzeichnis %1\%2 ...
copy unarj.exe %1\%2
copy ksdemos.arj %1\%2
%1
cd \%2
goto weiter

:mkksdemo
echo ÿ
echo Erzeuge Verzeichnis %1\ksdemo
md %1\ksdemo
echo ÿ
echo Kopiere Dateien ins Verzeichnis %1\ksdemo ...
copy unarj.exe %1\ksdemo
copy ksdemos.arj %1\ksdemo
%1
cd \ksdemo

:weiter
echo ÿ
echo Entpacke Dateien ...
unarj e ksdemos.arj
del unarj.exe
del ksdemos.arj
echo ÿ
echo Die Installation der KINGSOFT-Demos ist beendet. 
echo Sie k”nnen die Programme jetzt mit folgenden Befehlen starten:
echo   BAL (RETURN) fr BALANCE
echo   BUG (RETURN) fr BUG BOMBER
echo Viel Spaแ beim Ausprobieren wnscht Ihnen KINGSOFT!
echo ÿ
echo P.S. Wenn Sie sich zutrauen, selber ein Spiel in erstklassiger Qualitt zu 
echo programmieren, wenden Sie sich doch einmal an unsere Entwicklungsabteilung!
echo KINGSOFT GmbH, Grner Weg 29, D-5100 Aachen, Tel 0241/152051, Fax 0241/152054
echo ÿ
goto end

:help
echo ÿ
echo Aufruf mit:
echo             instdemo [Ziel-Laufwerk] [Ziel-Verzeichnis]
echo        z.B. instdemo c: demo
echo ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
echo Das Ziel-Laufwerk muแ angegeben werden.
echo Wird kein Ziel-Verzeichnis angegeben, wird in das Verzeichnis KSDEMO kopiert.
echo ÿ
echo Nach der Installation belegen die Programme 0.8 MB auf dem Datentrger.
echo ÿ

:end
