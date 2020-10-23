echo off
cls
select menu.hif
if errorlevel 5 goto abandon
if errorlevel 4 goto ega
if errorlevel 3 goto herc
if errorlevel 2 goto cgac
if errorlevel 1 goto cgam
goto fin



:ega
select langue.hif
if errorlevel 5 goto abandon
if errorlevel 4 goto ega_i
if errorlevel 3 goto ega_g
if errorlevel 2 goto ega_f
if errorlevel 1 goto ega_e
goto fin
:ega_i
venise EGA ITALIEN
goto fin
:ega_g
venise EGA GERMAN
goto fin
:ega_f
venise EGA FRANCAIS
goto fin
:ega_e
venise EGA ENGLISH
goto fin



:cgam
select langue.hif
if errorlevel 5 goto abandon
if errorlevel 4 goto cgam_i
if errorlevel 3 goto cgam_g
if errorlevel 2 goto cgam_f
if errorlevel 1 goto cgam_e
goto fin
:cgam_i
venise MONO ITALIEN
goto fin
:cgam_g
venise MONO GERMAN
goto fin
:cgam_f
venise MONO FRANCAIS
goto fin
:cgam_e
venise MONO ENGLISH
goto fin



:cgac
select langue.hif
if errorlevel 5 goto abandon
if errorlevel 4 goto cgac_i
if errorlevel 3 goto cgac_g
if errorlevel 2 goto cgac_f
if errorlevel 1 goto cgac_e
goto fin
:cgac_i
venise CGA ITALIEN
goto fin
:cgac_g
venise CGA GERMAN
goto fin
:cgac_f
venise CGA FRANCAIS
goto fin
:cgac_e
venise CGA ENGLISH
goto fin



:herc
select langue.hif
if errorlevel 5 goto abandon
if errorlevel 4 goto herc_i
if errorlevel 3 goto herc_g
if errorlevel 2 goto herc_f
if errorlevel 1 goto herc_e
goto fin
:herc_i
venise HERC ITALIEN
goto fin
:herc_g
venise HERC GERMAN
goto fin
:herc_f
venise HERC FRANCAIS
goto fin
:herc_e
venise HERC ENGLISH
goto fin



:abandon
cls

:fin
