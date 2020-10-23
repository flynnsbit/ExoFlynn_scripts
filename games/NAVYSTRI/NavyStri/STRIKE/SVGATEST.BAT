@echo off
echo off
if not exist *.sga goto skipdelbin
if exist libs640.400\sga_bitz.bin del libs640.400\sga_bitz.bin
if exist libs640.400\sga3d.bin del libs640.400\sga3d.bin
:skipdelbin
cls
copy rowan\*.svc .
copy rowan\*.sga .
copy rowan\*.s3d .
svgavesa
mode co80
if not exist libs640.400\sga_bitz.bin goto failed
svgademo
echo The picture just displayed was the Super VGA title screen for NAVY STRIKE
echo If your card has been identified correctly there will have been no corruption.
echo This Rowan Software product will now function at the SVGA hardware setting.
if exist sg*.dir goto skipinstall
echo To install the SVGA version:
echo 		insert the SVGA graphics disk 1
echo 		change to that drive (a: or b:)
echo 		type INSTALL                                                                   		
:skipinstall
if exist *.cfg echo Run 'Navy ?' to reselect resolution, sound and music hardware.
if not exist *.cfg echo Run 'Navy ?' to select resolution, sound and music hardware.
:failed
