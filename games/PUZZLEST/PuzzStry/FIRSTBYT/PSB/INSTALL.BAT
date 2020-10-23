Echo Off
if exist metawndo.arc goto s1
Echo You are re-installing!!  Please re-copy from your original Disk(s) and 
Echo INSTALL again.
goto abort
:s1
Echo (C)Copyright First Byte Corporation  1988-1989.
Echo - - - - -
Echo Thank you for purchasing this First Byte product. You need only install one
Echo time unless you purchase a new computer, graphics card, or Speech Accessory.
Echo If your Graphics card is not properly detected by this install procedure,
Echo try re-installing by typing:
Echo    INSTALL CGA  ( or EGA, or VGA depending on your graphics card ).
Echo       and then run by typing:
Echo    RUN CGA      ( or EGA, or VGA depending on your graphics card ).
Echo - - - - -
if .%2 == .* goto INST1
Echo PLEASE MAKE SURE YOU HAVE BACKED UP YOUR DISKS BEFORE PROCEEDING!!
Echo - - - - -
Echo (Hit Ctrl-C to stop installation)
Echo - - - - -
pause
:INST1
what ME
if errorlevel 40 goto ST1
Echo Insufficient memory available.
Echo This product requires 512k of memory to run.
goto ABORT
:ST1
detect
if errorlevel 4 goto HS1000
if errorlevel 3 goto IBM
if errorlevel 2 goto ASKDAC
if errorlevel 1 goto ECHO
goto TNDY
:IBM
Echo Do you have an IBM Speech Card?
What C    Yes or No (y/n): $
if errorlevel 26 goto askdac
if errorlevel 25 goto at9
Goto askdac
:HS1000
Echo A HEARSAY 1000 Speech Accessory has been detected ..
goto DAC
:TNDY
Echo A Tandy Speech Accessory has been detected ..
speed
if errorlevel 233 goto dacv3
goto dacv2
:ECHO
Echo An Echo Speech Accessory has been detected ..
goto DACV2
:ASKDAC
Echo Do you have one of the following Speech Accessories?
Echo     HearSay 100,500, or 1000
Echo     Covox 'Speech Thing'
Echo - - - - -
What C    Yes or No (y/n): $
if errorlevel 26 goto askdac
if errorlevel 25 goto dac0
if errorlevel 15 goto askdac
if errorlevel 14 goto dac1
Goto askdac
:DAC1
Echo Do you have an Echo PC+,MC, or 1000?
Echo - - - - -
What C    Yes or No (y/n): $
if errorlevel 26 goto dac1
if errorlevel 25 goto echo
if errorlevel 15 goto dac1
if errorlevel 14 goto nodac
Goto dac1
:DAC0
:DAC
what ME
if errorlevel 40 goto dacv3
:dacv2
Echo Using Version 2 speech with a Speech Accessory ..
erase v3*.*
if not exist pkxarc.com find 2pkxarc.com
pkxarc v2dac *.* >nul
erase v2*.arc
rename v2dac.exe speech.exe
goto cont
:dacv3
Echo Using Version 3 speech with a Speech Accessory ..
erase v2*.arc
erase v3pwm.arc
if not exist pkxarc.com find 2pkxarc.com
pkxarc v3dac *.* >nul
erase v3*.arc
rename v3dac.exe speech.exe
goto cont
:NODAC
Speed
IF ErrorLevel 225 GOTO AT8
IF ErrorLevel 215 GOTO AT6
GOTO TandWRAM
:AT9
Echo Using Version 3 speech with an IBM Speech Card ..
GOTO NODACV3
:AT8
what ME
if not errorlevel 40 goto at6
Echo Using Version 3 speech with no Speech Accessory ..
:NODACV3
erase v2*.arc
erase v3dac.arc
if not exist pkxarc.com find 2pkxarc.com
pkxarc v3pwm *.* >nul
erase v3*.arc
rename v3pwm.exe speech.exe
goto cont
:AT6
Echo Using Version 2 speech with no Speech Accessory ..
:NODACV2
erase v3*.*
if not exist pkxarc.com find 2pkxarc.com
pkxarc v2pwm *.* >nul
erase v2*.arc
rename v2pwm.exe speech.exe
GOTO cont
:TandWRAM
Echo Using Version 2 (4.77 Mz) speech ..
erase v3*.*
if not exist pkxarc.com find 2pkxarc.com
pkxarc v2tnd *.* >nul
rename v2tnd.exe speech.exe
erase v2*.arc
:CONT
pkxarc meta*.* >nul
erase meta*.arc
erase speed.exe
erase detect.exe
if exist SINST.BAT sinst %1 S
erase *.com
erase find.exe
Echo Insert Disk #2 in this Drive and
for %%h in (pause sinst) do %%h %1 D
:ABORT
pause
