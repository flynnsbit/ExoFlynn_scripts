echo off
cls
echo  ...................................................
echo  .     This utility will create a subdirectory     .
echo  .    on your "C:" hard drive and will copy the    .
echo  .     files from your game disk to your hard      .
echo  .    drive.  To play, simply type "WCS" at the    . 
echo  .       "C>" prompt and your game will load       .
echo  .                  automatically.                 .
echo  .                                                 .
echo  .   Press any key to continue or Ctrl-C to exit   .
echo  ...................................................
pause
md c:\wcs
md c:\wcs\icons
md c:\wcs\scenario
copy a:*.* c:\wcs
copy a:\icons\*.* c:\wcs\icons
copy a:\scenario\*.* c:\wcs\scenario
copy a:wcs.bat c:\
cls
echo  ...................................................
echo  .    Wargame Construction Set is now installed    .
echo  .     on your hard drive.  Please remove your     .
echo  .     Game Disk from the disk drive and store     .
echo  .               it in a safe place.               .
echo  ...................................................
