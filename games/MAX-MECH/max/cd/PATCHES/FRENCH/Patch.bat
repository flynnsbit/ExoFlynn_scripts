@echo off

if not exist maxrun.exe goto :no_exe
if exist maxrun.000 goto :got_old

echo Renommer les fichiers anciens...
ren maxrun.exe maxrun.000
ren readme.txt readmet.000
ren readme.wri readmew.000

echo Renommer les fichiers nouveaux...
ren maxrun.new maxrun.exe
ren readmet.new readme.txt
ren readmew.new readme.wri

echo Modification finie, mise … jour r‚ussie.
goto :done

:no_exe
echo ##### ERREUR! Ne peut trouver maxrun.exe.
echo ##### Appuyez sur une touche pour acc‚der aux instructions de la modification.
pause
type patch.txt
goto :done

:got_old
echo ##### ERREUR! A trouv‚ version ancienne de maxrun.
echo ##### Effacez tous les fichiers anciens et r‚‚x‚cutez la modification.

:done




