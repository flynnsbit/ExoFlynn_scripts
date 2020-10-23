@echo off
echo You must be running this from the hard disk directory where you
echo have copied the files for The Dezerian Assignment.  Press Ctrl-C
echo if this is not the case, any other key to proceed.....
pause
if not exist images.pck goto nofiles
echo Beginning to unpack 1st of 7 files...
decomp reddoc.pck redkey.doc
echo Beginning to unpack 2nd of 7 files...
decomp images.pck images
echo Beginning to unpack 3rd of 7 files...
decomp svtemp.pck svtemp
echo Beginning to unpack 4th of 7 files...
decomp svimg.pck svimg
echo Beginning to unpack 5th of 7 files...
decomp exclaim.pck exclaim
echo Beginning to unpack 6th of 7 files...
decomp hrdezmai.pck hrdezmai.pcx
echo Beginning to unpack 7th of 7 files...
decomp hrdz2_1.pck hrdz2_1.pcx
echo Through with unpacking.
goto end
:nofiles
echo The packed files are not available.  You have to copy them back to
echo the hard disk to unpack them.
:end
