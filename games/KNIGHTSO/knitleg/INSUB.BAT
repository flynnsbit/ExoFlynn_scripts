echo off
:adv1
cls
if exist %2\diska1 goto adv1a
echo Please insert the A1 disk.
pause
goto adv1
:adv1a
cls
echo Copying files...
copy %2\*.*>NUL
:adv2
cls
if exist %2\diska2 goto adv2a
echo Please insert the A2 disk.
pause
goto adv2
:adv2a
cls
echo Copying files...
copy %2\*.*>NUL
:adv3
cls
if exist %2\diska3 goto adv3a
echo Please insert the A3 disk.
pause
goto adv3
:adv3a
cls
echo Copying files...
copy %2\*.*>NUL
:adv4
cls
if exist %2\diska4 goto adv4a
echo Please insert the A4 disk.
pause
goto adv4
:adv4a
cls
echo Copying files...
copy %2\*.*>NUL
:adv5
cls
if exist %2\diska5 goto adv5a
echo Please insert the A5 disk.
pause
goto adv5
:adv5a
cls
echo Copying files...
copy %2\*.*>NUL
cls
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                                             �
echo �                  Knights of Legends installation complete.                  �
echo �                                                                             �
echo �    To play, type the following :                                            �
echo �                                                                             �
echo �    %1                                                                       �
echo �    cd \KNIGHTS                                                              �
echo �    KOL                                                                      �
echo �                                                                             �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
