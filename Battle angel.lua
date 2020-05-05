local BossEntry = 100097

-- ability
local         stun = 57459; -- stun
local arcane_storm = 43612; --arcane_storm



function OnEnterCombat(event, creature, target) 
    creature:RegisterEvent(arcane_storm, 1000, 1)
	creature:RegisterEvent(stun, 1000, 1)
end

function arcane_storm(event, delay, pCall, creature)
	creature:CastSpell(creature:GetVictim(), arcane_storm) 
	creature:RegisterEvent(arcane_storm, 3000, 1)
end

function stun(event, delay, pCall, creature)
	creature:CastSpell(creature:GetVictim(), stun) 
	creature:RegisterEvent(stun, 15000, 1)
end


function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

function OnTargetDied(event, creature, victim)

end

function OnDied(event, creature, killer)
    creature:RemoveEvents()
end

RegisterCreatureEvent(BossEntry, 1, OnEnterCombat)
RegisterCreatureEvent(BossEntry, 2, OnLeaveCombat)
RegisterCreatureEvent(BossEntry, 3, OnTargetDied)
RegisterCreatureEvent(BossEntry, 4, OnDied)