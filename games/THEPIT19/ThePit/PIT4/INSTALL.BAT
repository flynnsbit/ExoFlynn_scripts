ECHO OFF
CLS
ECHO ������������������������������������������������
ECHO �          THE PIT v4.17 INSTALLATION          �
ECHO ������������������������������������������������
ECHO � Decompressing game files into PIT directory. �
ECHO ������������������������������������������������
PKUNZIP PIT417E.ZIP
MD BATTLE
MD CONFIG
COPY CONFIG.ZIP CONFIG
CLS
ECHO ������������������������������������������������
ECHO �          THE PIT v4.17 INSTALLATION          �
ECHO ������������������������������������������������
ECHO � Decompressing CONFIG files...                �
ECHO ������������������������������������������������
CD CONFIG
PKUNZIP CONFIG.ZIP
DEL CONFIG.ZIP
CD..
MD GAME
COPY GAME.ZIP GAME
CLS
ECHO ������������������������������������������������
ECHO �          THE PIT v4.17 INSTALLATION          �
ECHO ������������������������������������������������
ECHO � Decompressing GAME files...                  �
ECHO ������������������������������������������������
CD GAME
PKUNZIP GAME.ZIP
DEL GAME.ZIP
CD..
CLS
ECHO ������������������������������������������������
ECHO �          THE PIT v4.17 INSTALLATION          �
ECHO ������������������������������������������������
ECHO � Decompressing GRAPHICS files...              �
ECHO ������������������������������������������������
PKUNZIP PIT417G.ZIP
CLS
ECHO ������������������������������������������������
ECHO �          THE PIT v4.17 INSTALLATION          �
ECHO ������������������������������������������������
ECHO � Installation is complete...                  �
ECHO �                                              �
ECHO � Please run CONTROL and confirm the settings  �
ECHO � needed for each phone line of your BBS...    �
ECHO ������������������������������������������������
