@echo off
echo Brany Skeldalu * tvorba noveho dobrodruzstvi
echo (C) 1998 Napoleon games * Ondrej Novak, Jindrich Rohlik
echo.

if "%1"=="" goto error
if "%2"=="" goto error
mkdir %1
mkdir %1\savegame
mkdir %1\samples
mkdir %1\graphics
mkdir %1\graphics\basic
mkdir %1\graphics\items
mkdir %1\graphics\enemies
mkdir %1\graphics\dialogs

echo PRACUJI...
echo.
copy ..\SKELDAL.INI+SKELDAL.RUN %1\*.INI > nul
if exist "..\maps\mapedit.exe" goto mexist
echo @SET DOS4GPATH=..\..\> %1\mapedit.bat
echo @..\mapedit.exe %%1 %%2 %%3 %%4>> %1\mapedit.bat
echo @SET DOS4GPATH=>> %1\mapedit.bat
goto mleave
:mexist
echo @SET DOS4GPATH=..\..\> %1\mapedit.bat
echo @..\..\maps\mapedit.exe %%1 %%2 %%3 %%4>> %1\mapedit.bat
echo @SET DOS4GPATH=>> %1\mapedit.bat
:mleave
copy %2\maps\*.dat %1 > nul
copy %2\maps\items.scr %1 > nul
copy %2\maps\items.pic %1 > nul
copy %2\maps\weapons.scr %1 > nul
copy %2\maps\dialogy.scr %1 > nul

copy %2\adv\utils\lex_lib.exe %1 > nul
copy %2\adv\utils\cspells.exe %1 > nul
copy %2\adv\utils\cdialogy.exe %1 > nul
copy %2\adv\utils\encrypt.exe %1 > nul

echo CESTA_MAPY adv\%1\> ..\%1.ADV
echo CESTA_GRAFIKA adv\%1\graphics\>> ..\%1.ADV
echo CESTA_DIALOGY adv\%1\graphics\dialogs\>> ..\%1.ADV
echo CESTA_ENEMY adv\%1\graphics\enemies\>> ..\%1.ADV
echo CESTA_ITEMY adv\%1\graphics\items\>> ..\%1.ADV
echo CESTA_BGRAFIKA adv\%1\graphics\basic\>> ..\%1.ADV
echo CESTA_ZVUKY adv\%1\SAMPLES\>> ..\%1.ADV
echo CESTA_POZICE adv\%1\savegame\>> ..\%1.ADV
echo DEFAULT_MAP %1.map>> ..\%1.ADV
if "%3"=="EDIT" goto medit
if "%3"=="edit" goto medit
if "%3"=="Edit" goto medit
if "%3"=="SCRIPT" goto mscript
if "%3"=="script" goto mscript
if "%3"=="Script" goto mscript
if "%3"=="" goto mexit
echo POZOR: Nevim co znamena %3. Slovo EDIT nebo SCRIPT napiste bud jenom velkymi nebo malymi pismeny!
pause
goto mexit
:medit
copy %2\adv\scr&txt\*.scr %1 > nul
copy %2\adv\scr&txt\*.txt %1 > nul
copy %2\maps\*.map %1 > nul
goto mexit
:mscript
copy %2\adv\scr&txt\*.scr %1 > nul
copy %2\adv\scr&txt\*.txt %1 > nul
goto mexit


:error
echo Chybne parametry!
echo.
echo Spravne pouziti:
echo  NEWADV "jmeno" "disk:" [EDIT nebo SCRIPT]
echo.
echo  "jmeno" - Jmeno noveho dobrodruzstvi
echo  "disk:" - Pismeno mechaniky CD-ROM (vlozte CD "BRANY SKELDALU!")
echo  EDIT - volitelne. Pokud ho uvedete, prekopiruji se originalni mapy.
echo  SCRIPT - volitelne. Pokud ho uvedete, prekopiruji se scriptove soubory.
echo.
echo Priklady pouziti:
echo  NEWADV mojedobr g:
echo  NEWADV mojedobr g: EDIT
echo  NEWADV mojedobr g: SCRIPT
goto end
:mexit
echo Hotovo.
echo.
echo Vytvorte soubory %1.scr, %1.txt a napiste: MAPEDIT.EXE %1.map
echo Podrobne informace naleznete v hypertextovem manualu (dokument MAPEDIT.HTM)
cd %1
:end
pause

