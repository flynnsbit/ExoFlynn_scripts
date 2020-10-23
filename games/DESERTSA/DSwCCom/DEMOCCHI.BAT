echo off
C:
cd \
cd \GULFDOS
:top
DESERT AUTO D:\DESERT\ D:\DESERT\GULFWAR\ C:\ DEMO DEMOHI.DAT
if errorlevel 3 goto groupiii
if errorlevel 2 goto groupii
goto fini
:groupiii
GNDWAR D:\DESERT\GULFWAR\ D:\DESERT\ C:\ Y
DEL C:\UNITPOS.TMP
goto fini
:groupii
GNDWAR D:\DESERT\GULFWAR\ D:\DESERT\ C:\ Y HIST
goto fini
:fini
wait10
if errorlevel 1 goto end
goto top
:end
