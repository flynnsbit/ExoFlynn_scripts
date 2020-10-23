ECHO OFF
CLS
ECHO                 THE PUBLIC DOMAIN SOFTWARE LIBRARY
ECHO ***********************************************************************
ECHO Winscombe House, Beacon Rd, Crowborough, Sussex TN6 IUL tel 08926 63298
ECHO -
ECHO This disk contains public domain and/or user supported software.
ECHO This compilation of software is just one of 2000 plus disks available
ECHO from the Public Domain Software Library. No charge or fee may be made
ECHO for this disk, but you may give away copies to your friends providing
ECHO you give them the whole thing including this file .
ECHO Unlike commercial software, no printed documentation is supplied except
ECHO in some cases from the authors of the programs.
ECHO Most disks contain document files describing how to use the programs.
ECHO These document files can usually be identified by the filename or
ECHO filename extension type used. DOC, FRM, PRN, TXT, WS, MAN are the most
ECHO common, files called READ.ME etc are also document files.
ECHO You can view these files using the DOS 'TYPE' command. So to view a file
ECHO called 'READ.ME' you would enter at the keyboard:-
ECHO -
ECHO "TYPE READ.ME"
ECHO -
PAUSE
cls
ECHO ARCHIVE FILES
ECHO Some disks contain files with a ARC extension to the filename, these
ECHO are special PACKED files, usually containing a number of smaller files.
ECHO These are used to save disk space, before you can use 'Archived' programs
ECHO they need unpacking, for this you will need ARC.EXE. The procedure
ECHO is:- place a blank formatted disk in drive B , put the disk with ARC.EXE
ECHO and the archive file in drive A  and type as follows "B:<CR>" to log into
ECHO drive B, then:-"A:ARC E A:XXXXXX<CR>", XXXXXX is the name of the file to
ECHO be unpacked. The files will be extracted and put on the disk in B:
ECHO -
ECHO USER SUPPORTED SOFTWARE.
ECHO We urge you to support the authors of user supported software. This is
ECHO not FREE software, but rather a 'try before you buy' system. It is
ECHO expected that if you find a program of use, you will register with the
ECHO author and send him a contribution. Your support will help to allow
ECHO further and better software to be distributed in this way.
ECHO Please also check the documentation of all programs for any special
ECHO conditions of use given by the author.
ECHO -
PAUSE
cls
ECHO NOTE
ECHO This file is not specific to this particular disk - it exists on all
ECHO PDSL volumes, and thus it may not display all documentation files on
ECHO this disk if non-standard names have been used. Please check the
ECHO directory of the disk for any other document files which may have been
ECHO missed by this batch file.
ECHO -
PAUSE
IF NOT EXIST T.COM GOTO :END
CLS
ECHO PRESS ANY KEY TO START VIEWING TEXT/DOCUMENT FILES ON THIS DISK
ECHO OR HIT CONTROL C TO EXIT.
PAUSE
T -*.*
T *.DOC
T *.TXT
T *.ME
T *.MAN
T *.FRM
T *.WS
:END
EXIT
