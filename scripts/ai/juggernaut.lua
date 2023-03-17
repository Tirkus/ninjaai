--[[ TODO:
   functions:
    dagger cancel
    chop cancel

    desine:
        action_space


--]]

wave_range = 1200
require("observation_space")

function Spawn( entityKeyValues )
    if thisEntity:GetMainControllingPlayer() == 1 then
        Wave = thisEntity:FindAbilityByName("sword_wave")
        Deflect = thisEntity:FindAbilityByName("deflect")
        Blink = thisEntity:FindAbilityByName("queenofpain_blink_datadriven")
        Dagger = thisEntity:FindAbilityByName("dagger_throw")
        observation_space = ObservationSpace:new()
        thisEntity:SetContextThink( "JuggernautThink", JuggernautThink, .1 )
        return
    end

    if IsServer() == false then
        return
    end

end

function JuggernautThink()
    if GameRules:IsGamePaused() or GameRules:State_Get() == DOTA_GAMERULES_STATE_POST_GAME or not thisEntity:IsAlive() then
        return
    end

    update_observation_space()
    local enemies = FindUnitsInRadius(thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 5000, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_ALL, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false)

    --if #enemies > 0 then
    --    local shockwaveAbility = enemies[1]:FindAbilityByName("sword_wave")
    --    if shockwaveAbility then  -- and shockwaveAbility:IsFullyCastable()
    --        local animation = shockwaveAbility:IsInAbilityPhase()
    --        local asdf = isInvulnerable(enemies[1])
    --        local enemyPos = enemies[1]:GetOrigin()
    --        local direction = enemies[1]:GetAnglesAsVector()
    --        --print(apply_vector(enemyPos, wave_range, direction))
    --    end
    --
    --    if MoveDirection ~= nil then
    --        if #enemies > 0 then
    --            MoveDirection(next_coordinates(enemies[1]:GetOrigin()[1], enemies[1]:GetOrigin()[2], 0, 200))
    --        end
    --    end
    --end




  
    if Dagger ~= nil and Dagger:IsFullyCastable() and not thisEntity:IsChanneling() then
       if #enemies > 0 then
          CastDaggerCancel(enemies[1])
       end
    end

--    if Deflect ~= nil then
--       CastDeflect()
--   end
   
   --if Wave ~= nil and Wave:IsFullyCastable() and not thisEntity:IsChanneling() then
   --   -- if #enemies > 0 then
   --   --    CastWave(enemies[1]:GetOrigin())
   --   -- end
   --   if #enemies > 0 then
   --      CastWaveCancel(enemies[1]:GetOrigin())
   --   end
   --end

--    if Blink ~= nil and Blink:IsFullyCastable() and not thisEntity:IsChanneling() then
--       if #enemies > 0 then  
--          CastBlink(enemies[1]:GetOrigin())
--       end
--   end
--   if Move ~= nil then
--    if #enemies > 0 then
--       Move(next_coordinates(thisEntity:GetOrigin()[1], thisEntity:GetOrigin()[2], 0, 200))
--    end
-- end

 --if MoveDirection ~= nil then
 --      if #enemies > 0 then
 --         MoveDirection(next_coordinates(thisEntity:GetOrigin()[1], thisEntity:GetOrigin()[2], 0, 200))
 --      end
 --   end
   

--   if thisEntity:GetAttackTarget() == nil and not Wave:IsFullyCastable() and not thisEntity:IsChanneling() then
--      local enemies = FindUnitsInRadius( thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 1000, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_ALL, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false )
--      if #enemies > 0 then
--         ExecuteOrderFromTable({
--            UnitIndex = thisEntity:entindex(),
--            OrderType = DOTA_UNIT_ORDER_ATTACK_TARGET,
--            AbilityIndex = nil,
--            TargetIndex = enemies[1]:entindex(),
--         })
--      end
--   end
    return .1
end

function update_observation_space()
    observation_space:update_bot_state(
            thisEntity:GetOrigin(),
            thisEntity:GetAnglesAsVector()[2],
            isInvulnerable(thisEntity),
            getState(thisEntity),
            getRecharge(thisEntity)
    )
    local enemies = FindUnitsInRadius(thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 5000, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_ALL, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false)
    --CastDaggerCancel(enemies[1])
    for _, enemy in pairs(enemies) do
        observation_space:add_enemy_state(
                enemy:GetEntityIndex(),
                enemy:GetOrigin(),
                enemy:GetAnglesAsVector()[2],
                isInvulnerable(enemy),
                getState(enemy),
                getRecharge(enemy)
        )
        --local deflect = enemy:FindAbilityByName("deflect")
        --print(enemy:GetLinearProjectileLocation())
    end
    waves, daggers = getSpells()
    print("waves")
    print(table.concat(waves))
    print("daggers")
    print(table.concat(daggers))
end

function CastWave(cord)
    Timers:CreateTimer(0.3, function()
        ExecuteOrderFromTable({
            UnitIndex = thisEntity:entindex(),
            OrderType = DOTA_UNIT_ORDER_CAST_POSITION,
            Position = cord,
            AbilityIndex = Wave:entindex(),
        })
    end)
end

function CastWaveCancel(cord)
    Timers:CreateTimer(0.3, function()
        ExecuteOrderFromTable({
            UnitIndex = thisEntity:entindex(),
            OrderType = DOTA_UNIT_ORDER_CAST_POSITION,
            Position = cord,
            AbilityIndex = Wave:entindex(),
        })
    end)
    Cancel()
end
 

function CastDeflect()
  Timers:CreateTimer(0.1, function()	
     ExecuteOrderFromTable({
        UnitIndex = thisEntity:entindex(),
        OrderType = DOTA_UNIT_ORDER_CAST_NO_TARGET,
        AbilityIndex = Deflect:entindex(),
     })
     end)
end


function CastBlink(cord)
    Timers:CreateTimer(0.1, function()
        ExecuteOrderFromTable({
           UnitIndex = thisEntity:entindex(),
           OrderType = DOTA_UNIT_ORDER_CAST_POSITION,
           Position = cord,
           AbilityIndex = Blink:entindex(),
        })
        end)
end

function CastDagger(enemy)
      ExecuteOrderFromTable({
         UnitIndex = thisEntity:entindex(),
         OrderType = DOTA_UNIT_ORDER_CAST_TARGET,
         TargetIndex = enemy:entindex(),
         AbilityIndex = Dagger:entindex(),
      })
end

function CastDaggerCancel(enemy)
      ExecuteOrderFromTable({
         UnitIndex = thisEntity:entindex(),
         OrderType = DOTA_UNIT_ORDER_CAST_TARGET,
         TargetIndex = enemy:entindex(),
         AbilityIndex = Dagger:entindex(),
      })
      Cancel()
end


function Move(cord)
  Timers:CreateTimer(0.1, function()
     ExecuteOrderFromTable({
        UnitIndex = thisEntity:entindex(),
        OrderType = DOTA_UNIT_ORDER_MOVE_TO_POSITION,
        Position = cord,
     })
     end)
end

function MoveDirection(cord)
   Timers:CreateTimer(0.1, function()
      ExecuteOrderFromTable({
         UnitIndex = thisEntity:entindex(),
         OrderType = DOTA_UNIT_ORDER_MOVE_TO_DIRECTION,
         Position = cord,
      })
      end)
 end

function Cancel()
  Timers:CreateTimer(0.3, function()
     ExecuteOrderFromTable({
        UnitIndex = thisEntity:entindex(),
        OrderType =  DOTA_UNIT_ORDER_STOP,
     })
     end)
end

function apply_vector(vector, length, direction)
  local direction_rad = math.rad(direction[2])
  return Vector(vector[1] + length * math.cos(direction_rad), vector[2] + length * math.sin(direction_rad), 128)
end

function isInvulnerable(hero)
    local refractionModifier = hero:FindModifierByName("deflect_modifier")
    if refractionModifier and refractionModifier:GetRemainingTime() > 0 then
        return true
    end
    return false
end

function getState(hero)
    if hero:IsMoving() then
        return 1
    elseif hero:IsAttacking() then
        return 2
    elseif hero:FindAbilityByName("sword_wave"):IsInAbilityPhase() then
        return 3
    elseif hero:FindAbilityByName("dagger_throw"):IsInAbilityPhase() then
        return 4
    else
        return 0
    end
end

function getRecharge(hero)
    return {
        hero:FindAbilityByName("deflect"):GetCooldownTimeRemaining(),
        hero:FindAbilityByName("queenofpain_blink_datadriven"):GetCooldownTimeRemaining(),
        hero:FindAbilityByName("sword_wave"):GetCooldownTimeRemaining(),
        hero:FindAbilityByName("dagger_throw"):GetCooldownTimeRemaining()
    }
end

function getSpells()
  local waves = {} -- a table to store the locations of all waves
  local daggers = {} -- a table to store the locations of all daggers

  local waveAbilityName = "sword_wave"
  local daggerAbilityName = "dagger_throw"

  ListenToGameEvent("OnProjectileCreated", function(keys)
    local caster = EntIndexToHScript(keys.caster_entindex)
    local ability = caster:GetAbilityByIndex(keys.abilityindex)

    if ability:GetAbilityName() == waveAbilityName then
        table.insert(waves, ability:GetCursorPosition())
    elseif ability:GetAbilityName() == daggerAbilityName then
        table.insert(daggers, ability:GetCursorPosition())
    end
  end, nil)

  return waves, daggers
end