Echo Off
:AGAIN
Cls
Type OsIntro
OsReply
If Errorlevel 63 Goto Again
If Errorlevel 62 Goto End
If Errorlevel 61 Goto F3
If Errorlevel 60 Goto F2
If Errorlevel 59 Goto F1
Goto Again
:F1
  Cls
  OsRead Osmosis.Doc
  Goto Again
:F2
  Cls
  Type OsPrt
  OsReply
  If Errorlevel 14 Goto Again
  Type Osmosis.Doc>Prn
  Goto Again
:F3
  Cls
  Type OsHd
  OsReply
  If Errorlevel 14 Goto Again
  Md C:\Games
  C:
  Cd \Games
  Copy A:Osmosis.Exe
  Goto End
:End
Cls
