echo off
cls
echo ��������������������������������������Ŀ
echo �   FRIGHTMARE (c) 1989 AVANTAGE       �
echo �                                      �
echo � 1 - EGA Graphics (16 colors)         �
echo � 2 - CGA Graphics (4 colors)          �
echo �                                      �
echo � Press 1 or 2:                        �
echo ����������������������������������������
respond 12
if errorlevel 2 goto g_cga
Friega
goto end
:g_cga
Fricga
goto end
:end