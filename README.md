Fork of the original : http://ankulua.boards.net/thread/167/brave-exvius-ffbeauto-farming-explorations

Updated to conform FFBE v2.0[font color="e61919"]

[font color="3d83d3"]Originally made by tinotk
 [/font][font color="56afd0"]Wolfs[font color="56afd0"]fang Peak exploration by zen[font color="56afd0"]krye
 [font color="56afd0"]D[font color="56afd0"]warves Forge exploration by eleck[/font][/font]
 [/font][/font][/font][/font]
 **Features**[font color="e61919"]**:**
 [font color="3c0000"][font color="3c0000"]- Dungeon Finder[font color="3c0000"], able to automatically find[font color="3c0000"] any dungeons [font color="3c0000"](and raids)[/font] [font color="3c0000"]a[font color="3c0000"]nd depart to it.
 [font color="3c0000"]- Explorations, able to [font color="3c0000"]farm select exploration[font color="3c0000"] nodes and optionally farm battles for max experience.
 [font color="3c0000"]- Free Farm, use for manual exploration farming[font color="3c0000"], will attempt to move back and forth to [font color="3c0000"]find battles for you.
 [font color="3c0000"]- Any and all error/dialog box[font color="3c0000"] handling.[/font][/font] Can use Lapis or not.
 - All (within reason) resolutions supported.
 [/font][/font][/font][/font][/font][/font][/font][/font][/font][/font][/font][/font][/font]
 **How to Install:**
 Simply extract all contents to AnkuLua's folder (default is in AnkuLua folder in the Internal Storage of your device). Overwrite files when necessary.

**[font color="d34141"]How to use:
 [/font]**- If you're using an actual ***device*** and not an emulator, please be aware that some **[font color="\#353535"]AM[/font][font color="\#c30cdf"]O[/font][font color="\#353535"]LED[/font]** screens will exhibit burn in when left on for prolonged time with FFBE. Search for AMOLED burn in in Google. IPS screens are better for this purpose. Also, your device will most likely be emitting lots of heat and your battery will take a hit (this goes for every prolonged game session). Your device also needs to stay awake (this can be done with Developer Settings - stay awake while charging) as AnkuLua needs the screen to be on at all times.
 - Open your maps selection screen and start the script. *Please reposition the play button somewhere in the left border so that it does not interfere with the battle interface.
*- Important : If you are using any superuser root app, make sure to *turn off Toast notifications* as they interfere with the button matching.
 - Always start from Quest selection screen.

**[font color="\#ff0000"]Options :
 [/font]**- **Trace Mode**: for exploration maps, some paths require precise single step-by-step, if you notice the character moves more than 1 step, try different trace mode.-
 - **Find Battle**: if this is checked the script will keep running around (in your defined direction for 100 laps) to find all the battles in the map (to maximize your loot, xp... per energy spent). It will then starting to check your gold every 5 laps after lap\#30. Find Battle will stop after you've reached certain gold amount or 80 laps, whichever comes first.
 - **Use click for step**:

*Single:* if checked, the script will do click to move a single step instead of swiping. Move location will be determine by finding Rain's position on screen when exploration started. I recommend you check this for maximum compatibility.
 *Always*: if swiping is not working for you then choose this. Warning : this mode is a lot slower.

- **Device Lag Multiplier**: this setting is intended to use on slower devices or emulators, if your device lags, you might wanna set this to 2.0 or 2.5 or higher. *tinotk* (original author) have successfully run Phantom Forest all night long on a 5 year old laptop with 2.5 lag multiplier. I recommend you to start with 1.0-1.5, adjust when necessary. Explorations may require higher lag multiplier to be safe. For reference, I use 1.0 in my Snapdragon 821-powered phone. 1.3-1.5 should be the starting point for emulators on explorations, less on dungeons, depending on how many instances you run and your processor you may have to increase this. *I don't recommend running multiple instances of emulators in the same computer if you want to do explorations.*
 - **Dungeon Finder**: as you can tell from the name: it will find all available dungeons on screen and give you a list to choose from. As of now, this option can be used to farm any dungeon, yes any dungeon including those in vortex.
 - **Dim screen (Pro):** dim your screen while running. Note that if you use AnkuLua free it will limit playing to 5 minutes if you use this option.
 - **Free Farm:** activate this when you're inside exploration, the script will keep going in your chosen direction and find battle until you stop it.
 - **Bonus Unit companion:** Will try to use units marked as bonus first, useful for Mog King events.
 - **Use esper:**Script will try to use esper whenever available.
 - **Max depart count:**Script will stop playing after this many departs. Useful if you want to wake up with energy left but not waste any. Input 99999 for infinite (previous version behavior)
 - **Retry on Game Over:**If checked script will continue on game over, this is the default behavior of the previous versions.

[font color="ff0000"]**How to define custom path:
**[/font]
 map\_name:direction,steps|direction,steps|direction,steps|direction,steps|.......|direction,steps
 map\_name: you name it with whatever you like, this name will show up on the selection list with a "custom\_" prefix.

direction:

up, down, left, right
 ul: go up-left (North West)
 ur: go up-right (North East)
 dl: go down-left
 dr: down-right

(Note that diagonal directions can sometimes get stuck on a wall, I personally don't use them)

steps: anything \<20 will be single step (trust me you don't need more than 20), anything above that will be ms (milliseconds).

Rule of thumb: one map per line
 . Make sure that you put all directions on a single line separated direction by a | (pipe).
 *
 Direction example:*
 up,5: go up 5 steps

up,5000: go up 5s

left,1000: go left 1s
 ul,1500: go up-left 1.5s
 Below is an example of my water shrine path taken from the script:

water\_shrine:right,700|up,2000|right,2500|up,1800|down,1800|left,1|down,1200|left,1950|up,700|left,5|up,3000|up,2100|right,1500|down,3|right,1500|battle,lr,4820,right|right,4000|left,1|up,2700|down,4|right,1200|right,8500|down,1|left,9000|down,3000|left,3000|up,1200|left,4|up,2500|left,2000|right,1|up,2000|down,4|left,4500|right,3|up,2000|up,2300|right,4000|battle,lr,11188,right|right,8000|left,17|up,3000|up,3000
 *
 Special settings for custom path:*
 If you read my custom water shrine path above you will notice the extra battle part. This setting is used for the Find Battle option, see below for syntax:
 battle,[battle\_direction],[gil\_cap],[exit\_direction]

battle\_direction: either "ud" for up-down or "lr" for left-right
 Gil cap: amount of gil to check, if \> this amount, the script will exit battle and continue exploration. How to get this? Either manually battle yourself or check here: exviuswiki.com/
 Exit direction: direction to go next after done battle.

*For those of you who used the original ffbeAuto*, there are some minor differences between the format, and your explorations will still be compatible. However, it now disregards findmove command as findmove is now *always*used in every step.

[font color="\#ff0000"]**New pathing commands added in Z6 :**[/font]

wait,7000 : will wait for x ms (for elevators and such, I use it on Invincible Interior for example)

leaveafterboss : will immediately leave after boss battle. Use it anywhere before boss battle, preferably use it at the start of exploration (does not delay anything)

bosscheck, 20 : will do bosschecks after this many moves. Set this to 2 moves before boss battle for stability reasons. If you don't set it or set it lower than 20 it will auto-adjust the value after a successful run, so successive runs will be faster. Bosschecks takes a lot of time, and a proper bosscheck value speeds up explorations noticeably.

battleex : similar to find battle above, but with more settings. It's now battleex,[battle\_direction],[gil\_cap],[battle\_count\_cap],[steps],[exit\_direction]
 [span][span]    [/span]    [/span]battle\_count\_cap : Will exit finding battles when above this battle *counted from the start of exploration.
*[span][span]    [/span]    [/span]steps : Just like exploration steps, define how many ms to swipe up/down or left/right. Useful to prevent excessive bumping into walls situation which wastes a lot of time.

*Old paths will continue to be compatible with this version, no need to do anything if you don't want to.
*
 [font color="ff0000"]**How to define a good path:**[/font]

Below are few tips that I've learned from doing those exploration paths:
 - Try to always bump
 into walls, if you can't then use single steps. However, try to minimize single steps if possible. Single steps take more time due to the fact that the script will wait and check for any battle encounter after each step.
 - For any of your calculated ms, add 500 to it.
 - Minimum 500ms, don't go below that.
 [font color="ff0000"]
 **How to report a bug:**[/font]

Please take a screenshot of your script config (like the first picture above), and advise what you were trying to do to produce that bug. A video and/or logfile would be much appreciated. The log is located on the script's folder.

Version history :

Z12 BETA2 - Revamped interface, Added Provoke, Sing, Dance, Ultima to custom actions. Added use companion skills to boss battles, selecting only by MP. Fixed a bug with Bonus friends selection.
 Z12 BETA1 - Another round of optimization, custom battle feature. Please test the custom battle as it is brand new.
 Z11 - Major optimizations and compatibility fixes. Much faster after a successful run as it will learn the buttons' location.
 Z10 - Fixed Game Over bugs, added a new "select highest ATK companion" feature. Added results on script stop.
 Z9 - Bugfixes due to the new version, mainly towards explorations.
 Z8 - Added basic built-in help. Changed fire shrine pathing to something more reliable. Fixed a bug with continue battle after boss clicking the wrong thing. Fixed a bug with exploration battles clicking. Water shrine bug fixed.
 Z7 - Fixed problems with pathing on Invincible Interior, fixed a bug with Esper-enabled exploration battles that causes it to not click Auto. Slightly slowed down exploration due to choppiness of emulators which leads to the script not recognizing that it's in battle. Added fire shrine exploration. Re-styled the debug messages, they now appear on the top bar because Toasts often interferes with image matching.
 Z6 - Fixed problems with companion selection bug, optimized explorations and added more functions for pathing, added invincible interior and wind shrine exploration. 
 Z5 - Changed skills/magic to esper only (way faster), can now be used in explorations. Modified and optimized explorations for upcoming event. Added water shrine exploration. Added depart cap and continue on Game Over options. Some speed improvements in the results screen, also stability fixes for explorations.
 Z4 - Speed improvements. Removed v0.51 version reference.
 v0.51 Z3 - Added Raid compatibility (use dungeon\_finder), Major stability fixes for unstable connection, everything from vortex farming, future King Mog farming, and explorations should be way more resistant to network problems.
 v0.51 Z2 - Major code optimization for everything, explorations runs much faster and more stable. Handles all errors including the new unit data has changed error.
 v0.51 Z1 - Beginning to fix everything to conform to FFBE version 2.0, priority to normal battles. Added skills/magic use.

Download link :

BETA 2 version Z12 - https://www.dropbox.com/s/07sjfhngpslfn6r/ffbeAuto%20Z12%20BETA2.zip?dl=0
 Z11 Stable - https://www.dropbox.com/s/pr32arr6l9ycuis/ffbeAuto%20Z11.zip?dl=0

Video examples :

[video src="https://youtu.be/iA8WB\_IbExQ"][/video]
 [video src="https://youtu.be/yc5iUZfemgI"][/video]
 [video src="https://youtu.be/v5dMd9IMFq0"][/video]
 Mandatory Disclaimer: I take no responsibilities whatsoever for any and all damages caused by this script, however I do my best to erase or warn you about potential problems.

[a href="https://www.paypal.com/cgi-bin/webscr?cmd=\_donations&business=9K9U9UPXGMDSQ&lc=ID&item\_name=ffbeAuto%20Z%20Fork&item\_number=ffbeAuto%20Z&currency\_code=USD&bn=PP%2dDonationsBF%3abtn\_donate\_SM%2egif%3aNonHosted"]Donate[/a]
