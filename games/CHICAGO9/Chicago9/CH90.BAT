echo off
cls
type ch90.doc
:test
key$
if not errorlevel 49 goto test
if errorlevel 53 goto test

if errorlevel 51 goto testvga
if errorlevel 50 goto helpega

echo CHICAGO 90 - EGA version
chica_35 E
goto fin

:helpega
echo CHICAGO 90 - EGA version & help screens
readme E
chica_35 E
goto fin

:testvga
if errorlevel 52 goto helpvga

echo CHICAGO 90 - VGA version
chica_35 V
goto fin

:helpvga
echo CHICAGO 90 - VGA version & help screens
readme E
chica_35 V
:fin
cd ..
echo on
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               