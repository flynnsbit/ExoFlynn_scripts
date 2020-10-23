@echo off
if "%1"=="torch" goto drop-torch
if "%1"=="lunch" goto drop-lunch
if "%1"=="map" goto drop-map
if "%1"=="sword" goto drop-sword
if "%1"=="treasure" goto drop-treasure
if "%1" == "the" drop %2
goto not-held

:drop-torch
if not "%hb1%"=="me" goto not-held
set hb1=%hbr%
goto dropped

:drop-lunch
if not "%hb2%"=="me" goto not-held
set hb2=%hbr%
goto dropped

:drop-map
if not "%hb3%"=="me" goto not-held
set hb3=%hbr%
goto dropped

:drop-sword
if not "%hb6%"=="me" goto not-held
set hb6=%hbr%
goto dropped

:drop-treasure
if not "%hb7%"=="me" goto not-held
set hb7=%hbr%
goto dropped

:not-held
echo You are not holding that.
goto exit

:dropped
echo You drop the %1.

:exit
