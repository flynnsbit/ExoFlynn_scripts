echo off
cls
if "%2" == "HELLOAGAIN" goto doit
echo �������������������������������������������������������������������������ͻ
echo �                                                                         �
echo �               Treasure Trap (tm) Hard Disk Installation                 �
echo �������������������������������������������������������������������������Ķ 
echo �                                                                         �
if "%1" == "" goto noparams
echo �  All files from the distribution disks will now be copied to            �
echo �  %1\EZOO\TT                                                             �
echo �                                                                         �
echo �������������������������������������������������������������������������ͼ
mkdir %1\EZOO
mkdir %1\EZOO\TT
pause
goto copyit
:noparams
echo �  When you run INSTALL, you must supply a hard drive letter for example: �
echo �                                                                         �
echo �                                 INSTALL C:                              �
echo �                                                                         �
echo �      The "INSTALL drive" process creates a directory drive\EZOO\TT      � 
echo �             containing the game on the specified "drive".               �
echo �                                                                         �
echo �������������������������������������������������������������������������ͼ
goto exit
:copyit
copy >nul install.bat %1\EZOO\TT
%1\EZOO\TT\install %1 HELLOAGAIN
goto exit
:doit
if exist tt.exe goto copya
:inserta
cls
echo �������������������������������������������������������������������������ͻ
echo �                                                                         �
echo �               Treasure Trap (tm) Hard Disk Installation                 �
echo �������������������������������������������������������������������������Ķ 
echo �                                                                         �
echo �                            Insert Disk A                                �
echo �                                                                         �
echo �������������������������������������������������������������������������ͼ
pause
if not exist tt.exe goto inserta
:copya
cls
echo �������������������������������������������������������������������������ͻ
echo �                                                                         �
echo �               Treasure Trap (tm) Hard Disk Installation                 �
echo �������������������������������������������������������������������������Ķ 
echo �                                                                         �
echo �                       Copying files from Disk A                         �
echo �                                                                         �
echo �������������������������������������������������������������������������ͼ
pause
copy >nul *.exe %1\EZOO\TT
copy >nul *.pkd %1\EZOO\TT
if exist title.pkd goto copyb
:insertb
cls
echo �������������������������������������������������������������������������ͻ
echo �                                                                         �
echo �               Treasure Trap (tm) Hard Disk Installation                 �
echo �������������������������������������������������������������������������Ķ 
echo �                                                                         �
echo �                            Insert Disk B                                �
echo �                                                                         �
echo �������������������������������������������������������������������������ͼ
pause
if not exist title.pkd goto insertb
:copyb
cls
echo �������������������������������������������������������������������������ͻ
echo �                                                                         �
echo �               Treasure Trap (tm) Hard Disk Installation                 �
echo �������������������������������������������������������������������������Ķ 
echo �                                                                         �
echo �                       Copying files from Disk B                         �
echo �                                                                         �
echo �������������������������������������������������������������������������ͼ
copy >nul *.* %1\EZOO\TT
if exist hi-score.pkd goto copyc
:insertc
cls
echo �������������������������������������������������������������������������ͻ
echo �                                                                         �
echo �               Treasure Trap (tm) Hard Disk Installation                 �
echo �������������������������������������������������������������������������Ķ 
echo �                                                                         �
echo �                            Insert Disk C                                �
echo �                                                                         �
echo �������������������������������������������������������������������������ͼ
pause
if not exist hi-score.pkd goto insertc
:copyc
cls
echo �������������������������������������������������������������������������ͻ
echo �                                                                         �
echo �               Treasure Trap (tm) Hard Disk Installation                 �
echo �������������������������������������������������������������������������Ķ 
echo �                                                                         �
echo �                       Copying files from Disk C                         �
echo �                                                                         �
echo �������������������������������������������������������������������������ͼ
copy >nul *.* %1\EZOO\TT
copy >nul %1\EZOO\TT\tt.bat %1\EZOO
del >nul %1\EZOO\TT\tt.bat
cls
echo �������������������������������������������������������������������������ͻ
echo �                                                                         �
echo �               Treasure Trap (tm) Hard Disk Installation                 �
echo �������������������������������������������������������������������������Ķ 
echo �                                                                         �
echo �  Hard disk installation now complete.  To run Treasure Trap, enter the  �
echo �  following commands:                                                    �
echo �                                                                         �
echo �                            CD %1\EZOO                                   �
echo �                            TT adapter                                   �
echo �                                                                         �
echo � adapter is one of: cga,ega,vga,tga.  If you do not specify an adapter,  �
echo � your computers best video mode is used instead.                         �
echo �                                                                         �
echo �������������������������������������������������������������������������ͼ
cd %1\EZOO\TT
:exit

