@echo off
C:
if not exist C:\DOOM2\htpmovie md C:\DOOM2\htpmovie

cd C:\DOOM2

if exist C:\DOOM2\hell2pay.wad del C:\DOOM2\hell2pay.wad

copy D:\htp\htp-raw.wad

copy D:\htp\deusf.exe

copy D:\htp\hell2pay.min hell2pay.bat

copy D:\htp\htpdmo*.wad

copy D:\htp\readme.com help-htp.com

copy D:\htp\hell2pay.txt

copy D:\htp\htp-plot.com

copy D:\htpmovie\wraith*.aas C:\DOOM2\htpmovie

deusf -append htp-raw.wad

ren htp-raw.wad hell2pay.wad

D:\flimaker D: C:\DOOM2\htpmovie\wraith-F.aas C:\DOOM2\htpmovie.bat C:\DOOM2
