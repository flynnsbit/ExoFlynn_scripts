@echo off
if exist sound.dat goto donext
	install
	if exist sound.dat goto donext
	echo You must setup sound with the installer before playing Warlords II.
	goto exit
:donext

if not exist sound\gravis.ini goto doneg
	cd sound
	lh ultramid
	cd ..
:doneg

multip
w2 %1 %2 %3 %4
multip u

if not exist sound\gravis.ini goto doneg2
	sound\ultramid -F
	echo ..
:doneg2
:exit

