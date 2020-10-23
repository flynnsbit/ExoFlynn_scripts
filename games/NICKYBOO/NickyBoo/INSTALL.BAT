echo off
cls

echo *****************************************************************************
echo * NICKY BOOM                (C)opyright MICROIDS 1992                       *
echo *****************************************************************************
echo * Press 1 for english messages.                                             *
echo * Pressez 2 pour des messages en fran‡ais.                                  *
echo *****************************************************************************

:wkey
key$
if errorlevel 51 goto wkey
if errorlevel 50 goto fri
if errorlevel 49 goto angi
goto wkey


:fri
inst install.dni /p33
goto fin

:angi
inst install.dni /p1


:fin
c:
echo on
