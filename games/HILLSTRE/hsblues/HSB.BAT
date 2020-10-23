echo off

cls
waitch
IF ERRORLEVEL 5 goto exit
IF ERRORLEVEL 4 goto tandy
IF ERRORLEVEL 3 goto vga
IF ERRORLEVEL 2 goto ega
IF ERRORLEVEL 1 goto cga

goto exit

:cga
IF EXIST hsb_cga.exe goto ok1
echo Please insert the PROGRAM DISK
pause
goto cga
:ok1
cls
hsb_cga
goto exit

:ega
IF EXIST hsb_vga.exe goto ok2
echo Please insert the PROGRAM DISK
pause
goto ega
:ok2
cls
hsb_vga
goto exit

:vga
IF EXIST intro.exe goto ok3
echo Please insert the PROGRAM DISK
pause
goto vga
:ok3
intro
:tryagain1
IF EXIST hsb_vga.exe goto ok4
echo Please insert the PROGRAM DISK
pause
goto tryagain1
:ok4
cls
hsb_vga
goto exit

:tandy
IF EXIST hsb_tga.exe goto ok5
echo Please insert the PROGRAM DISK
pause
goto tandy
:ok5
cls
hsb_tga

:exit
