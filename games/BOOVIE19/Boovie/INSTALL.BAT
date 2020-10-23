@echo off
cls
echo Install Version 1.0 --- Copyright 1997 Future Games
echo Probiha instalace hry Boovie......
echo.

if [%1] == [] goto usage
if not [%2] == [] goto usage

echo Vytvarim adresar %1
echo.
md %1

:gooddir
echo Adresar byl vytvoren.
echo Kopiruji soubory.
copy *.* %1 > nul
echo.
if not exist %1\boovie.exe goto error
if not exist %1\boovie.pif goto error
if not exist %1\boovie1 goto error
if not exist %1\boovie2 goto error
if not exist %1\boovie3 goto error
if not exist %1\boovie4 goto error
if not exist %1\boovie5 goto error
if not exist %1\boovie6 goto error
if not exist %1\dpmi16bi.ovl goto error
if not exist %1\rtm.exe goto error

echo Instalace probehla v poradku. 
echo.
echo Hru spustite z adresare %1 prikazem BOOVIE.EXE [ENTER].
goto end

:error
echo Nastala chyba pri instalaci.
echo Zkontrolujte, jestli je na cilovem mediu dostatek mista.
echo Hra BOOVIE potrebuje ke sve instalaci 15M volneho prostoru.
echo.
goto end

:usage
echo Nastala chyba. Zapomeli jste zadat parametr.
echo Parametr:
echo.
echo  Install Nazev_adresare [ENTER]
echo.
echo  Nazev_adresare je adresar, kam chcete nainstalovat hru Boovie. 
echo.
echo  treba  Install C:\FG\Boovie [ENTER]
echo   nebo  Install C:\Boovie [ENTER]
echo   nebo  Install D:\Future\Games\Boovie [ENTER]

:end