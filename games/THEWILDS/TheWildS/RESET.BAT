echo off
echo                 Wild Science Arcade Reset...
echo .
echo This will reset your high scores in the event that they are corrupted.
echo .
echo Please be sure that you are in the science game directory
echo when you type "reset" to run this process. Press ctrl-break to abort.

pause

if not exist edison.clr echo Can't find file "edison.clr". Please reinstall the game.
if exist edison.clr copy edison.clr colors.edi

if not exist edison.scr echo Can't find file "edison.scr". Please reinstall the game.
if exist edison.scr copy edison.scr serocs.hs
echo on
