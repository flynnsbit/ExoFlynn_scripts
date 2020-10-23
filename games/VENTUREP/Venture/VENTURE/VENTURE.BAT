@echo off
set Vret=input

if '%1' == 'install' goto install
if not exist n.bat goto instruct
if not exist s.bat goto instruct
if not exist e.bat goto instruct
if not exist w.bat goto instruct

if '%1' == 'restart' goto :restart
if '%1' == 'save' goto :save

if '%1' == 'quit' goto quit

if '%1' == '' goto :begin
if '%Vroom%' == '' goto :begin

if '%1' == 'update' goto :new_cmds

REM -------------------------------------------------------------------------
REM									commands
REM -------------------------------------------------------------------------

:cmds

if '%1' == 'go' goto %2_%Vroom%

if '%1' == 'look' goto look
if '%1' == 'examine' goto examine

if '%1' == 'inv' goto inventory

if '%1' == 'get' goto get
if '%1' == 'drop' goto drop

if '%1' == 'give' goto offer
if '%1' == 'use' goto use
if '%1' == 'wish' goto wish

if '%1' == 'wait' goto wait

echo You can't do that in this game?
goto end

REM -------------------------------------------------------------------------
REM									input
REM -------------------------------------------------------------------------

:input
set Vtmp=
goto l_%Vroom%
:_look
echo.
:list_items
set Vtmp=
if '%V_bucket%' == '%Vroom%' echo There is a bucket here.
if '%V_bucket%' == '%Vroom%' set Vtmp=.
if '%V_coin%' == '%Vroom%' echo There is a gold coin here.
if '%V_sign%' == '%Vroom%' echo There is a wooden sign here.

if not '%V_rope%' == '%Vroom%' goto no_rope
if '%Vroom%' == 'well' echo There is a coil of rope here.
if '%Vroom%' == 'pool' echo The rope is here stretching to the south.
if '%Vroom%' == 'cliff' echo The rope is here stretching to the north.
if '%Vroom%' == 'shelf' echo The rope is here stetching up the wall.
:no_rope

if not '%Vtmp%' == '' echo.
goto end

REM -------------------------------------------------------------------------
REM									begin
REM -------------------------------------------------------------------------

:begin

set Vroom=pit

goto init_objs
:_init_objs

:saved

if not '%_prompt%' == '' goto already
set _prompt=%prompt%
prompt=$g
:already

cls
echo                                VENTURE (pci)
echo.
echo.
echo Note: you can type 'quit', 'save', 'restore', or 'restart' at any time.
echo.
echo.
goto %Vroom%

:restart
if '%2' == 'save' goto saved
goto :begin

REM -------------------------------------------------------------------------
REM									install
REM -------------------------------------------------------------------------

:install
REM echo on
set Vtmp=%2
if '%Vtmp%' == '.' set Vtmp=
if '%Vtmp%' == '' goto here
:new_sub
set Vtmp=%Vtmp%\venture
if exist %Vtmp%\*.* goto warn
md %Vtmp%
copy venture.bat %Vtmp%\venture.bat>NUL
if not exist %Vtmp%\venture.bat goto warn2
cd %Vtmp%
set Vtmp=%Vtmp%\
:here
echo @venture quit>quit.bat
if not exist quit.bat goto warn2
echo Installing.
:new_cmds
echo @venture save %%1>save.bat
echo @venture restart %%1>restart.bat

echo @venture go %%1 >go.bat
echo @venture go n >north.bat
copy north.bat n.bat>NUL
echo @venture go s >south.bat
copy south.bat s.bat>NUL
echo @venture go e >east.bat
copy east.bat e.bat>NUL
echo @venture go w >west.bat
copy west.bat w.bat>NUL
echo @venture go u >up.bat
copy up.bat u.bat>NUL
echo @venture go d >down.bat
copy down.bat d.bat>NUL

echo @venture get %%1 %%2>get.bat
copy get.bat take.bat>NUL
echo @venture drop %%1 %%2>drop.bat
copy drop.bat put.bat>NUL

echo @venture give %%1 %%2>give.bat
copy give.bat offer.bat>NUL
echo @venture use %%1 %%2>use.bat
echo @venture wish %%1 %%2>wish.bat

echo @venture wait %%1>wait.bat
copy wait.bat z.bat>NUL
echo @venture look %%1 %%2>look.bat
copy look.bat l.bat>NUL
echo @venture examine %%1 %%2>examine.bat
copy examine.bat read.bat>NUL
copy examine.bat x.bat>NUL
echo @venture inv>inv.bat
copy inv.bat i.bat>NUL

echo @echo Hey, careful where you point that thing!>format.bat

echo @echo VENTURE commands:>help.bat
echo @dir /b *.bat>>help.bat
echo Installed.
echo.
echo type 'venture' to play from %Vtmp%
echo.
goto end

:warn
echo Failed: %2\venture directory already exists!
echo.
goto end
:warn2
echo Failed: unable to create %2\venture directory!
echo.
goto end

:instruct
echo.
echo VENTURE (pci) March 31, 1993
echo.
echo If you would like to play a simple little Text Adventure, please
echo type 'VENTURE install \games' or any other local path where a sub
echo directory can be created for playing this tiny game.
echo.
goto end

REM -------------------------------------------------------------------------
REM									quit
REM -------------------------------------------------------------------------

:quit

set Vroom=
set V_bucket=
set V_bucket_=
set V_rope=
set V_sign=
set V_coin=
set V_key=
set V_wish=
set Vtmp=
set Vret=

if '%_prompt%' == '' goto no_quit

prompt=%_prompt%
set _prompt=

cls
echo VENTURE terminated.  Come back soon!
echo.
goto end

:no_quit
echo VENTURE was not installed?
echo.
goto end

REM -------------------------------------------------------------------------
REM									save
REM -------------------------------------------------------------------------

:save
if '%Vroom%' == '' goto no_save
@echo @set Vroom=%Vroom%> restore.bat
@echo @set V_bucket=%V_bucket%>> restore.bat
@echo @set V_bucket_=%V_bucket_%>> restore.bat
@echo @set V_rope=%V_rope%>> restore.bat
@echo @set V_sign=%V_sign%>> restore.bat
@echo @set V_coin=%V_coin%>> restore.bat
@echo @set V_key=%V_key%>> restore.bat
@echo @set V_wish=%V_wish%>> restore.bat
@echo @set V_wish1=%V_wish1%>> restore.bat
@echo @set V_wish2=%V_wish2%>> restore.bat
@echo @echo Restored.>> restore.bat
@echo @echo.>> restore.bat
@echo @venture restart save>> restore.bat
@echo Saved.
@echo.
@echo type 'restore' when you want to restart from here...
@echo.
goto %Vroom%

:no_save
echo Failed: VENTURE is not running.
goto end

REM -------------------------------------------------------------------------
REM								  look
REM -------------------------------------------------------------------------

:look
if not '%2' == '' goto examine
set Vtmp=full
goto l_%Vroom%

:no_way
echo There is nowhere to go that way.
echo.
goto %Vret%

REM -------------------------------------------------------------------------
REM								  inventory
REM -------------------------------------------------------------------------

:inventory
set Vtmp=

goto i_bucket
:_i_bucket

goto i_sign
:_i_sign

goto i_coin
:_i_coin

goto i_rope
:_i_rope

goto i_key
:_i_key

if '%Vtmp%' == '' echo You are carrying nothing.
echo.
goto %Vret%

REM -------------------------------------------------------------------------
REM									wait
REM -------------------------------------------------------------------------

:wait
echo Time Passes.
echo.
if '%Vroom%' == 'rrope' goto z_rrope
goto %Vret%

REM -------------------------------------------------------------------------
REM									examine
REM -------------------------------------------------------------------------

:examine
if '%2' == 'bucket' goto x_bucket
if '%2' == 'well' goto x_well
if '%2' == 'pool' goto x_pool
if '%2' == 'coin' goto x_coin
if '%2' == 'sign' goto x_sign
if '%2' == 'key' goto x_key
echo There is no %2 here to examine.
echo.
goto %Vret%

:x_fail
echo You cannot see the %2 from here.
:x_done
echo.
goto %Vret%


REM -------------------------------------------------------------------------
REM									get
REM -------------------------------------------------------------------------

:get
if '%2' == 'bucket' goto g_bucket
if '%2' == 'rope' goto g_rope
if '%2' == 'sign' goto g_sign
if '%2' == 'shiny' goto g_shiny
if '%2' == 'object' goto g_object
if '%2' == 'coin' goto g_coin
echo There is no %2 here to get.
echo.
goto %Vret%

:g_fail
echo The %2 is not here to get.
echo.
goto %Vret%

:g_done
echo Taken.
echo.
goto %Vret%

REM -------------------------------------------------------------------------
REM									drop
REM -------------------------------------------------------------------------

:drop
set Vroom2=%Vroom%
if '%Vroom%' == 'rope' set Vroom=pit
if '%2' == 'bucket' goto d_bucket
if '%2' == 'sign' goto d_sign
if '%2' == 'coin' goto d_coin
if '%2' == 'rope' goto d_rope
echo You're not carrying a %2.
echo.
:end_drop
set Vroom=%Vroom2%
set Vroom2=
goto %Vret%

:d_fail
echo You do not have the %2.
echo.
goto end_drop

:d_done
echo Dropped.
echo.
goto end_drop

REM -------------------------------------------------------------------------
REM								   offer/give
REM -------------------------------------------------------------------------

:offer
if '%Vroom%' == 'cave' goto o_cave

if not '%V_bucket%' == 'owned' goto _o_bucket
if '%2' == 'bucket' goto o_refuse
:_o_bucket

if not '%V_bucket%' == 'owned' goto _o_sign
if '%2' == 'sign' goto o_refuse
:_o_sign

if not '%V_coin%' == 'owned' goto _o_coin
if '%2' == 'coin' goto o_refuse
:_o_coin

:o_fail
echo You're not carrying any %2.
echo.
goto %Vret%

:o_done
goto %Vret%

:o_refuse
echo Nobody is willing to accept your offering.
echo.
goto %Vret%

REM -------------------------------------------------------------------------
REM									use
REM -------------------------------------------------------------------------

:use

if '%2' == 'bucket' goto u_bucket
if '%2' == 'sign' goto u_sign
if '%2' == 'rope' goto u_rope
if '%2' == 'coin' goto u_coin
if '%2' == 'key' goto u_key

echo You're not carrying any %2.
goto u_done

:u_no_own
echo You don't have the %2.
echo.
goto u_done

:u_fail
echo The %1 is not very useful right now.
:u_done
echo.
goto %Vret%

REM -------------------------------------------------------------------------
REM									wish
REM -------------------------------------------------------------------------

:wish

if '%2' == 'for' shift
if '%V_wish%' == 'key' goto keep_wish
set V_wish=%2
:keep_wish
if '%2' == '' goto wish_none
if '%2' == 'key' goto wish_done
:wish_list
if '%V_wish1%' == '' goto wish1
if '%V_wish2%' == '' goto wish2
set V_wish1=%V_wish2%
goto wish2

:wish_none
echo Well... make up your mind.
echo.
goto %Vret%

:wish_done
echo Nothing happens.
echo.
goto %Vret%

:wish1
set V_wish1=%2
goto wish_done
:wish2
set V_wish2=%2
goto wish_done

REM -------------------------------------------------------------------------
REM					initial placement and status of game objects
REM -------------------------------------------------------------------------

:init_objs
set V_bucket=pit
set V_bucket_=empty
set V_rope=still
set V_coin=water
set V_sign=cave
set V_key=sky
goto _init_objs

REM -------------------------------------------------------------------------
REM									bucket
REM -------------------------------------------------------------------------

:g_bucket
if not '%Vroom%' == '%V_bucket%' goto g_fail
set V_bucket=owned
goto g_done

:d_bucket
if not '%V_bucket%' == 'owned' goto d_fail
set V_bucket=%Vroom%
goto d_done

:i_bucket
if not '%V_bucket%' == 'owned' goto no_bucket
set Vtmp=.
if '%V_bucket_%' == 'empty' echo You are carrying an empty bucket.
if not '%V_bucket_%' == 'empty' echo You are carrying a bucket of %V_bucket_%.
:no_bucket
goto _i_bucket

:x_bucket
if '%V_bucket%' == 'owned' goto see_bucket
if '%V_bucket%' == '%Vroom%' goto see_bucket
goto x_fail
:see_bucket
if '%V_bucket_%' == 'empty' echo The bucket appears water tight, but is currently empty.
if '%V_bucket_%' == 'water' echo The bucket is full of water.
goto x_done

:u_bucket
if not '%V_bucket%' == 'owned' goto u_no_own
if '%V_bucket_%' == 'empty' goto fill_bucket

:pour_bucket
if '%V_bucket_%' == 'water' goto water_pour
echo You cannot pour the %V_bucket_% out of the bucket.
goto u_done

:water_pour
set V_bucket_=empty
echo You pour the water out on the ground.
goto u_done

:fill_bucket
if '%Vroom%' == 'pool' goto water_fill
echo There is nowhere to fill the bucket here.
goto u_done

:water_fill
set V_bucket_=water
echo You fill the bucket with water.
goto u_done

REM -------------------------------------------------------------------------
REM									sign
REM -------------------------------------------------------------------------

:g_sign
if '%V_sign%' == 'fixed' goto f_sign
if not '%Vroom%' == '%V_sign%' goto g_fail
if '%Vroom%' == 'cave' goto troll_guard
:g__sign
set V_sign=owned
goto g_done
:f_sign
if '%Vroom%' == 'well' goto g__sign
goto g_fail

:troll_guard
if '%V_coin%' == 'table' goto g__sign
echo The troll makes it clear (with his eyes only) that you are not to
echo touch the sign without first giving him something valuable.  And he
echo reminds you (with his eyes only) that the same dark passage is still
echo behind you to the east.
echo.
goto %Vret%

:d_sign
if not '%V_sign%' == 'owned' goto d_fail
set V_sign=%Vroom%
goto d_done

:i_sign
if not '%V_sign%' == 'owned' goto _i_sign
set Vtmp=.
echo You are carrying a sign.
goto _i_sign

:x_sign
if '%V_sign%' == 'owned' goto see_sign
if '%V_sign%' == '%Vroom%' goto see_sign
if '%V_sign%' == 'fixed' goto xf_sign
goto x_fail
:see_sign
echo The sign reads, "Wishing Well (all major currencies accepted)".
goto x_done

:xf_sign
if '%Vroom%' == 'well' goto see_sign
goto x_fail

:u_sign
if not '%V_sign%' == 'owned' goto u_no_own
if '%Vroom%' == 'well' goto fix_well
echo The sign is of no use here.
goto u_done

:fix_well
set V_sign=fixed
echo You restore the sign to its rightful place adorning the Wishing well.
goto u_done

REM -------------------------------------------------------------------------
REM									coin
REM -------------------------------------------------------------------------

:g_coin
if '%V_coin%' == 'table' goto t_coin
if not '%Vroom%' == '%V_coin%' goto g_fail
:g__coin
set V_coin=owned
goto g_done

:t_coin
if not '%Vroom%' == 'shelf' goto g_fail
goto g__coin

:d_coin
if not '%V_coin%' == 'owned' goto d_fail
set V_coin=%Vroom%
goto d_done

:i_coin
if not '%V_coin%' == 'owned' goto _i_coin
set Vtmp=.
echo You are carrying a gold coin.
goto _i_coin

:x_coin
if '%V_coin%' == 'owned' goto see_coin
if '%V_coin%' == '%Vroom%' goto see_coin
goto x_fail
:see_coin
echo The coin appears to be forged from gold.  It bears the emblem of a
echo flat headed man wearing a crown and a silly grin.
goto x_done

:u_coin
if not '%V_coin%' == 'owned' goto u_no_own
if '%Vroom%' == 'well' goto wish_coin
echo You flip the coin spinning up in the air.
echo Heads.
goto u_done

:wish_coin
set V_coin=pit
echo You toss the coin into the well.
echo.
if '%V_wish%' == '' goto no_wish
if '%V_wish%' == 'key' goto wish_key

:weird_wish
echo Oh well, maybe some day.
set V_wish=
goto u_done

:no_wish
echo Nothing happens.
goto u_done

:wish_key
set V_key=owned
echo Suddenly a key tumbles from the sky and right into your hand.
set V_wish=
goto u_done


:o_cave
if not '%2' == 'coin' goto na_troll
:o_coin
set V_coin=table
echo The troll intensely examines the coin (with his eyes only) but then
echo almost grunts audibly in acceptance.  Snatching the coin from your hand
echo he lumbers to the west of the cavern fidgeting back by the table and
echo finally resumes his position near the fire.
echo.
goto o_done

:na_troll
echo The troll intensely examines your offering (with his eyes only) but
echo merely sneers in refusal.
echo.
goto o_done

REM -------------------------------------------------------------------------
REM									key
REM -------------------------------------------------------------------------

:g_key
if not '%Vroom%' == '%V_key%' goto g_fail
set V_key=owned
goto g_done

:d_key
if not '%V_key%' == 'owned' goto d_fail
set V_key=%Vroom%
goto d_done

:i_key
if not '%V_key%' == 'owned' goto _i_key
set Vtmp=.
echo You are carrying a silver key.
goto _i_key

:x_key
if '%V_key%' == 'owned' goto see_key
if '%V_key%' == '%Vroom%' goto see_key
goto x_fail
:see_key
echo The key is made of silver and is your typical skeleton style
echo and bears the inscription, "May your wishes come true."
goto x_done

:u_key
if not '%V_key%' == 'owned' goto u_no_own
if not '%Vroom%' == 'mossy' goto u_fail
:use_key
echo.
echo You insert the silver key into the huge door and turn the key.  You
echo hear a few clicks followed by some large mechanical gear sounds...
echo then nothing but silence.  Suddeny the door bursts open and sucks you
echo into a swirling hurricane of light.
echo.
echo Sometime later you wake up from a peaceful sleep on a soft green patch
echo of moss.  Maybe this was all just a dream?
echo.
if '%V_wish1%' == '' goto no_1
echo There is a gorgeous %V_wish1% nearby.
echo.
:no_1
if '%V_wish2%' == '' goto no_2
echo You also find that you have all the %V_wish2% you can imagine.
echo.
:no_2
echo The End.
echo.
echo (Look for more PCI adventures in every box of Krunchies you buy.)
echo.
goto u_done

REM -------------------------------------------------------------------------
REM									pit
REM -------------------------------------------------------------------------

:pit
set Vroom=pit
set Vtmp=full

:l_pit
echo Dark Pit
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are at the bottom of a dark pit.  A rope is dangling down from
echo far overhead.
goto _look

:n_pit
:s_pit
:e_pit
:w_pit
echo The pit walls block your way and are too bare to climb.
echo.
goto %Vret%

:d_pit
echo The pit floor is quite solid.
echo.
goto %Vret%

:u_pit
set V_rope=still
goto rrope

REM -------------------------------------------------------------------------
REM									rrope
REM -------------------------------------------------------------------------

:rrope
set Vroom=rrope
set Vtmp=full

:l_rrope
if '%V_rope%' == 'still' echo Climbing Rope
if '%V_rope%' == 'w' echo Swaying West on Rope
if '%V_rope%' == 'ww' echo Swinging West on Rope
if '%V_rope%' == 'e' echo Swaying East on Rope
if '%V_rope%' == 'ee' echo Swinging East on Rope
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are clinging to a rope about 25 feet above the floor of a
echo dark pit.  There appear to be ledges just out of reach to the
echo east and west at this level.  A circle of green light and the
echo end of the rope loom another 25 feet overhead.
goto _look

:z_rrope
if '%V_rope%' == 'e' set V_rope=still
if '%V_rope%' == 'w' set V_rope=still
if '%V_rope%' == 'ee' set V_rope=w
if '%V_rope%' == 'ww' set V_rope=e
goto %Vret%

:n_rrope
:s_rrope
echo There is nowhere to go that way.
echo.
goto z_rrope

:e_rrope
if '%V_rope%' == 'ee' goto eledge
if '%V_rope%' == 'w' set V_rope=ee
if '%V_rope%' == 'e' set V_rope=w
if '%V_rope%' == 'ww' set V_rope=e
if '%V_rope%' == 'still' set V_rope=e
goto :swing
:w_rrope
if '%V_rope%' == 'ww' goto wledge
if '%V_rope%' == 'e' set V_rope=ww
if '%V_rope%' == 'w' set V_rope=e
if '%V_rope%' == 'ee' set V_rope=w
if '%V_rope%' == 'still' set V_rope=w
:swing
echo The ledge is a little beyond your reach while clinging the rope.
echo.
goto %Vret%

:d_rrope
goto pit

:u_rrope
echo You reach the top of the rope and scramble over the lip of a stone
echo wall, squinting while your eyes adjust to the light.
echo.
set V_rope=still
goto well

REM -------------------------------------------------------------------------
REM									eledge
REM -------------------------------------------------------------------------

:eledge
set Vroom=eledge
set Vtmp=full

:l_eledge
echo East Ledge
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are on a ledge overlooking a dark pit to the west.  A rope is
echo swaying in the center of the pit.  It looks within leaping range.
echo A dark passage leads east.
goto _look

:n_eledge
:s_eledge
:u_eledge
:d_eledge
goto no_way

:e_eledge
goto mossy

:w_eledge
set V_rope=ww
echo You leap into the darkness and manage to grab hold of the rope.
echo.
goto rrope

REM -------------------------------------------------------------------------
REM									wledge
REM -------------------------------------------------------------------------

:wledge
set Vroom=wledge
set Vtmp=full

:l_wledge
echo West Ledge
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are on a ledge overlooking a dark pit to the east.  A rope is
echo swaying in the center of the pit.  It looks within leaping range.
echo A dark passage leads west.
goto _look

:n_wledge
:s_wledge
:u_wledge
:d_wledge
goto no_way

:w_wledge
goto cave

:e_wledge
set V_rope=ee
echo You leap into the darkness and manage to grab hold of the rope.
echo.
goto rrope

REM -------------------------------------------------------------------------
REM									well
REM -------------------------------------------------------------------------

:well
set Vroom=well
set Vtmp=full

:l_well
echo Well Clearing
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are standing in a wooded clearing.  A windy foot path meanders
echo north to south through the clearing.  There is a stone well in the
echo center of the clearing.
if not '%V_sign%' == 'fixed' goto _look
echo There is a sign on the well.
goto _look

:x_well
echo The well consists of a ring of stones encircling a dark hole.  A rope
echo is dangling from a wooden cross beam down into the hole.
goto x_done

:e_well
:w_well
:u_well
goto no_way

:n_well
goto pool

:s_well
goto cliff

:d_well
if '%V_rope%' == 'still' goto d__well
echo You lower the rope back down the well.
set V_rope=still
:d__well
echo Firmly grasping the rope, you lower yourself down into the well.
echo.
goto rrope

REM ------
REM	 rope
REM ------

:g_rope
if '%V_rope%' == '%Vroom%' goto take_rope
if '%Vroom%' == 'pit' goto fx_rope
if '%Vroom%' == 'rrope' goto fx_rope
if not '%Vroom%' == 'well' goto g_fail
set V_rope=well
echo You pull up the rope, but it is securely fastend to a beam
echo of the well.  You can't untie it.
echo.
goto %Vret%

:fx_rope
echo You cannot get the rope right now.
echo.
goto g_done

:take_rope
set V_rope=owned
goto g_done

:d_rope
if not '%V_rope%' == 'owned' goto d_fail
set V_rope=%Vroom%
goto d_done

:i_rope
if not '%V_rope%' == 'owned' goto _i_rope
set Vtmp=.
echo You are holding a rope that stretches back toward the well.
goto _i_rope

REM -------------------------------------------------------------------------
REM									pool
REM -------------------------------------------------------------------------

:pool
set Vroom=pool
set Vtmp=full

:l_pool
echo Cool Pool
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are in a lush wooded area.  Verdent foilage wavers and rustles
echo in a pleasant autumn breeze.  There is a quiet pool of water here.
echo A windy foot path leads south towards a clearing.
goto _look

:x_pool
echo It looks like a quiet pool of fresh clear water.  You can see your
echo shimmering reflection smiling back at you.
if not '%V_coin%' == 'water' goto x_done
echo There appears to be a shiny object just below the surface.
goto x_done

:g_shiny
:g_object
echo You reach into the suprisingly chilly water and pluck out a metal disc.
set V_coin=%Vroom%
goto g_coin

:n_pool
:e_pool
:w_pool
:u_pool
goto no_way

:s_pool
goto well

:d_pool
echo The water is much too cold and too shallow to be inviting.
echo.
goto %Vret%

REM -------------------------------------------------------------------------
REM									cliff
REM -------------------------------------------------------------------------

:cliff
set Vroom=cliff
set Vtmp=full

:l_cliff
echo Cliff Edge
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are standing on the edge of a cliff overlooking a sprawling valley.
echo About 20 feet down along the cliff face there is a rock shelf.  A windy
echo foot path begins north into the woods from here.
goto _look

:n_cliff
goto well

:s_cliff
:e_cliff
:w_cliff
:u_cliff
goto no_way

:d_cliff
if '%V_rope%' == 'owned' goto d_r_cliff
if '%V_rope%' == 'cliff' goto d_r_cliff
echo There doesn't appear to be any way to climb down the cliff face.
echo.
goto %Vret%

:d_r_cliff
set V_rope=shelf
echo You firmly grasp the rope and begin rappelling down the rock face.
echo.
goto shelf

REM -------------------------------------------------------------------------
REM									shelf
REM -------------------------------------------------------------------------

:shelf
set Vroom=shelf
set Vtmp=full

:l_shelf
echo Rock Shelf
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are standing on a sturdy rock shelf.  A wide cave opening leads
echo east into the cliff side.  There is a wooden table blocking passage
echo through the opening.  The rope is still dangling down from above.
if not '%V_coin%' == 'table' goto _look
echo There is a familiar gold coin on the table.
goto _look

:n_shelf
:s_shelf
:w_shelf
:d_shelf
goto no_way

:e_shelf
echo The table completely blocks this passage.
echo.
goto %Vret%

:u_shelf
set V_rope=cliff
echo You climb your way back up the rope scaling the cliff wall.
echo.
goto cliff

REM -------------------------------------------------------------------------
REM									cave
REM -------------------------------------------------------------------------

:cave
set Vroom=cave
set Vtmp=full

:l_cave
echo Troll Cave
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are inside a roomy cavern featuring a rather distasteful odor. 
echo Sunlight appears to be coming in from a wide opening back at the
echo far west side of the cavern.  There is a table near the opening.
echo In the center of the cavern there is a small fire being tended by a
echo large troll.  The troll is on the west side of the fire facing east,
echo facing right at you, staring rather intently, in fact.
echo The dark passage you entered through is behind you to the east.
goto _look

:n_cave
:s_cave
:u_cave
:d_cave
goto no_way

:e_cave
goto wledge

:w_cave
echo The intervening troll makes it suprisingly clear (with his eyes only)
echo that you're going nowhere but back out the way he's not too happy you
echo came in.
echo.
goto %Vret%

REM -------------------------------------------------------------------------
REM									mossy
REM -------------------------------------------------------------------------

:mossy
set Vroom=mossy
set Vtmp=full

:l_mossy
echo Mossy Room
if not '%Vtmp%' == 'full' goto _look
echo.
echo You are in a room whose walls are completely line with a phosphorescent
echo moss.  The moss provides a warm glow that make you feel tingly all over.
echo A huge oak door with reinforced iron-rought trim is on the north wall.
echo The only exit is the dark passage to the west.
goto _look

:x_moss
echo The light from the moss seems to mimic you heart beat.
goto x_done

:x_door
echo The door is huge and closed.  There is a large-hand sized steel hoop
echo just above a silver plated key hole.
goto x_done

:n_mossy
if '%V_key%' == 'owned' goto use_key
echo The door is locked solid.
echo.
goto %Vret%

:s_mossy
:e_mossy
:u_mossy
:d_mossy
goto no_way

:w_mossy
goto eledge

REM -------------------------------------------------------------------------
REM									end
REM -------------------------------------------------------------------------

:end
REM @echo on
set Vtmp=
set Vret=

