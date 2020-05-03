local function CustomMessage(player, victim)
    zoneId = victim:GetZoneId()
	
    if (zoneId == 33) then 
    SendWorldMessage("|cccff0000[PVP] ["..player:GetName().."] has killed ["..victim:GetName().."] in Gurubashi")
    elseif ( zoneId == 33) then --gurubashi arena
    SendWorldMessage("|cff".."ff0000".."[PVP] Gurubashi Arena is in Fighting!")
    return
    end

    if (zoneId == 139) then 
    SendWorldMessage("|cccff0000[PVP] ["..player:GetName().."] has killed ["..victim:GetName().."] in Plague Lands")
    elseif ( zoneId == 139) then --gurubashi arena
    SendWorldMessage("|cff".."ff0000".."[PVP] Gurubashi Arena is in Fighting!")
    return
    end



end





-- prevent honor/arena farming
-- [victimGUID] ={ lastKillerGUID }
local AntiFarm = { }

local function HandlePvPKill(event, player, victim)
    if (player:GetGUIDLow() ~= victim:GetGUIDLow()) then -- do not allow suicide reward
        CustomMessage(player, victim)
        if (AntiFarm[victim:GetGUIDLow()] == nil) then
        elseif (AntiFarm[victim:GetGUIDLow()][1] ~= player:GetGUIDLow()) then
        CustomMessage(player, victim)
        end
        AntiFarm = { [victim:GetGUIDLow()] = { player:GetGUIDLow() } }-- set last killer GUID
    end
end

RegisterPlayerEvent(6, HandlePvPKill)  