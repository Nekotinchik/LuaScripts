local NPC_EXAMPLE = 100092

local NpcExample = {}

local NpcExampleSay= {
    [1] = "Mortals ... is ... Here ...",
};

local NpcExampleSpells= {
    [1] = 62277

};

function NpcExample.OnEnterCombat(event, creature, target)        -- Start Phase 1 at 100% Health
    creature:SendUnitYell(NpcExampleSay[1], 0)                     -- NPC Say
    creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 1000, 1)
end

function NpcExample.OnPhase_1_Fireball_Say(event, delay, pCall, creature)
	creature:CastSpell(creature:GetVictim(), NpcExampleSpells[1]) 
	creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 25000, 1)-- Npc Cast Spell
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