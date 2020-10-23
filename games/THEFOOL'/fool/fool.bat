echo off
cls
if not %1x==sx goto rungame
:doinstall
install
if errorlevel 1 goto done
:rungame
f
if not errorlevel 1 goto done
install
if exist prologue.exe goto noinsert
echo You may now insert the PROLOGUE or SHOW disk then
:noinsert
echo type PROLOGUE and press ENTER to view the prologue,
echo or type FOOL and press ENTER to play the game.
:done

