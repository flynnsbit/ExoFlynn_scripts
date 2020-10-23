cls
@echo off
set dos4gvm=
@echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo บ This should only be run in you have a Gravis Ultrasound      บ       
@echo บ sound card.  If you do not have a Gravis Ultrasound in       บ
@echo บ your computer, you should start the demo by typing "PANDORA".บ
@echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
@echo Press CTRL+C to exit or
@pause
@echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo บ   -- Uploading MIDI patches for The Pandora Directive. --  บ
@echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
loadpats 
TEX4 %1 %2 %3 %4 %5
