@echo off
	echo Installing Hind Demo into C:\HINDDEMO
	echo.
	pause
	mkdir c:\hinddemo
	xcopy *.* c:\hinddemo /s /e
	c:
	cd hinddemo
	echo Type "HIND" from the DOS prompt to run Demo.
	exit
