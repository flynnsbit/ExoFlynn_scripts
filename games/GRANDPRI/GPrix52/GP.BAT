echo off
cls
echo		GP500_II - Copyright MICROIDS 1991 .
echo		------------------------------------
echo			Video Mode 
echo			----------
echo		1 - CGA version   320*200  4 colours
echo		2 - EGA version   320*200 16 colours
echo		3 - VGA version   320*200 16 colours
echo		*
echo		Press 1, 2, or 3
:test
key$
if not errorlevel 49 goto test
if errorlevel 52 goto test
if errorlevel 50 goto suite

echo		GP500_II - CGA version

GPC S0
goto fin

:suite
if errorlevel 51 goto vga

echo		GP500_II - EGA version
GPV S0 V1
goto fin


:vga

echo		GP500_II - VGA version
GPV S0 V0
goto fin

:fin
echo on

                                                                                                                                                                                                                                                                                                                                                                           