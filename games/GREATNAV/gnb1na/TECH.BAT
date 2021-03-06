@echo off
echo �
echo �
echo �             READ THIS BEFORE CALLING TECHNICAL SUPPORT
echo �
echo �
echo �If GNB doesn't operate after installing, take a look at these
echo �suggestions and read the "TECH" readme file ****before**** calling
echo �technical support. To read the "TECH" file, type,"TECH" in the GNBNA
echo �directory. To print the "TECH" file, type, "PRINT TECH".
echo �
echo �1. A mouse driver must be loaded in order for the game to run
echo �properly. Some programs such as Windows have built-in mouse drivers
echo �that only exist while the application is being run. In order for
echo �Great Naval Battles to run a mouse driver must be loaded either at
echo �start-up in the config.sys or autoexec.bat file, or from the DOS
echo �prompt by typing:
echo �
echo �CD\MOUSE
echo �MOUSE
echo �
echo �In this example MOUSE is given as the name of the directory in which
echo �your mouse driver resides, and MOUSE is the command used to load the
echo �mouse driver. This is used as an example only and may not work for
pause
echo �your machine. Consult your mouse user's manual for the name and
echo �location of your mouse driver. If after loading the mouse you find
echo �that you don't have enough free memory, you will need to load the
echo �mouse driver into high memory. For MS-DOS 5.0 users, the command to
echo �do this is:
echo �
echo �LOADHIGH MOUSE
echo �
echo �Once again, MOUSE is just used as an example of the mouse driver's
echo �name. If you are using a version of DOS other than MS-DOS 5.0 or a
echo �third party memory manager such as QEMM or 386MAX, the LOADHIGH
echo �command will differ, so consult your DOS manual or memory manager
echo �user's guide.
echo �
echo �2. Most machines have the hardware necessary to run GNBNA. However,
echo �having the hardware configured in a manner suitable to run the game is
echo �another matter. Memory configuration is foremost in this area.
echo �Think of your machine as having three memory areas: base memory,
echo �which is made up of the first 640K of RAM; HMA memory, which is made
echo �up of 384K of RAM located between the base memory and 1Mg (1000K); 
echo �and extended memory, which is all of the memory after 1Meg.
echo �
echo �Although a machine may have 32 megs of RAM, this is absolutely no
pause
echo �guarantee that it meets a game's minimum memory requirements. A
echo �certain amount of free base memory is necessary for any program to
echo �operate. This game requires 584,704 available bytes of base memory.
echo �To find out how much free memory your machine has type MEM [ENTER] at
echo �the C: DOS prompt. The "largest executable program size" is the
echo �amount of free base memory.
echo �
echo �To free up memory, you can change your autoexec.bat file to exclude 
echo �as many memory resident programs as possible, or create a bootable 
echo �disk (see Bootable Disk section). REMEMBER: any changes to the 
echo �autoexec.bat or config.sys files may affect the way other programs 
echo �run. You must reboot your machine each time a change is made to the 
echo �autoexec.bat file. To change your autoexec.bat file consult the index 
echo �in your DOS manual. A possible example of how to change an 
echo �autoexec.bat file is as follows: type "edit" then [ENTER]. Open the 
echo �file called "AUTOEXEC.BAT". Make the necessary changes and save the 
echo �file.
echo �
echo �The config.sys also contains information that defines the parameters
echo �in which your machine operates and can affect the amount of free
echo �memory. Changing the config.sys file is similar to changing the
echo �autoexec.bat. Where you would have typed "AUTEXEC.BAT", type 
echo �"CONFIG.SYS".
pause
echo �
echo �Extended memory (XMS) and expanded memory (EMS) are different. This
echo �game only uses EMS. Because any memory over 1 Mg. starts as XMS, you
echo �must change it into EMS. This change takes place in the config.sys
echo �file by typing: "DEVICE=C:\DOS\EMM386.EXE 724". However, if you have
echo �more than 2 Mg. of RAM, it is highly recommended that you change the
echo �"724" to the amount of XMS that you have. This is because other
echo �programs can eat up EMS before the game can use it. The smartdrv.exe
echo �(a disk cache) that comes with Windows is one example. Again, the
echo �"mem" command states the amount of XMS memory.  This is an example of
echo �a basic configuration for a 2 megabyte machine running MS-DOS 5.0.
echo �
echo �Autoexec.bat:
echo �
echo � PATH=C:\;C:\MOUSE;C:\DOS
echo � PROMPT=$P$G
echo � LOADHIGH C:\MOUSE\MOUSE
echo �
echo �Config.sys:
echo �
echo � FILES=25
echo � BUFFERS=20
echo � DEVICE=C:\DOS\HIMEM.SYS           ��������������������������������Ŀ
pause
echo � DEVICE=C:\DOS\EMM386.EXE 724  {��ĴThis line would be omitted for a�
echo � DOS=HIGH                          �machine with less than 2        �
echo �                                   �megabytes of memory. The 724 can�
echo ���������������������������������Ŀ �be increased to convert whatever�
echo ��* Notice that the MOUSE driver  � �free extended memory you have   �
echo ��is presumed to be located in a  � �into expanded.                  �
echo ��directory named MOUSE. This may � ����������������������������������
echo ��not be true for your machine, in����������������������������������Ŀ
echo ��which case you would have to edit the file and insert the correct  �
echo ��name for the mouse driver and its directory. This would also apply �
echo ��for HIMEM.SYS, EMM386.EXE, and the DOS directory.                  � 
echo ����������������������������������������������������������������������
echo �
echo �
echo �3. If you are experiencing problems and have a sound card,
echo �reconfigure your sound card for no sound. To reconfigure the sound,
echo �type "SOUND" at the [input game directory]. If the game still
echo �doesn't work, it is probably a memory deficiency. If the game does
echo �work, the problem probably lies with the sound card. Run your sound
echo �card's diagnostic programs to make sure that it is working correctly.
echo �Also, double check the IRQ setting and I/O address. If these are
echo �input incorrectly, the game will crash every time it is run.
echo �
pause
echo �4. Read the README file. This file contains pertinant information
echo �about this product. To read the README file type
echo �"TYPE README | MORE". To print the README file type "PRINT README".  
echo �To print this file (TECH) type, "PRINT TECH".
echo �
echo �If you have MS-DOS 4.0, you may need to use a memory manager to have
echo �enough free memory after loading your mouse driver.
echo �
echo �Common error messages:
echo �
echo �MEL Fatal Error #3 or 16
echo �  [ The program was unable to locate the sound card for which it was 
echo �configured. Re-run SOUND.EXE from your Great Naval Battles directory 
echo �and re-select your sound card. If you still receive the same message, 
echo �run the configuration software that came with your sound card. For 
echo �Soundblaster users, that would be TEST-SBC.EXE. Be sure to record the 
echo �interrupt number and the base port address for use in the sound 
echo �configuration.]
echo �
echo �Init Count: GR FAIL
echo �  [ This indicates that a mouse driver was not loaded. The game must 
echo �have a mouse driver loaded in order to run. (Your mouse may run 
echo �properly with other programs, though the driver may not be loaded.) 
pause
echo �This is usually done by typing MOUSE at the DOS prompt, but may be 
echo �different for your mouse. Check your mouse documentation.]
echo �
echo �Init Count: MX FAIL or MEL FATAL ERROR 7, 12, or 15
echo �  This most commonly indicates insufficient memory. The following 
echo �paragraphs contain data specific to the configuration of your 
echo �machine's memory.
echo �
echo �
echo �    One easy way to temporarily eliminate the memory resident
echo �programs and free up enough RAM memory without affecting the way other
echo �programs run, is to create a bootable system disk, or "boot disk" as
echo �it is commonly called.
echo �
echo �    A boot disk is created by placing a blank unformatted diskette in
echo �your A:  drive (it must be the A: drive to work properly) and typing
echo �the following at the DOS prompt:
echo �
echo �			FORMAT A: /S
echo �
echo �*** Note: All information that was on a disk prior to formatting it
echo �	  will be permanently erased.
echo �
pause
echo �Once the format is complete, type:
echo �
echo �			DIR A:
echo �
echo �...to be sure that the file COMMAND.COM was transferred to the
echo �diskette. If it is missing, you will have to manually copy it to the
echo �A: drive. After confirming the presence of COMMAND.COM, you will need
echo �to have the appropriate CONFIG.SYS and AUTOEXEC.BAT files copied to
echo �your boot disk. We have included some batch files and generic
echo �configurations to ease this process. In your Great Naval Battles
echo �directory are the following batch files:
echo �
echo �1MEGDOS5.BAT  [ For a 1 meg machine running MS-DOS 5.0
echo �2MEGDOS5.BAT  [ For a 2 meg or greater machine running MS-DOS 5.0
echo �DRDOS6.BAT    [ For a 1 meg or greater machine running DR-DOS 6.0
echo �QEMM.BAT      [ For a 2 meg or greater machine using QEMM
echo �
echo �    In order to configure your boot disk to run with your machine's
echo �settings, pick the most appropriate batch file and type its name from
echo �your Great Naval Battles directory. For example, if you have MS-DOS
echo �5.0 and have at least 2 megabytes of RAM, type:
echo �
echo �			2MEGMS5
pause
echo �
echo �...and hit enter from within your Great Naval Battles directory.
echo �This will copy the appropriate config.sys and autoexec.bat files to
echo �the boot disk.
echo �
echo �*** Remember, you must have your boot disk in the A: drive at this
echo �time for the files to be transferred properly.
echo �
echo �****************************** IMPORTANT ****************************
echo �*********************************************************************
echo �    These pre-configured files are generic, and may need modification
echo �if your DOS, mouse driver, and memory manager files are not located
echo �in their default directories. If the files do not load accordingly,
echo �use a text editor (such as DOS 5.0's EDIT) to open the boot disk's
echo �CONFIG.SYS and AUTOEXEC.BAT in order to correct the paths. **** If
echo � you are using Stacker, Superstor or any other disk compression
echo � utility, you will also have to add their respective drivers to the
echo �CONFIG.SYS and AUTOEXEC.BAT files on the boot disk. Check your
echo �utilities documentation for the specific commands.
echo �*********************************************************************
echo �
echo �    Now restart your machine with the boot disk in your A: drive. The
echo �boot process may take a little longer than normal, and you may not
pause
echo �see all of the messages displayed on the screen that you are used to.
echo �This is normal. After the boot process is complete and you are left
echo �at the A: prompt, just type the drive letter that the game resides
echo �on. If it is on the C: drive, just type:  C:
echo �
echo �...and hit enter. Change to your Great Naval Battles directory and
echo �start the game by typing GNBNA and hit enter.
echo �
echo �    From all of us at SSI, we wish you "Smooth Sailing" and
echo �congratulate you on your purchase of what we consider the most
echo �advanced battleship simulator the software market has to offer. If
echo �you have any comments or suggestions, we would be happy to hear from
echo �you. Please write us at:
echo �
echo �			       SSI
echo �		       Great Naval Battles
echo �		     675 Almanor Ave. Ste. 201
echo �		       Sunnyvale, Ca. 94086
echo ���