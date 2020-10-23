@echo off

REM /d1 = debug mode (if enabled in distribution. Also required to bypass CD check)
REM /n  = do not play intro
REM /v? = display list of 2D video cards supported in native mode
REM /vn = use specific 2D video card where n=card num displayed in /v?
REM       use /v1 for VESA mode if card not supported directly
REM /g  = run 3DFX Glide version (v1.07C or higher)

REM Global
SET FX_GLIDE_NO_SPLASH=1    
SET FX_GLIDE_SWAPINTERVAL=0
SET FX_GLIDE_TMU_MEMSIZE=2 

REM Voodoo/Voodoo Rush
SET SST_TMUMEM_SIZE=2       
SET SST96_TMUMEM_SIZE=2    
SET SST_SWAP_EN_WAIT_ON_VSYNC=0

REM Voodoo2
SET SSTV2_TMU_MEMSIZE=2    
SET SSTV2_SWAP_EN_WAIT_ON_VSYNC=0

REM Banshee
SET SSTH3_TMU_MEMSIZE=2
SET FX_GLIDE_EMUL_RUSH=1
rem SET SSTH3_SWAPINTERVAL=1

bc3000ad /g /v1
