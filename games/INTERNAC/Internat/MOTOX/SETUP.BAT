:begin
@echo off
cls
set DOS4G=quiet
sumx.exe
if ERRORLEVEL == 7 goto motox
cd miles
if ERRORLEVEL == 6 goto snd5
if ERRORLEVEL == 5 goto snd4
if ERRORLEVEL == 4 goto snd3
if ERRORLEVEL == 3 goto snd2
if ERRORLEVEL == 2 goto snd1
if ERRORLEVEL == 1 goto snd0
cd ..
goto end
:motox
call motox
goto end
:snd5
setsound 5
cd ..
goto begin
:snd4
setsound 4
cd ..
goto begin
:snd3
setsound 3
cd ..
goto begin
:snd2
setsound 2
cd ..
goto begin
:snd1
setsound 1
cd ..
goto begin
:snd0
setsound 0
cd ..
goto begin
:end

