local NPC_Entry = 200095

local NpcExample = {}

local UnitEntry = 200094; -- ��� ��� ������� �������� �����
local Helper_Unit_Entry = 200095; -- ���� ������� ��������� main unit
local Target_for_beam = 21987; -- ������ ��� ���� � ������
local Boss_Entry = 17968; -- id ������ �����

-- ability
local laser_beam_visual = 43591; -- ���� ���� � ������ (��������)



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

-- ���� ���� � ������
function beam(event, delay, pCall, creature, target)
local target = creature:GetNearestCreature(533, Target_for_beam, 0, 1);
    if target  then
			creature:CastSpell(target, laser_beam_visual)
    end 
	
end

RegisterCreatureEvent(NPC_Entry, 1, NpcExample.OnEnterCombat)
RegisterCreatureEvent(NPC_Entry, 2, NpcExample.OnLeaveCombat)
RegisterCreatureEvent(NPC_Entry, 3, NpcExample.OnTargetDied)
RegisterCreatureEvent(NPC_Entry, 4, NpcExample.OnDied)
RegisterCreatureEvent(NPC_Entry, 22, NpcExample.ONSUMMONED) -- on spawn