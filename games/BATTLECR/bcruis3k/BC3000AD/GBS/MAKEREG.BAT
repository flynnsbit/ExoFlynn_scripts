@ECHO OFF

cls

PREPARE planet.3d
PREPARE moon.3d
PREPARE null.3d
PREPARE fld.3d

prepare objects
prepare regions
prepare classes
prepare navdata

copy earthz.3dc defaults.3dc

date 12-31-99
.\bin\buildlib @bc3lib4.idx
date

