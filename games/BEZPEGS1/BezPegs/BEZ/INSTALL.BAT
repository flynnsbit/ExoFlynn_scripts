echo off
cls
echo -     ษออออออออออออออออออออออออออออออออป
echo -     บ       P.E.G.S. Install         บ
echo -     ศออออออออออออออออออออออออออออออออผ
echo -                              
if "%1" == "" goto drivec
echo -     Installing P.E.G.S. to drive %1:
echo -
MD %1:\PEGS
copy PEGS.EXE %1:\PEGS
if not exist %1:\PEGS\PEGS.EXE goto diskerr
copy MAPMAKER.EXE %1:\PEGS
copy README %1:\PEGS
copy SHAPES.BEZ %1:\PEGS
copy BEZ.SEZ %1:\PEGS
copy *.MAP %1:\PEGS
%1:
goto ready
:drivec
echo -     Installing P.E.G.S. to drive C:
echo -
MD C:\PEGS
copy PEGS.EXE C:\PEGS
if not exist C:\PEGS\PEGS.EXE goto diskerr
copy MAPMAKER.EXE C:\PEGS
copy README C:\PEGS
copy SHAPES.BEZ C:\PEGS
copy BEZ.SEZ C:\PEGS
copy *.MAP C:\PEGS
C:
goto ready
:diskerr
echo -
echo -   We Could Not Create The PEGS Subdirectory.
echo -   Sorry, but P.E.G.S. is not installed.
echo -   To run the game from this drive. Just type
echo -   "PEGS" and press the ENTER key.
echo -
goto alldone
:ready
CD \PEGS
cls
echo -
echo -
echo -
echo -
echo -            ษออออออออออออออออออออออออออออออป
echo -            บ   P.E.G.S. is ready to run   บ
echo -            ศออออออออออออออออออออออออออออออผ
echo -
echo -
echo -
echo -      Simply type "PEGS" and press ENTER to run
echo -
echo -
echo -
echo -
:alldone
