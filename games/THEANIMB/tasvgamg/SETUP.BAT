@echo off
:start
grasprt setup setup /nosvga

if errorlevel 30 goto vesa
if errorlevel 20 goto svga
if errorlevel 10 goto vga

goto exit

:vga
copy amv10 amemv.bat>nul
grasprt setup setup3 /nosvga
if errorlevel 60 goto setd
if errorlevel 50 goto exit
if errorlevel 40 goto start
goto setd

:svga 
copy amv20 amemv.bat>nul
grasprt setup setup2 /novesa
if errorlevel 60 goto setd
if errorlevel 50 goto exit
if errorlevel 40 goto start
goto setd

:vesa
copy amv30 amemv.bat>nul
grasprt setup setup2 /vesa
if errorlevel 60 goto setd
if errorlevel 50 goto exit
if errorlevel 40 goto start
goto setd

:setd
setd

echo If your sound driver was configured successfully,
echo You can type AMEMV to begin the program...


:exit
