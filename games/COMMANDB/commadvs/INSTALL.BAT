@echo off
if"%2"=="" goto exit
if"%2"=="a" goto exit 
if"%2"=="A" goto exit
if"%2"=="b" goto exit
if"%2"=="B" goto exit
%2
cd\
md STARSHIP
cd STARSHIP
echo  Copying essential flies. Please Stand by........
Xcopy %1*.* %2 /s /e >null
del install.*
CONFIG
STARSHIP
goto end
:exit
echo     Please use the command Install [CDROM Drive:] [HARD Drive:]
echo                                 Example:    Install D: C:     
goto bye
:end  
echo  To play after installation Type [Hard Drive:]\[Directory] STARSHIP 
echo                Example:  C:\STARSHIP (enter) 
echo                             STARSHIP (enter) to begin
:bye
