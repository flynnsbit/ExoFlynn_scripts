@echo off
set dos4g=quiet
rem echo make sure BattleSport CD is in drive...
rem pause
if exist dig.ini goto havedig
rem setsound
:havedig

if exist bsglobal.dat del bsglobal.dat >nul
:reload
	all 20000000 >temp
	if errorlevel 70 goto unk
	if errorlevel 69 goto err69
	if errorlevel 48 goto unk
	if errorlevel 47 goto err47
	if errorlevel 32 goto unk
	if errorlevel 31 goto err31
:unk
	echo abnormal exit!!
	type temp
	goto done
:err69
rem	echo reloading!!!
	goto reload
:err31	echo special top secret exit!!!
	type temp
	goto done
:err47
	echo exiting!!!
	type temp
:done	
