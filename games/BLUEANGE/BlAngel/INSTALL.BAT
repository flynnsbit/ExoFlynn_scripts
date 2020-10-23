
@echo off
cls
if exist menu.ega goto meld1
if "%1"=="" goto meld2
if "%1"=="C" goto START
if "%1"=="c" goto START
if "%1"=="D" goto START
if "%1"=="d" goto START
goto meld2
:START
cd blueangl.69
md %1:\blueangl.69
copy *.* %1:\blueangl.69
cd ..
cls
echo Please insert the second Game Disk
pause
cls
copy *.* %1:\blueangl.69
%1:\
cd %1:\blueangl.69
cls
echo To play Blueangel 69 enter BA69
goto ende

:meld1
echo Please insert the first Game Disk and try again !
goto ende

:meld2
echo To install Blue Angel 69 on hardisk type :
echo INSTALL C   or   INSTALL D
goto ende
:ende
