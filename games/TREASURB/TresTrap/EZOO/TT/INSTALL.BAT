echo off
cls
if "%2" == "HELLOAGAIN" goto doit
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                         บ
echo บ               Treasure Trap (tm) Hard Disk Installation                 บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ 
echo บ                                                                         บ
if "%1" == "" goto noparams
echo บ  All files from the distribution disks will now be copied to            บ
echo บ  %1\EZOO\TT                                                             บ
echo บ                                                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
mkdir %1\EZOO
mkdir %1\EZOO\TT
pause
goto copyit
:noparams
echo บ  When you run INSTALL, you must supply a hard drive letter for example: บ
echo บ                                                                         บ
echo บ                                 INSTALL C:                              บ
echo บ                                                                         บ
echo บ      The "INSTALL drive" process creates a directory drive\EZOO\TT      บ 
echo บ             containing the game on the specified "drive".               บ
echo บ                                                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
goto exit
:copyit
copy >nul install.bat %1\EZOO\TT
%1\EZOO\TT\install %1 HELLOAGAIN
goto exit
:doit
if exist tt.exe goto copya
:inserta
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                         บ
echo บ               Treasure Trap (tm) Hard Disk Installation                 บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ 
echo บ                                                                         บ
echo บ                            Insert Disk A                                บ
echo บ                                                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
if not exist tt.exe goto inserta
:copya
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                         บ
echo บ               Treasure Trap (tm) Hard Disk Installation                 บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ 
echo บ                                                                         บ
echo บ                       Copying files from Disk A                         บ
echo บ                                                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
copy >nul *.exe %1\EZOO\TT
copy >nul *.pkd %1\EZOO\TT
if exist title.pkd goto copyb
:insertb
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                         บ
echo บ               Treasure Trap (tm) Hard Disk Installation                 บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ 
echo บ                                                                         บ
echo บ                            Insert Disk B                                บ
echo บ                                                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
if not exist title.pkd goto insertb
:copyb
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                         บ
echo บ               Treasure Trap (tm) Hard Disk Installation                 บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ 
echo บ                                                                         บ
echo บ                       Copying files from Disk B                         บ
echo บ                                                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
copy >nul *.* %1\EZOO\TT
if exist hi-score.pkd goto copyc
:insertc
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                         บ
echo บ               Treasure Trap (tm) Hard Disk Installation                 บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ 
echo บ                                                                         บ
echo บ                            Insert Disk C                                บ
echo บ                                                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
if not exist hi-score.pkd goto insertc
:copyc
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                         บ
echo บ               Treasure Trap (tm) Hard Disk Installation                 บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ 
echo บ                                                                         บ
echo บ                       Copying files from Disk C                         บ
echo บ                                                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
copy >nul *.* %1\EZOO\TT
copy >nul %1\EZOO\TT\tt.bat %1\EZOO
del >nul %1\EZOO\TT\tt.bat
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                         บ
echo บ               Treasure Trap (tm) Hard Disk Installation                 บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ 
echo บ                                                                         บ
echo บ  Hard disk installation now complete.  To run Treasure Trap, enter the  บ
echo บ  following commands:                                                    บ
echo บ                                                                         บ
echo บ                            CD %1\EZOO                                   บ
echo บ                            TT adapter                                   บ
echo บ                                                                         บ
echo บ adapter is one of: cga,ega,vga,tga.  If you do not specify an adapter,  บ
echo บ your computers best video mode is used instead.                         บ
echo บ                                                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
cd %1\EZOO\TT
:exit

