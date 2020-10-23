echo off
REM Multiple Disk install program, part 2, 4 disk version
cls
:disk2
echo Please insert Disk 2 in Drive A:
pause
echo 
if exist a:screens\rew.pac goto Copy2
goto disk2

:Copy2
echo Copying Disk 2 files to %1\BOB1940...
copy a:*.* %1\bob1940 > NUL
copy a:flts\*.* %1\bob1940\flts > NUL
copy a:screens\*.* %1\bob1940\screens > NUL

if not exist %1\bob1940\flts\ju88-b2.flt goto InstallError
if not exist %1\bob1940\screens\rew.pac goto InstallError

cls
:disk3
echo Please insert Disk 3 in Drive A:
pause
echo 
if exist a:screens\111gunv.pac goto Copy3
goto disk3

:Copy3
echo Copying Disk 3 files to %1\BOB1940...
copy a:pi\*.* %1\bob1940\pi > NUL
copy a:screens\*.* %1\bob1940\screens > NUL

if not exist %1\bob1940\pi\wtrfx1s.pac goto InstallError
if not exist %1\bob1940\screens\111gunv.pac goto InstallError

cls
:disk4
echo Please insert Disk 4 in Drive A:
pause
echo 
if exist a:screens\j87wingr.pac goto Copy4
goto disk4

:Copy4
echo Copying Disk 4 files to %1\BOB1940...
copy a:*.* %1\bob1940 > NUL
copy a:screens\*.* %1\bob1940\screens > NUL

if not exist %1\bob1940\screens\j87wingr.pac goto InstallError

cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                 บ
echo บ  "Their Finest Hour" has been successfully installed onto your  บ
echo บ  hard disk.                                                     บ
echo บ                                                                 บ
echo บ  To run "Their Finest Hour", enter  CD \BOB1940                 บ
echo บ  then enter                         BOB                         บ
echo บ                                                                 บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
goto End

:InstallError
echo ERROR:  Installation of "Their Finest Hour" into %1\BOB1940 was unsuccessful.
echo         This might be because your hard disk is full.  "Their Finest Hour"
echo         needs at least 1,260K of free disk space.
:End
echo 

