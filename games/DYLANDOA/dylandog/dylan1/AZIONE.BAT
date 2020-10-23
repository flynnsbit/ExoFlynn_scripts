@echo off
C:
cd\MIRROR-1
if exist install.exe .\install *
if errorlevel 1 goto yet
if exist newmidil.exe newmidil
:yet
if exist install.exe .\install
if errorlevel 1 goto end
main1.exe
:end
if exist c:\sim_tmp.bat c:\sim_tmp
