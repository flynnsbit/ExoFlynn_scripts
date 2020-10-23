@echo off
set dos4g=quiet
setenv

:main
menus.exe 1

if exist mortal.ini goto mort

:normal
if not exist thunder.ini goto end

if not exist highres.ini goto baja
if exist highres.ini goto alta

:mort
if not exist thunder.ini goto end

if not exist highres.ini goto bajam
if exist highres.ini goto altam

:bajam
juegom.exe 1
goto main

:altam
juego64m.exe 1
goto main

:baja
juego.exe 1
goto main

:alta
juego64.exe 1
goto main

:end
@echo Thanks for playing with Thunder Off-Shore
