@echo off

REM  max install for Perdition's Gate, copyright (c) 1996, Wraith, Corporation

C:
cd C:\DOOM2

if exist C:\DOOM2\perdgate.wad del C:\DOOM2\perdgate.wad

copy D:\pg\deusf.exe

copy D:\pg\perdgate.max perdgate.bat

copy D:\pg\pg-reset.bat

copy D:\pg\pgdemo*.wad

copy D:\pg\readme.com help-pg.com

copy D:\pg\PerdGate.txt

copy D:\pg\pg-plot.com

copy doom2.wad doom2saf.wad

deusf -merge D:\pg\pg-raw.wad

ren doom2.wad perdgate.wad

ren doom2saf.wad doom2.wad

