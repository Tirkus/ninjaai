-- Generated from template

if HardcoreNinjaGameMode == nil then
  HardcoreNinjaGameMode = class({})
end

require('libraries/timers')

function Precache( context )

  PrecacheUnitByNameSync("npc_dota_hero_juggernaut", context)
  PrecacheUnitByNameSync("npc_dota_hero_invoker", context)
  PrecacheUnitByNameSync("npc_dota_hero_templar_assassin", context)
  PrecacheUnitByNameSync("npc_dota_hero_magnataur", context)
  PrecacheUnitByNameSync("npc_dota_hero_queenofpain", context)
  PrecacheUnitByNameSync("npc_dota_hero_phantom_assassin", context)
  PrecacheUnitByNameSync("npc_dota_hero_legion_commander", context)  
  
  PrecacheModel("models/items/juggernaut/thousand_faces_wraps/thousand_faces_wraps.mdl", context )
  PrecacheModel("models/items/juggernaut/thousand_faces_hakama/thousand_faces_hakama.mdl", context )
  PrecacheModel("models/items/juggernaut/thousand_faces_vest/thousand_faces_vest.mdl", context )
  PrecacheModel("models/items/juggernaut/thousand_faces_mask/thousand_faces_mask.mdl", context )
  PrecacheModel("models/items/juggernaut/weapon_bladefury512/weapon_bladefury512.mdl", context )
  PrecacheModel("models/items/juggernaut/jugg_flag/jugg_flag.mdl", context )
  PrecacheModel("models/items/juggernaut/thousand_faces_katana/thousand_faces_katana.mdl", context )
  PrecacheModel("models/items/juggernaut/juggernaut_sword_cursed/juggernaut_sword_cursed.mdl", context )
  PrecacheModel("models/items/juggernaut/dragon_sword.mdl", context )
  PrecacheModel("models/items/juggernaut/armour_of_the_exiled_ronin/armour_of_the_exiled_ronin.mdl", context )
  PrecacheModel("models/items/juggernaut/izoku/izoku.mdl", context )
  PrecacheModel("models/items/juggernaut/sturdy_bracers_of_the_exiled_ronin/sturdy_bracers_of_the_exiled_ronin.mdl", context )
  PrecacheModel("models/items/juggernaut/fire_of_the_exiled_ronin/fire_of_the_exiled_ronin.mdl", context )
  PrecacheModel("models/items/juggernaut/burden_of_the_exiled_ronin/burden_of_the_exiled_ronin.mdl", context )
  PrecacheModel("models/items/juggernaut/vestments_of_the_exiled_ronin/vestments_of_the_exiled_ronin.mdl", context )
  PrecacheModel("models/items/juggernaut/leg_gaurds_of_kogu/leg_gaurds_of_kogu.mdl", context )
  PrecacheModel("models/items/juggernaut/scowl_of_kogu/scowl_of_kogu.mdl", context )
  PrecacheModel("models/items/juggernaut/the_discipline_of_kogu/the_discipline_of_kogu.mdl", context )
  PrecacheModel("models/items/juggernaut/armor_of_kogu/armor_of_kogu.mdl", context )
  PrecacheModel("models/items/juggernaut/bracers_of_kogu/bracers_of_kogu.mdl", context )
  PrecacheModel("models/items/juggernaut/the_elegant_stroke/the_elegant_stroke.mdl", context )
  PrecacheModel("models/items/juggernaut/wandering_demon_arms/wandering_demon_arms.mdl", context )
  PrecacheModel("models/items/juggernaut/wandering_demon_mask/wandering_demon_mask.mdl", context )
  PrecacheModel("models/items/juggernaut/wandering_demon_legs/wandering_demon_legs.mdl", context )
  PrecacheModel("models/items/juggernaut/wandering_demon_sword/wandering_demon_sword.mdl", context )
  PrecacheModel("models/items/juggernaut/wandering_demon_top/wandering_demon_top.mdl", context )
  PrecacheModel("models/items/juggernaut/juggernaut_horse_sword/juggernaut_horse_sword.mdl", context )
  PrecacheModel("models/items/juggernaut/jg_weapon_files2/jg_weapon_files2.mdl", context )
  PrecacheModel("models/items/juggernaut/gifts_of_the_vanished_head/gifts_of_the_vanished_head.mdl", context )
  PrecacheModel("models/items/juggernaut/gifts_of_the_vanished_weapon/gifts_of_the_vanished_weapon.mdl", context )
  PrecacheModel("models/items/juggernaut/gifts_of_the_vanished_legs/gifts_of_the_vanished_legs.mdl", context )
  PrecacheModel("models/items/juggernaut/gifts_of_the_vanished_arms/gifts_of_the_vanished_arms.mdl", context )
  PrecacheModel("models/items/juggernaut/gifts_of_the_vanished_back/gifts_of_the_vanished_back.mdl", context )
  PrecacheModel("models/items/juggernaut/bladesrunner_back/bladesrunner_back.mdl", context )
  PrecacheModel("models/items/juggernaut/bladesrunner_legs/bladesrunner_legs.mdl", context )
  PrecacheModel("models/items/juggernaut/bladesrunner_head/bladesrunner_head.mdl", context )
  PrecacheModel("models/items/juggernaut/jadeserpent_weapon/jadeserpent_weapon.mdl", context )
  PrecacheModel("models/items/juggernaut/bladesrunner_arms/bladesrunner_arms.mdl", context )
  PrecacheModel("models/items/juggernaut/bladesrunner_weapon/bladesrunner_weapon.mdl", context )
  PrecacheModel("models/items/juggernaut/dc_armsupdate/dc_armsupdate.mdl", context )
  PrecacheModel("models/items/juggernaut/dc_weaponupdate/dc_weaponupdate.mdl", context )
  PrecacheModel("models/items/juggernaut/dc_backupdate4/dc_backupdate4.mdl", context )
  PrecacheModel("models/items/juggernaut/dc_headupdate/dc_headupdate.mdl", context )
  PrecacheModel("models/items/juggernaut/dc_legsupdate5/dc_legsupdate5.mdl", context )
  PrecacheResource( "particle", "particles/econ/items/juggernaut/bladekeeper_swordglow.vpcf", context )
  PrecacheResource( "particle", "particles/econ/items/juggernaut/bladekeeper_headglow.vpcf", context )
  PrecacheResource( "particle", "particles/econ/items/juggernaut/bladekeeper_swordglow.vpcf", context )
  PrecacheResource( "particle", "particles/econ/items/juggernaut/jugg_sword_dragon.vpcf", context )
  PrecacheResource( "soundfile", "soundevents/custom_sounds.vsndevts", context )
  

end

-- Create the game mode when we activate
function Activate()
  GameRules.AddonTemplate = HardcoreNinjaGameMode()
  GameRules.AddonTemplate:InitGameMode()
end

function HardcoreNinjaGameMode:InitGameMode()
  GameMode = GameRules:GetGameModeEntity()
  goodGuysTeamName = "Radiant"
  badGuysTeamName = "Dire"
  goodGuysTeamNameSet = false
  badGuysTeamNameSet = false
  GameStarted = false
  roundGoing = false
  ROUND = 1
  goodGuysScore = 0
  badGuysScore = 0
  timeToStart = 400
  GameRules:SetHeroSelectionTime(0)
  GameRules:SetPreGameTime(0)
  GameRules:GetGameModeEntity():SetThink("GameStartMsg", self, 0)
  GameRules:SetSameHeroSelectionEnabled(true)
  GameMode:SetTopBarTeamValuesOverride(true)
  GameMode:SetTopBarTeamValuesVisible(true)
  GameMode:SetStashPurchasingDisabled(true)
  GameMode:SetBuybackEnabled(false)
  GameMode:SetStickyItemDisabled(true)
  GameMode:SetRecommendedItemsDisabled(true)
  GameMode:SetCustomGameForceHero( "npc_dota_hero_juggernaut" )
  GameRules:SetGoldPerTick(0)
  GameRules:SetUseBaseGoldBountyOnHeroes(true)
  GameMode:SetCameraDistanceOverride(1320)
  GameRules:SetFirstBloodActive(false)
  GameRules:GetGameModeEntity():SetHUDVisible( DOTA_HUD_VISIBILITY_INVENTORY_SHOP, false )
  GameRules:GetGameModeEntity():SetHUDVisible( DOTA_HUD_VISIBILITY_INVENTORY_COURIER, false )
  GameRules:GetGameModeEntity():SetHUDVisible( DOTA_HUD_VISIBILITY_INVENTORY_QUICKBUY, false )
  GameRules:GetGameModeEntity():SetHUDVisible( DOTA_HUD_VISIBILITY_SHOP_SUGGESTEDITEMS, false )
  GameRules:GetGameModeEntity():SetHUDVisible( DOTA_HUD_VISIBILITY_INVENTORY_GOLD, false )
  GameMode:SetFixedRespawnTime(1)
  GameRules:SetHeroRespawnEnabled(false)

  ListenToGameEvent('dota_player_pick_hero', Dynamic_Wrap(HardcoreNinjaGameMode, 'HeroPicked'), self)
  ListenToGameEvent('dota_player_gained_level', Dynamic_Wrap(HardcoreNinjaGameMode, 'HeroGainedLevel'), self)
  ListenToGameEvent('player_chat', Dynamic_Wrap(HardcoreNinjaGameMode, 'TeamNameChat'), self)
  
  ListenToGameEvent('player_connect_full', Dynamic_Wrap(HardcoreNinjaGameMode, 'OnConnectFull'), self)
  ListenToGameEvent('player_disconnect', Dynamic_Wrap(HardcoreNinjaGameMode, 'OnDisconnect'), self)
  ListenToGameEvent("game_rules_state_change", Dynamic_Wrap(HardcoreNinjaGameMode, 'OnGameRulesStateChange'), self)
  ListenToGameEvent("player_reconnected", Dynamic_Wrap(HardcoreNinjaGameMode, 'OnPlayerReconnected'), self)
  self.vUserIds = {}
  -- GameRules:AddBotPlayerWithEntityScript("npc_dota_hero_juggernaut", "Zik", DOTA_TEAM_BADGUYS, "ai/juggernaut.lua" , true)
end

function HardcoreNinjaGameMode:OnPlayerReconnected()
	HardcoreNinjaGameMode:EndRoundCheck()
end

function HardcoreNinjaGameMode:OnGameRulesStateChange()
  if GameRules:State_Get() == DOTA_GAMERULES_STATE_HERO_SELECTION then
	timeToStart = 15
	   	Timers:CreateTimer({
		endTime = 15, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
		callback = function()
      	HardcoreNinjaGameMode:Respawn()
    end
  })
  end
end

function HardcoreNinjaGameMode:OnConnectFull(keys)
  local entIndex = keys.index+1
  -- The Player entity of the joining user
  local ply = EntIndexToHScript(entIndex)
  local userID = keys.userid
  self.vUserIds = self.vUserIds or {}
  self.vUserIds[userID] = ply
end

function HardcoreNinjaGameMode:OnDisconnect(keys)
	local playerID = self.vUserIds[keys.userid]:GetPlayerID()
	local player = PlayerResource:GetPlayer(playerID)
	local hero = player:GetAssignedHero()
	if hero ~= nil then
		hero:Kill(nil, nil)
	end
	HardcoreNinjaGameMode:EndRoundCheck()
end

function HardcoreNinjaGameMode:TeamNameChat(keys)
	local mensagem = string.sub(keys.text, 0, 7)
	if mensagem == "-tname " then
		local playerID = self.vUserIds[keys.userid]:GetPlayerID()
		local player = PlayerResource:GetPlayer(playerID)
		local teamName = string.sub(keys.text, 8, 23)
		if player:GetTeam() == 2 then 
			if player:GetAssignedHero() ~= nil then
				if goodGuysTeamNameSet == false then
				goodGuysTeamNameSet = true
				goodGuysTeamName = teamName
				GameRules:SendCustomMessage("Radiant team name was set to " .. teamName,0,0)
				end
			end
		end
		if player:GetTeam() == 3 then
			if player:GetAssignedHero() ~= nil then
				if badGuysTeamNameSet == false then
				badGuysTeamNameSet = true
				badGuysTeamName = teamName
				GameRules:SendCustomMessage("Dire team name was set to " .. teamName,0,0)
				end
			end
		end	
	end
end

function HardcoreNinjaGameMode:HeroGainedLevel(keys)
  local player = nil
   for i = 0, 9, 1 do
    if PlayerResource:GetPlayer(i) ~= nil then
      player = PlayerResource:GetPlayer(i)
      local hero = player:GetAssignedHero()
      hero:SetAbilityPoints(0)
    end 
   end
end

function HardcoreNinjaGameMode:GameStartMsg()
  GameRules:SendCustomMessage("Game Starts in " .. timeToStart .. " seconds",0,0)
  timeToStart = timeToStart - 1
  if timeToStart > 0 then
    return 1
  else
    return nil
  end
end

function HardcoreNinjaGameMode:HeroPicked(keys)
  local hero = EntIndexToHScript (keys.heroindex)
  local player = EntIndexToHScript (keys.player)
  local playerId = player:GetPlayerID()
        PlayerResource:SetGold(playerId, 0, false)
        hero:SetAbilityPoints(0)
        hero:FindAbilityByName("queenofpain_blink_datadriven"):SetLevel(1)
        hero:FindAbilityByName("deflect"):SetLevel(1)
        hero:FindAbilityByName("sword_wave"):SetLevel(1)
        hero:FindAbilityByName("dagger_throw"):SetLevel(1)
		hero:FindAbilityByName("blood_spatter"):SetLevel(1)
		hero:AddAbility("round_start_inv")
		hero:FindAbilityByName("round_start_inv"):SetLevel(1)
		--hero:SetHasInventory( false )
  local item = CreateItem("item_quelling_blade", hero, hero)
		hero:AddItem(item)
  local item2 = CreateItem("item_refresher_datadriven", hero, hero)
        hero:AddItem(item2)
		if (GameStarted) then
			hero:RemoveModifierByName("round_invulnerability")
			hero:RemoveAbility("round_start_inv")
		end
end


function HardcoreNinjaGameMode:Respawn ()

  EmitGlobalSound("Hero_LegionCommander.PressTheAttack")
  GridNav:RegrowAllTrees()
  roundGoing = true
  
  local player = nil
  if ROUND == 1 then
    ListenToGameEvent('entity_killed', Dynamic_Wrap(HardcoreNinjaGameMode, 'hero_killed'), self)
    GameStarted = true
  end
  HardcoreNinjaGameMode:SendAMsg("Round " .. ROUND .. "!")
  for i = 0, 9, 1 do
    if PlayerResource:GetPlayer(i) ~= nil then
      player = PlayerResource:GetPlayer(i)
      PlayerResource:SetGold(i, 0, false)
      local hero = player:GetAssignedHero()
		--hero:SetHasInventory( false )
      if hero:IsRealHero() then
        hero:RespawnHero(false,false)
        hero:AddAbility("round_start_inv")
        hero:FindAbilityByName("round_start_inv"):SetLevel(1)
        hero:SetAbilityPoints(0)
        hero:FindAbilityByName("queenofpain_blink_datadriven"):SetLevel(1)
        hero:FindAbilityByName("deflect"):SetLevel(1)
        hero:FindAbilityByName("sword_wave"):SetLevel(1)
        hero:FindAbilityByName("dagger_throw"):SetLevel(1)
		hero:FindAbilityByName("blood_spatter"):SetLevel(1)
      end
    end
  end
  ROUND = ROUND + 1
    Timers:CreateTimer({
    endTime = 1, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
    callback = function()
      HardcoreNinjaGameMode:RemoveInv()
    end
  })
  return nil
end

function HardcoreNinjaGameMode:RemoveInv()
  local player = nil
   for i = 0, 9, 1 do
    if PlayerResource:GetPlayer(i) ~= nil then
      player = PlayerResource:GetPlayer(i)
      local hero = player:GetAssignedHero()
      hero:RemoveModifierByName("round_invulnerability")
      hero:RemoveAbility("round_start_inv")
    end 
   end
   return nil  
end

function HardcoreNinjaGameMode:EndRoundCheck()
	if (roundGoing) then
		if (HardcoreNinjaGameMode:numberOfBadGuysAlive() == 0 and HardcoreNinjaGameMode:numberOfGoodGuysAlive() > 0) then
		EmitGlobalSound("Hero_LegionCommander.Duel.Victory")
		goodGuysScore = goodGuysScore + 1
		GameRules:SendCustomMessage(goodGuysTeamName .. " Wins the Round!",0,0)
		HardcoreNinjaGameMode:SendAMsg(goodGuysTeamName .. "  " .. goodGuysScore .. " - " .. badGuysScore .. "  " .. badGuysTeamName)
		GameMode:SetTopBarTeamValue ( DOTA_TEAM_BADGUYS, badGuysScore)
		GameMode:SetTopBarTeamValue ( DOTA_TEAM_GOODGUYS, goodGuysScore )
		roundGoing = false
			if goodGuysScore == 15 then
				HardcoreNinjaGameMode:GoodGuysVictory()
			else
				if goodGuysScore == 14 and badGuysScore == 14 then
					HardcoreNinjaGameMode:lastRound()
				else
				    Timers:CreateTimer({
					endTime = 5, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
					callback = function()
					HardcoreNinjaGameMode:Respawn()
					end
					})
				end
			end
		end

		if (HardcoreNinjaGameMode:numberOfGoodGuysAlive() == 0 and HardcoreNinjaGameMode:numberOfBadGuysAlive() > 0) then
			EmitGlobalSound("Hero_LegionCommander.Duel.Victory")
			badGuysScore = badGuysScore + 1
			GameRules:SendCustomMessage(badGuysTeamName .. " Wins the Round!",0,0)
			HardcoreNinjaGameMode:SendAMsg(goodGuysTeamName .. "  " .. goodGuysScore .. " - " .. badGuysScore .. "  " .. badGuysTeamName)
			GameMode:SetTopBarTeamValue ( DOTA_TEAM_BADGUYS, badGuysScore)
			GameMode:SetTopBarTeamValue ( DOTA_TEAM_GOODGUYS, goodGuysScore )
			roundGoing = false
			if badGuysScore == 15 then
				HardcoreNinjaGameMode:BadGuysVictory()
			else
				if goodGuysScore == 14 and badGuysScore == 14 then
					HardcoreNinjaGameMode:lastRound()
				else
					Timers:CreateTimer({
					endTime = 5, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
					callback = function()
					HardcoreNinjaGameMode:Respawn()
					end
					})
				end
			end
		end

		if (HardcoreNinjaGameMode:numberOfBadGuysAlive() == 0 and HardcoreNinjaGameMode:numberOfGoodGuysAlive() == 0) then
			EmitGlobalSound("Hero_LegionCommander.Duel.Victory")
			GameRules:SendCustomMessage("Round Draw!",0,0)
				Timers:CreateTimer({
				endTime = 5, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
				callback = function()
				HardcoreNinjaGameMode:Respawn()
				end
				})
			HardcoreNinjaGameMode:SendAMsg("Round Draw!")
			GameMode:SetTopBarTeamValue ( DOTA_TEAM_BADGUYS, badGuysScore)
			GameMode:SetTopBarTeamValue ( DOTA_TEAM_GOODGUYS, goodGuysScore )
			roundGoing = false
		end
	end
	return nil
end

function HardcoreNinjaGameMode:hero_killed( keys )
   local KillerUnit = EntIndexToHScript( keys.entindex_attacker )
   local KilledUnit = EntIndexToHScript( keys.entindex_killed )
   KillerUnit:FindAbilityByName("queenofpain_blink_datadriven"):EndCooldown()
   KillerUnit:FindAbilityByName("deflect"):EndCooldown()
   KillerUnit:FindAbilityByName("sword_wave"):EndCooldown()
   KillerUnit:FindAbilityByName("dagger_throw"):EndCooldown()
   		Timers:CreateTimer({
		endTime = 3, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
		callback = function()
      	FindClearSpaceForUnit(KilledUnit, Vector(0,8030,3495), true)
    end
  })
	
    if GameStarted then
		Timers:CreateTimer({
		endTime = 2, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
		callback = function()
      	HardcoreNinjaGameMode:EndRoundCheck()
    end
  })
    end    
end

function HardcoreNinjaGameMode:lastRound()
		Timers:CreateTimer({
		endTime = 15, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
		callback = function()
		HardcoreNinjaGameMode:Respawn()
		end
		})
	Timers:CreateTimer({
    endTime = 2, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
    callback = function()
		EmitGlobalSound("HardcoreNinja.Drums")
      	HardcoreNinjaGameMode:SendAMsg("Prepare Yourselves!")
    end
  })
  	Timers:CreateTimer({
    endTime = 8, -- when this timer should first execute, you can omit this if you want it to run first on the next frame
    callback = function()
      	HardcoreNinjaGameMode:SendAMsg("Last Round!")
    end
  })
end


function HardcoreNinjaGameMode:numberOfGoodGuysAlive()
  local goodGuysAlive = 0
  for i = 0, 9, 1 do
    if PlayerResource:GetPlayer(i) ~= nil then
      if PlayerResource:GetPlayer(i):GetTeam() == 2 then
        if PlayerResource:GetPlayer(i):GetAssignedHero():IsAlive() then
          goodGuysAlive = goodGuysAlive + 1
        end
      end
    end
  end
  return goodGuysAlive
end

function HardcoreNinjaGameMode:numberOfBadGuysAlive()
  local badGuysAlive = 0
  for i = 0, 9, 1 do
    if PlayerResource:GetPlayer(i) ~= nil then
      if PlayerResource:GetPlayer(i):GetTeam() == 3 then
        if PlayerResource:GetPlayer(i):GetAssignedHero():IsAlive() then
          badGuysAlive = badGuysAlive + 1
        end
      end
    end
  end
  return badGuysAlive
end

function HardcoreNinjaGameMode:GoodGuysVictory()
  GameRules:SetGameWinner(DOTA_TEAM_GOODGUYS)
  GameRules:MakeTeamLose(DOTA_TEAM_BADGUYS)
end

function HardcoreNinjaGameMode:BadGuysVictory()
  GameRules:SetGameWinner(DOTA_TEAM_BADGUYS)
  GameRules:MakeTeamLose(DOTA_TEAM_GOODGUYS)
end

function HardcoreNinjaGameMode:SendAMsg(msg)
  local centerMessage = {
    message = msg,
    duration = 3.0
  }
  FireGameEvent( "show_center_message", centerMessage)
  GameRules:SendCustomMessage(msg,0,0)  
end
