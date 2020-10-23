echo off
cls
if "%1"=="" goto showparams
if "%2"=="" goto showparams
if "%3"=="2" goto part2
echo *****************************************
echo ***     INSTALL ECO-PHANTOMS          ***
echo ***                                   ***
echo *** Eco-Phantoms will be installed on ***
echo *** drive %2 in sub-directory ECO     ***
echo *****************************************
%2
echo creating sub-directory eco
md eco
cd eco
echo please insert disk 1
pause
echo copying files from disk 1
copy %1*.*
rem jump to second part of install since disk containing install.bat is
rem about to be changed.
install %1 %2 2

:showparams
echo HOW TO INSTALL ECO-PHANTOMS
echo ***************************
echo Please install as :-
echo		install a: c:
echo to copy all files from drive a: to drive c:
echo If you do not have a hard disk but you do have more than 1 floppy disk
echo you can reduce the amount of disk swapping required by Eco-Phantoms
echo by using the Append Dos Command. (see the manual that came with your
echo computer for how to use this).
echo If you want to use a mouse with Eco-Phantoms (And I would strongly
echo advise that you do), then load your mouse driver before you load
echo Eco-Phantoms. This is usually done by placing your Dos Disk in the floppy
echo disk drive and typing MOUSE, GMOUSE or XMOUSE.
echo If you only have one floppy disk drive start Eco-Phantoms by placing disk 1
echo in the drive and typing ECO. Eco-Phantoms will tell you when it needs a
echo different disk placed in the drive.
echo For the latest information on Eco-Phantoms (including running the Spanish
echo version and using the Adlib Soundboard) please look at the file READ.ME
echo on disk 1 of Eco_phantoms.
echo To look at this file type the following line :-
echo 	TYPE READ.ME
echo be ready to press Ctrl-S to pause the text since there is more than one
echo screen full of text in the file.
goto exit

:part2
echo please insert disk 2
pause
echo copying files from disk 2
copy %1*.*
echo all done
echo To run Eco-Phantoms go to sub-directory ECO and type eco.
echo Eco-Phantoms PC by David Jones & Nick Snape. Enjoy!

:exit

