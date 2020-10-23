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
echo  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ                Thank you for using Science Adventure II.                บ
echo  บ                                                                         บ
echo  บ       Try these other great new products from Knowledge Adventure!      บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo. 
echo                         ษอออออออออออออออออออออออออออป
echo                         บ   3-D BODY ADVENTURE      บ
echo                         บ   3-D DINOSAUR ADVENTURE  บ
echo                         บ   AMERICA ADVENTURE       บ
echo                         บ   BUG ADVENTURE           บ
echo                         บ   KID'S ZOO               บ
echo                         บ   IMAX DISCOVERERS        บ
echo                         บ   IMAX SPEED              บ
echo                         บ   SPACE ADVENTURE         บ
echo                         บ   UNDERSEA ADVENTURE      บ
echo                         บ   ZURK'S LEARNING SAFARI  บ
echo                         ศอออออออออออออออออออออออออออผ
echo.
echo.
echo                   For more information call (818) 542-4200.
echo.
pause
