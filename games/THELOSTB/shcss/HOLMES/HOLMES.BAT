@echo off

if exist HOLMES.CFG goto RunGame

echo In order to take full advantage of your computer, you must
echo first run INSTALL to configure the game to your  machine.

goto EndGame
:RunGame
LOGO
TITLE %1 %2
GAME %1 %2

:EndGame
