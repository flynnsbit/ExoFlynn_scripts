copy a:\midwintr.bat %1\
mkdir %1\midwintr
copy a:\midwintr.exe %1\midwintr\*.*
copy a:\middata? %1\midwintr\*.*
copy a:\*.snd %1\midwintr\*.*
copy a:\e*.* %1\midwintr\*.*

if exist a:\emapbits.bin goto doega
:notega
echo Insert EGA grafix disk
pause
if not exist a:\emapbits.bin goto notega
:doega
if exist %1\midwintr\emapbits.bin goto noega
copy a:\e*.* %1\midwintr\*.*
:noega
copy a:\zbuffer.bin %1\midwintr\*.*
copy a:\initgame.inf %1\midwintr\*.*

echo Installation Complete !!!!!
echo Please ignore 'BATCH FILE MISSING' error
del %1\instega.bat

