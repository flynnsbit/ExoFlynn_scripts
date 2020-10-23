echo off
echo Install program for See the U.S.A. Quiz Disk.
echo If you have not already installed the rest of the
echo See the U.S.A. program, press Ctrl-C now. 
echo 
echo This program installs the Quiz Disk on a hard drive.
Pause
echo Installing Quiz files on drive %1.
%1:
cd \cdusa
copy a:*.qst
echo Installation complete. To access the questions, boot 
echo See the U.S.A. following the instructions in your manual.
echo From the Main Menu, choose Quiz Game to access the 
echo Quiz files.
