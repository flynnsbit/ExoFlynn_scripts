echo off
cls
echo			*****************************************
echo			*		DRAKKHEN		*
echo			*	hard disk Installation %1	*
echo			*	in directory %1\drakkhen	*
echo			*****************************************
echo .
echo		Copying Drakkhen disk 1 to %1\drakkhen
copy *.* %1\drakkhen > NUL
if not exist %1\drakkhen\objet.sav	goto NoPlace
:Aqui
echo		Insert Drakkhen disk 2
pause
if not exist drk2	goto Aqui
echo .
echo		Copying Drakkhen disk 2 to %1\drakkhen
copy *.* %1\drakkhen > NUL
if not exist %1\drakkhen\dataext.2in	goto NoPlace
:Aqui2
echo		Insert Drakkhen disk 3
pause
if not exist drk3	goto Aqui2
echo .
echo		Copying Drakkhen disk 3 to %1\drakkhen
copy *.* %1\drakkhen > NUL
if not exist %1\drakkhen\mons_ega.3c1	goto NoPlace

echo .
echo 		Drakkhen installation successful!
goto End
:NoPlace
echo .
echo 		Error : Your hard disk is full !!!
:End






