local BossEntry = 100096

-- ability
local fear = 31970; -- страх 
local Grip_of_the_Legion = 31972; -- хватка легиона	
local Air_Burst = 32014; -- подкидывает в воздух
local Finger_of_Death = 31984; -- наносит 20к урона


-- emote
--[[local emote = {
	[1] = "",
	[2] = "",
	[3] = "",
	[4] = "",
	[5] = "",
	[6] = "",
	[7] = "",
	[8] = "";
	
};]]


function fear_Cast(event, delay, pCall, creature)
creature:CastSpell(creature:GetVictim(), fear, 30000, 0)
end

function Grip_of_the_Legion_Cast(event, delay, pCall, creature)
creature:CastSpell(creature:GetVictim(), Grip_of_the_Legion, 30000, 0)
end

function Air_Burst_Cast(event, delay, pCall, creature)
creature:CastSpell(creature:GetVictim(), Air_Burst, 30000, 0)
end

function Finger_of_Death_Cast(event, delay, repeats, creature)

  --[[local players = creature:GetPlayersInRange(30, 1, 1); -- 25yd, hostile, alive
  if #players > 1 then
    local randomTarget = math.random(1, #players);
    if players[randomTarget] == creature:GetVictim() then
      if randomTarget > 1 then
        creature:CastSpell(players[randomTarget - 1], Finger_of_Death, true);
      else
        creature:CastSpell(players[randomTarget + 1], Finger_of_Death, true);
      end
    else
      creature:CastSpell(players[randomTarget], Finger_of_Death, true);
    end
  end]]
  
  creature:CastSpell(creature:GetVictim(), Finger_of_Death)
end
 
function OnCombat(event, creature, target)
     creature:RegisterEvent(Finger_of_Death_Cast,       7000, 0);   
	 creature:RegisterEvent(Grip_of_the_Legion_Cast,   45000, 0);  
	 creature:RegisterEvent(Air_Burst_Cast,            40000, 0);  
	 creature:RegisterEvent(fear_Cast,                 25000, 0);  
end

function OnLeaveCombat(event, creature)
		creature:RemoveEvents()
end

function OnDeath(creature, event, player)
		creature:RemoveEvents()	
end

function OnTargetDied(event, creature, victim)
	
		                  
end
RegisterCreatureEvent(BossEntry, 1, OnCombat)
RegisterCreatureEvent(BossEntry, 2, OnLeaveCombat)
RegisterCreatureEvent(BossEntry, 4, OnDeath)
RegisterCreatureEvent(BossEntry, 3, OnTargetDied)