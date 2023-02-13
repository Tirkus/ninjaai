--[[ TODO:
   functions: castWave(coord)
               castDagger(enemy)
               chopFunction(enemy)
               cancelCurrentAction()
               move(coord)
               directmove(angle)
--]]

function Spawn( entityKeyValues )

   if thisEntity:GetMainControllingPlayer() == 1 then
      Wave = thisEntity:FindAbilityByName("sword_wave")
      Deflect = thisEntity:FindAbilityByName("deflect")
      Blink = thisEntity:FindAbilityByName("queenofpain_blink_datadriven")
      Dagger = thisEntity:FindAbilityByName("dagger_throw")
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
   
   local enemies = FindUnitsInRadius( thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 2000, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_ALL, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false )

   print("Bot coord")

  
--    if Dagger ~= nil and Dagger:IsFullyCastable() and not thisEntity:IsChanneling() then
--       if #enemies > 0 then  
--          CastDagger(enemies[1])
--       end
--    end

--    if Deflect ~= nil then
--       CastDeflect()
--   end
   
   if Wave ~= nil and Wave:IsFullyCastable() and not thisEntity:IsChanneling() then
      -- if #enemies > 0 then  
      --    CastWave(enemies[1]:GetOrigin())
      -- end
      if #enemies > 0 then  
         CastWaveCancel(enemies[1]:GetOrigin())
      end
   end

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

-- if MoveDirection ~= nil then
--       if #enemies > 0 then  
--          MoveDirection(next_coordinates(thisEntity:GetOrigin()[1], thisEntity:GetOrigin()[2], 0, 200))
--       end
--    end
   

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
         OrderType = DOTA_UNIT_ORDER_MOVE_TO_DIRECTION ,
         Position = cord,
      })
      end)
 end


 function rotate_vector(angle, vector)
   print("OLd", vector)
   local x = vector[1]
   local y = vector[2]
   local z = vector[3]
   
   local new_x = x * math.cos(angle) - y * math.sin(angle)
   local new_y = x * math.sin(angle) + y * math.cos(angle)
   print("New", new_x, new_y)
   return Vector(new_x,new_y, z)
 end

 function next_coordinates(x1, y1, angle, d)
   local x2 = x1 + d * math.cos(angle)
   local y2 = y1 + d * math.sin(angle)
   return Vector(x2, y2, 128.0) 
end

 
 function Cancel()
   Timers:CreateTimer(0.2, function()	
      ExecuteOrderFromTable({
         UnitIndex = thisEntity:entindex(),
         OrderType =  DOTA_UNIT_ORDER_STOP,
      })
      end)
 end

 function Continue()
   Timers:CreateTimer(0.2, function()	
      ExecuteOrderFromTable({
         UnitIndex = thisEntity:entindex(),
         OrderType =  DOTA_UNIT_ORDER_CONTINUE ,
      })
      end)
 end

function sleep(sec)
   os.execute("sleep " .. tonumber(sec))
end
