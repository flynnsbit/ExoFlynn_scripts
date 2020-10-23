@echo off > nul
rem             If you wish to convert to 16 color without erasing all of the
rem     256 color files, start conv.bat with the parameter /no as follows
rem
rem             conv /no
rem
rem             To switch to the 16 color version of the game, run chver
rem     as follows:
rem
rem             chver 16
rem
rem             If you have preserved the 256 color version run
rem
rem             chver 256
rem
rem     to switch back.
rem

echo ô                                                     ô
echo ³  ***** CONVERTING 256 COLOR ART TO 16 COLORS *****  ³
echo õ                                                     õ

cd spr
..\grp2spr kill
cd ..

call sprs %1
call pcxs %1

cd spr16
..\spr2grp kill
cd ..

if "%1"=="/no" goto fix
if "%1"=="/No" goto fix
if "%1"=="/nO" goto fix
if "%1"=="/NO" goto fix
goto done

:fix
cd spr
..\spr2grp kill
cd ..

:done
