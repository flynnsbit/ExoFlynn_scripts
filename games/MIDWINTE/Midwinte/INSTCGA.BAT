copy a:\midwintr.bat %1\
mkdir %1\midwintr
copy a:\midwintr.exe %1\midwintr\*.*
copy a:\middata? %1\midwintr\*.*
copy a:\*.snd %1\midwintr\*.*
copy a:\c*.* %1\midwintr\*.*

if exist a:\cmapbits.bin goto docga
:notcga
echo Insert CGA grafix disk
pause
if not exist a:\cmapbits.bin goto notcga
:docga
if exist %1\midwintr\cmapbits.bin goto nocga
copy a:\c*.* %1\midwintr\*.*
:nocga
copy a:\zbuffer.bin %1\midwintr\*.*
copy a:\initgame.inf %1\midwintr\*.*

echo Installation Complete !!!!!
echo Please ignore 'BATCH FILE MISSING' error
del %1\instcga.bat

