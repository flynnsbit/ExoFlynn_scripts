@ECHO OFF
@ECHO BUILD BOOT WILL ATTEMPT TO FORMAT YOUR FLOPPY DISK IN "A" DRIVE.
C:\DOS\FORMAT A:
@ECHO ADDING SYSTEM FILES TO THE DISK IN "A" DRIVE...
C:\DOS\SYS A:
@ECHO MOVING STANDARD AUTOEXEC.BAT AND CONFIG.SYS FILES TO "A" DRIVE.
COPY AUTOEXEC.LE A:\AUTOEXEC.BAT
COPY CONFIG.LE A:\CONFIG.SYS
@ECHO FINISHED!
@ECHO .
@ECHO You will need to COPY your mouse driver to "A" drive.  It should
@ECHO be called MOUSE.COM and be located in your DOS or MOUSE directory.
@ECHO .
@ECHO Example: COPY C:\MOUSE\MOUSE.COM A:\MOUSE.COM   or
@ECHO Example: COPY C:\GMOUSE\GMOUSE.COM A:\MOUSE.COM or
@ECHO Example: COPY C:\DOS\MOUSE.COM A:\MOUSE.COM
@ECHO .
@ECHO You will need to copy the sound driver parts out of your own
@ECHO autoexec.bat and config.sys and put them in the files on
@ECHO "A" drive.  Otherwise the game will play sound through the PC SPEAKER.
@ECHO .
@ECHO Finally, if you are not able to do this then please ask a computer
@ECHO friend to help you. (NOTE: The game is playable without a mouse.)
@ECHO .
@ECHO Thats it!  REBOOT (CNTRL-ALT-DEL) the computer with the new disk
@ECHO in "A" drive then change directory (EX: CD LONEAGLE) to where the 
@ECHO game was installed.  Type LE and enjoy!
