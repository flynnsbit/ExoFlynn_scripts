copy %1:\night.exe >nul:
copy %1:\*.* cga >nul:
del cga\*.bat
del cga\night.exe
:wait_d2
if exist %1:\disk.2 goto disk_2_in
echo Insert disk 2
pause
goto wait_d2
:disk_2_in
copy %1:\*.* cga >nul:
mkdir ega-vga
:wait_d3
if exist %1:\disk.3 goto disk_3_in
echo Insert disk 3
pause
goto wait_d3
:disk_3_in
copy %1:\*.* ega-vga >nul:
:wait_d4
if exist %1:\disk.4 goto disk_4_in
echo Insert disk 4
pause
goto wait_d4
:disk_4_in
copy %1:\*.* ega-vga >nul:
echo NIGHT HUNTER installation complete.

