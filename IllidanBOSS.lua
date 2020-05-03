local NPC_EXAMPLE = 100084

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
    [1] = 40598;
	[2] = 43612;
	[3] = 41078;
	[4] = 40932;
	[5] = 41367
};

function NpcExample.OnEnterCombat(event, creature, target)        -- Start Phase 1 at 100% Health
    creature:SendUnitYell(NpcExampleSay[1], 0)                     -- NPC Say
    creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 10000, 0)
	creature:RegisterEvent(NpcExample.OnPhase_1_Stun_Say, 30000, 0)
    creature:RegisterEvent(NpcExample.OnPhase_2, 3000, 0)            -- Check for next Phase
end

function NpcExample.OnPhase_1_Fireball_Say(event, delay, pCall, creature)
    creature:CastSpell(creature:GetVictim(), NpcExampleSpells[1], 10000, 0) -- Npc Cast Spell
end

function NpcExample.OnPhase_1_Stun_Say(event, delay, pCall, creature)
creature:CastSpell(creature:GetVictim(), NpcExampleSpells[2], 30000, 0)
end

function NpcExample.OnPhase_2(event, delay, pCall, creature)
    if (creature:GetHealthPct() <= 75) then                       -- Start Phase 2 at 75% Health
        creature:RemoveEvents()
        creature:SendUnitYell(NpcExampleSay[3], 0)                 -- Npc Say
        creature:RegisterEvent(NpcExample.OnPhase_2_Say, 5000, 0)
        creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 10000, 0)
	    creature:RegisterEvent(NpcExample.OnPhase_1_Stun_Say, 30000, 0)
		creature:RegisterEvent(NpcExample.SpawnHounds, 8000, 1)
        creature:RegisterEvent(NpcExample.OnPhase_3, 1000, 0)   -- Check for next Phase
    end
end

function NpcExample.OnPhase_2_Say(event, delay, pCall, creature)
      creature:CastSpell(creature:GetVictim(), NpcExampleSpells[3], 5000, 0)                                                                   -- Npc Cast Spell

      end

function NpcExample.OnPhase_3(event, delay, pCall, creature)
    if (creature:GetHealthPct() <= 50) then                       -- Start Phase 3 at 50% Health
        creature:RemoveEvents()
		creature:SetDisplayId(21322)
		creature:SetScale(0.5)
        creature:SendUnitYell(NpcExampleSay[5], 0)                 -- Npc Say
		creature:RegisterEvent(NpcExample.OnPhase_2_Say, 3000, 0)
        creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 10000, 0)
	    creature:RegisterEvent(NpcExample.OnPhase_1_Stun_Say, 30000, 0)
        creature:RegisterEvent(NpcExample.OnPhase_3_Say, 15000, 0)
		creature:RegisterEvent(NpcExample.SpawnHounds, 8000, 1)
		creature:RegisterEvent(NpcExample.OnPhase_4, 1000, 0)
       
    end
end

function NpcExample.OnPhase_4(event, delay, pCall, creature)
    if (creature:GetHealthPct() <= 20) then                       -- Start Phase 2 at 75% Health
        creature:RemoveEvents()
        creature:SendUnitYell(NpcExampleSay[3], 0)                 -- Npc Say
        creature:RegisterEvent(NpcExample.OnPhase_2_Say, 5000, 0)
        creature:RegisterEvent(NpcExample.OnPhase_1_Fireball_Say, 10000, 0)
	    creature:RegisterEvent(NpcExample.OnPhase_1_Stun_Say, 30000, 0)
		creature:RegisterEvent(NpcExample.SpawnHounds, 8000, 1)
		creature:RegisterEvent(NpcExample.OnPhase_3_babl_Say, 100, 1)-- Check for next Phase
    end
end

function NpcExample.OnPhase_3_Say(event, delay, pCall, creature)
    creature:CastSpell(creature:GetVictim(), NpcExampleSpells[4]) -- Npc Cast Spell               
end
function NpcExample.OnPhase_3_babl_Say(event, delay, pCall, creature)
    creature:CastSpell(creature:GetVictim(), NpcExampleSpells[5]) -- Npc Cast Spell               
end




function NpcExample.SummonHounds(creature, target)
    local x, y, z = creature:GetRelativePoint(math.random()*9, math.random()*math.pi*2)
    local hound = creature:SpawnCreature(100085, x, y, z, 0, 2, 1000)
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
    creature:SendUnitYell(NpcExampleSay[9], 0)                     -- Npc Say
	creature:SetDisplayId(27571)
	creature:SetScale(2)
    creature:RemoveEvents()
end

function NpcExample.OnTargetDied(event, creature, victim)
    creature:SetDisplayId(27571)
	creature:SetScale(2)
    creature:SendUnitYell(NpcExampleSay[10], 0)                    -- Npc Say
end

function NpcExample.OnDied(event, creature, killer)
    creature:SetDisplayId(27571)
	creature:SetScale(2)
    creature:SendUnitYell(NpcExampleSay[11], 0)                    -- Npc Say
    creature:RemoveEvents()
end

RegisterCreatureEvent(NPC_EXAMPLE, 1, NpcExample.OnEnterCombat)
RegisterCreatureEvent(NPC_EXAMPLE, 2, NpcExample.OnLeaveCombat)
RegisterCreatureEvent(NPC_EXAMPLE, 3, NpcExample.OnTargetDied)
RegisterCreatureEvent(NPC_EXAMPLE, 4, NpcExample.OnDied)