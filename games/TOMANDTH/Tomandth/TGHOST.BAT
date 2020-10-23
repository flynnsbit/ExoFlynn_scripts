@echo off
if "%1"=="" goto Usage
if "%1"=="v" goto VGA
if "%1"=="e" goto EGA

:VGA
cd VGA
tom.exe
cd ..
goto end

:EGA
cd EGA
tom.exe
cd ..
goto end

:Usage
Echo To Play Tom And The Ghost VGA type 'tghost v'. If you want
Echo To Play Tom And The Ghost EGA type 'tghost e'.

:End
