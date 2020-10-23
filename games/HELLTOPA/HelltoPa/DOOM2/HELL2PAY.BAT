@echo off
cls
REM 
REM Check for existance of doom2.exe and doom2.wad
if not exist doom2.wad goto Doh
if not exist doom2.exe goto Doh
REM 
REM Check for existance of HELL TO PAY wads
REM 
if not exist hell2pay.wad goto error
if not exist htpdmo19.wad goto error
if not exist htpdmo18.wad goto error
if not exist htpdmo17.wad goto error
if not exist htpdmo16.wad goto error
REM 
REM routine to load the appropriate HELL TO PAY demos
REM 
:title2
echo ษอออออออออออออออออออออน  Hell To Pay Demo Loader  ฬออออออออออออออออออออออออออป
echo บ   ๚    ๙       ๚  ๚               ๚                ๚    ๚      ๙       ๚   บ
echo บ  ฿Û  ฿Û Ü฿Û฿฿฿฿ Ü฿Û     Ü฿Û       Û฿฿Ü฿฿Û  Ü฿฿฿Ü   ฿Û฿฿Ü  ฿Û฿฿Ü  Ü฿Ü ๚ ฿Ü  บ
echo บ   Û ๚ Û   Û   ๚   Û     ๚ Û     ๙    Û    Û    Û    Û   Û  Û   Û   ฿Ü Ü฿   บ
echo บ  ฿Û฿฿฿Û  ÜÛÜÜ   ๙ Û       Û      ๚   Û ๚  Û  ๚ Û   ฿Û฿฿฿  ฿Û฿฿฿Û  ๚  Û     บ
echo บ ๚ Û ๚ Û ฿ Û     ๚ Û  ๚    Û  ๚       Û    Û  ๙ Û ๚  Û      Û ๚ Û ๚   Û     บ
echo บ  Ü฿  Ü฿  Ü฿ÜÜÜÜ  Ü฿ÜÜÜÜ  Ü฿ÜÜÜÜ     ÜÛÜ   ฿ÜÜÜÜ฿  Ü฿      Ü฿  Ü฿   Ü฿    ๙ บ
echo บ   ๙  ๚          ๚              ๚         ๙    ๚         ๚              ๚   บ
echo ฬออออออออออออออออออออออออออออออออออออัอออออออออออออออออออออออออออออออออออออออน
echo บ What version of Doom2 do you have? ณ Version [6] - 1.666    [9] - 1.9      บ
echo บ * Press the Letter Correspoding to ณ         [7] - 1.7/1.7a                บ
echo บ   your correct Doom2 version.      ณ         [8] - 1.8      [Q] - Quit     บ
echo ฬออออออออออออออออออออออออออออออออออออฯอออออออออออออออออออออออออออออออออออออออน
echo บ * If you don't know what version you have, go back to your prompt and run  บ
echo บ DOOM2.  Look at the top of the screen when DOOM2 is loading, the version   บ
echo บ you are running will be displayed there.                                   บ
echo บษอหหอหออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออหอหหอปบ
echo ศน บบ บ          DOOM II is a trademark of id Software Inc.            บ บบ ฬผ
echo  ศอสสอสออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออสอสสอผ
goto blah
:blah
choice /c:q9876
if errorlevel 5 goto six
if errorlevel 4 goto seven
if errorlevel 3 goto eight
if errorlevel 2 goto nine
if errorlevel 1 goto end
REM 
REM This routine is only invoked if choice.exe is not found.
REM It causes HELL TO PAY to be run without the demos loaded.
REM 
echo.
echo WARNING!! Choice.exe not found (should've been installed by DOS 6 or Windows95)
echo.
echo             HELL TO PAY will be loaded without the new demos
echo.
echo   If you don't start a new game within 15-30 seconds, the standard demos
echo     will begin playing.  The reason they look funny is because they
echo       where recorded on DOOM II maps, not on HELL TO PAY maps.
echo.
echo    If you want to watch the HELL TO PAY demos, you need to have choice.exe
echo        installed, so that the proper version of them will be used.
echo.
echo            (Note: choice.exe comes with DOS 6.* and Windows 95)
echo.
pause
rem
rem command line to run Min installed HELL TO PAY without the demos.
rem 
doom2 -file hell2pay.wad
goto end
REM 
REM This is the error message given in either doom2.wad or doom2.exe aren't found
REM 
:Doh
echo.
cls
echo.
echo                    Can't Find Doom2.exe or Doom2.wad!
echo.
echo       Make sure you are in the directory where you installed DOOM II
echo.
echo        (You must already have DOOM II installed to play HELL TO PAY)
echo.
goto end
:error
REM This is the error message given when the necessary wads aren't found
cls
echo.
echo                    Can't Find the Necessary WADS!
echo.
echo * Please check to make sure that the following are in your doom2 directory.*
echo.
echo      HELL2PAY.WAD  HTPDMO16.WAD  HTPDMO17.WAD HTPDMO18.WAD HTPDMO19.WAD
echo.
echo   (The HTPDMO1*.WAD files are in the root directory of the HELL TO PAY CD)
echo.
echo        If HELL2PAY.wad is absent, reinstall HELL TO PAY from the CD.
echo.
pause
goto end
REM 
REM routine for Min installed HTP and version 1.666
REM 
:six
cls
echo Running Hell To Pay with version 1.666 Demos...
doom2 -file hell2pay.wad htpdmo16.wad
goto end
REM 
REM routine for Min installed HTP and version 1.7 or 1.7a
REM 
:seven
cls
echo Running Hell To Pay with version 1.7 Demos...
doom2 -file hell2pay.wad htpdmo17.wad
goto end
REM 
REM routine for Min installed HTP and version 1.8
REM 
:eight
cls
echo Running Hell To Pay with version 1.8 Demos...
doom2 -file hell2pay.wad htpdmo18.wad
goto end
REM 
REM routine for Min installed HTP and version 1.9
REM 
:nine
cls
echo Running Hell To Pay with version 1.9 Demos...
doom2 -file hell2pay.wad htpdmo19.wad
goto end
:end
