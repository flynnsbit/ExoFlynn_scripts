@echo off
echo Diese Stapeldatei kopiert 'Bombs and Bugs' nach [c:\bugs].
echo (Zum Abbrechen STRG-C drücken, zum kopieren beliebige Taste.)
echo -----
echo This batchfile will copy 'Bombs and Bugs' to [C:\bugs].
echo (Press CTRL-C to abort, any other key will start the process.)
pause

md c:\bugs
md c:\bugs\data
copy *.* c:\bugs /v
copy data\*.* c:\bugs\data /v

c:
cd c:\bugs

echo Fertig. Mit 'bugs.exe' kann das Spiel jetzt gestartet werden.
echo -----
echo Finished. Now type 'Bugs.exe' to start the game.

