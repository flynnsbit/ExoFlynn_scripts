@echo off
mode co80
copyfilz %1 %2 %3 %4 %5 %6 %7 %8 %9 
if errorlevel 1 goto end
if not exist soundset.exe goto end
soundset
cls
echo �To play NOW:
echo �   Type BD and press [ENTER].
echo  . 
echo �To play LATER:
echo �   CD to the game directory,
echo �   then type BD and press [ENTER].
echo  .
echo  If you should ever need to change your sound card
echo  selection or settings, CD to the game directory
echo  and run SOUNDSET.
goto end
:end
