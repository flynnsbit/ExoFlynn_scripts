@echo off
CMEM.EXE
if ERRORLEVEL 2 goto quitbatch 
VMEM.EXE
if ERRORLEVEL 2 goto quitbatch
SOUNDCHK.EXE
if ERRORLEVEL 2 goto quitbatch
APOCCOW.EXE
:quitbatch
