echo off
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                 บ
echo บ    Storm Across Europe - Hard drive install     บ
echo บ                                                 บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออผ

echo ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                 บ
echo บ  This program will install Storm Across Europe  บ
echo บ  onto your hard drive.  It will create a new    บ
echo บ  directory named STORM, and install all of the  บ
echo บ  files needed for the game into that directory. บ
echo บ                                                 บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออผ

pause
cls

echo ๙                    IMPORTANT!
echo ๙
echo ๙ If you already have a directory named STORM in the root
echo ๙ directory of drive %1, you must either remove it, rename
echo ๙ it, or simply ignore the "unable to create directory"
echo ๙ messages you will see if you continue this installation
echo ๙ procedure.
echo ๙
echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
echo ฒ                                                          ฒ
echo ฒ WARNING!  IF SUCH A DIRECTORY EXISTS, AND CONTAINS FILES ฒ
echo ฒ WITH THE SAME NAMES AS THOSE ON THE STORM ACROSS EUROPE  ฒ
echo ฒ MASTER DISKS, THOSE FILES WILL BE LOST IF YOU CONTINUE!  ฒ
echo ฒ                                                          ฒ
echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
echo ๙
echo If you do NOT want to install Storm Across Europe onto drive %1,
echo hit control-C now.  To continue with the installation, simply
pause

echo ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                 บ
echo บ   Creating directories and copying executable   บ
echo บ                                                 บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออผ

md %1\storm
md %1\storm\scenario
md %1\storm\pictures
copy storm.exe %1\storm

:changedisk

echo Please insert the "Maps and Scenarios" disk into drive, and
pause

if NOT EXIST scenario\sum44.str goto changedisk


echo ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                 บ
echo บ     copying scenarios and graphics files        บ
echo บ                                                 บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออผ

copy scenario\*.* %1\storm\scenario
copy pictures\*.* %1\storm\pictures

echo ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                 บ
echo บ             Installation complete               บ
echo บ                                                 บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออผ

