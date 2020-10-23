echo off
cls

echo *******************************************************************************
echo * DOMINIUM     (C)opyright MICROIDS 1992                                      *
echo *******************************************************************************
echo * Press 1 for english version.                                                *
echo * Pressez 2 pour la version franáaise.                                        *
echo * FÅr deutsche Ausgabe auf 3 drÅcken.                                         *
echo *******************************************************************************

:wkey
key$
if errorlevel 52 goto wkey
if errorlevel 51 goto al
if errorlevel 50 goto france
if errorlevel 49 goto gb
goto wkey

:france
game
goto fin

:gb
game anglais
goto fin

:al
game allemand

:fin
echo on
