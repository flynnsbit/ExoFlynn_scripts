@echo off

if "%1" == "" goto goTitle
goto go2create

:goTitle
title2 c

:go2create
cd create
create %1
cd ..
echo on
