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
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                             บ
echo บ                  Knights of Legends installation complete.                  บ
echo บ                                                                             บ
echo บ    To play, type the following :                                            บ
echo บ                                                                             บ
echo บ    %1                                                                       บ
echo บ    cd \KNIGHTS                                                              บ
echo บ    KOL                                                                      บ
echo บ                                                                             บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
