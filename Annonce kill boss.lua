--[[local function OnKillCreature(event, killer, killed)
    if(killed:IsWorldBoss() or killed:IsDungeonBoss()) then
        local group = killer:GetGroup();
        SendWorldMessage(killer:GetName().." killed "..killed:GetName()..((group and " in a group of"..group:GetMembersCount()) or ""))
    end
end]]

local function OnKillCreature(event, killer, killed)
    if(killed:IsWorldBoss(17968) or killed:IsWorldBoss(17968)) then
        local group = killer:GetGroup();
        SendWorldMessage(killer:GetName().." killed "..killed:GetName()..((group and " in a group of "..group:GetMembers()) or ""))
    end
end

RegisterPlayerEvent(7, OnKillCreature)