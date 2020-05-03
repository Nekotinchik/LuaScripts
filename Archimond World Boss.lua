local UnitEntry = 17968


function Boss_Spawn(creature, event)
      creature:MoveTo(200000, 1687.99, -5823.16, 116.125)
end
 
function Boss_BeginCombat(event, creature, target)
        creature:SendUnitSay("Я убью вас всех!", 0)
	
		
end


function Boss_Death(creature, event, player)
        creature:RemoveEvents()	
end


function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end


RegisterCreatureEvent(UnitEntry, 1, Boss_BeginCombat) -- on combat
RegisterCreatureEvent(UnitEntry, 2, OnLeaveCombat) -- on leave combat
RegisterCreatureEvent(UnitEntry, 4, Boss_Death) -- on death
RegisterCreatureEvent(UnitEntry, 18, Boss_Spawn) -- on spawn