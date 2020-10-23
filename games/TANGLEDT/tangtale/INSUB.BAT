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
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                             บ
echo บ                    Tangled Tales installation complete.                     บ
echo บ                                                                             บ
echo บ    To play, type the following :                                            บ
echo บ                                                                             บ
echo บ    %1                                                                       บ
echo บ    cd \Tangled                                                              บ
echo บ    Start                                                                    บ
echo บ                                                                             บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
