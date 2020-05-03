local NPC_EXAMPLE = 100085

local NpcExample = {}

local NpcExampleSay= {
    [1] = "You Are Not Prepared!",
    [2] = "Phase 1 runs",
    [3] = "Flames of Azzinoth ",
    [4] = "Phase 2 runs",
    [5] = "The Demon Within",
    [6] = "Phase 3 runs",
    [7] = "Start Phase 4",
    [8] = "Phase 4 runs",
    [9] = "Ha-ha-ha and you thought to win me?",
    [10] = "Die mortals...",
    [11] = "Nooooo ... It is not possible.";
};

local NpcExampleSpells= {
    [1] = 40631;

};

function NpcExample.OnEnterCombat(event, creature, target)        -- Start Phase 1 at 100% Health     
    creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 10000, 0)
        
end


function NpcExample.OnPhase_1_Fireball_Say(event, delay, pCall, creature)
    creature:CastSpell(creature:GetVictim(), NpcExampleSpells[1], 10000, 0) -- Npc Cast Spell
end




function NpcExample.OnLeaveCombat(event, creature)

    creature:RemoveEvents()
end

function NpcExample.OnTargetDied(event, creature, victim)
        creature:RemoveEvents()           -- Npc Say
end

function NpcExample.OnDied(event, creature, killer)
                   -- Npc Say
    creature:RemoveEvents()
end

RegisterCreatureEvent(NPC_EXAMPLE, 1, NpcExample.OnEnterCombat)
RegisterCreatureEvent(NPC_EXAMPLE, 2, NpcExample.OnLeaveCombat)
RegisterCreatureEvent(NPC_EXAMPLE, 3, NpcExample.OnTargetDied)
RegisterCreatureEvent(NPC_EXAMPLE, 4, NpcExample.OnDied)