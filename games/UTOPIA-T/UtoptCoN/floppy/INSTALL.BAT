@echo off
cls
echo                    ษออออออออออออออออออออออออออออออออออป
echo                    บ Û    Û ÛÛÛÛÛ ÛÛÛÛÛ ÛÛÛÛÛ Û ÛÛÛÛÛ บ
echo                    บ Û    Û   Û   Û   Û Û   Û Û Û   Û บ
echo                    บ Û    Û   Û   Û   Û ÛÛÛÛÛ Û ÛÛÛÛÛ บ
echo                    บ Û    Û   Û   Û   Û Û     Û Û   Û บ
echo                    บ ÛÛÛÛÛÛ   Û   ÛÛÛÛÛ Û     Û Û   Û บ
echo                    ศออออออออออออออออออออออออออออออออออผ
echo ๚
echo                            N E W   W O R L D S
echo ๚
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                 (c) Gremlin Graphics Software Ltd 1992.                     บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo ๚
if not "%2"=="" goto :install
echo Please type INSTALL [source] [destination]
echo where source is the drive containing UTOPIA
echo and destination is any valid hard drive.
echo ๚
echo eg: INSTALL A C
echo ๚


goto :end

:install

if exist %2:\utopia\scenario\alien1.bin goto :cont
echo ๚
echo Could not find original UTOPIA program.
echo ๚
goto :end
:cont
%2:
cd \utopia\scenario
copy %1:\scenario\*.*
echo ๚
mg1 %1 %2
:end

