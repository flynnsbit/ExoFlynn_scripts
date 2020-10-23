@echo off
echo ÿ
echo ÿ
echo ÿ             READ THIS BEFORE CALLING TECHNICAL SUPPORT
echo ÿ
echo ÿ
echo ÿIf GNB doesn't operate after installing, take a look at these
echo ÿsuggestions and read the "TECH" readme file ****before**** calling
echo ÿtechnical support. To read the "TECH" file, type,"TECH" in the GNBNA
echo ÿdirectory. To print the "TECH" file, type, "PRINT TECH".
echo ÿ
echo ÿ1. A mouse driver must be loaded in order for the game to run
echo ÿproperly. Some programs such as Windows have built-in mouse drivers
echo ÿthat only exist while the application is being run. In order for
echo ÿGreat Naval Battles to run a mouse driver must be loaded either at
echo ÿstart-up in the config.sys or autoexec.bat file, or from the DOS
echo ÿprompt by typing:
echo ÿ
echo ÿCD\MOUSE
echo ÿMOUSE
echo ÿ
echo ÿIn this example MOUSE is given as the name of the directory in which
echo ÿyour mouse driver resides, and MOUSE is the command used to load the
echo ÿmouse driver. This is used as an example only and may not work for
pause
echo ÿyour machine. Consult your mouse user's manual for the name and
echo ÿlocation of your mouse driver. If after loading the mouse you find
echo ÿthat you don't have enough free memory, you will need to load the
echo ÿmouse driver into high memory. For MS-DOS 5.0 users, the command to
echo ÿdo this is:
echo ÿ
echo ÿLOADHIGH MOUSE
echo ÿ
echo ÿOnce again, MOUSE is just used as an example of the mouse driver's
echo ÿname. If you are using a version of DOS other than MS-DOS 5.0 or a
echo ÿthird party memory manager such as QEMM or 386MAX, the LOADHIGH
echo ÿcommand will differ, so consult your DOS manual or memory manager
echo ÿuser's guide.
echo ÿ
echo ÿ2. Most machines have the hardware necessary to run GNBNA. However,
echo ÿhaving the hardware configured in a manner suitable to run the game is
echo ÿanother matter. Memory configuration is foremost in this area.
echo ÿThink of your machine as having three memory areas: base memory,
echo ÿwhich is made up of the first 640K of RAM; HMA memory, which is made
echo ÿup of 384K of RAM located between the base memory and 1Mg (1000K); 
echo ÿand extended memory, which is all of the memory after 1Meg.
echo ÿ
echo ÿAlthough a machine may have 32 megs of RAM, this is absolutely no
pause
echo ÿguarantee that it meets a game's minimum memory requirements. A
echo ÿcertain amount of free base memory is necessary for any program to
echo ÿoperate. This game requires 584,704 available bytes of base memory.
echo ÿTo find out how much free memory your machine has type MEM [ENTER] at
echo ÿthe C: DOS prompt. The "largest executable program size" is the
echo ÿamount of free base memory.
echo ÿ
echo ÿTo free up memory, you can change your autoexec.bat file to exclude 
echo ÿas many memory resident programs as possible, or create a bootable 
echo ÿdisk (see Bootable Disk section). REMEMBER: any changes to the 
echo ÿautoexec.bat or config.sys files may affect the way other programs 
echo ÿrun. You must reboot your machine each time a change is made to the 
echo ÿautoexec.bat file. To change your autoexec.bat file consult the index 
echo ÿin your DOS manual. A possible example of how to change an 
echo ÿautoexec.bat file is as follows: type "edit" then [ENTER]. Open the 
echo ÿfile called "AUTOEXEC.BAT". Make the necessary changes and save the 
echo ÿfile.
echo ÿ
echo ÿThe config.sys also contains information that defines the parameters
echo ÿin which your machine operates and can affect the amount of free
echo ÿmemory. Changing the config.sys file is similar to changing the
echo ÿautoexec.bat. Where you would have typed "AUTEXEC.BAT", type 
echo ÿ"CONFIG.SYS".
pause
echo ÿ
echo ÿExtended memory (XMS) and expanded memory (EMS) are different. This
echo ÿgame only uses EMS. Because any memory over 1 Mg. starts as XMS, you
echo ÿmust change it into EMS. This change takes place in the config.sys
echo ÿfile by typing: "DEVICE=C:\DOS\EMM386.EXE 724". However, if you have
echo ÿmore than 2 Mg. of RAM, it is highly recommended that you change the
echo ÿ"724" to the amount of XMS that you have. This is because other
echo ÿprograms can eat up EMS before the game can use it. The smartdrv.exe
echo ÿ(a disk cache) that comes with Windows is one example. Again, the
echo ÿ"mem" command states the amount of XMS memory.  This is an example of
echo ÿa basic configuration for a 2 megabyte machine running MS-DOS 5.0.
echo ÿ
echo ÿAutoexec.bat:
echo ÿ
echo ÿ PATH=C:\;C:\MOUSE;C:\DOS
echo ÿ PROMPT=$P$G
echo ÿ LOADHIGH C:\MOUSE\MOUSE
echo ÿ
echo ÿConfig.sys:
echo ÿ
echo ÿ FILES=25
echo ÿ BUFFERS=20
echo ÿ DEVICE=C:\DOS\HIMEM.SYS           ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
pause
echo ÿ DEVICE=C:\DOS\EMM386.EXE 724  {ÄÄÄ´This line would be omitted for a³
echo ÿ DOS=HIGH                          ³machine with less than 2        ³
echo ÿ                                   ³megabytes of memory. The 724 can³
echo ÿÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ³be increased to convert whatever³
echo ÿ³* Notice that the MOUSE driver  ³ ³free extended memory you have   ³
echo ÿ³is presumed to be located in a  ³ ³into expanded.                  ³
echo ÿ³directory named MOUSE. This may ³ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo ÿ³not be true for your machine, inÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ÿ³which case you would have to edit the file and insert the correct  ³
echo ÿ³name for the mouse driver and its directory. This would also apply ³
echo ÿ³for HIMEM.SYS, EMM386.EXE, and the DOS directory.                  ³ 
echo ÿÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo ÿ
echo ÿ
echo ÿ3. If you are experiencing problems and have a sound card,
echo ÿreconfigure your sound card for no sound. To reconfigure the sound,
echo ÿtype "SOUND" at the [input game directory]. If the game still
echo ÿdoesn't work, it is probably a memory deficiency. If the game does
echo ÿwork, the problem probably lies with the sound card. Run your sound
echo ÿcard's diagnostic programs to make sure that it is working correctly.
echo ÿAlso, double check the IRQ setting and I/O address. If these are
echo ÿinput incorrectly, the game will crash every time it is run.
echo ÿ
pause
echo ÿ4. Read the README file. This file contains pertinant information
echo ÿabout this product. To read the README file type
echo ÿ"TYPE README | MORE". To print the README file type "PRINT README".  
echo ÿTo print this file (TECH) type, "PRINT TECH".
echo ÿ
echo ÿIf you have MS-DOS 4.0, you may need to use a memory manager to have
echo ÿenough free memory after loading your mouse driver.
echo ÿ
echo ÿCommon error messages:
echo ÿ
echo ÿMEL Fatal Error #3 or 16
echo ÿ  [ The program was unable to locate the sound card for which it was 
echo ÿconfigured. Re-run SOUND.EXE from your Great Naval Battles directory 
echo ÿand re-select your sound card. If you still receive the same message, 
echo ÿrun the configuration software that came with your sound card. For 
echo ÿSoundblaster users, that would be TEST-SBC.EXE. Be sure to record the 
echo ÿinterrupt number and the base port address for use in the sound 
echo ÿconfiguration.]
echo ÿ
echo ÿInit Count: GR FAIL
echo ÿ  [ This indicates that a mouse driver was not loaded. The game must 
echo ÿhave a mouse driver loaded in order to run. (Your mouse may run 
echo ÿproperly with other programs, though the driver may not be loaded.) 
pause
echo ÿThis is usually done by typing MOUSE at the DOS prompt, but may be 
echo ÿdifferent for your mouse. Check your mouse documentation.]
echo ÿ
echo ÿInit Count: MX FAIL or MEL FATAL ERROR 7, 12, or 15
echo ÿ  This most commonly indicates insufficient memory. The following 
echo ÿparagraphs contain data specific to the configuration of your 
echo ÿmachine's memory.
echo ÿ
echo ÿ
echo ÿ    One easy way to temporarily eliminate the memory resident
echo ÿprograms and free up enough RAM memory without affecting the way other
echo ÿprograms run, is to create a bootable system disk, or "boot disk" as
echo ÿit is commonly called.
echo ÿ
echo ÿ    A boot disk is created by placing a blank unformatted diskette in
echo ÿyour A:  drive (it must be the A: drive to work properly) and typing
echo ÿthe following at the DOS prompt:
echo ÿ
echo ÿ			FORMAT A: /S
echo ÿ
echo ÿ*** Note: All information that was on a disk prior to formatting it
echo ÿ	  will be permanently erased.
echo ÿ
pause
echo ÿOnce the format is complete, type:
echo ÿ
echo ÿ			DIR A:
echo ÿ
echo ÿ...to be sure that the file COMMAND.COM was transferred to the
echo ÿdiskette. If it is missing, you will have to manually copy it to the
echo ÿA: drive. After confirming the presence of COMMAND.COM, you will need
echo ÿto have the appropriate CONFIG.SYS and AUTOEXEC.BAT files copied to
echo ÿyour boot disk. We have included some batch files and generic
echo ÿconfigurations to ease this process. In your Great Naval Battles
echo ÿdirectory are the following batch files:
echo ÿ
echo ÿ1MEGDOS5.BAT  [ For a 1 meg machine running MS-DOS 5.0
echo ÿ2MEGDOS5.BAT  [ For a 2 meg or greater machine running MS-DOS 5.0
echo ÿDRDOS6.BAT    [ For a 1 meg or greater machine running DR-DOS 6.0
echo ÿQEMM.BAT      [ For a 2 meg or greater machine using QEMM
echo ÿ
echo ÿ    In order to configure your boot disk to run with your machine's
echo ÿsettings, pick the most appropriate batch file and type its name from
echo ÿyour Great Naval Battles directory. For example, if you have MS-DOS
echo ÿ5.0 and have at least 2 megabytes of RAM, type:
echo ÿ
echo ÿ			2MEGMS5
pause
echo ÿ
echo ÿ...and hit enter from within your Great Naval Battles directory.
echo ÿThis will copy the appropriate config.sys and autoexec.bat files to
echo ÿthe boot disk.
echo ÿ
echo ÿ*** Remember, you must have your boot disk in the A: drive at this
echo ÿtime for the files to be transferred properly.
echo ÿ
echo ÿ****************************** IMPORTANT ****************************
echo ÿ*********************************************************************
echo ÿ    These pre-configured files are generic, and may need modification
echo ÿif your DOS, mouse driver, and memory manager files are not located
echo ÿin their default directories. If the files do not load accordingly,
echo ÿuse a text editor (such as DOS 5.0's EDIT) to open the boot disk's
echo ÿCONFIG.SYS and AUTOEXEC.BAT in order to correct the paths. **** If
echo ÿ you are using Stacker, Superstor or any other disk compression
echo ÿ utility, you will also have to add their respective drivers to the
echo ÿCONFIG.SYS and AUTOEXEC.BAT files on the boot disk. Check your
echo ÿutilities documentation for the specific commands.
echo ÿ*********************************************************************
echo ÿ
echo ÿ    Now restart your machine with the boot disk in your A: drive. The
echo ÿboot process may take a little longer than normal, and you may not
pause
echo ÿsee all of the messages displayed on the screen that you are used to.
echo ÿThis is normal. After the boot process is complete and you are left
echo ÿat the A: prompt, just type the drive letter that the game resides
echo ÿon. If it is on the C: drive, just type:  C:
echo ÿ
echo ÿ...and hit enter. Change to your Great Naval Battles directory and
echo ÿstart the game by typing GNBNA and hit enter.
echo ÿ
echo ÿ    From all of us at SSI, we wish you "Smooth Sailing" and
echo ÿcongratulate you on your purchase of what we consider the most
echo ÿadvanced battleship simulator the software market has to offer. If
echo ÿyou have any comments or suggestions, we would be happy to hear from
echo ÿyou. Please write us at:
echo ÿ
echo ÿ			       SSI
echo ÿ		       Great Naval Battles
echo ÿ		     675 Almanor Ave. Ste. 201
echo ÿ		       Sunnyvale, Ca. 94086
echo ÿÿÿ