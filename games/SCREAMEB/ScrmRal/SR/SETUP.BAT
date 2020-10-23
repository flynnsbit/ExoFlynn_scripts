@Echo off

cls

@Echo Setup

if not exist .\chk3dbl.exe goto setup

chk3dbl.exe > nul

copy hotcgl\vrush.ovl glide2x.ovl > nul
chk3dfx.exe > nul
if errorlevel 2 goto voodoo
if errorlevel 1 goto 3dfxdrivers
goto chkmsi

:voodoo
copy hotcgl\voodoo.ovl glide2x.ovl > nul
chk3dfx.exe > nul
if errorlevel 2 goto no3dfx
if errorlevel 1 goto 3dfxdrivers
goto chkmsi

:3dfxdrivers
@Cls
@echo Screamer Rally will not work correctly under Windows
@echo with your current 3DFX drivers. Please complete
@echo the setup procedure, then choose "Shut Down..."
@echo and "Restart in MS-DOS mode" from the Windows Start
@echo menu. Change to the directory in which you installed
@echo Screamer Rally and type SR.
@pause
goto chkmsi

:no3dfx
del glide2x.ovl

:chkmsi
chkmsi.exe > nul
if exist bind.log del bind.log

:setup
st.exe > nul
