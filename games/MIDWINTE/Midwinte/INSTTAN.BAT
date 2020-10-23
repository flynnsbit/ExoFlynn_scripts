copy a:\midwintr.bat %1\
mkdir %1\midwintr
copy a:\midwintr.exe %1\midwintr\*.*
copy a:\middata? %1\midwintr\*.*
copy a:\*.snd %1\midwintr\*.*
copy a:\t*.* %1\midwintr\*.*
copy a:\e*.* %1\midwintr\*.*

if exist a:\tmapbits.bin goto dotan
:nottan
echo Insert TANDY grafix disk
pause
if not exist a:\tmapbits.bin goto nottan
:dotan
if exist %1\midwintr\tmapbits.bin goto notan
copy a:\t*.* %1\midwintr\*.*
copy a:\e*.* %1\midwintr\*.*
:notan
copy a:\zbuffer.bin %1\midwintr\*.*
copy a:\initgame.inf %1\midwintr\*.*

echo Installation Complete !!!!!
echo Please ignore 'BATCH FILE MISSING' error
del %1\insttan.bat

