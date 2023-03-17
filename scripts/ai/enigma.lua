function Spawn( entityKeyValues )
   if thisEntity == nil then
       return
   end

   if IsServer() == false then
       return
   end
   BlackHole = thisEntity:FindAbilityByName("enigma_black_hole")
   thisEntity:SetContextThink( "EnigmaThink", EnigmaThink, .1 )
end

function EnigmaThink()
   if GameRules:IsGamePaused() or GameRules:State_Get() == DOTA_GAMERULES_STATE_POST_GAME or not thisEntity:IsAlive() then
       return
   end
   
   if BlackHole ~= nil and BlackHole:IsFullyCastable() and not thisEntity:IsChanneling() then
       CastBlackHole()
   end
  
  if thisEntity:GetAttackTarget() == nil and not BlackHole:IsFullyCastable() and not thisEntity:IsChanneling() then
     local enemies = FindUnitsInRadius( thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 1000, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_ALL, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false )
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

function CastBlackHole()
   local enemies = FindUnitsInRadius( thisEntity:GetTeamNumber(), thisEntity:GetOrigin(), thisEntity, 1000, DOTA_UNIT_TARGET_TEAM_ENEMY, DOTA_UNIT_TARGET_ALL, DOTA_UNIT_TARGET_FLAG_NONE, FIND_CLOSEST, false )
  if #enemies > 0 then
  Timers:CreateTimer(0.6, function()	
     ExecuteOrderFromTable({
        UnitIndex = thisEntity:entindex(),
        OrderType = DOTA_UNIT_ORDER_CAST_POSITION,
        Position = enemies[1]:GetOrigin(),
        AbilityIndex = BlackHole:entindex(),
     })
     end)
  end
end