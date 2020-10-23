@set DOS4GVM=@ZAR.VMC
@rem :begin
@zar %1 %2 %3 %4 %5
@if not ERRORLEVEL==1 goto done
@pause
@rem goto begin
:done
@set DOS4GVM=