echo off
if "%1"=="" goto help
if "%1"=="C" goto cga
if "%1"=="T" goto tga
if "%1"=="E" goto ega
if "%1"=="V" goto vga
if "%1"=="H" goto hga
if "%1"=="c" goto cga
if "%1"=="t" goto tga
if "%1"=="e" goto ega
if "%1"=="v" goto vga
if "%1"=="h" goto hga
:help
echo Type the following to run Conqueror:-
echo	TANKS C  -  for CGA 4 colour graphics
echo	TANKS E  -  for EGA 16 colour graphics
echo	TANKS V  -  for VGA 16 colour graphics
echo	TANKS T  -  for Tandy 1000 16 colour graphics
echo	TANKS H  -  for Hercules monochrome graphics
goto finish

:cga
tankscga
goto finish

:tga
tankstga
goto finish

:ega
tanksega
goto finish

:vga
tanksega v
goto finish

:hga
tankscga h

:finish
