echo off
cls
echo                      LINKS-The Challenge of Golf
echo         INFORMATION ON HOW TO INCREASE FREE AVAILABLE MEMORY
echo                         Last update 11-10-90
echo .
echo Dear LINKS owner,
echo .
echo We believe LINKS is the most realistic and most technically advanced golf
echo simulator ever developed. In creating such a sophisticated program, however,
echo we have had to push your computer to its limits. LINKS requires a large
echo amount of memory to manipulate terrain data and to reproduce accurately
echo all of the intricate details of the game. At least 530K bytes are needed to
echo run the program. Player comments require another 8K bytes and wildlife
echo sounds require an additional 17K bytes. Thus, 555K bytes are needed to see
echo and hear all that LINKS has to offer.
echo .
echo To verify the amount of free memory on your computer, run the DOS utility
echo called CHKDSK. The last number displayed is the amount of free memory. If
echo the number is less than 555000, then some of LINKS' digitized sounds will
echo not be heard. If the number is less than 530000, you will not be able to
echo run LINKS.
echo .
pause
cls
echo .
echo Your 640K machine actually has 655360 bytes available. When your computer
echo boots, it loads DOS (which takes about 55,000 bytes) and then uses a file
echo called CONFIG.SYS to automatically set aside memory for file buffers and
echo other things. It also uses a file called AUTOEXEC.BAT to AUTOmatically
echo EXECute user defined instructions. Both CONFIG.SYS and AUTOEXEC.BAT can (and
echo usually do) contain programs known as TSR's. TSR stands for Terminate and
echo Stay Resident. These programs install themselves and then stay in memory
echo to be used when needed. A mouse driver, print spooler, keyboard enhancer,
echo disk cacher, memory manager and DOS shell are all examples of such programs.
echo THESE PROGRAMS USE MEMORY. If there are too many of them resident at one
echo time, there won't be room for LINKS or other large programs. TO INCREASE
echo FREE AVAILABLE MEMORY, YOU MUST REMOVE OR DISABLE SOME OF YOUR TSR'S.
echo .
echo If you have more than 640K (1Meg, 2Meg, or more) this can be used as extra
echo memory for preloading sound and graphics, but not for DOS. LINKS still
echo requires at least 530K free of your first 640K.
echo .
echo LINKS AND WINDOWS
echo You must exit completely from Windows to run LINKS. Do not exit Windows by
echo way of the DOS PROMPT icon.
echo .
