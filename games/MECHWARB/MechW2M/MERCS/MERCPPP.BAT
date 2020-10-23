@echo off
rem MERCPPP.BAT (C) 1996 Activision.  Part of "Mechwarrior 2: Mercenaries"
if exist pppshare\lsl.com goto installed
  echo Extracting PPPSHARE
  mkdir pppshare
  cd pppshare
  ..\pppshare
  copy ..\defnet.cfg net.cfg
  cd ..
:installed
cd pppshare
rem Check to see if Windows is running.
if #%windir%==# goto nowin
  cls
  echo           --------------------------------------
  echo You can't run MERCPPP in a Windows 95 DOS box unless you
  echo do it from a shortcut for COMMAND.COM which has 
  echo "Prevent Detect Windows" checked in Properties/Program/Advanced.
  echo           --------------------------------------
  echo Please read INTERNET.TXT and follow the instructions on running
  echo from within Windows 95.  (It's big, so view it with EDIT INTERNET.TXT.)
  echo           --------------------------------------
  goto end
:nowin
rem Check to see if PPPSHARE has successfully dialled.  If not, configure.
if exist wattcp.cfg goto configured
  echo           --------------------------------------
  echo You must now configure PPPMENU for your com port and internet
  echo service provider's phone number.
  echo (Please read INTERNET.TXT for more detailed instructions.)
  echo After configuring PPPMENU, press ESCAPE to save and exit.
  echo           --------------------------------------
  echo Press any key to configure PPPMENU, or press ctrl-c to abort.
  echo           --------------------------------------
  cd ..
  pause > nul
  cd pppshare
  pppmenu
:configured
rem Check to see if PPP is already loaded.  If not, load it.
if not exist ..\lslcheck.exe echo Error- lslcheck not installed.
if not exist ..\lslcheck.exe goto end
..\lslcheck 
if not errorlevel 1 goto loaded
  rem PPP not yet loaded, so try to load it
  rem First, load Novell's link support layer.
  lsl.com
  rem Second, load KLOS's PPP module.
  rem If there is an error, it's probably the comm port wrong or not found
  rem Retry a couple times, as it seems to have trouble detecting the port.
  ppp.exe
  if errorlevel 1 ppp.exe
  if errorlevel 1 ppp.exe
  if errorlevel 1 ppp.exe
  if errorlevel 1 goto error
  rem Third, load IPSTUB.  This uses ODI to provide a Packet Driver interface.
  ipstub.exe
:loaded
rem The PPP software is loaded!
rem The user will now dial up the ISP using PPPMENU.EXE, then exit.
pppmenu.exe
if not errorlevel 1 goto online
  echo           --------------------------------------
  echo Offline!  (If you want to go online, try MERCPPP again.)
  echo           --------------------------------------
  goto end
:online
rem Presumably, we're online now.  Create WATTCP.CFG and fill it with
rem the current IP address using PPPWAT.
echo TXBUFSIZE=8192 > wattcp.cfg
echo RXBUFSIZE=8192 >> wattcp.cfg
echo ARP_DUMMY=1 >> wattcp.cfg
pppwat
if not errorlevel 1 goto good
  rem Uh-oh- there was a problem getting the IP address.
  cls
  echo           --------------------------------------
  echo Error!!  Couldn't get IP address.  
  echo           --------------------------------------
  echo Please run MERCPPP again, or read INTERNET.TXT for help.
  echo           --------------------------------------
  goto end
:good
rem Make the new wattcp.cfg available to the game.
copy wattcp.cfg ..
rem If we were true men, we'd help the user out by doing a test ping here.
rem echo Pinging www.activision.com (206.79.5.35)
rem watping 206.79.5.35
goto done
:error
  rem Uh-oh- there was a problem loading PPP.  Unload LSL (is this wise?)
  lsl /u
  rem And delete wattcp.cfg as a sign that we need to reconfigure pppmenu.
  if exist wattcp.cfg del wattcp.cfg
  cls
  echo           --------------------------------------
  echo Error!!  Couldn't load PPP.   Is your COM port set correctly?
  echo           --------------------------------------
  echo Please run MERCPPP again, or read INTERNET.TXT for help.
  echo           --------------------------------------
  goto end
:done
  cls
  echo           --------------------------------------
  echo You are online!  Now type MERCS or MERCNET to play!
  echo           --------------------------------------
  echo After you're done playing, don't forget to turn off your modem!
  echo           --------------------------------------
:end
cd ..
