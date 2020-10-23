echo off
cls
if "%0" == "shoot" goto runit
if "%0" == "SHOOT" goto runit
if "%0" == "shoot/c" goto cga
if "%0" == "shoot/e" goto ega
if "%0" == "shoot/t" goto tga
if "%0" == "shoot/v" goto vga
echo The only parameters allowable with this programme are /c,/e,/t & /v.
goto end
:runit
s
if errorlevel 255 goto explain
if errorlevel 3 goto vga
if errorlevel 2 goto ega
if errorlevel 1 goto tga
:cga
echo Please wait - Loading CGA game
cgashoot
goto end
:tga
echo Please wait - Loading TGA game
tgashoot
goto end
:ega
echo Please wait - Loading EGA game
egashoot
goto end
:vga
echo Please wait - Loading VGA game
vgashoot
goto end
:explain
echo	Sorry but you have no appropriate graphics card to run this game
echo Try overriding card detection by typeing CGASHOOT/EGASHOOT etc...
:end
