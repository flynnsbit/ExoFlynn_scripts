echo off
echo 浜様様様様様様様様様様様様様様様様様�
echo �         Buckaroo Banzai's         �
echo �      MEGA-Installer Batch File    �
echo �                                   �
echo �           for use with            �
echo �                                   �
echo �      The Learning Company's       �
echo �                                   �
echo �        TREASURE  MOUNTAIN         �
echo �                                   �
echo 藩様様様様様様様様様様様様様様様様様�
echo Checking command line parameters.....
if "%1" == "" goto :Bad
goto :Good
:Bad
echo �
echo Please specify the DrivePath to install to...
echo IE: "install c:\tmount\
goto :Done

:Good
if exist %1 goto :CopyFiles
echo Creating directory %1
mkdir %1
:CopyFiles
echo �
echo Please put disk 1 in the current drive
echo and then press any key.
echo (If you are using a HD just hit a key)
pause
copy *.* %1
if exist %1\ALL_PUZS. goto :Finishup
echo �
echo Please put disk 2 in the current drive
echo and then press any key.
pause
copy *.* %1
:Finishup
CD %1
echo To play, type "RUNME"

:Done







