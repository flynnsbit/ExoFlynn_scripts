@net.exe %1
@if errorlevel 255 goto ende
@if errorlevel 250 goto start
@goto ende
:start
@madtv.exe -nohmi
:ende
