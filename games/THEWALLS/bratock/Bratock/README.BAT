@ECHO OFF
CLS
ECHO This program will display the manual page by page.  Due to it's length, it is
ECHO recommended that you print the manual on your printer.  To do so just type
ECHO COPY BRATOCK.DOC LPT1: (if your printer is in LPT1)  You can also load the
ECHO file BRATOCK.DOC in your favorite word processor and print it from there.
ECHO .
ECHO Remember, this is a huge role-playing game, to understand all of it's
ECHO contents, you must read BRATOCK.DOC
PAUSE
TYPE BRATOCK.DOC |MORE
@ECHO ON
