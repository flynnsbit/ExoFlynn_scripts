@echo off
:debut
if "%1"=="" goto erreur
echo copie des fichiers du disque 1 dans %1
md  %1
xcopy *.dat %1\*.*
echo Veuillez ins‚rer le disque 2 S.V.P
pause
echo copie des fichiers du disque 2 dans %1
xcopy *.* %1\*.*
echo copie termin‚ pour jouer tapez BANG
goto fin
:erreur
echo Veuillez taper le nom du r‚pertoire cible aprŠs install
echo exemple : install c:\bang
:fin
