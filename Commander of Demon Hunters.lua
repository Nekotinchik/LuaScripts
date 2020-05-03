local NPC_EXAMPLE = 100091

local NpcExample = {}

local NpcExampleSay= {
    [1] = "Come and die mortals...",
    [2] = "It's your power? hahaha",
	[3] = "Oohh NOoOOOoo ...",
};

local NpcExampleSpells= {
    [1] = 70986; --аура
	[2] = 40827; --Sinful Beam
	[3] = 33665; --Lightning Wrath
	[4] = 53361; --frenzy
	[5] = 65860; -- дубовая кожа
	[6] = 58841 --frenzy
};

function NpcExample.OnEnterCombat(event, creature, target)        -- Start Phase 1 at 100% Health
    creature:SendUnitYell(NpcExampleSay[1], 0)                     -- NPC Say
    creature:RegisterEvent(NpcExample.OnPhase_1_Aura_Say, 1000, 0)
	creature:RegisterEvent(NpcExample.OnPhase_1_Sinful_Beam_Say, 2500, 0)
	creature:RegisterEvent(NpcExample.OnPhase_1_Lightning_Wrath_Say, 2000, 0)
    creature:RegisterEvent(NpcExample.OnPhase_2, 3000, 0)            -- Check for next Phase
end

function NpcExample.OnPhase_1_Aura_Say(event, delay, pCall, creature)
    creature:CastSpell(creature:GetVictim(), NpcExampleSpells[1], 10000, 0) -- Npc Cast Spell
end

function NpcExample.OnPhase_1_Sinful_Beam_Say(event, delay, pCall, creature)
creature:CastSpell(creature:GetVictim(), NpcExampleSpells[2], 30000, 0)
end

function NpcExample.OnPhase_1_Lightning_Wrath_Say(event, delay, pCall, creature)
creature:CastSpell(creature:GetVictim(), NpcExampleSpells[3], 30000, 0)
end

function NpcExample.OnPhase_2(event, delay, pCall, creature)
    if (creature:GetHealthPct() <= 50) then                       -- Start Phase 2 at 75% Health
        creature:RemoveEvents()
        creature:SendUnitYell(NpcExampleSay[2], 0)                 -- Npc Say
        creature:RegisterEvent(NpcExample.OnPhase_2_frenzy_Say, 2000, 1)
		creature:RegisterEvent(NpcExample.OnPhase_2_koja_Say, 2000, 1)
		creature:RegisterEvent(NpcExample.OnPhase_2_frenzy2_Say, 2000, 1)
	    creature:RegisterEvent(NpcExample.OnPhase_1_Sinful_Beam_Say, 2500, 0)
	    creature:RegisterEvent(NpcExample.OnPhase_1_Lightning_Wrath_Say, 3000, 0)
    end
end

function NpcExample.OnPhase_2_frenzy_Say(event, delay, pCall, creature)
      creature:CastSpell(creature:GetVictim(), NpcExampleSpells[4]) 
	  creature:RegisterEvent(NpcExample.OnPhase_2_frenzy_Say, 20000, 1)
      end


function NpcExample.OnPhase_2_koja_Say(event, delay, pCall, creature)
      creature:CastSpell(creature:GetVictim(), NpcExampleSpells[5]) 
	  creature:RegisterEvent(NpcExample.OnPhase_2_koja_Say, 20000, 1)-- Npc Cast Spell
      end

function NpcExample.OnPhase_2_frenzy2_Say(event, delay, pCall, creature)
      creature:CastSpell(creature:GetVictim(), NpcExampleSpells[6])  
	  creature:RegisterEvent(NpcExample.OnPhase_2_frenzy2_Say, 7000, 1)-- Npc Cast Spell
      end



function NpcExample.OnLeaveCombat(event, creature)

    creature:RemoveEvents()
end

function NpcExample.OnTargetDied(event, creature, victim)

end

function NpcExample.OnDied(event, creature, killer)
    creature:SendUnitYell(NpcExampleSay[3], 0)                    -- Npc Say
    creature:RemoveEvents()
end

RegisterCreatureEvent(NPC_EXAMPLE, 1, NpcExample.OnEnterCombat)
RegisterCreatureEvent(NPC_EXAMPLE, 2, NpcExample.OnLeaveCombat)
RegisterCreatureEvent(NPC_EXAMPLE, 3, NpcExample.OnTargetDied)
RegisterCreatureEvent(NPC_EXAMPLE, 4, NpcExample.OnDied)