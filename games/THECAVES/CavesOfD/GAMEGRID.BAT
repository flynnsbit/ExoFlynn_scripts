@echo off
if "%1"=="/n" goto notline
if "%1"=="/N" goto notline
if "%1"=="/?" goto help
if "%1"=="" goto prn
:help
echo This program is designed to produce sheets that can be used to map your
echo progress in Caves of Dyanty.  To run this program you need a printer.  
echo For best results, this program should be used with a printer that can
echo print line (���) characters, but this program can also print the map using
echo standard, non-graphic characters.
echo �
echo To run this program on a parallel printer hooked to the PRN port, type 
echo GAMEGRID.  Running the program this way will cause the program to use
echo line characters.
echo �
echo If your printer cannot print line characters, type GAMEGRID /n.  This will
echo cause the program to use characters instead of lines.
echo �
echo To see this listing, type GAMEGRID /?.
echo �
echo This program requires the GAMEGRID.LIN and GAMEGRID.NLN files along with
echo the GAMEGRID.BAT file to operate.
echo �
echo GameGrid is Copyright 1993 Nathan Fritz 
goto end
:prn
echo GameGrid  Copyright 1993 Nathan Fritz
echo �
echo Printing gamegrid to PRN port.
echo �
copy gamegrid.lin prn > NUL
goto end
:notline
echo GameGrid  Copyright 1993 Nathan Fritz
echo �
echo Printing non-graphic gamegrid to PRN port.
echo �
copy gamegrid.nln prn > NUL
goto end
:end
echo Done.
