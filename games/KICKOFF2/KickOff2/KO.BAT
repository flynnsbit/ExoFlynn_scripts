echo off
prog 0
:loop
if not errorlevel 2 goto end
if exist komenu.exe komenu
if exist koextra1.exe koextra1
if exist koextra2.exe koextra2
if exist koextra3.exe koextra3
if exist koextra4.exe koextra4
if exist koextra5.exe koextra5
if exist koextra6.exe koextra6
if exist koextra7.exe koextra7
if exist koextra8.exe koextra8
if exist koextra9.exe koextra9
prog 1
goto loop
:end
echo on

