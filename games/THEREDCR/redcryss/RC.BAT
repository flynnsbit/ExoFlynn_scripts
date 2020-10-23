@echo off
cd sound
soundrv >nul
midpak >nul
cd ..
shell.exe
sound\midpak u >nul
sound\soundrv u >nul
