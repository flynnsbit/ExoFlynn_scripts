echo off
cls
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                 �
echo �    Storm Across Europe - Hard drive install     �
echo �                                                 �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様�

echo 浜様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                 �
echo �  This program will install Storm Across Europe  �
echo �  onto your hard drive.  It will create a new    �
echo �  directory named STORM, and install all of the  �
echo �  files needed for the game into that directory. �
echo �                                                 �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様�

pause
cls

echo �                    IMPORTANT!
echo �
echo � If you already have a directory named STORM in the root
echo � directory of drive %1, you must either remove it, rename
echo � it, or simply ignore the "unable to create directory"
echo � messages you will see if you continue this installation
echo � procedure.
echo �
echo 臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆
echo �                                                          �
echo � WARNING!  IF SUCH A DIRECTORY EXISTS, AND CONTAINS FILES �
echo � WITH THE SAME NAMES AS THOSE ON THE STORM ACROSS EUROPE  �
echo � MASTER DISKS, THOSE FILES WILL BE LOST IF YOU CONTINUE!  �
echo �                                                          �
echo 臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆臆
echo �
echo If you do NOT want to install Storm Across Europe onto drive %1,
echo hit control-C now.  To continue with the installation, simply
pause

echo 浜様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                 �
echo �   Creating directories and copying executable   �
echo �                                                 �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様�

md %1\storm
md %1\storm\scenario
md %1\storm\pictures
copy storm.exe %1\storm

:changedisk

echo Please insert the "Maps and Scenarios" disk into drive, and
pause

if NOT EXIST scenario\sum44.str goto changedisk


echo 浜様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                 �
echo �     copying scenarios and graphics files        �
echo �                                                 �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様�

copy scenario\*.* %1\storm\scenario
copy pictures\*.* %1\storm\pictures

echo 浜様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                 �
echo �             Installation complete               �
echo �                                                 �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様�

