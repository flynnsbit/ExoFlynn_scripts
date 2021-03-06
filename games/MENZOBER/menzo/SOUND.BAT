@echo off
rem --------------------------------------------------------------------------
rem .   sound.bat
rem .
rem .	This is a batch file to load the Gravis Ultrasound in Native mode.
rem .   And run the sound installer...
rem .
rem .	Author: 	Ralph Thomas
rem .
rem .   Revision:       1.0	1/24/94
rem .			1.1	2/7/94  Fixed to accomodate the loadpats
rem .                                   program detecting the GUS software
rem .                                   revision...
rem --------------------------------------------------------------------------

rem Detect card

IF "%ULTRADIR%"=="" goto NO_GRAVIS
GOTO GUS_LOAD 

:GUS_LOAD

rem --------------------------------------------------------------------------
rem If loadpats fails it means that the user has an old revision of the Gravis
rem software and will need to contact Gravis for an update to make this work...
rem --------------------------------------------------------------------------

loadpats
IF ERRORLEVEL 1 GOTO OLD_REVISION
goto RUN_GRAVIS

:OLD_REVISION

rem --------------------------------------------------------------------------
rem Set the environmental var to NULL so the sound installer will not "detect"
rem the Gravis
rem --------------------------------------------------------------------------

set ULTRASND=

cls
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �       Gravis Native Mode Installation Error         �
echo 麺様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                     �
echo �  ERROR: Native Mode is not Supported by Revisions   �
echo �         of the Gravis Software Less Then 2.00       �
echo �                                                     �
echo �         Contact Gravis to Obtain an Update of       �
echo �         Their Software...                           �
echo �                                                     �
echo �          Voice (604) 431-5020                       �
echo �          Fax   (604) 431-5155                       �
echo �          BBS   (604) 431-5927 V32bis                �
echo �                                                     �
echo �          Compuserve: GO PCVENB (71333,350)          �
echo �          FidoNET: 1:153/978                         �
echo �          InterNET EMail: tech@gravis.com            �
echo �          SBCNET: 13:900/3                           �
echo �                                                     �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様�
pause
GOTO NO_GRAVIS

:RUN_GRAVIS
cls
sound_pm.exe
cls
goto END

:NO_GRAVIS
cls
sound_pm.exe
cls
goto END

:END
