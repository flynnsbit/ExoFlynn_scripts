echo off
cls

echo                       WELCOME TO DARK CONVERGENCE II
echo               To view the demo and then start the game - Hit A -
echo                     To start the game directly - Hit B -
echo                         To quit to Dos - Hit C -

ch cba
:b
if ERRORLEVEL 2 goto end
if ERRORLEVEL 1 goto strgame
if NOT ERRORLEVEL 1 goto demogame
goto b
:demogame
introdc
dc2pt1
goto end

:strgame
dc2pt1

:end
cls
echo The Dark Convergence Will Always Be Waiting For You...

