echo off
cls
ocean
if not exist test goto CHOICE
del test
if not "%1"=="" goto OK
goto TTEST
:CHOICE
echo                                  PLEASE CHOOSE
echo                                 F1 = EXIT TO DOS
echo                              F2 = PLAY OCEAN RANGER
:G_REPLY
reply
if errorlevel 61 goto G_REPLY
if errorlevel 60 goto TTEST
if errorlevel 59 goto END
:TTEST
if not "%1"=="" goto OK
echo                               OCEAN RANGER MS-DOS
echo                           PLEASE CHOOSE A VIDEO MODE
echo                                    F1 = CGA
echo                                    F2 = EGA
echo                               F3 = TANDY 16 COLOR
:GET_REPLY
reply
if errorlevel 62 goto GET_REPLY
if errorlevel 61 goto TANDY
if errorlevel 60 goto EGA
if errorlevel 59 goto CGA
goto GET_REPLY
:OK
if "%1"=="T" goto TANDY
if "%1"=="t" goto TANDY
if "%1"=="E" goto EGA
if "%1"=="e" goto EGA
if "%1"=="C" goto CGA
if "%1"=="c" goto CGA
goto END
:CGA
RANGER1 
goto END
:TANDY
RANGER1 T
goto END
:EGA
RANGER1 E
goto END
:END
