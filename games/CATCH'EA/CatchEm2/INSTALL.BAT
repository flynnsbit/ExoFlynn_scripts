@echo off
cls
echo  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo  �                                  CATCH'EM                              �
echo  �                        (C) 1991, 1992  BY  PRESTIGE                    �
echo  �                            INSTALLATION  PROGRAM                       �
echo  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
if "%1"=="" goto :st
%2
cd \
md catch'em
cd catch'em
md data
md music
md takes
echo main files..
copy %1*.* >nul
echo data files..
copy %1data\*.* %2data >nul
echo music files..
copy %1music\*.* %2music >nul
echo takes..
copy %1takes\*.* %2takes >nul
goto :cfg
:st
echo type in source and destination drive "install a: c:"
goto :end
:cfg
cd music
psmcfg_e
cd ..
echo type "CATCH'EM" to start game
:end
