@echo off
.\inst.exe
if errorlevel 1 goto end
.\uvconfig.exe -gen -noanalyse
mode co80
.\setup.exe
.\scrndiag.exe
mode co80
cls
@echo To run "NET:Zone" type 'nz' 
:end
