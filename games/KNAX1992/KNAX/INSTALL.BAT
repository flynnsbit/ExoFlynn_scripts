@echo off
cls
echo Ich lege nun das Verzeichnis C:\KNAX an!
md c:\knax
echo Ich kopiere jetzt die Dateien fÅr das KNAX-Spiel in dieses Verzeichnis!
copy *.* c:\knax
copy stknax.bat c:\
c:
cd \knax
echo Fertig!
call stknax.bat
