echo off
cls
if not exist %1:\krynn\start.exe goto floppy
cd \save
echo Creating %1:\krynn\save
md %1:\krynn\save
echo Copying saved games to %1:\krynn\save.
copy *.* %1:\krynn\save
echo Copying complete.
cd..
goto bye
:floppy
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo � HARD DRIVE USERS                                                     �
echo � If you are trying to copy the pregenerated save characters onto      �
echo � a hard disk, you have made a mistake in entering the command.        �
echo � Hold down the CONTROL key and press the C key at the same time.      �
echo � To restart, retype the COPYSAVE command.                             �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo .
echo .
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo � FLOPPY DRIVE USERS                                                   �
echo �   You are about to copy the pregenerated save characters into        �
echo �                        %1:\SAVE                                      �
echo �   If the above line reads B:\SAVE press the SPACEBAR to continue.    �
echo �   If there are two colons (::) in the above line, then hold down the �
echo �   CONTROL key and press the C key at the same time.                  �
echo �   To restart, retype the COPYSAVE B command being careful not to     �
echo �   type a colon (:) after drive letter B.                             �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
pause
md %1:\save
cd %1:\save
echo Creating %1:\save
copy save\*.* %1:\save
goto bye
:end
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo �                                                                      �
echo �  SYNTAX:  COPYSAVE C                                                 �
echo �                                                                      �
echo �  Where "C" is the drive letter of the drive where CHAMPIONS          �
echo �  OF KRYNN has been copied. (If you have used a different drive       �
echo �  replace "C" with the letter of your hard drive.)                    �
echo �                                                                      �
echo �  This program will copy the saved game we have provided onto your    �
echo �  hard drive.  It first creates a directory called \SAVE under the    �
echo �  C:\KRYNN directory and then copies the saved game files to that     �
echo �  directory.                                                          �
echo �                                                                      �
echo �  When you start the game be sure and define C:\KRYNN\SAVE as your    �
echo �  save game directory.                                                �
echo �                                                                      �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
pause
cls
:bye
