@echo off
:MainMenu
menu
if errorlevel 7 goto Flyer
if errorlevel 6 goto Addition
if errorlevel 5 goto Guide
if errorlevel 4 goto AmonManual
if errorlevel 3 goto SierraManual
if errorlevel 2 goto SierraInstall
if errorlevel 1 goto Exit
:Flyer
cd doxview
dox dare.dox
cd ..
goto MainMenu
:Addition
cd doxview
dox dari.dox
cd ..
goto MainMenu
:Guide
cd doxview
dox darg.dox
cd ..          
goto MainMenu
:AmonManual
cd doxview
dox dar.dox
cd ..
goto MainMenu
:SierraManual
cd doxview
dox sier.dox
cd ..
goto MainMenu
:SierraInstall
sinst
:Exit
@cls

