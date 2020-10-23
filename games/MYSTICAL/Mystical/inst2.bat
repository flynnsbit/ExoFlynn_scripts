echo off
cls
echo			*****************************************
echo			*		MYSTICAL		*
echo			*	hard disk Installation %1	*
echo			*	in directory %1\mystical	*
echo			*****************************************
echo .
echo		Copying Mystical disk 1 to %1\mystical
copy *.* %1\mystical > NUL
if not exist %1\mystical\tatou.com	goto NoPlace
:Aqui
echo		Insert Mystical disk 2
pause
if not exist mysjeueg.2	goto Aqui
echo .
echo		Copying Mystical disk 2 to %1\mystical
copy *.* %1\mystical > NUL
if not exist %1\mystical\topdix.bin	goto NoPlace
echo .
echo 		Mystical installation successful!
goto End
:NoPlace
echo .
echo 		Error : Your hard disk is full!
:End






