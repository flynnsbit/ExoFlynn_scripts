@echo off
if not exist d:\movies\mpegplay.exe goto wrong_drive
d:\movies\mpegplay d:\movies\zvin.mpg 2
    
mode co80
zomb.exe
nasty.bat
goto end
:wrong_drive
mode co80
echo Could not find Zombieville CD.             
:end
