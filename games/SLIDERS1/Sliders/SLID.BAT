echo off
cls
echo		SLIDERS - Copyright MICROIDS 1991
echo		---------------------------------
echo			CHOOSE SCREEN MODE 
echo			------------------
echo		1 - EGA version   320*200 16 colors
echo		2 - VGA version   320*200 16 colors
echo		*
echo		Press 1 or 2

:test
key$
if errorlevel 51 goto test
if errorlevel 50 goto vga
if errorlevel 49 goto ega
goto test

:ega
echo		SLIDERS - EGA version
s_vga /1
goto fin

:vga
echo		SLIDERS - VGA version
s_vga /2
goto fin

:fin
echo on
     