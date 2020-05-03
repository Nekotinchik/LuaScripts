--[[
local NpcExample = {}
function NpcExample.OnDied(event, creature, killer)
local group = killer:GetGroup();
local member = group:GetMembers();


member:AddItem(17202)
--group:IsAssistant()


end

RegisterCreatureEvent(100093, 4, NpcExample.OnDied)

local function OnKillCreature(event, killer, killed)
    if killed:group then
        local group = killer:GetGroup();
        SendWorldMessage(killer:GetName().." killed "..killed:GetName()..((group and " in a group of"..group:GetMembersCount()) or ""))
    end
end

RegisterPlayerEvent(100093, 7, OnKillCreature)
--]]