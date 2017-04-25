<p>Fork of the original : http://ankulua.boards.net/thread/167/brave-exvius-ffbeauto-farming-explorations</p><p>Updated to conform FFBE v2.0[font color="e61919"]</p><p>[font color="3d83d3"]Originally made by tinotk<br />
[/font][font color="56afd0"]Wolfs[font color="56afd0"]fang Peak exploration by zen[font color="56afd0"]krye<br />
[font color="56afd0"]D[font color="56afd0"]warves Forge exploration by eleck[/font][/font]<br />
[/font][/font][/font][/font]<br />
<strong>Features</strong>[font color="e61919"]<strong>:</strong><br />
[font color="3c0000"][font color="3c0000"]- Dungeon Finder[font color="3c0000"], able to automatically find[font color="3c0000"] any dungeons [font color="3c0000"](and raids)[/font] [font color="3c0000"]a[font color="3c0000"]nd depart to it.<br />
[font color="3c0000"]- Explorations, able to [font color="3c0000"]farm select exploration[font color="3c0000"] nodes and optionally farm battles for max experience.<br />
[font color="3c0000"]- Free Farm, use for manual exploration farming[font color="3c0000"], will attempt to move back and forth to [font color="3c0000"]find battles for you.<br />
[font color="3c0000"]- Any and all error/dialog box[font color="3c0000"] handling.[/font][/font] Can use Lapis or not.<br />
- All (within reason) resolutions supported.<br />
[/font][/font][/font][/font][/font][/font][/font][/font][/font][/font][/font][/font][/font]<br />
<strong>How to Install:</strong><br />
Simply extract all contents to AnkuLua's folder (default is in AnkuLua folder in the Internal Storage of your device). Overwrite files when necessary.</p><p><strong>[font color="d34141"]How to use:<br />
[/font]</strong>- If you're using an actual <em><u><strong>device</strong></u></em> and not an emulator, please be aware that some <strong>[font color="#353535"]AM[/font][font color="#c30cdf"]O[/font][font color="#353535"]LED[/font]</strong> screens will exhibit burn in when left on for prolonged time with FFBE. Search for AMOLED burn in in Google. IPS screens are better for this purpose. Also, your device will most likely be emitting lots of heat and your battery will take a hit (this goes for every prolonged game session). Your device also needs to stay awake (this can be done with Developer Settings - stay awake while charging) as AnkuLua needs the screen to be on at all times.<br />
- Open your maps selection screen and start the script. <em><u>Please reposition the play button somewhere in the left border so that it does not interfere with the battle interface.<br />
</u></em>- Important : If you are using any superuser root app, make sure to <u><em>turn off Toast notifications</em></u> as they interfere with the button matching.<br />
- <em><u>Always start from Quest selection screen.</p><p></u></em><strong>[font color="#ff0000"]Options :<br />
[/font]</strong>- <strong>Trace Mode</strong>: for exploration maps, some paths require precise single step-by-step, if you notice the character moves more than 1 step, try different trace mode.-<br />
- <strong>Find Battle</strong>: if this is checked the script will keep running around (in your defined direction for 100 laps) to find all the battles in the map (to maximize your loot, xp... per energy spent). It will then starting to check your gold every 5 laps after lap#30. Find Battle will stop after you've reached certain gold amount or 80 laps, whichever comes first.<br />
- <strong>Use click for step</strong>:</p><p>    <em>Single:</em> if checked, the script will do click to move a single step instead of swiping. Move location will be determine by finding Rain's position on screen when exploration started. I recommend you check this for maximum compatibility.<br />
    <em>Always</em>: if swiping is not working for you then choose this. Warning : this mode is a lot slower.</p><p>- <strong>Device Lag Multiplier</strong>: this setting is intended to use on slower devices or emulators, if your device lags, you might wanna set this to 2.0 or 2.5 or higher. <em>tinotk</em> (original author) have successfully run Phantom Forest all night long on a 5 year old laptop with 2.5 lag multiplier. I recommend you to start with 1.0-1.5, adjust when necessary. Explorations may require higher lag multiplier to be safe. For reference, I use 1.0 in my Snapdragon 821-powered phone. 1.3-1.5 should be the starting point for emulators on explorations, less on dungeons, depending on how many instances you run and your processor you may have to increase this. <em>I don't recommend running multiple instances of emulators in the same computer if you want to do explorations.</em><br />
- <strong>Dungeon Finder</strong>: as you can tell from the name: it will find all available dungeons on screen and give you a list to choose from. As of now, this option can be used to farm any dungeon, yes any dungeon including those in vortex. <br />
- <strong>Dim screen (Pro):</strong> dim your screen while running. Note that if you use AnkuLua free it will limit playing to 5 minutes if you use this option.<br />
- <strong>Free Farm:</strong> activate this when you're inside exploration, the script will keep going in your chosen direction and find battle until you stop it.<br />
- <strong>Bonus Unit companion:</strong> Will try to use units marked as bonus first, useful for Mog King events.<br />
- <strong>Use esper: </strong>Script will try to use esper whenever available.<br />
- <strong>Max depart count: </strong>Script will stop playing after this many departs. Useful if you want to wake up with energy left but not waste any. Input 99999 for infinite (previous version behavior)<br />
- <strong>Retry on Game Over: </strong>If checked script will continue on game over, this is the default behavior of the previous versions.</p><p>[font color="ff0000"]<strong>How to define custom path:<br />
</strong>[/font]<br />
map_name:direction,steps|direction,steps|direction,steps|direction,steps|.......|direction,steps<br />
map_name: you name it with whatever you like, this name will show up on the selection list with a "custom_" prefix.</p><p>direction: </p><p>    up, down, left, right<br />
    ul: go up-left (North West)<br />
    ur: go up-right (North East)<br />
    dl: go down-left<br />
    dr: down-right</p><p>(Note that diagonal directions can sometimes get stuck on a wall, I personally don't use them)</p><p>steps: anything <20 will be single step (trust me you don't need more than 20), anything above that will be ms (milliseconds).</p><p><u>Rule of thumb</u>: one map per line<br />
. Make sure that you put all directions on a single line separated direction by a | (pipe).<br />
 <em><br />
Direction example:</em><br />
up,5: go up 5 steps</p><p>up,5000: go up 5s</p><p>left,1000: go left 1s<br />
ul,1500: go up-left 1.5s<br />
Below is an example of my water shrine path taken from the script:</p><p>water_shrine:right,700|up,2000|right,2500|up,1800|down,1800|left,1|down,1200|left,1950|up,700|left,5|up,3000|up,2100|right,1500|down,3|right,1500|battle,lr,4820,right|right,4000|left,1|up,2700|down,4|right,1200|right,8500|down,1|left,9000|down,3000|left,3000|up,1200|left,4|up,2500|left,2000|right,1|up,2000|down,4|left,4500|right,3|up,2000|up,2300|right,4000|battle,lr,11188,right|right,8000|left,17|up,3000|up,3000<br />
<em><br />
Special settings for custom path:</em><br />
If you read my custom water shrine path above you will notice the extra battle part. This setting is used for the Find Battle option, see below for syntax:<br />
battle,[battle_direction],[gil_cap],[exit_direction]</p><p>    battle_direction: either "ud" for up-down or "lr" for left-right<br />
    Gil cap: amount of gil to check, if > this amount, the script will exit battle and continue exploration. How to get this? Either manually battle yourself or check here: exviuswiki.com/<br />
    Exit direction: direction to go next after done battle.</p><p><u><em>For those of you who used the original ffbeAuto</em></u>, there are some minor differences between the format, and your explorations will still be compatible. However, it now disregards findmove command as findmove is now <em>always </em>used in every step.</p><p>[font color="#ff0000"]<strong>New pathing commands added in Z6 :</strong>[/font]</p><p>wait,7000 : will wait for x ms (for elevators and such, I use it on Invincible Interior for example)</p><p>leaveafterboss : will immediately leave after boss battle. Use it anywhere before boss battle, preferably use it at the start of exploration (does not delay anything)</p><p>bosscheck, 20 : will do bosschecks after this many moves. Set this to 2 moves before boss battle for stability reasons. If you don't set it or set it lower than 20 it will auto-adjust the value after a successful run, so successive runs will be faster. Bosschecks takes a lot of time, and a proper bosscheck value speeds up explorations noticeably.</p><p>battleex : similar to find battle above, but with more settings. It's now battleex,[battle_direction],[gil_cap],[battle_count_cap],[steps],[exit_direction]<br />
[span][span]&nbsp;&nbsp;&nbsp;&nbsp;[/span]&nbsp;&nbsp;&nbsp;&nbsp;[/span]battle_count_cap : Will exit finding battles when above this battle <em>counted from the <u>start</u>&nbsp;of exploration.<br />
</em>[span][span]&nbsp;&nbsp;&nbsp;&nbsp;[/span]&nbsp;&nbsp;&nbsp;&nbsp;[/span]steps : Just like exploration steps, define how many ms to swipe up/down or left/right. Useful to prevent excessive bumping into walls situation which wastes a lot of time.</p><p><em>Old paths will continue to be compatible with this version, no need to do anything if you don't want to.<br />
</em><br />
[font color="ff0000"]<strong>How to define a good path:</strong>[/font]</p><p>Below are few tips that I've learned from doing those exploration paths:<br />
- Try to always bump<br />
 into walls, if you can't then use single steps. However,&nbsp;try to minimize single steps if possible. Single steps take more time due to the fact that the script will wait and check for any battle encounter after each step.<br />
- For any of your calculated ms, add 500 to it.<br />
- Minimum 500ms, don't go below that.<br />
[font color="ff0000"]<br />
<strong>How to report a bug:</strong>[/font]</p><p>Please take a screenshot of your script config (like the first picture above), and advise what you were trying to do to produce that bug. A video and/or logfile would be much appreciated. The log is located on the script's folder.</p><p>Version history :</p><p>Z12 BETA2 - Revamped interface, Added Provoke, Sing, Dance, Ultima to custom actions. Added use companion skills to boss battles, selecting only by MP. Fixed a bug with Bonus friends selection.<br />
Z12 BETA1 - Another round of optimization, custom battle feature. Please test the custom battle as it is brand new.<br />
Z11 - Major optimizations and compatibility fixes. Much faster after a successful run as it will learn the buttons' location.<br />
Z10 - Fixed Game Over bugs, added a new "select highest ATK companion" feature. Added results on script stop.<br />
Z9 - Bugfixes due to the new version, mainly towards explorations.<br />
Z8 - Added basic built-in help. Changed fire shrine pathing to something more reliable. Fixed a bug with continue battle after boss clicking the wrong thing. Fixed a bug with exploration battles clicking. Water shrine bug fixed.<br />
Z7 - Fixed problems with pathing on Invincible Interior, fixed a bug with Esper-enabled exploration battles that causes it to not click Auto. Slightly slowed down exploration due to choppiness of emulators which leads to the script not recognizing that it's in battle. Added fire shrine exploration. Re-styled the debug messages, they now appear on the top bar because Toasts often interferes with image matching.<br />
Z6 - Fixed problems with companion selection bug, optimized explorations and added more functions for pathing, added invincible interior and wind shrine exploration.&nbsp;<br />
Z5 - Changed skills/magic to esper only (way faster), can now be used in explorations. Modified and optimized explorations for upcoming event. Added water shrine exploration. Added depart cap and continue on Game Over options. Some speed improvements in the results screen, also stability fixes for explorations.<br />
Z4 - Speed improvements. Removed v0.51 version reference.<br />
v0.51 Z3 - Added Raid compatibility (use dungeon_finder), Major stability fixes for unstable connection, everything from vortex farming, future King Mog farming, and explorations should be way more resistant to network problems.<br />
v0.51 Z2 - Major code optimization for everything, explorations runs much faster and more stable. Handles all errors including the new unit data has changed error.<br />
v0.51 Z1 - Beginning to fix everything to conform to FFBE version 2.0, priority to normal battles. Added skills/magic use.</p><p>Video examples :</p><p>[video src="https://youtu.be/iA8WB_IbExQ"][/video]<br />
[video src="https://youtu.be/yc5iUZfemgI"][/video]<br />
[video src="https://youtu.be/v5dMd9IMFq0"][/video]<br />
 Mandatory Disclaimer: I take no responsibilities whatsoever for any and all damages caused by this script, however I do my best to erase or warn you about potential problems.</p><p>[a href="https://www.paypal.com/cgi-bin/webscr?cmd=_donations&amp;business=9K9U9UPXGMDSQ&amp;lc=ID&amp;item_name=ffbeAuto%20Z%20Fork&amp;item_number=ffbeAuto%20Z&amp;currency_code=USD&amp;bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted"]Donate[/a]</p>