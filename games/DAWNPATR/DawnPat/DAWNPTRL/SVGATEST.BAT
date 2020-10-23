@echo off
echo off
if not exist *.sga goto skipdel
if exist libs640.400\sga_bitz.bin del libs640.400\sga_bitz.bin
:skipdel
cls
svgavesa
mode co80
if not exist libs640.400\sga_bitz.bin goto failed
svgademo
echo The picture just displayed was the Super VGA title screen for Dawn Patrol.
echo If your card has been identified correctly there will have been no corruption.
if exist sgraphic.dir goto skipinstall
echo To install the SVGA version:
echo 		insert the SVGA graphics disk 1
echo 		change to that drive (a: or b:)
echo 		type INSTALL                                                                   		
:skipinstall
if exist circus.cfg echo Run 'Patrol ?' to reselect resolution, sound, and music controllers.
if not exist circus.cfg echo Run 'Patrol ?' to select resolution, sound and music controllers.
:failed
