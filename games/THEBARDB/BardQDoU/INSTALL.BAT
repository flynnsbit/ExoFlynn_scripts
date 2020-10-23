@echo off
md sound
md pics
md newdpics
pkunzip bq1p1.zip
copy bq1p2.zip sound
cd sound
pkunzip bq1p2
cd..
copy bq1p3 pics
cd pics
pkunzip bq1p3
cd..
copy bq1p4.zip newdpics
cd newdpics
pkunzip bq1p4
cd..
setup

