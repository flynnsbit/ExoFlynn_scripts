echo off
echo ษอออออออออออออออออออออออออออออออออออป
echo บ         Buckaroo Banzai's         บ
echo บ      MEGA-Installer Batch File    บ
echo บ                                   บ
echo บ           for use with            บ
echo บ                                   บ
echo บ      The Learning Company's       บ
echo บ                                   บ
echo บ        TREASURE  MOUNTAIN         บ
echo บ                                   บ
echo ศอออออออออออออออออออออออออออออออออออผ
echo Checking command line parameters.....
if "%1" == "" goto :Bad
goto :Good
:Bad
echo ÿ
echo Please specify the DrivePath to install to...
echo IE: "install c:\tmount\
goto :Done

:Good
if exist %1 goto :CopyFiles
echo Creating directory %1
mkdir %1
:CopyFiles
echo ÿ
echo Please put disk 1 in the current drive
echo and then press any key.
echo (If you are using a HD just hit a key)
pause
copy *.* %1
if exist %1\ALL_PUZS. goto :Finishup
echo ÿ
echo Please put disk 2 in the current drive
echo and then press any key.
pause
copy *.* %1
:Finishup
CD %1
echo To play, type "RUNME"

:Done







