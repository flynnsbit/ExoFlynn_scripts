echo off
C:
cd \
cd \GULFDOS
DESERT AUTO D:\DESERT\ D:\DESERT\GULFWAR\ C:\
:top
if errorlevel 20 goto fini
if errorlevel 10 goto shelled
if errorlevel 3 goto groupiii
if errorlevel 2 goto groupii
goto fini
:shelled
SMARTDRD SMART.CFG C:\GULFDOS -n -q -dph8
DESERT AUTO D:\DESERT\ D:\DESERT\GULFWAR\ C:\ RESTORE
goto top
:groupiii
GNDWAR D:\DESERT\GULFWAR\ D:\DESERT\ C:\ Y
DEL C:\UNITPOS.TMP
goto fini
:groupii
GNDWAR D:\DESERT\GULFWAR\ D:\DESERT\ C:\ Y HIST
goto fini
:fini
cd \
