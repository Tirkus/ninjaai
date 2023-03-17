function Spawn( entityKeyValues )
   if thisEntity == nil then
       return
   end

   if IsServer() == false then
       return
   end
   thisEntity:SetContextThink( "DrowThink", DrowThink, .1 )
end

function DrowThink()
   if GameRules:IsGamePaused() or GameRules:State_Get() == DOTA_GAMERULES_STATE_POST_GAME or not thisEntity:IsAlive() then
       return
   end
   
  if thisEntity:GetAttackTarget() == nil and not thisEntity:IsChanneling() then
     local enemies = FindUnitsInRadius( thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 550, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_ALL, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false )
     if #enemies > 0 then
        ExecuteOrderFromTable({
           UnitIndex = thisEntity:entindex(),
           OrderType = DOTA_UNIT_ORDER_ATTACK_TARGET,
           AbilityIndex = nil,
           TargetIndex = enemies[1]:entindex(),
        })
     end
  end
  
  return .1
end





-- function rotate_vector(angle, vector)
--   print("OLd", vector)
--   local x = vector[1]
--   local y = vector[2]
--   local z = vector[3]
--
--   local new_x = x * math.cos(angle) - y * math.sin(angle)
--   local new_y = x * math.sin(angle) + y * math.cos(angle)
--   print("New", new_x, new_y)
--   return Vector(new_x,new_y, z)
-- end
--
-- function next_coordinates(x1, y1, angle, d)
--   local x2 = x1 + d * math.cos(angle)
--   local y2 = y1 + d * math.sin(angle)
--   return Vector(x2, y2, 128.0)
--end
--
-- function Continue()
--   Timers:CreateTimer(0.2, function()
--      ExecuteOrderFromTable({
--         UnitIndex = thisEntity:entindex(),
--         OrderType =  DOTA_UNIT_ORDER_CONTINUE ,
--      })
--      end)
-- end
--
--function sleep(sec)
--   os.execute("sleep " .. tonumber(sec))
--end
--
-- function MoveDirection(cord)
--   Timers:CreateTimer(0.1, function()
--      ExecuteOrderFromTable({
--         UnitIndex = thisEntity:entindex(),
--         OrderType = DOTA_UNIT_ORDER_MOVE_TO_DIRECTION ,
--         Position = cord,
--      })
--      end)
-- end