@ECHO OFF
ECHO.Build Script by Neil C. Obremski                         [ Magenta's Maze ]
ECHO.2017 Gibdon Moon Productions                 [ http://magsmaze.gibdon.com ]
ECHO.
ECHO.This is free and unencumbered software released into the public domain.
ECHO.
REM Anyone is free to copy, modify, publish, use, compile, sell, or
REM distribute this software, either in source code form or as a compiled
REM binary, for any purpose, commercial or non-commercial, and by any
REM means.
REM
REM In jurisdictions that recognize copyright laws, the author or authors
REM of this software dedicate any and all copyright interest in the
REM software to the public domain. We make this dedication for the benefit
REM of the public at large and to the detriment of our heirs and
REM successors. We intend this dedication to be an overt act of
REM relinquishment in perpetuity of all present and future rights to this
REM software under copyright law.
REM
REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
REM EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
REM MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
REM IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
REM OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
REM ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
REM OTHER DEALINGS IN THE SOFTWARE.
REM
REM Tested w/ DOSBox 0.74, Microsoft C 5.10, Power C 2.2.1, Turbo C 2.01,
REM ... OpenWatcom 1.9
REM

IF NOT EXIST "DESIGN\*.WAV" GOTO MakeDirs
ECHO.Compiling SFX.WAV
CD DESIGN
COPY /Y /B 0.WAV+1.WAV+2.WAV+3.WAV+4.WAV+5.WAV+6.WAV+7.WAV+8.WAV+9.WAV+10.WAV SFX.WAV
CD ..\
COPY /Y DESIGN\SFX.WAV .\SFX.WAV
DEL DESIGN\SFX.WAV

:MakeDirs
IF NOT EXIST "DEBUG\*" MD DEBUG
IF NOT EXIST "RELEASE\*" MD RELEASE

REM ** Detect Compiler (MSC 5.1, TC 2, Watcom 1.9, Power C) ***
ECHO.void main(void) { }>A.C

ECHO.Detecting Microsoft C 5.10
SET COMPILER=MSC51
IF EXIST "A.EXE" DEL A.EXE
CL A.C
IF EXIST "A.EXE" GOTO BuildAll
:MSC51Finish

ECHO.Detecting Power C
SET COMPILER=POWERC
IF EXIST "A.EXE" DEL A.EXE
IF EXIST "*.MIX" DEL *.MIX
PC A.C
IF EXIST "A.MIX" GOTO BuildAll
:POWERCFinish

ECHO.Detecting Turbo C 2.01
SET COMPILER=TC2
IF EXIST "A.EXE" DEL A.EXE
TCC A.C
IF EXIST "A.EXE" GOTO BuildAll
:TC2Finish

ECHO.Detecting Watcom 1.9
SET COMPILER=WATCOM
IF EXIST "A.EXE" DEL A.EXE
WCL A.C
IF EXIST "A.EXE" GOTO BuildAll
:WATCOMFinish

GOTO EOF

REM *** Build Each File ***
:BuildAll
SET FN=MAGSMAZE
GOTO Compile
:Done_MAGSMAZE
GOTO AddSfx
:Sfx_MAGSMAZE

SET FN=TESTCGA
GOTO Compile
:Done_TESTCGA

SET FN=TESTMATH
GOTO Compile
:Done_TESTMATH

SET FN=TEST3D
GOTO Compile
:Done_TEST3D

SET FN=TESTTILE
GOTO Compile
:Done_TESTTILE

SET FN=TESTINP
GOTO Compile
:Done_TESTINP

SET FN=TESTPUZZ
GOTO Compile
:Done_TESTPUZZ

SET FN=TESTSPKR
GOTO Compile
:Done_TESTSPKR
GOTO AddSfx
:Sfx_TESTSPKR

GOTO %COMPILER%Finish

REM DONE!
ECHO.**
ECHO.
ECHO.BUILD OK
GOTO :EOF

:AddSfx
ECHO.Adding sound effects to %FN%
COPY /B /Y DEBUG\%COMPILER%\%FN%.EXE+SFX.WAV %FN%.EXE
COPY /Y %FN%.EXE DEBUG\%COMPILER%\%FN%.EXE
COPY /B /Y RELEASE\%COMPILER%\%FN%.EXE+SFX.WAV %FN%.EXE
COPY /Y %FN%.EXE RELEASE\%COMPILER%\%FN%.EXE
GOTO Sfx_%FN%

:Compile
ECHO.***
ECHO.* %FN% (%COMPILER%)
ECHO.*

ECHO.Compiling DEBUG ...
IF NOT EXIST "DEBUG\%COMPILER%\*" MD DEBUG\%COMPILER%
GOTO %COMPILER%Debug
:DebugFinish
IF NOT EXIST "%FN%.EXE" GOTO Error
COPY %FN%.* DEBUG\%COMPILER%\
IF EXIST "%FN%.$$$" DEL %FN%.$$$
IF EXIST "%FN%.ASM" DEL %FN%.ASM
IF EXIST "%FN%.ERR" DEL %FN%.ERR
IF EXIST "%FN%.EXE" DEL %FN%.EXE
IF EXIST "%FN%.MIX" DEL %FN%.MIX
IF EXIST "%FN%.OBJ" DEL %FN%.OBJ
IF EXIST "%FN%.TXT" DEL %FN%.TXT
ECHO.

ECHO.Compiling RELEASE ...
IF NOT EXIST "RELEASE\%COMPILER%\*" MD RELEASE\%COMPILER%
GOTO %COMPILER%Release
:ReleaseFinish
IF NOT EXIST "%FN%.EXE" GOTO Error
COPY %FN%.* RELEASE\%COMPILER%\
IF EXIST "%FN%.$$$" DEL %FN%.$$$
IF EXIST "%FN%.ASM" DEL %FN%.ASM
IF EXIST "%FN%.ERR" DEL %FN%.ERR
IF EXIST "%FN%.EXE" DEL %FN%.EXE
IF EXIST "%FN%.MIX" DEL %FN%.MIX
IF EXIST "%FN%.OBJ" DEL %FN%.OBJ
IF EXIST "%FN%.TXT" DEL %FN%.TXT
ECHO.

GOTO Done_%FN%

REM *** Microsoft C 5.10 ***
REM                          C COMPILER OPTIONS
REM 
REM                             -MEMORY MODEL-
REM /AS small model (default)               /AC compact model
REM /AM medium model                        /AL large model
REM /AH huge model
REM                             -OPTIMIZATION-
REM /O enable optimization (same as /Ot)    /Oa ignore aliasing
REM /Od disable optimizations               /Oi enable intrinsic functions
REM /Ol enable loop optimizations           /On disable "unsafe" optimizations
REM /Op enable precision optimizations      /Or disable in_line return
REM /Os optimize for space                  /Ot optimize for speed (default)
REM /Ox max. optimization (/Oailt /Gs)
REM                           -CODE GENERATION-
REM /G0 8086 instructions (default)         /G1  186 instructions
REM /G2  286 instructions                   /Gm put strings in constant segment
REM /Gc Pascal style function calls         /Gs no stack checking
REM /Gt[number] data size threshold
REM                             -OUTPUT FILES-
REM /Fa[assembly listing file]              /Fb[bound executable file]
REM /Fc[mixed source/object listing file]   /Fe<executable file>
REM /Fl[object listing file]                /Fm[map file]
REM /Fo<object file>                        /Fs[source listing file]
REM   (press <return> to continue)
REM                             -PREPROCESSOR-
REM /C don't strip comments                 /D<name>[=text] define macro
REM /E preprocess to stdout                 /EP same as /E but no #line
REM /I<name> add #include path              /P preprocess to file
REM /U<name> remove predefined macro        /u remove all predefined macros
REM /X ignore "standard places"
REM                               -LANGUAGE-
REM /Za disable extensions                  /Zd line number information
REM /Ze enable extensions (default)         /Zg generate declarations
REM /Zi symbolic debugging information      /Zl remove default library info
REM /Zp[n] pack structs on n-byte boundary  /Zs syntax check only
REM                            -FLOATING POINT-
REM /FPa calls with altmath                 /FPc calls with emulator
REM /FPc87 calls with 8087 library          /FPi inline with emulator (default)
REM /FPi87 inline with 8087
REM                            -SOURCE LISTING-
REM /Sl<columns> set line width             /Sp<lines> set page length
REM /St<string> set title string            /Ss<string> set subtitle string
REM                            -MISCELLANEOUS-
REM /c compile only, no link                /H<number> external name length
REM /J default char type is unsigned        /Tc<file> compile file without .c
REM /V<string> set version string           /W<number> warning level
REM   (press <return> to continue)
REM                               -LINKING-
REM /F<hex_number> stack size (hex. bytes)  /Lc link compatibility mode executable
REM /Lr link compatibility mode executable  /Lp link protect mode executable
REM /link [linker_options_and_libraries]
REM 
:MSC51Debug
ECHO.CL /AS /W3 /Fa /FPc /Od %FN%.C
CL /AS /W3 /Fa /FPc /Od %FN%.C >%FN%.TXT
GOTO DebugFinish
:MSC51Release
ECHO.CL /AS /W3 /Fa /FPc /Ox /DNDEBUG %FN%.C
CL /AS /W3 /Fa /FPc /Ox /DNDEBUG %FN%.C >%FN%.TXT
GOTO ReleaseFinish

REM *** Power C ***
REM Power C - Version 2.2.1
REM (C) Copyright 1989-1995 by Mix Software 
REM Command syntax is: pc [options] file(s) [options]
REM   options are preceded by a '-' or '/'
REM   file(s) is one or more C files (? and * allowed), or a make file
REM 
REM /1  = 80186 instructions                /ms = Small memory model
REM /2  = 80286 instructions                /mm = Medium memory model
REM /a  = Align on word boundaries          /ml = Large memory model
REM /ad = Align on dword boundaries         /n  = Allow nesting of comments
REM /dmacro = Define a macro                /o- = No object code
REM /c  = Compile if older (ignore date)    /o  = Object to default directory
REM /e  = Create .exe file (link)           /odirectory = Object to directory
REM /f87 = in-line 8087 code                /q  = Microsoft object format
REM /fa = Automatic 8087 detection          /r- = Disable register variables
REM /fb = BCD (decimal) arithmetic          /s  = Check for stack overflow
REM /fi = ieee software arithmetic          /t  = Prepare information for CTrace
REM /f- = no floating point                 /w  = Enable warnings
REM /idirlist = Include directory(s)        /w+n = Enable warning number n
REM /j  = Default to signed characters      /w-n = Disable warning number n
REM /k- = No extended keywords              /x  = Expand macros in listing
REM /l  = Send listing to stdout            /y  = Show names of functions on screen
REM /lfile = Listing to file or directory   /zn = Size for far variables (large mm)
REM
:POWERCDebug
PC /c /e /1 /mm /fi /w %FN%.C >%FN%.TXT
GOTO DebugFinish

:PowerCRelease
PC /c /e /1 /mm /f- /w /dNDEBUG %FN%.C >%FN%.TXT
GOTO ReleaseFinish

REM *** Turbo C 2 ***
REM Turbo C  Version 2.01  Copyright (c) 1987, 1988 Borland International
REM Syntax is: TCC [ options ] file[s]       * = default; -x- = turn switch x off
REM   -1      80186/286 Instructions          -A      Disable non-ANSI extensions
REM   -B      Compile via assembly            -C      Allow nested comments
REM   -Dxxx   Define macro                    -Exxx   Alternate assembler name
REM   -G      Generate for speed              -Ixxx   Include files directory
REM   -K      Default char is unsigned        -Lxxx   Libraries directory
REM   -M      Generate link map               -N      Check stack overflow
REM   -O      Optimize jumps                  -S      Produce assembly output
REM   -Uxxx   Undefine macro                  -Z      Optimize register usage
REM   -a      Generate word alignment         -c      Compile only
REM   -d      Merge duplicate strings         -exxx   Executable file name
REM   -f    * Floating point emulator         -f87    8087 floating point
REM   -gN     Stop after N warnings           -iN     Maximum identifier length N
REM   -jN     Stop after N errors             -k      Standard stack frame
REM   -lx     Pass option x to linker         -mc     Compact Model
REM   -mh     Huge Model                      -ml     Large Model
REM   -mm     Medium Model                    -ms   * Small Model
REM   -mt     Tiny Model                      -nxxx   Output file directory
REM   -oxxx   Object file name                -p      Pascal calls
REM   -r    * Register variables              -u    * Underscores on externs
REM   -v      Source level debugging          -w      Enable all warnings
REM   -wxxx   Enable warning xxx              -w-xxx  Disable warning xxx
REM   -y      Produce line number info        -zxxx   Set segment names
:TC2Debug
TCC -ms -f -e%FN%.EXE %FN%.C >%FN%.TXT
GOTO DebugFinish
:TC2Release
TCC -ms -f -e%FN%.EXE -O -DNDEBUG %FN%.C >%FN%.TXT
GOTO ReleaseFinish

REM *** Watcom 1.9 ***
REM Open Watcom C/C++16 Compile and Link Utility Version 1.9
REM Portions Copyright (c) 1988-2002 Sybase, Inc. All Rights Reserved.
REM Source code is available under the Sybase Open Watcom Public License.
REM See http://www.openwatcom.org/ for details.
REM Usage:  wcl [options] file(s)
REM Options:  ( /option is also accepted )
REM -c    compile only, no link
REM -cc   treat source files as C code
REM -cc++ treat source files as C++ code
REM -y    ignore the WCL environment variable
REM                              [Processor options]
REM -0 generate code for 8086 or higher   -4 generate code optimized for 486
REM -1 generate code for 186 or higher    -5 generate code optimized for Pentium
REM -2 generate code for 286 or higher    -6 generate code opt. for Pentium Pro
REM -3 generate code for 386 or higher
REM                      [Floating-point processor options]
REM -fpc calls to floating-point library  -fp2 generate 287 floating-point code
REM -fpd enable Pentium FDIV check        -fp3 generate 387 floating-point code
REM -fpi   inline 80x87 with emulation    -fp5 optimize f-p for Pentium
REM -fpi87 inline 80x87                   -fp6 optimize f-p for Pentium Pro
REM -fpr use old floating-point conventions
REM                              [Compiler options]
REM -bcl=<os> compile and link for OS.    -q  operate quietly
REM -bt=<os> compile for target OS.       -r  save/restore segregs across calls
REM -db generate browsing information     -ri promote function args/rets to int
REM -e=<n> set error limit number         -s  remove stack overflow checks
REM -ecc set calling conv. to __cdecl     -sg generate calls to grow the stack
REM -ecd set calling conv. to __stdcall   -st touch stack through SS first
REM -ecf set calling conv. to __fastcall  -v  output func declarations to .def
REM -ecp set calling conv. to __pascal    -vcap VC++ compat: alloca in arg lists
REM -ecr set calling conv. to __fortran   -w=<n>  set warning level number
REM -ecs set calling conv. to __syscall   -wcd=<n> disable warning message <n>
REM -ecw set calling conv. to __watcall   -wce=<n> enable warning message <n>
REM -ee call epilogue hook routine        -we treat all warnings as errors
REM -ef full paths in messages            -wx set warning level to max
REM -ei force enums to be type int        -wo diagnose problems in overlaid code
REM -em minimum base type for enum is int -xr (C++) enable RTTI
REM -en emit routine names in the code    -z{a,e} disable/enable extensions
REM -ep[=<n>] call prologue hook routine  -zc place strings in CODE segment
REM -eq do not display error messages     -zd{f,p} DS floats vs DS pegged to DGROUP
REM -fh=<file> pre-compiled headers       -zf{f,p} FS floats vs FS pegged to seg
REM -fhq[=<file>] fh without warnings     -zg{f,p} GS floats vs GS pegged to seg
REM -fhr  (C++) only read PCH             -zg function prototype using base type
REM -fhw  (C++) only write PCH            -zk{0,0u,1,2,3,l} double-byte support
REM -fhwe (C++) don't count PCH warnings  -zku=<codepage> UNICODE support
REM -fi=<file> force include of file      -zl  remove default library information
REM -fo=<file> set object file name       -zld remove file dependency information
REM -fr=<file> set error file name        -zm  place functions in separate segments
REM -ft (C++) check for 8.3 file names    -zmf (C++) zm with near calls allowed
REM -fx (C++) no check for 8.3 file names -zp{1,2,4,8,16} struct packing align.
REM -g=<codegroup> set code group name    -zpw warning when padding a struct
REM -hc codeview debug format             -zq operate quietly
REM -hd dwarf debug format                -zs check syntax only
REM -hw watcom debug format               -zt<n> set data threshold
REM -j  change char default to signed     -zu SS != DGROUP
REM -m{t,s,m,c,l,h}  memory model         -zv (C++) enable virt. fun. removal opt
REM -nc=<name>  set CODE class name       -zW  zw with efficient entry sequences
REM -nd=<name>  set data segment name     -zws -zw with smart callbacks
REM -nm=<module_name> set module name     -zWs -zW with smart callbacks
REM -nt=<name>  set text segment name
REM                              [Debugging options]
REM -d0 no debugging information          -d2t (C++) d2 but without type names
REM -d1{+} line number debugging info.    -d3 debug info with unref'd type names
REM -d2 full symbolic debugging info.     -d3i (C++) d3 + inlines as COMDATs
REM -d2i (C++) d2 + inlines as COMDATs    -d3s (C++) d3 + inlines as statics
REM -d2s (C++) d2 + inlines as statics
REM                            [Optimization options]
REM -oa relax alias checking              -ol+ ol with loop unrolling
REM -ob branch prediction                 -om generate inline math functions
REM -oc disable call/ret optimization     -on numerically unstable floating-point
REM -od disable optimizations             -oo continue compile when low on memory
REM -oe[=num] expand functions inline     -op improve floating-point consistency
REM -of[+] generate traceable stack frames-or re-order instructions to avoid stalls
REM -oh enable repeated optimizations     -os optimize for space
REM -oi inline intrinsic functions        -ot optimize for time
REM -oi+ (C++) oi with max inlining depth -ou ensure unique addresses for functions
REM -ok control flow entry/exit seq.      -ox maximum optimization (-obmiler -s)
REM -ol perform loop optimizations
REM                       [C++ exception handling options]
REM -xd  no exception handling            -xs  exception handling: balanced
REM -xds no exception handling: space     -xss exception handling: space
REM -xdt no exception handling            -xst exception handling: time
REM                            [Preprocessor options]
REM -d<name>[=text] define a macro        -u<name>  undefine macro name
REM -d+ extend syntax of -d option        -pil ignore #line directives
REM -fo=<filename> set object file name   -p{c,l,w=<n>} preprocess source file
REM -i=<directory>  include directory        c     -> preserve comments
REM -t=<n> (C++) # of spaces in tab stop     l     -> insert #line directives
REM -tp=<name> (C) set #pragma on( <name>    w=<n> -> wrap output at column n
REM                               [Linker options]
REM -bd  build Dynamic link library       -k<stack_size> set stack size
REM -bm  build Multi-thread application   -lp create an OS/2 protected-mode pgm
REM -br  build with dll run-time library  -lr create a DOS real-mode program
REM -bw  build default Windowing app.     -l=<os> link for the specified OS
REM -bcl=<os> compile and link for OS.    -x  make names case sensitive
REM -fd[=<file>[.lnk]] write directives   @<file> additional directive file
REM -fe=<executable> name executable file -"<linker directives>"
REM -fm[=<map_file>]  generate map file
REM 
:WATCOMDebug
WCL -0 -cc -od -fpi -lr -zpw -k1024 -ms -wx %FN%.C
GOTO DebugFinish

:WATCOMRelease
WCL -0 -cc -od -fpi -lr -zpw -k1024 -ms -wx -dNDEBUG -ox %FN%.C
GOTO ReleaseFinish

:Ok
ECHO.Build completed!
GOTO EOF

:Error
IF EXIST "%FN%.ERR" TYPE %FN%.ERR
IF EXIST "%FN%.TXT" TYPE %FN%.TXT
ECHO.**
ECHO.
ECHO.ERROR! %COMPILER% FAILED ON %FN%
GOTO EOF

:EOF
IF EXIST "A.*" DEL A.*
