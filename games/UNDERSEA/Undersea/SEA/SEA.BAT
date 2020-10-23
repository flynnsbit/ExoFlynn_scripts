@echo off
rem If -v is given, user can hit Ctrl-PrintScreen to dump the screen to a file.
rem usage: SEA [-v] [-clean] [-p]
rem The -p is only used within Windows to pause the end screen.
rem If -clean is given, no TSRs will be loaded before running ka.
C:
cd C:\SEA
if "%1"=="-CLEAN" goto clean
if "%1"=="-clean" goto clean
rem rem power.exe not detected
if "%1"=="-V" goto vgacapt
if "%1"=="-v" goto vgacapt
moustest
if errorlevel 1 goto nomouse
rem no special tsrs needed
rem No special sound device
rem ka -520k kav.exe -lC:\SEA -rD:\SEA -fC:\SEA
ka -520k kav.exe -lC:\SEA -rD:\SEA\main
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
rem no special tsr cleanup needed
goto end
:nomouse
mouse
rem no special tsrs needed
rem No special sound device
ka -520k kav.exe -lC:\SEA -rD:\SEA\main
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
rem ka -520k kav.exe -lC:\SEA -rD:\SEA -fC:\SEA
rem no special tsr cleanup needed
mouse /u >nul
goto end
:vgacapt
moustest
if errorlevel 1 goto vnomouse
rem no special tsrs needed
rem No special sound device
vgacapt ka -520k kav.exe -lC:\SEA -rD:\SEA\main
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
rem no special tsr cleanup needed
goto end
:vnomouse
mouse
rem no special tsrs needed
rem No special sound device
vgacapt ka -520k kav.exe -lC:\SEA -rD:\SEA\main
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
rem no special tsr cleanup needed
mouse /u >nul
goto end
:clean
ka -520k kav.exe -lC:\SEA -rD:\SEA\main
if errorlevel 1 goto bottom
rem don't clear the screen for errors...
:end
rem No special sound device cleanup
echo.
echo.
echo.                                                     
echo                            Thank you for using 
echo.
echo                         Undersea Adventure CD-ROM               
echo.                                                                           
echo         Try these other great new products from Knowledge Adventure!     
echo.  
echo. 
echo                         ษอออออออออออออออออออออออออออป
echo                         บ   3-D DINOSAUR ADVENTURE  บ
echo                         บ   3-D BODY ADVENTURE      บ
echo                         บ   AMERICA ADVENTURE       บ
echo                         บ   BUG ADVENTURE           บ
echo                         บ   KID'S ZOO               บ
echo                         บ   IMAX DISCOVERERS        บ
echo                         บ   IMAX SPEED              บ
echo                         บ   SCIENCE ADVENTURE II    บ
echo                         บ   SPACE ADVENTURE         บ
echo                         บ   ZURK'S LEARNING SAFARI  บ
echo                         ศอออออออออออออออออออออออออออผ
echo.
echo.
echo                   For more information call (818) 542-4200.
echo.
:bottom
if not "%1"=="-p" goto last
	echo Press a key to return to Windows...
	pause > nul
:last
rem go straight to command line, do not pass Go, do not collect $200.
echo.
