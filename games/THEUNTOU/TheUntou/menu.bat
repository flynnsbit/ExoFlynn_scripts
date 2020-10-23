echo off
cls

if  t%1 == ttandy goto tandy
if  e%1 == eega   goto ega
if  c%1 == ccga   goto cga
if  v%1 == vvga   goto ega

echo --------------------------------------------------------------
echo To play THE UNTOUCHABLES in CGA     mode type:      menu cga
echo                             EGA     mode type:      menu ega
echo                             VGA     mode type:      menu vga
echo                             Tandy   mode type:      menu tandy
echo --------------------------------------------------------------                          
goto finish

:ega
echo Please insert disc 2 in drive, if you have not done so already
pause
egagame
goto finish

:cga
echo Please insert disc 1 in drive, if you have not done so already
pause
cgagame

goto finish

:tandy
echo Please insert disc 2 in drive, if you have not done so already
pause
tdygame

:finish
