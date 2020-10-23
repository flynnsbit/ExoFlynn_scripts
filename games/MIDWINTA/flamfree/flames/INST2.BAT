md flames
cd flames

xcopy %1\*.* /s

:repeat
echo Insert VGA Graphics disk
pause

if exist %1\vga\head.cmp goto do_install
echo **** INCORRECT DISK ****
goto repeat

:do_install
xcopy %1\*.* /s

echo Installation Complete !!!!!
echo Please ignore 'BATCH FILE MISSING' error
del ..\inst2.bat
