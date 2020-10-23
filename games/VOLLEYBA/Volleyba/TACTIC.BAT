Echo off
:Start
CD TEAM
If not exist TACTIC.EXE goto Error
TACTIC
Goto end
:Error
Echo Insert TACTIC - EDITOR disk -
Pause
Goto Start
:End
Cd ..
