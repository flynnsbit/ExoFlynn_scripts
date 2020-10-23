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
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ HARD DRIVE USERS                                                     บ
echo บ If you are trying to copy the pregenerated save characters onto      บ
echo บ a hard disk, you have made a mistake in entering the command.        บ
echo บ Hold down the CONTROL key and press the C key at the same time.      บ
echo บ To restart, retype the COPYSAVE command.                             บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo .
echo .
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ FLOPPY DRIVE USERS                                                   บ
echo บ   You are about to copy the pregenerated save characters into        บ
echo บ                        %1:\SAVE                                      บ
echo บ   If the above line reads B:\SAVE press the SPACEBAR to continue.    บ
echo บ   If there are two colons (::) in the above line, then hold down the บ
echo บ   CONTROL key and press the C key at the same time.                  บ
echo บ   To restart, retype the COPYSAVE B command being careful not to     บ
echo บ   type a colon (:) after drive letter B.                             บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
md %1:\save
cd %1:\save
echo Creating %1:\save
copy save\*.* %1:\save
goto bye
:end
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                      บ
echo บ  SYNTAX:  COPYSAVE C                                                 บ
echo บ                                                                      บ
echo บ  Where "C" is the drive letter of the drive where CHAMPIONS          บ
echo บ  OF KRYNN has been copied. (If you have used a different drive       บ
echo บ  replace "C" with the letter of your hard drive.)                    บ
echo บ                                                                      บ
echo บ  This program will copy the saved game we have provided onto your    บ
echo บ  hard drive.  It first creates a directory called \SAVE under the    บ
echo บ  C:\KRYNN directory and then copies the saved game files to that     บ
echo บ  directory.                                                          บ
echo บ                                                                      บ
echo บ  When you start the game be sure and define C:\KRYNN\SAVE as your    บ
echo บ  save game directory.                                                บ
echo บ                                                                      บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
cls
:bye
