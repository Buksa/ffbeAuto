-- Final Fantasy Brave Exvius: ffbeAuto -  Farming & Exploration
-- by tinotk
-- Memu 960x600 120dpi
-- http://ankulua.boards.net/thread/167/brave-exvius-ffbeauto-farming-explorations

ver = "ffbeAuto v0.52"

Settings:setCompareDimension(true, 600)
Settings:setScriptDimension(true, 600)
setImmersiveMode(true)

exploration = Pattern("exploration.png"):similar(0.5)
control = Pattern("control.png")
autobtn = Pattern("auto.png"):similar(0.9)
nextbtn = Pattern("next.png")
nextbtn2 = Pattern("next2.png")
next_i = Pattern("next_initial.png") --next btn at initial screen
backbtn = Pattern("back.png")
nobtn = Pattern("no_btn.png")
yesbtn = Pattern("yes_btn.png")
departbtn = Pattern("depart.png")
no_request = Pattern("no_request.png")
closebtn = Pattern("close.png")
rank_up = Pattern("rank_up.png")
no_nrg = Pattern("out_of_energy.png")
refill_lapis = Pattern("refill_lapis.png")
refill_item = Pattern("refill_item.png")
continue_ask = Pattern("continue_explore.png")
explore_yes = Pattern("explore_yes.png")
explore_continue = Pattern("explore_continue.png")
explore_leave = Pattern("explore_leave.png")
locked_chest = Pattern("locked_chest.png")
results = Pattern("results.png")
results_big = Pattern("results_big.png")
menu = Pattern("menu.png")
gold_coin = Pattern("gold_coin.png")
menu_back = Pattern("menu_back.png")
sense_hostile = Pattern("sense_hostile.png")
battle_won = Pattern("battle_won.png")
battle_won2 = Pattern("battle_won2.png")
dungeon = Pattern("dungeon.png")
connection_error = Pattern("connection_error.png")
connect_ok = Pattern("connect_ok.png")
no_companion = Pattern("no_companion.png")

lagx = 1.0
--colosseumTimer = Timer() -- set timer for colosseum schedule
alt_step=true
gold_reg = nil
tempbtn = nil
battle_counter = 0
screen = getAppUsableScreenSize()
width = screen:getX(); height = screen:getY()
left_reg = Region(0,0,300,1200)
top_reg = Region(0,0,600,480)
bottom_reg = Region(0,480,600,600)
control_reg = Region(0,900,600,300)
--mid_reg = Region(width/4,height/4,width/2,height/2)
r_x = width/4; r_y = height/4; r_w = width/2; r_h = height/2
mid_reg = Region(r_x,r_y,r_w,r_h)
--mid_reg = Region(150,240,300,480)
center = Location(300,480)
diff = 100
up = {center:offset(0,-diff)}
down = {center:offset(0,diff)}
left = {center:offset(-diff,0)}
right = {center:offset(diff,0)}
ul = {center:offset(-diff,-diff)}
ur = {center:offset(diff,-diff)}
dl = {center:offset(-diff,diff)}
dr = {center:offset(diff,diff)}

top = Location(300,150)
bottom = Location(300,750)
rain = {Pattern("rain_up.png"):similar(0.9),Pattern("rain_down.png"):similar(0.9),Pattern("rain_left.png"):similar(0.9),Pattern("rain_right.png"):similar(0.9),
		Pattern("rain_ul.png"):similar(0.9),Pattern("rain_ur.png"):similar(0.9),Pattern("rain_dl.png"):similar(0.9),Pattern("rain_dr.png"):similar(0.9)}

worldmap = {}
worldmap["maranda_coast"] = Pattern("wm_maranda_coast.png")
worldmap["dwarves_forge"] = Pattern("wm_dwarves_forge.png")
worldmap["earth_shrine"] = Pattern("wm_earth_shrine.png")
worldmap["fulan_pass"] = Pattern("wm_fulan_pass.png")
worldmap["phantom_forest"] = Pattern("wm_phantom_forest.png")

farm = {}
farm["earth_shrine_entrance"] = Pattern("earth_shrine_entrance.png")
farm["earth_shrine_exit"] = Pattern("earth_shrine_exit.png")
farm["earth_shrine_exploration"] = Pattern("earth_shrine_exploration.png")
farm["phantom_forest_exploration"] = Pattern("phantom_forest_exploration.png")
farm["fulan_pass_exploration"] = Pattern("fulan_pass_exploration.png")
farm["maranda_coast_exploration"] = Pattern("maranda_coast_exploration.png")
farm["dalnakya_cavern_harvest_exploration"] = Pattern("dalnakya_cavern_harvest.png")
farm["dungeon_finder"] = Location(0,0)
farm["enchanted_maze"] = exploration
farm["orbonne_monastery_vault_exploration"] = Pattern("vault_explore.png")
farm["free_farm"] = exploration

custom = {} -- for custom path name
explorePath = {}
explorePath["earth_shrine_exploration"] ="up,2500|findmove|down,1|left,3500|right,3|up,5000|right,6000|down,1|right,4000|left,3|down,3000|right,1000|down,500|left,500|up,500|left,1000|up,8000|down,1|right,1000|up,1000|left,500|up,1|left,500|up,1|left,1|up,3000|down,3000|right,1000|down,2000|up,1|left,5000|right,6|up,6000|left,500|down,500,collect3|up,500|right,3|up,2500"
explorePath["phantom_forest_exploration"] = "left,1|findmove|left,3000|down,1000|left,3000|right,2|up,2000|left,1000|up,2000|right,2500|up,1500|down,1500|left,2500|right,1|battle,ud,700,up|up,3000|right,3000|up,2000|right,3000|up,2000|left,2500|up,500|right,2000|down,500|right,500|down,2000|left,3000|down,2500|left,3000|down,1000|left,2000|up,2000|left,3000|down,4000|left,500|down,2500|left,1500|right,1|up,2000|right,2000|up,5000|right,500|up,4000|right,2000|up,500|left,4000|down,500|left,2000"
explorePath["fulan_pass_exploration"] = "up,2000|left,2500|up,1000|left,5|up,3000|right,1|left,1|down,3000|left,1500|up,1500|left,1500|up,3000|right,3000|up,2500|left,1000|up,500|left,2500|up,3000|left,1500|right,1500|down,3000|right,3000|down,2|right,3000|up,2000|right,3500|up,2000|left,3000|up,2000|left,1|up,3000|right,3500|up,5000|down,2|right,2000|up,3000|left,4000|right,4000|down,3000|left,5000|up,500|left,1000|down,500|left,1000|down,2000|left,3500|up,1500|left,1500|up,3000"
explorePath["maranda_coast_exploration"] = "down,500|findmove|down,8000|up,13|left,5000|down,1000|right,10|up,3500,collect1|left,500|down,5000|up,7|battle,lr,2900,left|left,10000|up,4000|left,4000|up,2000,collect2|down,2000|up,2|left,3000|left,4000,zone2|findmove|down,500,collect3|right,4000|left,2|down,3000|left,500|down,3000|left,1000|up,1000|left,4000|right,2|up,2000|left,15|down,3000|left,1500|up,2000|left,1000,collect4|right,2000|up,3000|battle,lr,7300,left|left,8000|up,3000|right,1500|up,2000|right,1500|up,1000|right,2000|down,500,collect5|left,2000|down,1500|left,3000|right,3|up,2000"
explorePath["dalnakya_cavern_harvest_exploration"] = "down,1000|right,1500|up,1000|right,4500|down,1000|right,3500|up,2|left,2000,collect1|down,2|left,3000|up,1000|left,9|down,4000|left,1000|down,2|left,1|down,6,collect2|right,1500|down,2000|left,1000|down,1000|left,1000|down,6|right,2000|up,2|right,3000|up,1000|right,1500,collect3|left,1500|down,2000|left,3000|down,1000|left,2000|down,1500|left,1500|down,2000|left,1500|down,1500|left,1500|down,3000|down,1500,zone2|left,1500|down,1|left,1000,collect4|right,2000|up,3|right,1500|down,1500|right,2000|up,1000|right,1000|up,1500|right,3000,collect5|left,3000|down,1500|left,1000|down,1000|left,2000|down,3000|down,3000,bosszone|down,3000|down,1500|down,1500,extraforboss|right,1500|down,3000|down,2000,3collectzone|up,2|right,1500,collect|left,1|up,2|left,1500|right,1500|down,3000"
explorePath["orbonne_monastery_vault_exploration"] = "up,1000|findmove|down,1|left,1000,collect1|up,2500|right,1000|up,1000|left,1500|up,2000|up,2000,collect2|down,2000|right,1000|down,500|right,1000|down,500,collect3|up,500|left,5|down,2000|right,2000|down,2000|left,2000|up,1000|left,2000|down,9|left,4|up,2000|left,3000|right,2|up,1500|left,2000|left,2|down,1500|right,1500|up,1500|right,2000|down,1500|right,2000|down,2000|up,1|left,500|down,500|left,500|up,500|left,500|up,500|left,16|down,5000|right,3500|up,2000|down,1|right,3000|down,2000|left,5000,collect5|down,4000|right,6000|right,2000"

waitmsg = {"Changing diaper", "Feeding baby", "Warming bottle", "Bathing baby", "Making coffee", "Burping baby"}

function score(target)
	if(exists(target)) then
		toast(target..getLastMatch():getScore())
	else
		toast("  not found")
	end
end

function string:save(filename)
	local f = io.open(scriptPath()..filename, "a+")
	f:write(self.."\t"..os.date().."\n")
	f:close()
end

function string:split(delimiter)
  local result = { }
  local from  = 1
  local delim_from, delim_to = string.find( self, delimiter, from  )
  while delim_from do
    table.insert( result, string.sub( self, from , delim_from-1 ) )
    from  = delim_to + 1
    delim_from, delim_to = string.find( self, delimiter, from  )
  end
  table.insert( result, string.sub( self, from  ) )
  return result
end

function runlog(str,istxt)
	if(not istxt) then
		score = getLastMatch():getScore()
		if(score ~= nil) then
			str = str.."  "..getLastMatch():getScore()
		else
			str = str.."  nil"
		end
	end
	toast(str)
	str:save("run.log")
end

function getPath(str,pathIndex)
	if not pathIndex then pathIndex = 1 end
	local output = {}
	local temp = str:split("|")
	for i=pathIndex,#temp do output[#output+1] = temp[i] end
	return output
end

--Custom path
local f = io.open(scriptPath().."custom.txt", "r")
if( f ~= nil) then 
	custom_tbl = f:read("*all"):split("\n"); f:close()
	for i,v in pairs(custom_tbl) do 
		temp = custom_tbl[i]:split(":")
		table.insert(custom,"custom_"..temp[1])
		explorePath["custom_"..temp[1]] = temp[2]
	end
end

function findMove()
	local center = nil
	toast("Finding Rain's position...")
	for i=1,#rain do 
		if(debug_mode) then toast("Hightlighting Rain region"); mid_reg:save("rain_reg.png"); mid_reg:highlight(5); runlog("Checking Rain#"..i) end
		if(mid_reg:exists(rain[i])) then 
			center = mid_reg:getLastMatch()
			if(debug_mode) then runlog("Found Rain#"..i) end
			center:highlight(.5); up[2] = center:getCenter()
			center:offset(0,70):highlight(.5); down[2] = up[2]:offset(0,115)
			center:offset(-35,50):highlight(.5); left[2] = up[2]:offset(-30,75)
			center:offset(35,50):highlight(.5); right[2] = up[2]:offset(30,75)
			ul[2] = up[2]:offset(-30,0)
			ur[2] = up[2]:offset(30,0)
			dl[2] = down[2]:offset(-30,0)
			dr[2] = down[2]:offset(30,0)
			break
		end
	end
	if(center == nil) then 
		toast("Can't find Rain, turning off Step by click mode"); alt_step=false 
		if(debug_mode) then runlog("Rain not found",true) end
	end
end

function selectDungeon()
	toast("Finding available dungeon...")
	dungeonList = findAllNoFindException(dungeon)
	if(debug_mode) then runlog("Custom dungeon found: "..#dungeonList,true) end
	dialogInit()
	addRadioGroup("custom_dungeon",1)
	for i=1,#dungeonList do
		addRadioButton("Dungeon #"..i,i)
	end
	dialogShow("Select Dungeon")
	farm["dungeon_finder"] = dungeonList[custom_dungeon]
	if(debug_mode) then runlog("Custom dungeon select: "..custom_dungeon,true) end
end

function findBattle(loot_direction,limit,exit_direction)
	for i=0, 80 do 
		toast("Lap "..i)
		local count = battle_counter
		if(loot_direction == "lr") then
			go("left",4000*lagx)
			go("right",4000*lagx)
		elseif(loot_direction == "ud") then
			go("up",4000*lagx)
			go("down",4000*lagx)
		end
		if(((i>=30 and i%5==0) or (count>=14 and count<battle_counter)) and checkGold() >= limit) then go(exit_direction,4000); break end
		--if(battle_counter >= limit) then go(exit_direction,4000); break end
	end
end

function checkGold()
	local gold
	for i=1,3 do
		existsClick(menu)
		wait(3)
		if(exists(gold_coin)) then
			if(gold_reg == nil) then 
				gold_reg = Region(getLastMatch():getX()+50,getLastMatch():getY(),135,35)
				if(debug_mode) then gold_reg:save("gold_reg.png") end
			else
				if(debug_mode) then toast("Highlighting gold_reg"); gold_reg:highlight(2) end
				gold = numberOCRNoFindException(gold_reg,"gil")
				existsClick(menu_back,2)
				toast(gold.." gold")
				if(debug_mode) then runlog("Gold check: "..gold,true) end
				return gold
			end
		else
			wait(2)
		end
	end	
end

function resultsExit()
	if(debug_mode) then runlog("Results exit start",true) end
	for i=0, 100 do
		if(i%5==0) then connectionCheck() end
		gameOver()
		if(exists(rank_up)) then 
			if(debug_mode) then runlog("Rank up",true) end
			click(getLastMatch())
		end
		top_reg:existsClick(results_big)
		if(bottom_reg:existsClick(nextbtn) and debug_mode) then runlog("\tnextbtn") end
		if(bottom_reg:existsClick(nextbtn2) and debug_mode) then runlog("\tnextbtn2") end
		if(left_reg:existsClick(no_request) and debug_mode) then runlog("\tDon\'t request") end
		if(exists(closebtn)) then 
			if(debug_mode) then runlog("\tclosebtn") end
			click(getLastMatch())
		end
		if(top_reg:exists(backbtn)) then break end
		wait(1)
	end
	toast("Results exit done")
	if(debug_mode) then runlog("Results exit done\n",true) end
end

function exploreBattle()
	--boss = (boss or false)
	if(debug_mode) then runlog("Explore battle start",true) end
	for i=0,30 do
		if(existsClick(autobtn) and debug_mode) then getLastMatch():highlight(3); toast("autobtn "..getLastMatch():getScore()); runlog("\tautobtn") end
		wait(1)
		if(exists(results)) then
			if(debug_mode) then runlog("Result screen") end
			click(getLastMatch())
		end
		if(bottom_reg:exists(menu) or top_reg:exists(battle_won) or top_reg:exists(battle_won2) or top_reg:exists(continue_ask)) then break end
	end
	battle_counter = battle_counter+1
	toast("Battle done: "..battle_counter)
	if(debug_mode) then runlog("Battle done: "..battle_counter,true) end
	wait(3)
end

function exploreLeave()
	for i=0,2 do
		click(center)
		wait(3)
		existsClick(explore_leave)
		existsClick(explore_yes)
	end
end

function bossBattle()
	toast("Boss battle...")
	if(debug_mode) then runlog("Boss battle") end
	for i=0,2 do
		click(center)
		wait(3)
		existsClick(explore_yes)
		if(control_reg:exists(autobtn)) then exploreBattle(); break end
	end
	for i=0,3 do
		wait(3)
		existsClick(battle_won)
		existsClick(battle_won2)
		existsClick(explore_continue)
		if(bottom_reg:exists(menu)) then break end
	end
end

function finishExplore()
	if(top_reg:exists(sense_hostile)) then 
		if(debug_mode) then runlog("Boss found") end
		bossBattle()
	else exploreLeave() end
	toast("Explore Finished!")
	if(debug_mode) then runlog("Explore Finished!",true) end
end

function connectionCheck()
	if(debug_mode) then runlog("Connection check",true) end
	if(exists(connection_error)) then 
		if(debug_mode) then runlog("\tConnection error") end
		if(existsClick(connect_ok) and debug_mode) then runlog("\tconnect_ok") end
	end
end

function freeFarm()
	toast("Free farm")
	dialogInit()
	addRadioGroup("direction",1)
	addRadioButton("Left-Right",1)
	addRadioButton("Up-Down",2)
	dialogShow("Which direction?")
	findMove()
	while true do
		if(direction == 1) then
			go("left",4000*lagx)
			go("right",4000*lagx)
		elseif(direction == 2) then
			go("up",4000*lagx)
			go("down",4000*lagx)
		end
	end
end

function enchantedMaze()
	local lv1 = Pattern("enchanted_maze_lv1.png")
	local lv2 = Pattern("enchanted_maze_lv2.png")
	local lv3 = Pattern("enchanted_maze_lv3.png")
	local lv4 = Pattern("enchanted_maze_lv4.png")
	local lv5 = Pattern("enchanted_maze_lv5.png")
	local lvexit = Pattern("enchanted_maze_exit.png")
	
	go("up",4000)
	if(exists(lv1)) then
		go("up",4000)
	end
	if(exists(lv2)) then 
		go("up",4000) 
	end
	if(exists(lv3)) then 
		findMove()
		go("up",1)
		findMove()
		go("right",1)
		go("up",2000)
		go("left",3)
		go("up",4000)
	end
	if(exists(lv4)) then
		findMove()
		go("up",1)
		findMove()
		go("left",1)
		go("up",2000)
		go("right",3)
		go("up",1000)
	end
	if(exists(lv5)) then
		go("up",1000)
		go("left",2000)
		go("up",2000)
	end
	if(exists(lvexit)) then
		go("up",2000)
	end
end

function fFarm(location)
	--if(colosseumsched and colosseumTimer:check()>7200) then colosseumBattle() end
	if(string.match(location,"custom_")) then 
		existsClick(exploration)
		tempbtn = getLastMatch()
	elseif(location=="dungeon_finder") then
		--toast("Custom dungeon")
		click(farm[location])
		tempbtn = farm[location]
	else
		if(location=="orbonne_monastery_vault_exploration") then dragDrop(bottom,top);wait(3);dragDrop(bottom,top) end --swipe to vault explore section
		existsClick((farm[location]))
		tempbtn = getLastMatch()
	end
	--toast(location.."  "..getLastMatch():getScore())
	wait(5)
	if(exists(no_nrg)) then 
		if(debug_mode) then runlog("Out of energy") end
		if(refill) then 
			toast("Burning lapis..."); if(debug_mode) then runlog("\tRefill lapis") end
			existsClick(refill_lapis,3); wait(3); existsClick(yesbtn,5); wait(5)
		else bottom_reg:existsClick(backbtn,5); math.randomseed(os.time()); toast(waitmsg[math.random(#waitmsg)].. " now... Come back in 10 minutes."); wait(60*10); end
		if(location=="dungeon_finder") then click(farm[location])
		else existsClick((farm[location])) end
		wait(2)
	end
	if(top_reg:exists(backbtn,5)) then 
		if(bottom_reg:existsClick(next_i,5) and debug_mode) then runlog("Next_i") end
	end
	if(top_reg:exists(no_companion,5)) then
		tempbtn = top_reg:getLastMatch()
		if(debug_mode) then runlog("no_companion") end
	end
	if(top_reg:exists(backbtn,5)) then click(tempbtn) end
	wait(3+(2*lagx))
	if(existsClick(departbtn,2) and debug_mode) then
		runlog("Depart btn")
	end
	--toast("depart "..getLastMatch():getScore())
	wait(3+(2*lagx))
	if(string.match(location,"_exploration") or string.match(location,"custom_")) then explore2(location)
	elseif(location=="enchanted_maze") then enchantedMaze()
	elseif(location=="earth_shrine_exit") then esLBFarm()
	else
		for i=0,60 do
			if(i%5==0) then connectionCheck() end
			if(i%10==0) then gameOver() end
			if(existsClick(autobtn,1) and debug_mode) then runlog("autobtn") end
			if(exists(results_big)) then break end
		end
	end
	resultsExit() -- handle results screen
end

function go(loc,steps)
	steps = steps or 1
	if(step_mode==2) then  -- always single step
		if(steps > 100) then
			for i=1,steps/100 do --convert to single steps
				click((_G[loc])[2])
			end
			if(bottom_reg:exists(autobtn)) then exploreBattle(); go(loc,steps)
			elseif(top_reg:exists(sense_hostile)) then bossBattle() end
		else
			for i=1,steps do
				toast("Step #"..i.." of "..steps)
				if(alt_step) then click((_G[loc])[2])
				else
					--setDragDropTiming(100,20)
					dragDrop(center,(_G[loc])[1])
				end
				wait(2+(1*lagx)) --in case battle popup --in case battle popup
				if(bottom_reg:exists(autobtn,2)) then exploreBattle()
				elseif(top_reg:exists(sense_hostile)) then bossBattle() end
			end
		end
	else -- swiping
		if(steps > 20) then -- swiping for ms
			--toast("Going "..loc.." "..steps.."ms")
			if(debug_mode) then runlog("\tGoing "..loc.." "..steps.."ms",true) end
			setDragDropTiming(100,steps)
			dragDrop(center,_G[loc][1])
			if(bottom_reg:exists(autobtn)) then exploreBattle(); go(loc,steps)
			elseif(top_reg:exists(sense_hostile)) then bossBattle() end
		else
			for i=1,steps do -- single step click
				--toast("Step #"..i.." of "..steps)
				if(debug_mode) then runlog("\tStep #"..i.." of "..steps,true) end
				if(alt_step) then click((_G[loc])[2])
				else
					--setDragDropTiming(100,20)
					dragDrop(center,(_G[loc])[1])
				end
				wait(2+(1*lagx)) --in case battle popup
				if(bottom_reg:exists(autobtn,2)) then exploreBattle()
				elseif(top_reg:exists(sense_hostile)) then bossBattle() end
			end
		end
	end
end

function colosseumBattle()
	local home = Pattern("homeico.png")
	local col = Pattern("colosseum.png")
	local col_h = Pattern("colosseum_h.png")
	local enter = Pattern("colosseum_enter.png")
	local cbattle = backbtn:targetOffset(240,130) -- first colosseum rank
	local fight = Pattern("colosseum_fight.png")
	local no_orbs = Pattern("no_colosseum_orbs.png")
	local col_won = Pattern("colosseum_won.png")
	local home_bottom = Pattern("home_bottom.png")
	local world = Pattern("world.png")
	local world_h = Pattern("world_h.png")
	
	top_reg:existsClick(home); wait(3+(2*lagx))
	bottom_reg:existsClick(col); bottom_reg:existsClick(col_h); wait(3+(2*lagx))
	existsClick(enter); wait(3+(2*lagx))
	for i=0,2 do
		if(exists(no_orbs)) then 
			existsClick(nobtn);wait(3+(2*lagx)); break
		else
			click(cbattle); wait(3+(2*lagx)); click(cbattle); wait(3+(2*lagx))
			existsClick(fight); wait(3+(2*lagx))
			if(exists(no_orbs)) then existsClick(nobtn);wait(3+(2*lagx)); break end
			existsClick(autobtn,3)
			for i=0,45 do
				wait(2)
				existsClick(col_won)
				existsClick(connect_ok) -- Cleared reward
				existsClick(closebtn) -- Daily quest finish
				if(exists(backbtn)) then break end
				connectionCheck()
			end
		end
	end
	colosseumTimer:set() --reset colosseum timer
	bottom_reg:existsClick(home_bottom,1*lagx); wait(3+(2*lagx))
	if(not exists(world)) then bottom_reg:existsClick(home_bottom,1*lagx); wait(3+(2*lagx)) end
	existsClick(world); existsClick(world_h); wait(3+(2*lagx))
	click(center); wait(3+(2*lagx))
end

function gameOver()
	local revive = Pattern("lapis_revive.png")
	local giveup = Pattern("giveupnow.png")
	
	if(exists(revive)) then existsClick(nobtn); wait(3+(2*lagx)) end
	if(exists(giveup)) then existsClick(yesbtn); wait(3+(2*lagx)) end
end

function explore2(location)
	battle_counter = 0
	for i=0,60 do
		connectionCheck()
		if(exists(menu,1)) then break end
	end
	if(debug_mode) then runlog("Explore start",true) end
	toast("waiting 5 sec before starting "..location)
	wait(5)
	if(alt_step) then findMove() end
	for i,v in pairs(getPath(explorePath[location])) do
		if(v:split(",")[1]=="battle") then -- find battle
			if(loot) then findBattle(v:split(",")[2],tonumber(v:split(",")[3]),v:split(",")[4]) end
		elseif(v:split(",")[1]=="findmove") then findMove() -- update position
		else 
			if(tonumber(v:split(",")[2])>20) then
				go(v:split(",")[1],(tonumber(v:split(",")[2])*lagx))
			else
				go(v:split(",")[1],tonumber(v:split(",")[2]))  -- single steps
			end
		end
	end
	finishExplore()
end

function esLBFarm()
	for i=0,60 do
		if(i%5==0) then connectionCheck() end
		if(exists(autobtn)) then 
			if(debug_mode) then runlog("autobtn") end
			wait(2); click(getLastMatch():offset(135,-660)); click(getLastMatch()) -- single target a mob then auto
		end
		if(exists(results_big)) then break end -- battle done
	end
end

dialogInit()
farmList = {}

for i,v in pairs(farm) do
	farmList[#farmList+1] = i
end
for i,v in pairs(custom) do
	farmList[#farmList+1] = v
end

addTextView("Farm location:")
addSpinner("farmloc",farmList,"earth_shrine_entrance")
newRow()
addCheckBox("loot", "Find Battle?", false)
addCheckBox("dimscreen", "Dim screen?", false)
newRow()
--addCheckBox("colosseumsched", "Colosseum Schedule? **BETA**", false)
--newRow()
addCheckBox("debug_mode", "Debug mode?", false)
newRow()
addCheckBox("refill", "Refill Energy?", false)
newRow()
addTextView("Swipe mode")
addRadioGroup("trace_mode",2)
addRadioButton("1",1)
addRadioButton("2",2)
--addRadioButton("3",3)
newRow()
addTextView("Use Click for step:")
addRadioGroup("step_mode",1)
addRadioButton("Single step only",1)
addRadioButton("Always **BETA**",2)
newRow()
addTextView("Lag multiplier:")
addEditNumber("lagx",1.5)

dialogShow(ver)

config_log = "\nApp Screen size: "..screen:getX().."x"..screen:getY().."\tr_x: "..r_x.."\tr_y: "..r_y.."\tr_w: "..r_w.."\tr_h: "..r_h..":\nTask: "..farmloc.."\nFind Battle: "..tostring(loot).."\nDim: "..tostring(dimscreen).."\nRefill: "..tostring(refill).."\nSwipe mode: "..trace_mode.."\nStep mode: "..step_mode.."\nLagx: "..lagx

if(trace_mode == 1) then
	setDragDropStepCount(50)
	setDragDropStepInterval(1)
	setDragDropTiming(100,20)
elseif(trace_mode == 2) then
	setDragDropStepCount(100)
	setDragDropStepInterval(0)
	setDragDropTiming(100,20)
end

if(debug_mode) then config_log:save("run.log") end
if(dimscreen) then setBrightness(0) end --dim screen

if(farmloc == "dungeon_finder") then selectDungeon() -- get custom dungeon location
elseif(farmloc == "free_farm") then freeFarm() end 

while true do
	fFarm(farmloc)
end