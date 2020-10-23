@Echo Off
IF "%1"=="A:" Goto do_copy
IF "%1"=="B:" Goto do_copy
Echo WCRESTOR drive       eg    WCRESTOR A:     WCRESTOR B:
Goto the_end
:do_copy
Echo Restore files from %1
Echo This will overwrite your current saved game! 
Echo Press CTRL+BREAK to abort or
Pause
%1
CD \
Echo copying.....
Copy Tactics\*.* C:\WC94\tactic
Copy Forms\*.* C:\WC94\forms
Copy Kits\*.* C:\WC94\kits
Copy Current.sav C:\WC94
Copy CurrTour.sav C:\WC94
Copy WorldCup.sav C:\WC94
Echo OK.
Echo :the_end
