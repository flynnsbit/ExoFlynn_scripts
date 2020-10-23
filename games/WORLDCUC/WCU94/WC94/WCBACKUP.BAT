@echo off
IF "%1"=="A:" goto do_copy
IF "%1"=="B:" goto do_copy
echo WCBACKUP drive       eg    WCBACKUP A:     WCBACKUP B:
goto the_end
:do_copy
echo Backup files to %1
%1
cd \
md tactics
md forms
md kits
echo copying.....
copy C:\WC94\tactic\*.* tactics
copy C:\WC94\forms\*.* forms
copy C:\WC94\kits\*.* kits
copy C:\WC94\current.sav
copy C:\WC94\currtour.sav
copy C:\WC94\worldcup.sav
echo OK.
:the_end
