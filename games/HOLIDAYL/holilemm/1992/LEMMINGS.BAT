@echo off
echo off
menu -menu
if errorlevel 255 goto exit
if errorlevel 96 goto tandy
if errorlevel 80 goto vgalemm
:egalemm
if errorlevel 59 goto egalemmAm
if errorlevel 57 goto egalemmPS2
if errorlevel 55 goto egalemmHigh
vgalemmi -e -x %1 %2 %3
goto exit

:egalemmAm
vgalemmi -e -d %1 %2 %3
goto exit

:egalemmPS2
vgalemmi -e -p %1 %2 %3
goto exit

:egalemmHigh
vgalemmi -e -o %1 %2 %3
goto exit

:tandy
tgalemmi %1 %2 %3
goto exit

:vgalemm
if errorlevel 91 goto vgalemmAm
if errorlevel 89 goto vgalemmPS2
if errorlevel 87 goto vgalemmHigh
vgalemmi -v -x %1 %2 %3
goto exit

:vgalemmAm
vgalemmi -v -d %1 %2 %3
goto exit

:vgalemmPS2
vgalemmi -v -p %1 %2 %3
goto exit

:vgalemmHigh
vgalemmi -v -o %1 %2 %3
:exit
