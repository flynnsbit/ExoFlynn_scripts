ECHO off
CLS
ECHO .
ECHO PLACE THE 'BULLS AND BEARS' DISK IN DRIVE A:
ECHO .
PAUSE
C:
MD C:\BAB
ECHO .
ECHO IF THE MESSAGE 'Directory already exists' IS ON THE PREVIOUS LINE,
ECHO YOU ALREADY HAVE A DIRECTORY 'C:\BAB' AND YOU MIGHT NOT WANT TO
ECHO INSTALL BULLS AND BEARS AT THIS TIME - BECAUSE FILES WITH THE SAME
ECHO NAME WILL BE OVER WRITTEN - SO PRESS CTRL+C
ECHO .
PAUSE
CD C:\BAB
COPY A:*.* C:\BAB
ECHO 'BULLS AND BEARS' HAS BEEN PLACED ON YOUR HARD DISK UNDER C:\BAB 
ECHO .
ECHO FROM THE COMMAND PROMPT TYPE 'CD\BAB' THEN 'BAB'
PAUSE
CLS
EXIT
