@echo off
cls
echo  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                  CATCH'EM                              บ
echo  บ                        (C) 1991, 1992  BY  PRESTIGE                    บ
echo  บ                            INSTALLATION  PROGRAM                       บ
echo  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
