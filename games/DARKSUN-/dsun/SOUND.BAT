@echo off

rem Darksun, The Shattered Lands...
rem
rem This is the audio installer batch file shell to install the TSR's for
rem the General Midi sound cards that require TSR's

rem Detect card

@echo off

IF "%ULTRADIR%"=="" goto CHECK_ARIA
GOTO GRAVIS

:CHECK_ARIA
IF "%ARIA%"=="" goto NO_TSR
goto ARIA

rem Detect the Gravis Software Revision and Install the Gravis TSR

:GRAVIS

IF NOT EXIST %ULTRADIR%\midi\ACPIANO.PAT GOTO OLD_REVISION

IF EXIST %ULTRADIR%\midi\HONKY.PAT GOTO V206A

copy UM200.ini ssi1.ini  > NUL
if not exist ssi1.ini goto G_BADCOPY

GOTO G_INS_TSR

:V206A
IF NOT EXIST %ULTRADIR%\midi\TREMSTR.PAT GOTO V206
IF NOT EXIST %ULTRADIR%\midi\CHARANG.PAT GOTO V206
IF NOT EXIST %ULTRADIR%\midi\ECHOVOX.PAT GOTO V206

copy UM206A.INI ssi1.ini  > NUL
if not exist ssi1.ini goto G_BADCOPY
goto G_INS_TSR

:V206

copy UM206.INI ssi1.ini > NUL
if not exist ssi1.ini goto G_BADCOPY
goto G_INS_TSR

:G_BADCOPY
cls
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �  Gravis UltraMID Installation Error: 1              �
echo 麺様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                     �
echo �  ERROR: Couldn't Copy File Needed for Gravis        �
echo �         Native Mode Operation...                    �
echo �                                                     �
echo �  Another 10k of Disk Space is Required...           �
echo �                                                     �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様�
pause
GOTO NO_GUS

:OLD_REVISION
cls
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �  Gravis UltraMID Installation Error: 2              �
echo 麺様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                     �
echo �  ERROR: UltraMID TSR is not Supported by Revisions  �
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
GOTO NO_GUS

:G_INS_TSR
lh ultramid -nssi1.ini -q
IF ERRORLEVEL 1 GOTO NO_GUS
goto RUN_GRAVIS

:NO_GUS
set ULTRASND=
set BLASTER=
goto NO_TSR

:NO_ARIA
set ARIA=
set BLASTER=
GOTO NO_TSR

:ARIA
lh miditsr gm2.bnk /I
IF ERRORLEVEL 1 GOTO INS_GM1
GOTO RUN_ARIA

:INS_GM1
lh miditsr gm1.bnk /I
IF ERRORLEVEL 1 GOTO NO_ARIA
GOTO RUN_ARIA

:RUN_GRAVIS
cls
sound_ds
ultramid -f -q
cls
goto END

:RUN_ARIA
cls
sound_ds
miditsr /U /I
goto END

:NO_TSR
cls
sound_ds
goto END

:END
exit