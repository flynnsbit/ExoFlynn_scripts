@echo off

if not exist maxrun.exe goto :no_exe
if exist maxrun.000 goto :got_old

echo Umbenenne alte Dateien...
ren maxrun.exe maxrun.000
ren readme.txt readmet.000
ren readme.wri readmew.000

echo Umbenenne neue Dateien...
ren maxrun.new maxrun.exe
ren readmet.new readme.txt
ren readmew.new readme.wri

echo Patch fertig, Update erfolgreich.
goto :done

:no_exe
echo ##### FEHLER! Kann maxrun.exe nicht finden.
echo ##### Taste drÅcken, um Patch-Anweisungen zu lesen.
pause
type patch.txt
goto :done

:got_old
echo ##### FEHLER! Alte Version von maxrun gefunden.
echo ##### Lîschen Sie alle .000-Dateien und starten Sie den Patch erneut.

:done




