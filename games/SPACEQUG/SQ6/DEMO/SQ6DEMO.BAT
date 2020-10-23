@echo off
if exist \d2htools.dll goto dontRunFromCD
goto setupEnvironment

:start
if "%1"=="" goto DOSRun
echo This game is a stand alone DOS application.
echo If you have problems running %dgame% from windows, exit windows
echo and run sq6demo.bat from the %ddir% directory.
pause
:DOSRun
if not exist resource.cfg goto qInstall
goto run

:qInstall
cls
echo This installation is incomplete.
echo You may either run this product with simple defaults,
echo run the Install program to customize the product for your
echo system, or exit.
what c "Use (D)efaults, (I)nstall, or (E)xit? " DIE
if "%what%"=="D" goto runDefault
if "%what%"=="I" goto install
if "%what%"=="E" goto end
goto end

:runDefault
cls
echo.
echo Please note that the defaults for this product may not be optimal for your 
echo system. You will hear no audio, and standard PC speaker sound.  We 
echo recommend installing this product to your hard drive.
pause
%sdrive%
cd %sdir%
sierra default.cfg
goto end

:run
%sdrive%
cd %sdir%
sierra %ddir%\resource.cfg
%ddrive%
goto end

:install
install
if not exist resource.cfg goto end
echo mode = real >> resource.cfg
echo CD = yes >> resource.cfg
echo minHunk  = 223k >> resource.cfg
echo language = 1 >> resource.cfg
goto run

:checkCD
if "%dgame%"=="" goto noEnviro
goto test
:noEnviro
echo You do not have enough enviroment space to run this batch file.
echo Please see the readme file for instructions on how to correct this
echo problem.
pause
goto end
:test
if not exist %sdrive%\d2htools.dll goto askCD
goto start

:askCD
echo.
echo Please insert The Space Quest Collection CD in your CD-ROM drive.
echo Press "C" to continue, or "E" to exit. 
echo.
what c "(C)ontinue, or (E)xit? " CE
echo.
if "%what%"=="E" goto end
goto checkCD

:dontRunFromCD
echo.
echo Please do not run this batch file directly from the CD.
echo To run this product, please run SETUP from Windows.
echo.

:setupEnvironment
