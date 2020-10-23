:disk2
echo Please insert disk #2 in drive %1!
pause
if not exist %1stream1.ibm goto disk2
copy %1*.* > NUL
if not exist stream1.ibm goto fail
:disk3
echo Please insert disk #3 in drive %1!
pause
if not exist %1stream2.ibm goto disk3
copy %1*.* > NUL
if not exist stream2.ibm goto fail
:disk4
echo Please insert disk #4 in drive %1!
pause
if not exist %1stream3.ibm goto disk4
if %3 == cga goto Cardcga
if %3 == CGA goto Cardcga
if %3 == mono goto Cardcga
if %3 == MONO goto Cardcga
if %3 == tandy goto Cardtandy
if %3 == TANDY goto Cardtandy
copy %1\stream3.ibm > NUL
del berlin.bat
ren v berlin.bat
goto fin
:Cardcga
copy %1\stream3.ibm > NUL
copy %1\cgame.exe > NUL
copy %1\cvor.exe > NUL
del berlin.bat
ren c berlin.bat
goto fin
:Cardtandy
copy %1\stream3.ibm > NUL
:disk5
echo Please insert disk #5 in drive %1!
pause
if not exist %1tvor.exe goto disk5
copy %1\tvor.exe > NUL
copy %1\tgame.exe > NUL
del berlin.bat
ren t berlin.bat
goto fin
:fail
echo An error has occured while installing 'EAST V WEST' on your hard disk.
echo Please check if your hard disk is full.
goto ende
:fin
if not exist stream3.ibm goto fail
del install.bat
cls
echo                 +++++++++++++++++++++++++++++++++++++++++++++++
echo                 +                                             +
echo                 +       Installation properly finished!       +
echo                 +                                             +
echo                 +++++++++++++++++++++++++++++++++++++++++++++++

:ende