@echo off
rem usage: SCI2 [-v] [-clean]
rem If -v is given, user can hit Ctrl-PrintScreen to dump the screen to a file.
rem If -clean is given, no TSRs will be loaded before running ka.
C:
cd C:\SCI2
if "%1"=="-CLEAN" goto clean
if "%1"=="-clean" goto clean
rem power.exe not detected
if "%1"=="-V" goto vgacapt
if "%1"=="-v" goto vgacapt
moustest
if errorlevel 1 goto nomouse
rem no special tsrs needed
ka -520k kav.pgm -lC:\SCI2 -rD:\SCI2 -fC:\SCI2
rem no special tsr cleanup needed
goto end
:nomouse
mouse
rem no special tsrs needed
ka -520k kav.pgm -lC:\SCI2 -rD:\SCI2 -fC:\SCI2
rem no special tsr cleanup needed
mouse /u >nul
goto end
:vgacapt
moustest
if errorlevel 1 goto vnomouse
rem no special tsrs needed
vgacapt ka -520k kav.pgm -lC:\SCI2 -rD:\SCI2 -fC:\SCI2
rem no special tsr cleanup needed
goto end
:vnomouse
mouse
rem no special tsrs needed
vgacapt ka -520k kav.pgm -lC:\SCI2 -rD:\SCI2 -fC:\SCI2
rem no special tsr cleanup needed
mouse /u >nul
goto end
:clean
ka -520k kav.pgm -lC:\SCI2 -rD:\SCI2 -fC:\SCI2
:end
echo.
echo.
echo  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �                Thank you for using Science Adventure II.                �
echo  �                                                                         �
echo  �       Try these other great new products from Knowledge Adventure!      �
echo  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo. 
echo                         浜様様様様様様様様様様様様様�
echo                         �   3-D BODY ADVENTURE      �
echo                         �   3-D DINOSAUR ADVENTURE  �
echo                         �   AMERICA ADVENTURE       �
echo                         �   BUG ADVENTURE           �
echo                         �   KID'S ZOO               �
echo                         �   IMAX DISCOVERERS        �
echo                         �   IMAX SPEED              �
echo                         �   SPACE ADVENTURE         �
echo                         �   UNDERSEA ADVENTURE      �
echo                         �   ZURK'S LEARNING SAFARI  �
echo                         藩様様様様様様様様様様様様様�
echo.
echo.
echo                   For more information call (818) 542-4200.
echo.
pause
