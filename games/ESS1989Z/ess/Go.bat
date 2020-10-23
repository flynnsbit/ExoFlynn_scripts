@echo off
if %1A == A goto :present 
if %1 == EZE   goto :menu
if %1 == EZE   goto :menu
if %1 == EZE   goto :menu
if %1 == EZE   goto :menu
if %1 == EZE   goto :menu
if %1 == EZE   goto :menu
if %1 == EZE   goto :menu
if %1 == EZE   goto :menu
:present
cls
rem PRESENTACION
IF EXIST TYPO.EXE typo E . A . F .   
IF NOT EXIST TYPO.EXE ECHO MENSAJE
IF EXIST 

:menu
rem MENU TARJETA GRAFICA
TARJMENU
if errorlevel 6 goto :fin
if errorlevel 5 goto :vga
if errorlevel 3 goto :ega
if errorlevel 2 goto :cga
if errorlevel 0 goto :hercules

:hercules
if exist simcga.* goto :simcga 
if exist crazy.* goto :crazy 
if exist mono.* goto :mono
if exist herc.* goto :herc 
if exist msherc.* goto :msherc
if exist color.* goto :color 
if exist cs.* goto :cs 
if exist emu2.* goto :emu2 
goto :monocromatico

:simcga
simcga >nul
goto :monocromatico

:crazy
crazy >nul
goto :monocromatico

:mono
mono >nul
goto :monocromatico

:herc
herc >nul
goto :monocromatico

:msherc
msherc >nul
goto :monocromatico

:color
color c >nul
goto :monocromatico

:cs
cs >nul
goto :monocromatico

:emu2
emu2 >nul
goto :monocromatico

:monocromatico
cls
echo ITALSOFT COMPUTACION  Te: 21-4535 BS AS
rem PONER COMO SE CARGA PARA HERCULES

goto :game
goto :fin

:cga
cls
IF EXIST TYPO.EXE typo ITALSOFT SOFTWARE. Blandengues 1217 Cap.Fed. BUENOS AIRES  ARGENTINA
rem PONER COMO SE CARGA PARA CGA

goto :game
goto :fin

:ega
cls
IF EXIST TYPO.EXE typo ITALSOFT SOFTWARE. Blandengues 1217 Cap.Fed. BUENOS AIRES  ARGENTINA
rem PONER COMO SE CARGA PARA EGA

goto :game
goto :fin

:vga
cls
IF EXIST TYPO.EXE typo 
rem PONER COMO SE CARGA PARA VGA

goto :game
goto :fin

:game
rem PONER COMO SE CARGA EL JUEGO PARA TODAS LAS VERSIONES
LOADER ESPA
:fin
cls

rem PONER COMO SE CARGA PARA EGA

goto :game
goto :fin

:vga
cls
IF EXIST TYPO.EXE typo I
rem PONER COMO SE CARGA PARA VGA

goto :game
goto :fin

:game
rem PONER COMO SE CARGA EL JUEGO PARA TODAS LAS VERSIONES
LOADER ESPA
:fin
cls
צצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצצ