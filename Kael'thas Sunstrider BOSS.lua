local NPC_EXAMPLE = 100086

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
    [1] = 36805; -- Fireball
	[2] = 36834; -- Arcane Disruption
	[3] = 35941; -- Gravity Lapse
	[4] = 36819; -- Pyroblast
	[5] = 36815; -- Shock Barrier
};

function NpcExample.OnEnterCombat(event, creature, target)        -- Start Phase 1 at 100% Health
    creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 5000, 0)
	creature:RegisterEvent(NpcExample.OnPhase_1_Arcane_Disruption_Say, 30000, 0)
    creature:RegisterEvent(NpcExample.OnPhase_2, 1000, 0)            -- Check for next Phase
end

function NpcExample.OnPhase_1_Fireball_Say(event, delay, pCall, creature)
    creature:CastSpell(creature:GetVictim(), NpcExampleSpells[1], 5000, 0) -- Npc Cast Spell
end

function NpcExample.OnPhase_1_Arcane_Disruption_Say(event, delay, pCall, creature)
creature:CastSpell(creature:GetVictim(), NpcExampleSpells[2], 30000, 0)
end

function NpcExample.OnPhase_2(event, delay, pCall, creature)
    if (creature:GetHealthPct() <= 75) then                       -- Start Phase 2 at 75% Health
        creature:RemoveEvents()
        creature:RegisterEvent(NpcExample.OnPhase_2_Gravity_Lapse_Say, 30000, 0)
		creature:RegisterEvent(NpcExample.OnPhase_2_Shock_Barrier_Say, 10000, 0)
        creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 5000, 0)
        creature:RegisterEvent(NpcExample.OnPhase_3, 1000, 0)     -- Check for next Phase
    end
end

function NpcExample.OnPhase_2_Gravity_Lapse_Say(event, delay, pCall, creature)
      creature:CastSpell(creature:GetVictim(), NpcExampleSpells[3], 30000, 0)                                                                   -- Npc Cast Spell

      end

function NpcExample.OnPhase_2_Shock_Barrier_Say(event, delay, pCall, creature)
      creature:CastSpell(creature:GetVictim(), NpcExampleSpells[5], 10000, 0)                                                                   -- Npc Cast Spell

      end


function NpcExample.OnPhase_3(event, delay, pCall, creature)
    if (creature:GetHealthPct() <= 50) then                       -- Start Phase 3 at 50% Health
        creature:RemoveEvents()
        creature:RegisterEvent(NpcExample.OnPhase_2_Gravity_Lapse_Say, 30000, 0)
		creature:RegisterEvent(NpcExample.OnPhase_2_Shock_Barrier_Say, 10000, 0)
        creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 5000, 0)
		creature:RegisterEvent(NpcExample.OnPhase_3_Say, 9000, 0)
		creature:RegisterEvent(NpcExample.SpawnHounds, 8000, 1)
       
    end
end

function NpcExample.OnPhase_3_Say(event, delay, pCall, creature)
    creature:CastSpell(creature:GetVictim(), NpcExampleSpells[4], 9000, 0) -- Npc Cast Spell
                     
end





function NpcExample.SummonHounds(creature, target)
    local x, y, z = creature:GetRelativePoint(math.random()*9, math.random()*math.pi*2)
    local hound = creature:SpawnCreature(100087, x, y, z, 0, 2, 1000)
    if (hound) then
        hound:AttackStart(target)
    end

end

function NpcExample.SpawnHounds(event, delay, pCall, creature)
    NpcExample.SummonHounds(creature, creature:GetVictim())
	NpcExample.SummonHounds(creature, creature:GetVictim())
    creature:RegisterEvent(NpcExample.SpawnHounds, 45000, 1)
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
