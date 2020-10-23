echo off

rem Xiphos Install Copyright (c) 1990 S.P.A./Electronic Zoo

cls
echo On which fixed disk do you want to install Xiphos ('C' or 'D') ?
reply cd
if errorlevel 100 goto drive_d
install1 c
:drive_d
install1 d
