@echo off
sound
if errorlevel 2 goto adlib
if errorlevel 1 goto speaker
if errorlevel 0 goto over
:speaker
midi speaker
goto game
:adlib
midi adlib
:game
mary
:over
