local NpcExample = {}

local Helper_Unit_Entry = 100095; -- мобы которых призывает main unit
local Target_for_beam = 21987; -- таргет для луча в портал

-- ability
local laser_beam_visual = 43591; -- каст луча в портал (визуалка)



function NpcExample.OnEnterCombat(event, creature, target)        -- Start Phase 1 at 100% Health

end

function NpcExample.OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

function NpcExample.OnTargetDied(event, creature, victim)
    
end

function NpcExample.OnDied(event, creature, killer)

end

function NpcExample.ONSUMMONED(creature, event)
    creature:RegisterEvent(beam, 4000, 90)
end

-- каст луча в портал
function beam(event, delay, pCall, creature, target)
local target = creature:GetNearestCreature(533, Target_for_beam, 0, 1);
    if target  then
			creature:CastSpell(target, laser_beam_visual)
    end 
	
end

RegisterCreatureEvent(Helper_Unit_Entry, 1, NpcExample.OnEnterCombat)
RegisterCreatureEvent(Helper_Unit_Entry, 2, NpcExample.OnLeaveCombat)
RegisterCreatureEvent(Helper_Unit_Entry, 3, NpcExample.OnTargetDied)
RegisterCreatureEvent(Helper_Unit_Entry, 4, NpcExample.OnDied)
RegisterCreatureEvent(Helper_Unit_Entry, 22, NpcExample.ONSUMMONED) -- on spawn