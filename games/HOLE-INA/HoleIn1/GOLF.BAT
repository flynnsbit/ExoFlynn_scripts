echo off
cls
type select.txt
adapter
if ERRORLEVEL 5 goto EGA
if ERRORLEVEL 4 goto VGA
if ERRORLEVEL 3 goto HERCULES
if ERRORLEVEL 2 goto TANDY
if ERRORLEVEL 1 goto CGA
goto END
:EGA
ega 1 2 3 4 5 6 7 8 9
goto END
:VGA
vga 1 2 3 4 5 6 7 8 9
goto END
:HERCULES
herc 1 2 3 4 5 6 7 8 9
goto END
:TANDY
tan 1 2 3 4 5 6 7 8 9
goto END
:CGA
cga 1 2 3 4 5 6 7 8 9
:END

