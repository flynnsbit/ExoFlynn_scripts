echo off

rem		Playroom/Playyard/Treehouse Startup Batch file
rem		written by Rod Nelsen, March 1993
rem		(c) Copyright 1993, Broderbund Software, Inc., Novato CA
rem
rem		Main batch file for Playworld Shell
rem
rem		Started 3-15-93		Last change made 5-20-93

cls
shell batch
goto shellcon

:rerun
if errorlevel 3 goto exit
if errorlevel 2 goto rerun2
if errorlevel 1 goto exitp
if errorlevel 0 goto rerun2
:rerun2
shell shell

:shellcon
if errorlevel 8 goto thdemo
if errorlevel 7 goto tree2
if errorlevel 6 goto yard2
if errorlevel 5 goto play2
if errorlevel 4 goto exit
if errorlevel 3 goto tree
if errorlevel 2 goto yard
if errorlevel 1 goto play
if errorlevel 0 goto exit

:play
cd playroom
playroom shell
cd..
goto rerun

:play2
cd playroom
playroom shell2
cd..
goto rerun

:yard
cd backyard
backyard shell
cd..
goto rerun

:yard2
cd backyard
backyard shell2
cd..
goto rerun

:tree
cd treehse
treehse shell
cd..
goto rerun

:tree2
cd treehse
treehse shell2
cd..
goto rerun

:thdemo
thdemo
goto rerun

:exitp
echo on
pause

:exit
echo on
