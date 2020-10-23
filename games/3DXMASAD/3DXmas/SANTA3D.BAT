@echo off
if exist memfail del memfail
memc
mnmnu m fx.crd
if errorlevel 60 goto bterrexit
if errorlevel 50 goto bootexit
if errorlevel 3 goto rgame
goto exit
:rgame
ovl_mgr {$SYS00E1]) >rungame.out
mnmnu m fy.crd
if errorlevel 3 goto rgame
goto exit
:bterrexit
echo The BOOTDISK.EXE program encountered an error condition, and 
echo your boot disk might not be functional.
echo ..
goto realexit
:bootexit
echo Your boot disk is complete.  Now restart your system, and boot from
echo from the floppy in the disk drive.
echo ..
goto realexit
:exit
vid
santend
:realexit

