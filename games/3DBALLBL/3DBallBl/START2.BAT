@ECHO OFF
ECHO ==================================
ECHO CRACKED BY: MYSTIK [TDT] / AUG'95.
ECHO ==================================
title.exe intro.seq
if errorlevel = 0 goto Main
goto MenuError
:Main
menu.exe
if errorlevel = 100 goto exit
ECHO THANX FOR CHOOSING TDT IN 1995.
if errorlevel = 0 goto play
goto MenuError
:play
dungeon.exe f x %1
if errorlevel = 69 goto EndOfGame
if errorlevel 0 goto NoError
error.exe
goto exit
:NoError
goto Main
:EndOfGame
play the_end.fli 7
goto Main
:MenuError
vid.com
echo Internal Error.  Did you run CyberPuck from within the
echo CyberPuck directory?
goto PastEnd
:exit
vid.com
ECHO THANX FOR CHOOSING TDT IN 1995.
:PastEnd
