echo off
:START
cls

echo �
echo �
echo �
echo �
echo �
echo �
echo  		���������������������������������������ͻ
echo 		�         THE LIGHT CORRIDOR            �
echo 		���������������������������������������Ķ
echo 		�                                       �
echo 		�   F1 :  FRANCAIS                      �
echo 		�   F2 :  ENGLISH                       �
echo 		�   F3 :  DEUTSCH                       �
echo   		�                                       �
echo 		�   F10:  EXIT                          �
echo 		���������������������������������������ͼ

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