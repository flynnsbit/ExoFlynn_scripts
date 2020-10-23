echo off
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³   FRIGHTMARE (c) 1989 AVANTAGE       ³
echo ³                                      ³
echo ³ 1 - EGA Graphics (16 colors)         ³
echo ³ 2 - CGA Graphics (4 colors)          ³
echo ³                                      ³
echo ³ Press 1 or 2:                        ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
respond 12
if errorlevel 2 goto g_cga
Friega
goto end
:g_cga
Fricga
goto end
:end