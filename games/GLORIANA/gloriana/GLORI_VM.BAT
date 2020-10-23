cls
@ECHO OFF
@ECHO You have loaded a file for Virtual Memory Emulation.
@ECHO This is important if your computer only has 8MB Memory (RAM).
@ECHO This file will help to create memory on your hard disk
@ECHO to enabel you to run Seabattle sequences.
@ECHO The Virtual-Memory-Emulator will only function if you don't 
@ECHO have any DOS-Shells active.
@ECHO So exit out of any DOS-Shells, Norton Commander or
@ECHO similar before starting.
@ECHO You can exit this programm now with mit Ctrl + Break.
Pause

if exist dos4gvm.swp del dos4gvm.swp

SET DOS4G=quiet
SET DOS4GVM=1
rem SET DOS4GVM=@dos4gvm.vmc

:Menue
:CD-Musi neu starten, wenn erforderlich
:trk2.exe 1             

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
