echo off
IF %1==C: goto ok
IF %1==c: goto ok
IF %1==D: goto ok
IF %1==d: goto ok
IF %1==E: goto ok
IF %1==e: goto ok
IF %1==F: goto ok
IF %1==f: goto ok
IF %1==G: goto ok
IF %1==g: goto ok
IF %1==H: goto ok
IF %1==h: goto ok
IF %1==I: goto ok
IF %1==i: goto ok
goto err
:ok
echo on
MKDIR %1\STARFLT
MKDIR %1\STARFLT\PLAY
COPY A:*.COM %1\STARFLT\PLAY
COPY A:hdnotes.txt %1\STARFLT\PLAY
PAUSE INSERT STARFLT B DISK IN DRIVE A:
COPY A:*.COM %1\STARFLT\PLAY
MKDIR %1\STARFLT\SAVE
goto typenote
:err
echo off
echo  Invalid arguements for Install command
echo  Syntax is INSTALL [Device Specifier:]
echo  For example:
echo  INSTALL C:
goto finished
echo on
:typenote
echo off
type %1\STARFLT\PLAY\hdnotes.txt
echo  FINISHED INSTALLING STARFLIGHT in %1\STARFLT
:finished
