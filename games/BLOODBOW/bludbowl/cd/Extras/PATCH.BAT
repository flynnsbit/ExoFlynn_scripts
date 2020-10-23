@echo off
echo Upgrading Blood Bowl 1.00 to 1.01...
COPY BB.EXE %1
DOPATCH %1\ART\ART.WAD BB101.PAT %1\ART\TEMP.WAD
COPY %1\ART\TEMP.WAD %1\ART\ART.WAD
ERASE %1\ART\TEMP.WAD
cls
echo Your version of Blood Bowl has now been upgraded to 1.01!
