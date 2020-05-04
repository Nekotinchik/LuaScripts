local NPC_EXAMPLE = 100094

local NpcExample = {}

local NpcExampleSpells= {
    [1] = 57459; -- stun
	[2] = 43612 --arcane_storm

};

function NpcExample.OnEnterCombat(event, creature, target)        -- Start Phase 1 at 100% Health
    creature:RegisterEvent(NpcExample.OnPhase_1_arcane_storm_Say, 1000, 1)
	creature:RegisterEvent(NpcExample.OnPhase_1_stun_Say, 1000, 1)
end

function NpcExample.OnPhase_1_arcane_storm_Say(event, delay, pCall, creature)
	creature:CastSpell(creature:GetVictim(), NpcExampleSpells[1]) 
	creature:RegisterEvent(NpcExample.OnPhase_1_arcane_storm_Say, 3000, 1)-- Npc Cast Spell
end

function NpcExample.OnPhase_1_stun_Say(event, delay, pCall, creature)
	creature:CastSpell(creature:GetVictim(), NpcExampleSpells[2]) 
	creature:RegisterEvent(NpcExample.OnPhase_1_stun_Say, 15000, 1)-- Npc Cast Spell
end


function NpcExample.OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

function NpcExample.OnTargetDied(event, creature, victim)

end

function NpcExample.OnDied(event, creature, killer)
    creature:RemoveEvents()
end

RegisterCreatureEvent(NPC_EXAMPLE, 1, NpcExample.OnEnterCombat)
RegisterCreatureEvent(NPC_EXAMPLE, 2, NpcExample.OnLeaveCombat)
RegisterCreatureEvent(NPC_EXAMPLE, 3, NpcExample.OnTargetDied)
RegisterCreatureEvent(NPC_EXAMPLE, 4, NpcExample.OnDied)