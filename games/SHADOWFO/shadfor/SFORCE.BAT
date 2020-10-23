@echo off
indxldat index5 to index1 /set=on /ver=on
if not errorlevel 1 goto end
if not errorlevel 2 goto a
if not errorlevel 3 goto b
if not errorlevel 4 goto c
if not errorlevel 5 goto end
:a
cls
indxldat index6 to index1 /set=off 
goto exit
:b
indxldat index7 to index8 /set=off
goto exit
:c
indxldat index8 to index4 /set=off
goto exit
:end
cls
echo ShadowForce aborted.
:exit


