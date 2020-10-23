@echo off
if exist sound.dat goto donext
	echo You must have a SOUND.DAT file to run Warlords II,
	echo or the diagnose program.
	goto exit
:donext

multip>NIL
diag\diag %1
multip u

:exit