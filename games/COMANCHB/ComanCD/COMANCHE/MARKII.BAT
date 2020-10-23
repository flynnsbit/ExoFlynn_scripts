@echo off
@if exist c:\markii\mk2load.exe goto newmark2
@if exist c:\markii\download.exe goto oldmark2

@echo ERROR: YOU DO NOT HAVE THE MARKII SOFTWARE
@echo This batch file is for programming the ThrustMaster WCS MARKII
@echo To use, you must have the MARKII software located in C:\MARKII
goto fini

:oldmark2
@echo This Program will download the MK2OLD.ADV file to the ThrustMaster WCS Mark II
@echo This Program will use the DOWNLOAD program located C:\MARKII
@echo Press Ctrl-C to abort, any other key to continue
@pause
@c:\markii\download mk2old.adv
@echo -----------------------------------------------------------------
@echo The MARKII RED SWITCH (Throttle) should be set to ANALOG
@echo The MARKII BLACK SWITCH (Hat) should be set to DIGITAL
@echo -----------------------------------------------------------------
@echo The Comanche Control Menu should be set to FlightStick w/Throttle
@echo The ThrustMaster WCS box should NOT be checked!
@echo -----------------------------------------------------------------
@echo WCS & FCS NOTES
@echo The six buttons on the WCS will select weapons
@echo The Rocker Switch will zoom in/out on the overhead map
@echo The Hat Switch will change cockpit views
@echo The Lower FCS Buttons will fire a salvo of two rockets!
goto fini

:newmark2
@echo This Program will download the MK2NEW.ADV file to the ThrustMaster WCS Mark II
@echo This Program will use the MK2LOAD program located C:\MARKII
@echo Press Ctrl-C to abort, any other key to continue
@pause
@c:\markii\mk2load mk2new
@echo -----------------------------------------------------------------
@echo The MARKII RED SWITCH (Throttle) should be set to ANALOG
@echo The MARKII BLACK SWITCH (Hat) should be set to DIGITAL
@echo -----------------------------------------------------------------
@echo The Comanche Control Menu should be set to FlightStick w/Throttle
@echo The ThrustMaster WCS box should NOT be checked!
@echo -----------------------------------------------------------------
@echo WCS & FCS NOTES
@echo The six buttons on the WCS will select weapons
@echo The Rocker Switch will zoom in/out on the overhead map
@echo The Hat Switch will change cockpit views
@echo The Lower FCS Buttons will fire a salvo of two rockets!
goto fini

:fini
