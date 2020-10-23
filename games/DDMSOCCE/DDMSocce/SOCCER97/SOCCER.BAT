@ECHO OFF
@OVL_00.EXE 490
@IF ERRORLEVEL 1 GOTO PARTE_2
@OVL_01.EXE 0000
@IF NOT ERRORLEVEL 1 GOTO PARTE_3
:PARTE_1
@OVL_02.EXE ÿ
@OVL_01.EXE 0600
@IF ERRORLEVEL 1 GOTO PARTE_1
@GOTO PARTE_3
:PARTE_2
@ECHO Not enough memory, this program needs 490k memory bytes free.
:PARTE_3
@ECHO Note: Please, run SETUP to configure your sound system and then
@ECHO       run CONTROL utility to define your joysticks and keyboard
