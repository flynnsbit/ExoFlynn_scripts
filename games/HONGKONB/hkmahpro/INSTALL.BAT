@ECHO OFF
IF "%1"=="" GOTO BadArg
:PartTwo
%1
IF NOT EXIST %1.\adlib.adv GOTO BadArg
IF "%2"=="" GOTO BadArg
:PartThree
%2
COPY %1.\install.bat %2\t~est.t~t>nul
IF NOT EXIST %2\t~est.t~t GOTO BadArg
DEL %2\t~est.t~t>nul
rem this just tested to see if %2 was a valid write-enabled drive.
ECHO ***************************************************************************
ECHO *                                                                         *
ECHO *    You have asked to install HONG KONG MAHJONG PRO from drive %1        *
ECHO *    to drive %2.                                                         *
ECHO *                                                                         *
ECHO *    If this is incorrect, press CTRL-C or CTRL-BREAK and answer Y to     *
ECHO *    cancel the installation.  Otherwise, press any other key to          *
ECHO *    continue.                                                            *
ECHO *                                                                         *
ECHO ***************************************************************************
PAUSE
CLS
ECHO Now copying files; please wait...
IF NOT EXIST %2\HKMJ\*.* MD %2\HKMJ
COPY %1.\*.* %2\HKMJ>nul
CD \HKMJ
IF NOT EXIST %2\HKMJ\PMAJ9L.XMI GOTO BadInst
rem test to see if the last file was really copied
CLS
ECHO ***************************************************************************
ECHO *                                                                         *
ECHO *    HONG KONG MAHJONG PRO has been successfully copied to your system    *
ECHO *    in %2\HKMJ.  You may run HKCONFIG to check or set configuration      *
ECHO *    options, HKMJTUTR to run the tutorial, or HKMJ to run the game.      *
ECHO *                                                                         *
ECHO *                                                                         *
ECHO ***************************************************************************
GOTO End
:BadArg
ECHO ***************************************************************************
ECHO *                                                                         *
ECHO *    To install HONG KONG MAHJONG PRO from drive d: to hard drive c:,     *
ECHO *    change to the d: drive and type:                                     *
ECHO *                                                                         *
ECHO *                                 CD\MAHJONG                              *
ECHO *                                                                         *
ECHO *                                 INSTALL D: C:                           *
ECHO *                                                                         *
ECHO *    If your drives have different identifiers, please use the drive      *
ECHO *    letters appropriate for your system; for example, if you are         *
ECHO *    installing from drive e: to hard drive d: you would                  *
ECHO *    change to drive e: and type:                                         *
ECHO *                                                                         *
ECHO *                                 CD\MAHJONG                              *
ECHO *                                                                         *
ECHO *                                 INSTALL E: D:                           *
ECHO *                                                                         *
ECHO ***************************************************************************
goto End
:BadInst
ECHO ***************************************************************************
ECHO *                                                                         *
ECHO *   There was a problem with the install. Do you have 4,800,000 bytes     *
ECHO *   free space?  You can type CHKDSK [drive letter]: to find out how      *
ECHO *   much free space you have. e.g. CHKDSK D:                              *
ECHO *                                                                         *
ECHO *   Please read your manual section about installing HKMJ Pro or you can  *
ECHO *   contact our customer service department if you still have problems.   *                                                              *
ECHO *                                                                         *
ECHO ***************************************************************************
goto End
:End
