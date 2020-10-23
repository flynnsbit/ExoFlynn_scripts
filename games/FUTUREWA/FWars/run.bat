:menu
@echo off
cls
echo.
echo Press 1 for Future Wars: Adventures in Time (CD)
echo Press 2 for Future Wars: Adventures in Time w/ Adlib
echo Press 3 for Future Wars: Adventures in Time w/ MT32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto epi3
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
cd FW
mixer cdaudio 40
cls
@call fw
cls
goto menu

:epi2
cd floppy
cls
copy .\adlib\LVDT.CFG .\
fw.com
cd ..
cls
goto menu

:epi3
cd floppy
cls
copy .\mt32\LVDT.CFG .\
fw.com
cd ..
cls
goto menu

:quit
exit