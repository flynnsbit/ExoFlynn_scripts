@echo off
echo Starting Battlespire...
set causeway=MAXMEM:72;PRE:40;NAME:spire.swp
:repgame
game spire.cfg %1
if exist rep.dat goto :repgame

