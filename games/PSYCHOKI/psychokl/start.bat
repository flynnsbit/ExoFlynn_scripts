@echo off 
.\dosbox\dosbox.exe -conf .\dosbox\dosbox.conf -noconsole -exit -fullscreen 
del stdout.txt 
del stderr.txt 
:end 
