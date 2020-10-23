bmp2rp3 %1\Attack\b* /BG /G:255
bmp2rp3 %1\Attack\r* /BG /G:255
bmp2rp3 %1\Attack\S* /BG /G:255 /R:255 /B:255 /LY:15

del %1\Attack\??????1.RP3
Rp32rp1 %1\Attack\b* /BG /G:255 /NP /M:2
Rp32rp1 %1\Attack\r* /BG /G:255 /NP /M:2
Rp32rp1 %1\Attack\s* /BG /G:255 /R:255 /B:255 /NP /M:2 
MakeAnim %1\Attack\B*.RP1 /T:%1.RBA /R:8 /S:2
MakeAnim %1\Attack\R*.RP1 /T:%1.RRA /R:8 /S:2
MakeAnim %1\Attack\S*.RP1 /T:%1.RSA /R:8 /S:2

bmp2rp3 %1\Laufen\b* /BG /G:255
bmp2rp3 %1\Laufen\r* /BG /G:255
bmp2rp3 %1\Laufen\s* /BG /G:255 /R:255 /B:255 /LY:15

Rp32rp1 %1\Laufen\r* /BG /G:255 /NP /M:2
Rp32rp1 %1\Laufen\b* /BG /G:255 /NP /M:2
Rp32rp1 %1\Laufen\s* /BG /G:255 /R:255 /B:255 /NP /M:2 
MakeAnim %1\Laufen\B*.RP1 /T:%1.RBL /R:8 /S:15
MakeAnim %1\Laufen\R*.RP1 /T:%1.RRL /R:8 /S:15
MakeAnim %1\Laufen\S*.RP1 /T:%1.RSL /R:8 /S:15

bmp2rp3 %1\Defekt\b* /BG /G:255
bmp2rp3 %1\Defekt\r* /BG /G:255
bmp2rp3 %1\Defekt\s* /BG /G:255 /R:255 /B:255 /LY:15

Rp32rp1 %1\Defekt\r* /BG /G:255 /NP /M:2
Rp32rp1 %1\Defekt\b* /BG /G:255 /NP /M:2
Rp32rp1 %1\Defekt\s* /BG /G:255 /R:255 /B:255 /NP /M:2
MakeAnim %1\Defekt\b*.RP1 /T:%1.RbD /R:1 /S:1 
MakeAnim %1\Defekt\r*.RP1 /T:%1.RrD /R:1 /S:1 
MakeAnim %1\Defekt\s*.RP1 /T:%1.RsD /R:1 /S:1 
