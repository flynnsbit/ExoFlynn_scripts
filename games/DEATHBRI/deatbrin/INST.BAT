ECHO OFF
CLS
ECHO GALDREGONS DOMAIN 3.50 INCH INSTALL
ECHO THIS WILL CREATE A DIRECTORY ON DRIVE c: CALLED GAL
ECHO WHICH WILL CONTAIN THE FILES FOR THE GAME. PRESS CONTROL+C TO ABORT
ECHO THIS ACTION OR PRESS ANY OTHER KEY TO CONTINUE.

PAUSE

MD c:\GAL
CD c:\GAL
MD c:DISK1
MD c:DISK2
MD c:DISK3
MD c:DISK4

COPY a:ERIC.BAT c:

c:
ERIC a c

