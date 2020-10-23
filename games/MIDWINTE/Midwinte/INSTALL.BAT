copy a:\midwintr.bat %1\
mkdir %1\midwintr
copy a:\*.* %1\midwintr\*.*

if exist %1\midwintr\emapbits.bin goto dotandy
:notega
echo Insert EGA grafix disk
pause
if not exist a:\emapbits.bin goto notega
copy a:\*.* %1\midwintr\*.*

:dotandy
if exist %1\midwintr\tmapbits.bin goto dovga
:nottandy
echo Insert TANDY grafix disk
pause
if not exist a:\tmapbits.bin goto nottandy
copy a:\t*.* %1\midwintr\*.*

:dovga
if exist %1\midwintr\vmapbits.bin goto docga
:notvga
echo Insert VGA grafix disk
pause
if not exist a:\vmapbits.bin goto notvga
copy a:\*.* %1\midwintr\*.*

:docga
if exist %1\midwintr\cmapbits.bin goto finished
:notcga
echo Insert CGA grafix disk
pause
if not exist a:\cmapbits.bin goto notcga
copy a:\*.* %1\midwintr\*.*

:finished
echo Installation Complete !!!!!
echo Please ignore 'BATCH FILE MISSING' error
del %1\install.bat

