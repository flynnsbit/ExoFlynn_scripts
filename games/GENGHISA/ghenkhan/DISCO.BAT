echo off
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ GENGHIS KHAN, (c) 1991 POSITIVE SOFT ³
echo ³                                      ³
echo ³ 1 - EGA Graphics (16 colors)         ³
echo ³ 2 - CGA Graphics (4 colors)          ³
echo ³                                      ³
echo ³ Press 1 or 2:                        ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
respond 12
if errorlevel 2 goto g_cga
ega
goto end
:g_cga
cga
goto end
:end