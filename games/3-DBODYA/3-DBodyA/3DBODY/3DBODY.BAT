@echo off
rem usage: 3DBODY [-v] [-clean] [-p]
rem The -p is only used within Windows to pause the end screen.
rem If -v is given, user can hit Ctrl-PrintScreen to dump the screen to a file.
rem If -clean is given, no TSRs will be loaded before running ka.
C:
cd C:\3DBODY
:checkcd
existdir D:\3DBODY\drivers
if errorlevel 1 goto nocd
goto gotcd
:nocd
cls
echo. 
echo. 
echo. 
echo.
echo.
echo                      浜様様様様様様様様様様様様様様様�
echo                      �                               �
echo                      � Unable to access the CD-ROM!  �
echo                      �                               �
echo                      藩様様様様様様様様様様様様様様様�
echo. 
echo. 
echo.
echo. 
echo   Please insert 3-D Body Adventure in drive D: and press a key
echo   to continue or press [ESC] to cancel.
echo. 
echo. 
echo.
echo. 
echo. 
echo. 
echo.
checkesc
if errorlevel 2 goto loop
goto end
:loop
cls
goto checkcd
:gotcd
if "%1"=="-CLEAN" goto clean
if "%1"=="-clean" goto clean
rem rem power.exe not detected
if "%1"=="-V" goto vgacapt
if "%1"=="-v" goto vgacapt
moustest
if errorlevel 1 goto nomouse
rem no special tsrs needed
rem No special sound device
ka -520k kav.pgm -lC:\3DBODY -rD:\3DBODY -fC:\3DBODY
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
rem no special tsr cleanup needed
goto end
:nomouse
mouse
rem no special tsrs needed
rem No special sound device
ka -520k kav.pgm -lC:\3DBODY -rD:\3DBODY -fC:\3DBODY
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
rem no special tsr cleanup needed
mouse /u >nul
goto end
:vgacapt
moustest
if errorlevel 1 goto vnomouse
rem no special tsrs needed
rem No special sound device
vgacapt ka -520k kav.pgm -lC:\3DBODY -rD:\3DBODY -fC:\3DBODY
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
rem no special tsr cleanup needed
goto end
:vnomouse
mouse
rem no special tsrs needed
rem No special sound device
vgacapt ka -520k kav.pgm -lC:\3DBODY -rD:\3DBODY -fC:\3DBODY
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
rem no special tsr cleanup needed
mouse /u >nul
goto end
:clean
ka -520k kav.pgm -lC:\3DBODY -rD:\3DBODY -fC:\3DBODY
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
:end
rem No special sound device cleanup
karerun
if errorlevel 99 goto last
zzzkare.bat
:endmsg
echo.
echo  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �                 Thank you for using 3-D Body Adventure.                 �
echo  �                                                                         �
echo  �       Try these other great new products from Knowledge Adventure!      �
echo  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo. 
echo                         浜様様様様様様様様様様様様様�
echo                         �   3-D DINOSAUR ADVENTURE  �
echo                         �   AMERICA ADVENTURE       �
echo                         �   BUG ADVENTURE           �
echo                         �   KID'S ZOO               �
echo                         �   IMAX DISCOVERERS        �
echo                         �   IMAX SPEED              �
echo                         �   SCIENCE ADVENTURE II    �
echo                         �   SPACE ADVENTURE         �
echo                         �   UNDERSEA ADVENTURE      �
echo                         �   ZURK'S LEARNING SAFARI  �
echo                         藩様様様様様様様様様様様様様�
echo.
echo.
echo                   For more information call (818) 542-4200.
echo.
echo.
:bottom
if not "%1"=="-p" goto last
	echo Press a key to return to Windows...
	pause > nul
:last
rem go straight to command line, do not pass Go, do not collect $200.
