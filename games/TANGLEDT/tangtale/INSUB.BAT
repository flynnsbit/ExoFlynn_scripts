echo off
:adv1
cls
echo Please insert the Adventure 1 disk.
pause
if not exist a:\adv1data.0 goto adv1
cls
echo Copying files...
copy a:\*.*>NUL
:adv2
cls
echo Please insert the Adventure 2 disk.
pause
if not exist a:\adv2data.0 goto adv2
cls
echo Copying files...
copy a:\*.*>NUL
:adv3
cls
echo Please insert the Adventure 3 disk.
pause
if not exist a:\adv3data.0 goto adv3
cls
echo Copying files...
copy a:\*.*>NUL
cls
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                                             �
echo �                    Tangled Tales installation complete.                     �
echo �                                                                             �
echo �    To play, type the following :                                            �
echo �                                                                             �
echo �    %1                                                                       �
echo �    cd \Tangled                                                              �
echo �    Start                                                                    �
echo �                                                                             �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
