ECHO OFF
CLS
ECHO Û฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿Û
ECHO Û          THE PIT v4.17 INSTALLATION          Û
ECHO ÛออออออออออออออออออออออออออออออออออออออออออออออÛ
ECHO Û Decompressing game files into PIT directory. Û
ECHO ÛÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÛ
PKUNZIP PIT417E.ZIP
MD BATTLE
MD CONFIG
COPY CONFIG.ZIP CONFIG
CLS
ECHO Û฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿Û
ECHO Û          THE PIT v4.17 INSTALLATION          Û
ECHO ÛออออออออออออออออออออออออออออออออออออออออออออออÛ
ECHO Û Decompressing CONFIG files...                Û
ECHO ÛÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÛ
CD CONFIG
PKUNZIP CONFIG.ZIP
DEL CONFIG.ZIP
CD..
MD GAME
COPY GAME.ZIP GAME
CLS
ECHO Û฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿Û
ECHO Û          THE PIT v4.17 INSTALLATION          Û
ECHO ÛออออออออออออออออออออออออออออออออออออออออออออออÛ
ECHO Û Decompressing GAME files...                  Û
ECHO ÛÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÛ
CD GAME
PKUNZIP GAME.ZIP
DEL GAME.ZIP
CD..
CLS
ECHO Û฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿Û
ECHO Û          THE PIT v4.17 INSTALLATION          Û
ECHO ÛออออออออออออออออออออออออออออออออออออออออออออออÛ
ECHO Û Decompressing GRAPHICS files...              Û
ECHO ÛÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÛ
PKUNZIP PIT417G.ZIP
CLS
ECHO Û฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿Û
ECHO Û          THE PIT v4.17 INSTALLATION          Û
ECHO ÛออออออออออออออออออออออออออออออออออออออออออออออÛ
ECHO Û Installation is complete...                  Û
ECHO Û                                              Û
ECHO Û Please run CONTROL and confirm the settings  Û
ECHO Û needed for each phone line of your BBS...    Û
ECHO ÛÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÛ
