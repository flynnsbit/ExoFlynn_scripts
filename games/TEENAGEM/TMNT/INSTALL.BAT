ECHO OFF
CLS
ECHO This install program will create
ECHO a sub-directory called \TMNT
ECHO and copy all game files to it.
ECHO ---------------------------------
ECHO Make sure Disk #1 is in the
ECHO source drive.
PAUSE
MD %1\TMNT
MD %1\TMNT\DATA
COPY *.* %1\TMNT
copy data\*.* %1\TMNT\DATA
ECHO INSERT Disk #2 into
ECHO the source drive now.
PAUSE
COPY *.* %1\TMNT
copy data\*.* %1\TMNT\DATA
ECHO INSERT Disk #3 into
ECHO the source drive now.
PAUSE
copy data\*.* %1\TMNT\DATA
ECHO INSERT Disk #4 into
ECHO the source drive now.
PAUSE
copy data\*.* %1\TMNT\DATA
CLS
ECHO INSTALL COMPLETE
ECHO ON