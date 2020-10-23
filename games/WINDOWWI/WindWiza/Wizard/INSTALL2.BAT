	@echo	off
	cls
	echo	******************************************************
	echo	*
	echo	*     WINDOW WIZARD HD-INSTALL FROM 3 1/2 " DISKS
	echo	*
	echo	******************************************************

	copy	win.exe       c:window.exe
	copy	wwadata       c:wwadata
	copy	wwadatb       c:wwadatb
	copy	wwcdat0       c:wwcdat0
	copy	wwcdat1       c:wwcdat1
	copy	wwcdat2       c:wwcdat2
	copy	wwcdat3       c:wwcdat3
	copy	wwcdat4       c:wwcdat4

	cls
	echo	***********************************************
	echo	*** PLEASE EXCHANGE DISK WITH WIZARD-DISK 1 ***
	echo	***********************************************
	pause

	copy	wwedat0       c:wwedat0
	copy	wwedat1       c:wwedat1
	copy	wwedat2       c:wwedat2
	copy	wwedat3       c:wwedat3
	copy	wwedat4       c:wwedat4
