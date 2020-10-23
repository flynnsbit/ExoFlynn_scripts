Echo Off
:AGAIN
Cls
Type PsIntro
PsReply
If Errorlevel 65 Goto Again
If Errorlevel 64 Goto End
If Errorlevel 63 Goto F5
If Errorlevel 62 Goto F4
If Errorlevel 61 Goto F3
If Errorlevel 60 Goto F2
If Errorlevel 59 Goto F1
Goto Again
:F1
  Cls
  PsRead PSlot.Doc
  Goto Again
:F2
  Cls
  Type PsPrt
  PsReply
  If Errorlevel 14 Goto Again
  Type PSlot.Doc>Prn
  Goto Again
:F3
  Cls
  Type PsHd
  PsReply
  If Errorlevel 14 Goto Again
  Md C:\Games
  C:
  Cd \Games
  Copy A:PSlot.Exe
  Copy A:Ps*.Inf
  Goto End
:F4
  Cls
  Type PsPrt
  PsReply
  If Errorlevel 14 Goto Again
  Type PsReg>Prn
  Goto Again
:F5
  Cls
  PSLot
  If Errorlevel 14 Goto Again
  Goto Again
:End
Cls
