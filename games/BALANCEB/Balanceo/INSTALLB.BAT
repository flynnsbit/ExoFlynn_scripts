echo off
cls
if %1 == c goto start
if %1 == C goto start
if %1 == d goto start
if %1 == D goto start
if %1 == e goto start
if %1 == E goto start
if %1 == f goto start
if %1 == F goto start
if %1 == g goto start
if %1 == G goto start
if %1 == h goto start
if %1 == H goto start
if %1 == i goto start
if %1 == I goto start
if %1 == j goto start
if %1 == J goto start
if %1 == k goto start
if %1 == K goto start
goto nodrive

:start
echo þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ
echo þ                                                                         þ
echo þ                                                                         þ
echo þ                   Balance of the Planet Installation                    þ
echo þ                                                                         þ
echo þ                                                                         þ
echo þ     This installation program will create a subdirectory called         þ
echo þ     %1:\BOTP on your hard disk.                                          þ
echo þ                                                                         þ
echo þ     If you don't want to install Balance of the Planet then press       þ
echo þ     Ctrl-Break now.                                                     þ
echo þ                                                                         þ
echo þ                                                                         þ
echo þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ
echo: 
pause

echo: 
echo Installing Balance of the Planet -- disk 1.
if exist %1:\botp\*.* goto dirthere
md %1:\botp > nul
%1:
cd \botp
md fonts
md macart
md cards

copy b:\*.* > nul
copy b:\macart macart > nul
copy b:\fonts fonts > nul
copy b:\cards1 cards > nul

echo: 
echo: 
echo Disk 1 installation complete.
echo: 
%1:\botp\instalb2 %1

:nodrive
echo: 
echo: 
echo Include target drive letter, without the colon, on the command line.
echo For example, type: INSTALLB C
echo: 
goto finish

:dirthere
echo: 
echo: 
echo Installation problem.  A subdirectory named %1:\BOTP already exists
echo on this hard drive.  You must remove this subdirectory and try the
echo install again.
echo: 

:finish

