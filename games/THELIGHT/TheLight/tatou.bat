echo off
:START
cls

echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo  		ษอออออออออออออออออออออออออออออออออออออออป
echo 		บ         THE LIGHT CORRIDOR            บ
echo 		วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo 		บ                                       บ
echo 		บ   F1 :  FRANCAIS                      บ
echo 		บ   F2 :  ENGLISH                       บ
echo 		บ   F3 :  DEUTSCH                       บ
echo   		บ                                       บ
echo 		บ   F10:  EXIT                          บ
echo 		ศอออออออออออออออออออออออออออออออออออออออผ

testfkey
if ERRORLEVEL = 10 goto FIN
if ERRORLEVEL = 4 goto START
if ERRORLEVEL = 3 goto F3
if ERRORLEVEL = 2 goto F2
if ERRORLEVEL = 1 goto F1

goto START

:F3
TATOUD
goto FIN

:F2
TATOUE
goto FIN

:F1
TATOUF

:FIN
cls
