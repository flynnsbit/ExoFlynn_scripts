echo off
cls
echo                           Public (Software) Library
echo                       Technical Support: 1-713-524-6394
echo ÿ
echo In order to get as many files as possible on this disk, we have compressed
echo    and combined the files for each program into .COM and .EXE files.
echo ÿ
echo When you type the names of one of these files, it will self-extract the
echo    files within it into separate files on the default drive and directory.
echo ÿ
echo To uncompress and uncombine these files, follow these steps:
echo    1. Put this disk in drive A:
echo    2. Go to the drive and directory where you want the files. (Ex: C:\ME)
echo    3. At the DOS prompt enter  A:filename (press Enter)
echo       For Example: if the name of the file is WORDPROC.EXE, from the C:\ME\
echo       prompt, you would just enter  A:WORDPROC and press Enter. ("C:\ME\"
echo       and "A:WORDPROC" are examples -- substitute actual names you are using.)
echo ÿ
echo If you follow these procedures for a .COM or .EXE file and a program starts
echo    running instead of files being extracted, then the file was not a
echo    compressed file.  You can run such a program as-is.
echo To help distinguish a self-extracting .COM/.EXE file from a program .COM/.EXE
echo    file, we put the "@" character at the end of the file name, as in WORDPRO@.
echo ÿ
pause
cls
echo After extracting the files, look for filenames that contain the letters
echo    DOC, TXT, MAN, MNL, ASC or READ ME in the name.
echo Such a text file should contain the documentation for the program.
echo You can view these text files on the screen by entering at the DOS prompt:
echo                             TYPE filename.DOC
echo           (substitute the actual filename and extension, of course)
echo ÿ
echo This will cause the documentation to scroll by faster than you can read it.
echo So we recommend the use of a utility such as Vernon Buerg's LIST program
echo that will let you scroll and page up and down through a file. LIST is on disk
echo 1-UT-274 in The Public (Software) Library, P.O.Box 35705, Houston, TX 77235.
echo LIST is also on the PSL's "PD/Shareware Reviews Disks" which also contain
echo   write-ups of all the thousands of programs in the PSL.
echo ÿ
echo You can also print the documentation by entering at the DOS prompt:
echo                            COPY filename.ext PRN
echo            (for more info on TYPE and COPY, see your DOS manual)
echo ÿ
echo A very few programs don't have documentation files.
echo They are self-documenting when run.
echo ÿ
pause
cls
echo ÿ
echo ÿ
echo For writeups of all the programs in the library, get the PD/SHAREWARE REVIEWS
echo disks. These disks can be updated (free) monthly.
echo ÿ
echo Programs with an extension of BAS require you to load BASIC, BASICA or GWBASIC
echo to run the program. Please read your DOS & BASIC manuals for more information.
echo Files with an extension of ARC contain one or more compressed files.
echo Use an ARC utility such as ARCE to extract the files.
echo ÿ
echo If you still have questions about how to get the documentation or how to run
echo the programs, get the TUTOR disk (2-ED-085) from the Public (Software) Library.
echo ÿ
echo DO NOT WORK FROM THIS DISK. First read the documentation on this disk then copy
echo by file name to another disk only the files that you need to run the program
echo and use that disk as your working disk. If anything goes wrong recopy the files
echo from this disk. If you do not have backups, you will have to reorder the disk.
echo ÿ
echo Programs and disk copies are tested. Do not return disks without a postage-paid
echo self-addressed return mailer unless we have acknowledged a problem first.
echo ÿ
pause
cls
echo ÿ
echo VIDEO: If you do not have a color monitor, you should get BWVID on the Video
echo Utilities Disk (1-UT-280) to make colored text readable. If you have a Hercules
echo mono-graphics card (or compatible), you will need the Hercules Utilities disk
echo to run graphics program that were not written specifically for the Hercules.
echo ÿ
echo If a program displays "garbage" on the screen with lots of "left arrow" charac-
echo ters, it may require that you have ANSI.SYS in your CONFIG.SYS file. See your
echo DOS manual for more information about ANSI.SYS.
echo ÿ
echo PRINTERS: Programs that use printer graphics or other special printer features
echo often only support Epson/IBM and compatible printers unless otherwise stated.
echo However, most programs only print plain text to the screen and printer and
echo should work on any system unless otherwise indicated.
echo ÿ
echo COMPATIBILITY: Most programs will work on any PC-compatible computer which has
echo 640k and two drives.  We do not test programs on other configurations or on
echo less compatible machines such as the PCjr and cannot guarantee the programs
echo to work on those machines.
echo ÿ
echo IF YOU HAVE TROUBLE FIGURING OUT HOW TO GET STARTED, PLEASE READ THIS FILE AGAIN
echo If you follow the instructions in this file carefully, everything should work.
echo ÿ
pause
cls
echo                         The Public (Software) Library
echo                    P.O.Box 35705  Houston, TX 35705-5705
echo                                (713) 524-6394
echo ÿ
echo         Our software library  is the result  of a great  deal of hard
echo         work  and  expense  in  acquiring,  testing,  organizing  and
echo         supporting public domain and shareware programs.
echo ÿ
echo         The disk fee  which you have  paid to us  covers our cost  of
echo         providing the above (and other) services. It does not include
echo         any compensation to the author of the program.
echo ÿ
echo         Some small programs that were quickly and easily written  and
echo         require no updates nor support are public domain.  The author
echo         asks  nothing  in return  and gets his satisfaction just from
echo         knowing that others are using and enjoying his work.
echo ÿ
echo         However many of these programs, despite their small size, did
echo         require an extensive amount of programming,  debugging, test-
echo         ing and documenting  and will benefit by future  enhancements
echo         and on-going support.
echo ÿ
echo ÿ
pause
cls
echo ÿ                         Public (Software) Library
echo ÿ
echo         Many of these programs  are commercial quality or  better and
echo         most are copyrighted,  but  the authors allow their  programs
echo         to be copied so  that others can try  them. This is known  as
echo         Shareware. (But not all programs in our library may be freely
echo         copied. Check the documentation for each.)
echo ÿ
echo         The documentation file on this disk will tell you the  amount
echo         that the author would like to receive if you try the  program
echo         and  decide  to  keep  using  it.  To encourage payment, some
echo         programmers offer more advanced versions, printed manuals and
echo         other incentives.
echo ÿ
echo         But even those that don't offer incentives still deserve your
echo         financial support  and encouragement  for the  work they have
echo         done.  This is  your moral obligation if you are  using their
echo         program. But beyond being an obligation, it is an  investment
echo         in the future of "shareware"  for which you will be  rewarded
echo         with more and better programs as a result of your support.
echo ÿ
echo ÿ
pause
cls
dir /w
echo ÿ
echo   Remember the GENERAL format to use to uncompress .COM and .EXE files:
echo           1. Put this disk in drive A:
echo           2. Go to the target drive and directory
echo           3. At the DOS prompt enter   A:filename (press Enter)
echo ÿ
