@ECHO OFF
SET DOS4G=quiet

if exist dos4gvm.swp del dos4gvm.swp

:Menue

cd ELISABET
menu.exe >errmen.txt

if errorlevel 20 goto SETUP
if errorlevel 18 goto SLIDESHOW
if errorlevel 16 goto Elli
if errorlevel 14 goto SCHLACHT
if errorlevel 10 goto Ende



:Elli
if exist jvsound.cfg goto M1_
goto M2_

:M1_
elli.exe >errglor.txt
goto M3_

:M2_
elli.exe

:M3_
cd..
goto Menue



:SETUP
setup.exe >errset.txt
cd..
goto Menue


:SCHLACHT
rem copy elli.ini scrmodul.ini >errc
go.exe >errgo.txt
rem del scrmodul.ini
cd..
goto Menue


:SLIDESHOW
slide.exe 1 >err
cd..
goto Menue




:Ende
:echo ende
cd..

