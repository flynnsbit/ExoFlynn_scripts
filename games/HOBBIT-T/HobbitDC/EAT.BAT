@echo off
if "%1" == "the" eat %2
if "%1" == "lunch" goto eatlunch
if "%1" == "" echo What do you want to eat?
if not "%1" == "" echo You can't eat that!
goto exit

:eatlunch
if not "%hb2%" == "me" goto donthave
echo You feel much refreshed.
set hb2=nil
goto exit

:donthave
echo But you don't have any lunch!

:exit
