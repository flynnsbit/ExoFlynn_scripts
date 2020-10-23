@echo off

bedinst /drive
if errorlevel == 1  set source=a
if errorlevel == 2  set source=b
if errorlevel == 3  set source=c
if errorlevel == 4  set source=d
if errorlevel == 5  set source=e
if errorlevel == 6  set source=f
if errorlevel == 7  set source=g
if errorlevel == 8  set source=h
if errorlevel == 9  set source=i
if errorlevel == 10  set source=j
if errorlevel == 11  set source=k
if errorlevel == 12  set source=l
if errorlevel == 13  set source=m
if errorlevel == 14  set source=n
if errorlevel == 15  set source=o
if errorlevel == 16  set source=p
if errorlevel == 17  set source=q
if errorlevel == 18  set source=r
if errorlevel == 19  set source=s
if errorlevel == 20  set source=t
if errorlevel == 21  set source=u
if errorlevel == 22  set source=v
if errorlevel == 23  set source=w
if errorlevel == 24  set source=x
if errorlevel == 25  set source=y
if errorlevel == 26  set source=z

bedinst /dpath=c:\games\twg\pinball /wpath=%1 /prog=pinball
if errorlevel == 1  set target=a
if errorlevel == 2  set target=b
if errorlevel == 3  set target=c
if errorlevel == 4  set target=d
if errorlevel == 5  set target=e
if errorlevel == 6  set target=f
if errorlevel == 7  set target=g
if errorlevel == 8  set target=h
if errorlevel == 9  set target=i
if errorlevel == 10  set target=j
if errorlevel == 11  set target=k
if errorlevel == 12  set target=l
if errorlevel == 13  set target=m
if errorlevel == 14  set target=n
if errorlevel == 15  set target=o
if errorlevel == 16  set target=p
if errorlevel == 17  set target=q
if errorlevel == 18  set target=r
if errorlevel == 19  set target=s
if errorlevel == 20  set target=t
if errorlevel == 21  set target=u
if errorlevel == 22  set target=v
if errorlevel == 23  set target=w
if errorlevel == 24  set target=x
if errorlevel == 25  set target=y
if errorlevel == 26  set target=z

%target%:
md pintemp.tmp   >> NUL
cd pintemp.tmp   >> NUL
cls
echo.
echo.
echo.
echo            Sorting Sound files for Sound Setup
echo.
echo.
echo.
echo.
echo.
copy %source%:*.ad?    >> NUL
copy %source%:*.com    >> NUL
copy %source%:set*.*   >> NUL
copy %source%:*.des    >> NUL
copy %source%:*.xmi    >> NUL
copy %source%:fat.opl  >> NUL
copy %source%:\*.??t   >> NUL
setd             >> NUL
IF ERRORLEVEL 1 GOTO ABORTED1
setm             >> NUL
IF ERRORLEVEL 1 GOTO ABORTED2
cd ..

echo soundrv>> %target%:\pinball.bat
type %source%:\manbat.txt >> %target%:\pinball.bat
echo :GAME>> %target%:\pinball.bat
echo pmidpak>> %target%:\pinball.bat
echo %source%:pin.exe %source% %target% %%1 %%2 %%3>> %target%:\pinball.bat
echo pmidpak u>> %target%:\pinball.bat
echo soundrv u>> %target%:\pinball.bat
echo if EXIST advert.doc type advert.doc>> %target%:\pinball.bat
echo :END >> %target%:\pinball.bat
echo.>> %target%:\pinball.bat
echo echo To read the Ultimate Pinball manual, type "Pinball /manual" and press Enter.>> %target%:\pinball.bat
echo echo To print the Ultimate Pinball manual, type "Pinball /print" and press Enter.>> %target%:\pinball.bat
echo.>> %target%:\pinball.bat
copy %target%:\pinball.bat pinball.bat >> NUL

GOTO END
:ABORTED1
echo Digital Sound Driver configuration was not completed.
echo Game Not Installed correctly!
echo.
cd..
GOTO FINI
:ABORTED2
echo Midi Music Driver configuration was not completed.
echo Game Not Installed correctly!
echo.
cd ..
GOTO FINI

:END
echo                         Sound Configuration Complete!
echo.
echo                     Ultimate Pinball Installed correctly!!
echo.
echo.
echo To start the game type "CD\" and press Enter, then type "Pinball" and press 
echo Enter to start the game. Make sure the Ultimate Pinball CD-ROM is in your
echo CD-ROM drive when you want to play, or the game will not start.
echo.
echo To read the Ultimate Pinball manual, type "Pinball /manual" and press Enter.
echo.
echo To print the Ultimate Pinball manual, type "Pinball /print" and press Enter.
echo.
echo.
:FINI

copy  pintemp.tmp\midpak.*     >> NUL
copy  pintemp.tmp\pmidpak.*    >> NUL
copy  pintemp.tmp\soundrv.com  >> NUL
copy  pintemp.tmp\*.??t        >> NUL

erase pintemp.tmp\*.ad?        >> NUL
erase pintemp.tmp\*.com        >> NUL
erase pintemp.tmp\set*.*       >> NUL
erase pintemp.tmp\*.des        >> NUL
erase pintemp.tmp\*.xmi        >> NUL
erase pintemp.tmp\fat.opl      >> NUL
erase pintemp.tmp\*.??t        >> NUL
rd pintemp.tmp                 >> NUL

echo.
:DONE
cd \
set target=
set source=

