@echo off
if "%1"=="" goto syntax
if "%1"=="@" goto compile
if not "%2"=="" goto syntax
if exist ctm-%1.msg %0 @ %1 ctm-%1

echo Invalid language code!
echo.

:syntax
echo Syntax: national "lang code"
echo.
echo Where "lang code" is an "EN" for English edition or suffix
echo of one of CTM-*.MSG file (for example, "DE").
goto end

:compile
if not exist %2\nul md %2
cd %2
copy ..\%3.msg ctmouse.msg>nul
call tasm/m ..\ctmouse.asm
call tlink/t /x ctmouse.obj,ctmouse.exe
..\ctm2exe ctmouse.exe
del ctmouse.msg>nul
del ctmouse.obj>nul
cd ..

:end
