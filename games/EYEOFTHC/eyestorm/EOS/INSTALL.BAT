@echo off
rem Eye of the Storm installation version 3.0
rem Copyright (c) 1991-94 by Alister Perrott
rem Traduction fran‡aise: Art of Words
rem Last edited 25/2/94  19:46
:
language
IF exist eos1.exe goto dc
:dca
IF ERRORLEVEL 4 IF NOT ERRORLEVEL 5 echo Please insert Eye of the Storm disk 1
IF ERRORLEVEL 3 IF NOT ERRORLEVEL 4 echo Ins‚rez la disquette 1 d`Eye of the Storm
IF ERRORLEVEL 2 IF NOT ERRORLEVEL 3 echo Bitte legen Sie Spieldiskette 1 einpause
IF ERRORLEVEL 1 IF NOT ERRORLEVEL 2 echo Por favor inserta Eye of the Storm disco 1
@echo ÿ
pause
IF not exist eos1.exe goto dca
:dc
IF NOT "%1"=="" goto gotparms
CALL INSTALL C
GOTO exit
:gotparms
IF ERRORLEVEL 4 IF NOT ERRORLEVEL 5 echo Installing Eye of the Storm on drive %1 - Please Wait
IF ERRORLEVEL 3 IF NOT ERRORLEVEL 4 echo Installation d`Eye of the Storm sur la partition %1 - Patientez SVP
IF ERRORLEVEL 2 IF NOT ERRORLEVEL 3 echo Ich installiere Eye of the Storm auf Laufwerk %1 - bitte warten
IF ERRORLEVEL 1 IF NOT ERRORLEVEL 2 echo Instalando Eye of the Storm en unidad %1 - Por favor Espera
@echo ÿ
IF ERRORLEVEL 4 IF NOT ERRORLEVEL 5 echo Creating directory %1:\eos
IF ERRORLEVEL 3 IF NOT ERRORLEVEL 4 echo Cr‚ation du r‚pertoire %1:\eos
IF ERRORLEVEL 2 IF NOT ERRORLEVEL 3 echo Erstelle Verzeichnis %1:\eos
IF ERRORLEVEL 1 IF NOT ERRORLEVEL 2 echo Creando directorio %1:\eos
@echo ÿ
md %1:\eos
IF ERRORLEVEL 4 IF NOT ERRORLEVEL 5 echo Copying files to %1:\eos
IF ERRORLEVEL 3 IF NOT ERRORLEVEL 4 echo Copie des fichiers dans %1:\eos
IF ERRORLEVEL 2 IF NOT ERRORLEVEL 3 echo Kopiere Dateien nach %1:\eos
IF ERRORLEVEL 1 IF NOT ERRORLEVEL 2 echo Copiando ficheros a %1:\eos
@echo ÿ
copy h*.vdr %1:\eos
copy c*.vdr %1:\eos
copy e*.vdr %1:\eos
copy v*.vdr %1:\eos
copy p*.vdr %1:\eos
copy n*.vdr %1:\eos
copy m320200.vdr %1:\eos
copy m320400.vdr %1:\eos
copy *.* %1:\eos
copy eos.bat %1:\
copy language.exe %1:\
:
IF exist fish-2.voc goto dc2
language
:dc1
IF ERRORLEVEL 4 IF NOT ERRORLEVEL 5 echo Please insert Eye of the Storm disk 2
IF ERRORLEVEL 3 IF NOT ERRORLEVEL 4 echo Ins‚rez la disquette 2 d`Eye of the Storm
IF ERRORLEVEL 2 IF NOT ERRORLEVEL 3 echo Bitte legen Sie Spieldiskette 2 einpause
IF ERRORLEVEL 1 IF NOT ERRORLEVEL 2 echo Por favor inserta Eye of the Storm disco 2
@echo ÿ
pause
IF not exist eostitle.256 goto dc1
copy *.* %1:\eos
:
:dc2
%1:
cd %1:\
language
IF ERRORLEVEL 4 IF NOT ERRORLEVEL 5 echo To run Eye of the Storm: type EOS at the prompt
IF ERRORLEVEL 3 IF NOT ERRORLEVEL 4 echo Pour lancer Eye of the Storm: entrez EOS au message d`attente du DOS.
IF ERRORLEVEL 2 IF NOT ERRORLEVEL 3 echo Um Eye of the Storm zu spielen, geben Sie beim Prompt EOS ein.
IF ERRORLEVEL 1 IF NOT ERRORLEVEL 2 echo Para ejecutar Eye of the Storm: teclea EOS en el inductor.
@echo ÿ
:exit

