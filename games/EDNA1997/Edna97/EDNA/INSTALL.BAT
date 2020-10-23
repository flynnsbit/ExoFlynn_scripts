@echo off
echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo л (c) 1997 by Black RAVEN лллллллллллллллллллллллллллллллллллллллллллллллллллл
echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo лллллллллллллллллллллллллВА-          -АВлллллВ..Клллллллллллллллллллллллллллл
echo лллллллллллллллллллллВА-   .#КлллллллллА.-Вллл-   Вллллллллллллллллллллллллллл
echo лллллллллллллллллллВ-   -АВлллллллллллллл# Клл  ##-ллллллллллллллллллллллллллл
echo лллллллллллллллллл#  .АллВллллллллллллллл# .лВ -лл.ллллллллллллллллллллллллллл
echo ллллллллллллллллл-  #АААА#КллллллллллллВ-  .лА ВллАллллллллВлллллллллллллллллл
echo лллллллллллллллл#          -АВллллК#.     -Вл- лллллллллллл.##АВлллллллллллллл
echo лллллллллллллллВ  .лллллллллллллВ-    -АВлллл  лллллллллллл    .лллллллллллллл
echo лллллллллллллллК  #лллллллллллллллллллллллллл .лллллллллллл--А- Кллллллллллллл
echo лллллллллллллллВ  КллллллллллллллллллллА.   . #лВ--ллллА.АллллВ #ллллллллллллл
echo лллллллллллллллл- Аллллллллллллллллллл- ллВ-  КлА  ллА.  #лА .К--ллллллллллллл
echo ллллллллллллллллВ..КлллллллллллллллллА КллллК-лл-  А.АА  Ал  Ал-Аллллллллллллл
echo лллллллллллллллллВ- -ВллллллллллКВллл# -лллллВлл   АллА  .л  ВВ.Вллллллллллллл
echo лллллллллллллллллллВА-           .#КлВ.  -#-.-КВ .лллл. Алл- .-#Аллллллллллллл
echo лллллллллллллллллллллллллллллллллллллллК#..#КллВКлллллАВлллВА.АлВллллллллллллл
echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл S i g n u m л
echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

if '%2' == ''  goto  help
mkdir %2 > nul
echo @echo off > %2\edna.bat
echo DRIVER.exe >> %2\edna.bat
echo INTRO.exe >> %2\edna.bat
echo edna.exe %2 >> %2\edna.bat
echo DRIVER.exe /U >> %2\edna.bat
if exist %2\edna.BAT goto suc
goto nsuc
:suc

%1
cd\

echo Instaluji program
copy /y %1\*.* %2 >nul

md %2\anims >nul

echo Instaluji animace
copy /y %1\anims\*.* %2\anims >nul
md %2\anims.two >nul
copy /y %1\anims.two\*.* %2\anims.two >nul
md %2\mezi >nul
copy /y %1\mezi\*.* %2\mezi >nul
md %2\intro >nul
copy /y %1\intro\*.* %2\intro >nul
md %2\masks >nul
echo Instaluji data
copy /y %1\masks\*.* %2\masks >nul
md %2\masks.two >nul
copy /y %1\masks.two\*.* %2\masks.two >nul
md %2\pics >nul
copy /y %1\pics\*.* %2\pics >nul
md %2\pics.two >nul
copy /y %1\pics.two\*.* %2\pics.two >nul

echo Instalace probehla uspesne
cd %2
goto end
:help
echo Instalace pouziti a priklad:   
echo         install.bat disk_odkud: disk:\adresar_kam_instalovat
echo         install.bat D: C:\Hry\Edna 
goto end
:nsuc
echo Instalace neprobehla uspesne
:end