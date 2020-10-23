ECHO OFF
CLS

ECHO +----------------------------------------------+
ECHO + In Pursuit of Greed custom boot disk utility +
ECHO +----------------------------------------------+  
ECHO .
ECHO .
ECHO Please insert disk in drive A: 
ECHO .

PAUSE

ECHO Formatting disk in drive A: now...
ECHO .

format a: /S /V:GREED_BOOT

if ERRORLEVEL 1 goto FAILURE

CLS

ECHO
ECHO Format complete, beginning file transfer...
ECHO .
goto CONTINUE:

:FAILURE

echo Format failure
goto END:

:CONTINUE:

ECHO Custom copies of your AUTOEXEC.BAT and CONFIG.SYS are being transfered
ECHO to your new boot disk.  These files are not being changed on your hard
ECHO drive, only on the boot disk.  When done, make sure your custom boot
ECHO disk is in drive A: and reset your computer before you play GREED.
ECHO .
ECHO When not playing GREED, reset your computer with no disk in drive A:
ECHO and your computer will function normally.

BOOT

:END
