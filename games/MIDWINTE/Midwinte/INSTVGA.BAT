copy a:\midwintr.bat %1\
mkdir %1\midwintr
copy a:\midwintr.exe %1\midwintr\*.*
copy a:\middata? %1\midwintr\*.*
copy a:\*.snd %1\midwintr\*.*
copy a:\v*.* %1\midwintr\*.*

if exist a:\vmapbits.bin goto dovga
:notvga
echo Insert VGA grafix disk
pause
if not exist a:\vmapbits.bin goto notvga
:dovga
if exist %1\midwintr\vmapbits.bin goto novga
copy a:\v*.* %1\midwintr\*.*
:novga
copy a:\zbuffer.bin %1\midwintr\*.*
copy a:\initgame.inf %1\midwintr\*.*

echo Installation Complete !!!!!
echo Please ignore 'BATCH FILE MISSING' error
del %1\instvga.bat

