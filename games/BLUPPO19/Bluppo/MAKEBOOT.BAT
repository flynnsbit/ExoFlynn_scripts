@echo MAKEBOOT - Make a bootable floppy disk for Bluppo(TM)
@echo (C)1997 Webfoot Technologies, Inc.  ALL RIGHTS RESERVED.
@echo �
@echo Making bootable floppy now....
@echo �
@echo When asked if you wish to format another, hit 'n'.
@echo �
@format a: /s /v:WEBFOOT
@cd C:\bluppo
@echo Please wait....
@copy CONFIG.WTI a:config.sys>nul
@copy AUTOEXEC.WTI a:autoexec.bat>nul
@echo �
@echo Finished making your bootable floppy.
@echo �
@echo To run the game, leave this floppy in the drive and re-start your computer.
@echo �
@echo To re-start your computer from DOS, press the Ctrl-Alt-Del keys at the
@echo same time.
@echo �
@echo Or, to re-start your computer from Windows 95, in Windows hit the 'Start'
@echo button and choose 'Shut Down...', then select 'Restart the computer' and
@echo hit the 'Yes' button.
