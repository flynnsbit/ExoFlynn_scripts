echo off
cls
if "%3" == "" goto Nodrive
if %1 == a: goto Driveerst
if %1 == A: goto Driveerst
if %1 == b: goto Driveerst
if %1 == B: goto Driveerst
if %1 == c: goto Driveerst
if %1 == C: goto Driveerst
if %1 == d: goto Driveerst
if %1 == D: goto Driveerst
goto Nodrive
:Driveerst
if %2 == c: goto Testcard
if %2 == C: goto Testcard
if %2 == d: goto Testcard
if %2 == D: goto Testcard
if %2 == e: goto Testcard
if %2 == E: goto Testcard
if %2 == f: goto Testcard
if %2 == F: goto Testcard
if %2 == g: goto Testcard
if %2 == G: goto Testcard
if %2 == h: goto Testcard
if %2 == H: goto Testcard
if %2 == i: goto Testcard
if %2 == I: goto Testcard
if %2 == j: goto Testcard
if %2 == J: goto Testcard
if %2 == k: goto Testcard
if %2 == K: goto Testcard
goto Nodrive
:Testcard
if %3 == vga goto Cardvga
if %3 == VGA goto Cardvga
if %3 == ega goto Cardvga
if %3 == EGA goto Cardvga
if %3 == cga goto Cardcga
if %3 == CGA goto Cardcga
if %3 == mono goto Cardcga
if %3 == MONO goto Cardcga
if %3 == tandy goto Cardtandy
if %3 == TANDY goto Cardtandy
:Nodrive
echo Format: install [source drive]: [target drive]:
echo Please specify the drive you want to install from and the drive on which
echo you want to install 'BERLIN 1948' both followed by a colon.
echo To specify the graphics adaptor, use VGA, EGA, CGA, MONO and TANDY.                                  
echo For example: If you have installed a VGA card and you want to copy
echo 'BERLIN 1948' from drive a: to drive c: type                                                  
echo INSTALL A: C: VGA     [Enter]
echo         ³  ³   ³
echo         ³  ³   ÀÄÄÄÄÄÄ VGA, EGA, CGA, MONO or TANDY
echo         ³  ÀÄÄÄÄÄÄÄÄÄÄ target drive
echo         ÀÄÄÄÄÄÄÄÄÄÄÄÄÄ source drive                                                           
goto end

:Cardvga
cls
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo +                                                                             +
echo +                                  BERLIN 1948                                +
echo +                                                                             +
echo +                  'Berlin 1948' will be installed on drive %2.               +
echo +           This program will create a subdirectory called %2\BERLIN          +
echo +                             Press Ctrl-C to break.                          +
echo +                                                                             +
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
pause
if exist %2\BERLIN\*.* goto VExists
mkdir %2\BERLIN
goto VCopynow
:VExists
echo The directory BERLIN on drive %2 already exists.
echo Press Ctrl-C now if you don't want to overwrite this directory.
pause
:VCopynow
echo Hard disk install...
copy v %2\berlin > NUL
copy berlin.bat %2\berlin > NUL
copy vgame.exe %2\berlin > NUL
copy vvor.exe %2\berlin > NUL
copy director.ibm %2\berlin > NUL
copy stream0.ibm %2\berlin > NUL
copy install.bat %2\berlin > NUL
copy mbf.bat %2\berlin > NUL

if not exist %2\BERLIN\stream0.ibm goto error
%2
cd %2\BERLIN
mbf %1 %2 %3
goto End

:Cardcga
cls
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo +                                                                             +
echo +                                  BERLIN 1948                                +
echo +                                                                             +
echo +                  'Berlin 1948' will be installed on drive %2.               +
echo +           This program will create a subdirectory called %2\BERLIN          +
echo +                             Press Ctrl-C to break.                          +
echo +                                                                             +
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
pause
if exist %2\BERLIN\*.* goto CExists
mkdir %2\BERLIN
goto CCopynow
:CExists
echo The directory BERLIN on drive %2 already exists.
echo Press Ctrl-C now if you don't want to overwrite this directory.
pause
:CCopynow
echo Hard disk install...
copy c %2\berlin > NUL
copy berlin.bat %2\berlin > NUL
copy director.ibm %2\berlin > NUL
copy stream0.ibm %2\berlin > NUL
copy install.bat %2\berlin > NUL
copy mbf.bat %2\berlin > NUL
if not exist %2\BERLIN\stream0.ibm goto error
%2
cd %2\BERLIN
mbf %1 %2 %3
goto End

:Cardtandy
cls
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo +                                                                             +
echo +                                  BERLIN 1948                                +
echo +                                                                             +
echo +                  'Berlin 1948' will be installed on drive %2.               +
echo +           This program will create a subdirectory called %2\BERLIN          +
echo +                             Press Ctrl-C to break.                          +
echo +                                                                             +
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
pause
if exist %2\BERLIN\*.* goto TExists
mkdir %2\BERLIN
goto TCopynow
:TExists
echo The directory BERLIN on drive %2 already exists.
echo Press Ctrl-C now if you don't want to overwrite this directory.
pause
:TCopynow
echo Hard disk install...
copy t %2\berlin > NUL
copy berlin.bat %2\berlin > NUL
copy director.ibm %2\berlin > NUL
copy stream0.ibm %2\berlin > NUL
copy install.bat %2\berlin > NUL
copy mbf.bat %2\berlin > NUL
if not exist %2\BERLIN\stream0.ibm goto error
%2
cd %2\BERLIN
mbf %1 %2 %3
goto End

:Error
echo                   An error has occured while installing 'BERLIN 1948'.
echo                         Please check if your hard disk is full.

:End