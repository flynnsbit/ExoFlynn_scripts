@ECHO OFF
CLS
if "%1"=="" goto meld2
if "%1"=="C" goto START
if "%1"=="c" goto START
if "%1"=="D" goto START
if "%1"=="d" goto START
goto meld2

:START
echo 
echo        ICH KOPIERE DIE DATEIEN       
echo      bitte warten Sie...........    
echo 
md %1:\PENT
cd %1:\PENT
md %1:\PENT\DATA
md %1:\PENT\SONGS
copy *.* %1:\PENT
cd %1:\PENT\DATA
copy data\*.* %1:
cd %1:\PENT\SONGS
copy Songs\*.* %1:
cd %1:\PENT
%1:
del install.bat
cls
echo 
echo         Tippen Sie HOT ein, um HOT NUMBERS zu starten.          
echo   Wir wÅnschen Ihnen nun einen kÅhlen Kopf und gute Steine !!!  
echo 
goto stop

:meld2
echo Um HOT NUMBERS auf die Festplatte zu installieren tippen Sie :
echo                INSTALL C   oder   INSTALL D
goto ende

:ende
echo Versuchen Sie es noch einmal...

:stop
echo

