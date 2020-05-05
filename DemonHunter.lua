local Boss_Entry = 100092

-- emote
local emote= {
    [1] = "Mortals ... is ... Here ...",
};

-- ability
local Shield_Of_Runes = 62277;



function OnEnterCombat(event, creature, target)    
    creature:SendUnitYell(emote[1], 0)                   
    creature:RegisterEvent(Shield_Of_Runes, 1000, 1)
end

function Shield_Of_Runes(event, delay, pCall, creature)
	creature:CastSpell(creature:GetVictim(), Shield_Of_Runes) 
	creature:RegisterEvent(Shield_Of_Runes, 25000, 1)-- Npc Cast Spell
end




function OnLeaveCombat(event, creature)
      

    creature:RemoveEvents()
end

function OnTargetDied(event, creature, victim)

end

function OnDied(event, creature, killer)
    creature:RemoveEvents()
end

RegisterCreatureEvent(Boss_Entry, 1, OnEnterCombat)
RegisterCreatureEvent(Boss_Entry, 2, OnLeaveCombat)
RegisterCreatureEvent(Boss_Entry, 3, OnTargetDied)
RegisterCreatureEvent(Boss_Entry, 4, OnDied)