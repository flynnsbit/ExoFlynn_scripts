@echo off
if exist caw.ini goto doneinit
        echo 1 >caw.ini
        setup
:doneinit

if "%1" == "" goto goTitle
goto go2caw

:goTitle
title2 d

:go2caw
cawv2 %1
echo on
