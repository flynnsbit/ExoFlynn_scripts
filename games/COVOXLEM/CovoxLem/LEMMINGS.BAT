@echo off
rem
rem PC-Lemmings dispatch program
rem

if %1s == s goto usage
if %1 == cga cgalemmi %2
if %1 == vga vgalemmi /v %2
if %1 == ega vgalemmi /e %2
if %1 == tandy tgalemmi
if %1 == CGA cgalemmi %2
if %1 == VGA vgalemmi /v %2
if %1 == EGA vgalemmi /e %2
if %1 == TANDY tgalemmi
goto finish

:usage

rem echo type :-   'lemmings cga', for cga version
echo type :-   'lemmings ega', for ega version
echo           'lemmings vga', for vga version
rem echo           'lemmings tandy', for tandy version

:finish


