@echo off
rem This is an example Setup batch file.
rem
rem The actual setup procedure depends upon the self extracting archives
rem setupdb.com, setupega.com and setupcga.com creating the files kwa.exe,
rem kwa.db, kwa.idx, kwacga.db, kwacga.idx, kwa.pic and kwacga.pic
rem respectively.
rem
rem Both the help text here and the actual sequence of commands should be
rem examined for content and error handling.
rem
rem David M. Miller
rem 27-May-90 22:56:32
rem
if not "%1"=="help" goto n1
:help
cls
echo usage: setup {mode}
echo/
echo        Since the picture files for both EGA and CGA type systems cannot
echo        both fit onto a single diskette, we have compressed them.
echo/
echo        To setup Kid's World Almanac on a floppy disk for an EGA type
echo        screen, enter the following commands with a blank diskette in
echo        drive b:
echo/
echo              b:
echo              a:setup ega
echo/
echo        To setup Kid's World Almanac on a floppy disk for a CGA type
echo        screen, enter the following commands with a blank diskette in
echo        drive b:
echo/
echo              b:
echo              a:setup cga
echo/
echo        To setup Kid's World Almanac on a hard disk for an EGA type
echo        screen, copy this entire diskette to the hard disk directory
echo        in which you want to install the game.  Then enter the following
echo        commands with the current drive and directory set to the hard disk:
echo/
echo              c:
echo              cd \kwa
echo              a:setup ega
echo/
echo        To setup Kid's World Almanac on a hard disk for a CGA type
echo        screen, copy this entire diskette to the hard disk directory
echo        in which you want to install the game.  Then enter the following
echo        commands with the current drive and directory set to the hard disk:
echo/
echo              b:
echo              cd \kwa
echo              a:setup cga
goto end
:n1
if not "%1"=="ega" if not "%1"=="EGA" if not "%1"=="cga" if not "%1"=="CGA" goto help
rem extract appropriate pic file
if "%1"=="ega" a:setupega
if "%1"=="EGA" a:setupega
if "%1"=="cga" a:setupcga
if "%1"=="CGA" a:setupcga
rem extract the rest of the files
a:setupdb
if not errorlevel 1 echo Setup Complete
:end
