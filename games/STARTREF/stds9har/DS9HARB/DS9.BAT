@echo off
if not exist dig.ini goto sound
if exist setup.cfg goto game
:sound
ds9setup
:game
deep.exe ds9
