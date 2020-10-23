@echo off

REM If uncommented by removing REM, the following line would load the 
REM Universal VESA driver off the ChessWars CD-ROM where D: is the drive 
REM letter of your CD-ROM.  If you have video problems, try it.
REM but also please read the file README.TXT in the VESA directory
REM on the CD-ROM

REM D:\VESA\Univesa\Univesa.exe

REM To skip the splash screen add "nosplash" after chesswar.exe
REM chesswar.exe nosplash %1 %2 %3 %4

REM To skip the opening video add "noopening" after chesswar.exe
REM NOTE:  The opening video will only play if DISC #2 is in the CD-ROM
REM        when you run ChessWars
REM chesswar.exe noopening %1 %2 %3 %4

REM To skip the run-time video mode and input device menu (the blue screen)
REM you may pass the video mode or input device on the command line after
REM chesswar.exe to skip the menu.
REM chesswar.exe -ve:43 -; %1 %2 %3 %4

chesswar.exe %1 %2 %3 %4

@echo on

