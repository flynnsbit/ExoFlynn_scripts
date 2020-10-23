@echo off
cls
echo.
echo In case of difficulties starting the game, or to switch between
echo GERMAN/ENGLISH language, please refer to the README.TXT
append c:\coldream\english
pause
imgmount d c:\games\coldream\cdream1.iso -t iso
d:
cd coldream
cold
c:
cd\
mount -u d
