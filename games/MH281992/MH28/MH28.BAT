echo off
cls
fndsound
if errorlevel 2 goto quit
if errorlevel 1 goto continue
:continue
sound
cls
echo 
echo 
echo 
echo 
echo 
echo 
echo				  Please Select:
echo 
echo				  1 .. VGA	Version
echo				  2 .. HERCULES Version
echo 
echo				  Enter 1-2 :

reply
if errorlevel 2 goto black
if errorlevel 1 goto color

:color
comh28
goto quit

:black
findbwmh
if errorlevel 2 goto slow
if errorlevel 1 goto first
:slow
echo 
indisk3
:first
bwmh28

:quit
echo 
