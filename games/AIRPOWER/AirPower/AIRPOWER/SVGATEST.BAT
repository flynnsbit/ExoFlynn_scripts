@echo off
copy rowan\*.fnt
copy rowan\*.svc
copy rowan\*.sga
copy rowan\*.s3d
if exist libs640.400\sga_bitz.bin del libs640.400\sga_bitz.bin
svgavesa
if exist libs640.400\sga_bitz.bin svgademo
