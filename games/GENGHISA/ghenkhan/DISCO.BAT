echo off
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � GENGHIS KHAN, (c) 1991 POSITIVE SOFT �
echo �                                      �
echo � 1 - EGA Graphics (16 colors)         �
echo � 2 - CGA Graphics (4 colors)          �
echo �                                      �
echo � Press 1 or 2:                        �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
respond 12
if errorlevel 2 goto g_cga
ega
goto end
:g_cga
cga
goto end
:end