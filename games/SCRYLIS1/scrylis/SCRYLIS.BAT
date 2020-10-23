@echo off
cls

if "%1"=="" goto error
if %1==h goto hercules
if %1==H goto hercules
if %1==c goto graficos
if %1==C goto graficos
if %1==v goto video
if %1==V goto video

:error
echo Please, select a video card, for example:
echo ÿ
echo to select VGA card type SCRYLIS V Ù
echo ÿ
goto fin

:hercules
SCRYLISC
goto fin

:graficos
SCRYLISC
goto fin

:video
SCRYLISV
goto fin

:fin
