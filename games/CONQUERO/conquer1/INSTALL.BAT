echo off
cls
if %1a == a goto wrongdrive
if %1 == c: goto rightdrive
if %1 == C: goto rightdrive
if %1 == d: goto rightdrive
if %1 == D: goto rightdrive
if %1 == e: goto rightdrive
if %1 == E: goto rightdrive
if %1 == f: goto rightdrive
if %1 == F: goto rightdrive
goto wrongdrive

:rightdrive
echo                Conqueror Hard Disk Install
echo 
echo  This will create a directory called TANKS on your %1 drive, and
echo  then copy all needed Conqueror files into the directory.
echo 
echo  Dieses Programm legt einen Ordner namens Tanks auf der Harddisk %1
echo  an und kopiert alle benîtigten Dateien in diesen Ordner.
echo 
echo  To abort this installation, press Ctrl-Break.
echo 
echo  Um diesen Vorgang abzubrechen, drÅcken Sie CTRL-Break.
echo 
pause

mkdir %1\Tanks

copy a:*.* %1\Tanks
goto end

:wrongdrive
echo 
echo  Invalid drive specified. To install Conqueror on
echo  a hard drive, type "INSTALL X:" where X is the letter
echo  of the drive you wish to install to. For example, to
echo  install on drive C:, type "INSTALL C:"
echo 
echo  UngÅltige Laufwerks-Angabe. Um Conqueror auf einer Harddisk zu
echo  installieren, geben Sie "INSTALL X:" ein, wobei X der Kennbuchstabe
echo  des zu verwendenden Laufwerks ist. FÅr Laufwerk C tippen Sie also
echo  "INSTALL C:".
:End
