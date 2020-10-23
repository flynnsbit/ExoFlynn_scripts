@echo off
CMEM.EXE
if ERRORLEVEL 2 goto quitbatch 
VMEM.EXE
if ERRORLEVEL 2 goto quitbatch
APOCCOW.EXE -nosound
:quitbatch
