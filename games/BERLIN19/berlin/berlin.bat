echo off
cls
if "%1" == "" goto Nodrive
if %1 == V goto vga
if %1 == v goto vga
if %1 == E goto vga
if %1 == e goto vga
if %1 == C goto cga
if %1 == c goto cga
if %1 == H goto cga
if %1 == h goto cga
if %1 == T goto tan
if %1 == t goto tan
:Nodrive
echo   ************************** B e r l i n  1 9 4 8  ***********************
echo   *                                                                      *
echo   *   Please choose graphic mode:        V: VGA                          *
echo   *                                      E: EGA                          *
echo   *   For example: Type                  C: CGA                          *
echo   *   BERLIN V [ENTER]                   H: Hercules                     *
echo   *   to start the vga version.          T: Tandy                        *
echo   *                                                                      *
echo   ************************************************************************
goto ende

:vga
if not exist vvor.exe goto insertv
vvor
vgame
if errorlevel 1 goto vga
goto ende

:tan
if not exist tvor.exe goto insertt
tvor
tgame
if errorlevel 1 goto tan
goto ende

:cga
if not exist cvor.exe goto insertc
cvor
cgame
if errorlevel 1 goto cga
goto ende

:insertv
echo Please insert disk #1!
pause
goto vga

:insertt
echo Please insert disk #5!
pause
goto tan

:insertc
echo Please insert disk #4!
pause
goto cga

:ende
