local ChatPrefix = "#w";
local WorldChannelName = "Officer";
local CooldownTimer = 0; -- Cooldown in seconds. Set to 0 for no CD obviously.
 
local Class = { -- Class colors :) Prettier and easier than the elseif crap :) THESE ARE HEX COLORS!
    [1] = "008000", -- Warrior
    [2] = "008000", -- Paladin
    [3] = "008000", -- Hunter
    [4] = "008000", -- Rogue
    [5] = "008000", -- Priest
    [6] = "008000", -- Death Knight
    [7] = "008000", -- Shaman
    [8] = "008000", -- Mage
    [9] = "008000", -- Warlock
    [11] = "008000" -- Druid
};
 
local Rank = {
    [0] = "7DFF00", -- Player
    [1] = "00FFFF |TInterface\\CHATFRAME\\UI-CHATICON-BLIZZ:15|t ", -- Moderator
    [2] = "00FFFF |TInterface\\CHATFRAME\\UI-CHATICON-BLIZZ:15|t ", -- Game Master
    [3] = "00FFFF |TInterface\\CHATFRAME\\UI-CHATICON-BLIZZ:15|t ", -- Admin
    [4] = "E7A200" -- Console
};

 -- Do not edit below unless you know what you're doing :)
if (ChatPrefix:sub(-1) ~= " ") then
    ChatPrefix = ChatPrefix.." ";
end
 
local RCD = {};
function ChatSystem(event, player, msg, _, lang)
    if (RCD[player:GetGUIDLow()] == nil) then
        RCD[player:GetGUIDLow()] = 0;
    end
    if (msg:sub(1, ChatPrefix:len()) == ChatPrefix) then
        local r = RCD[player:GetGUIDLow()] - os.clock();
        if (0 < r) then
            local s = string.format("|cFFFF0000You must wait %i second(s) before sending another chat message!|r", math.floor(r));
            player:SendAreaTriggerMessage(s);
        else
            RCD[player:GetGUIDLow()] = os.clock() + CooldownTimer;
             local t = table.concat({"|cff008000[", WorldChannelName, "] [|r|cff", Rank [player:GetGMRank()] or Rank[0], "|Hplayer:", player:GetName(), "|h", player:GetName(), "|h|r|cff008000]: |r|cff", Class[player:GetClass()], msg:sub(ChatPrefix:len()+1), "|r"});
            SendWorldMessage(t);
        end
        return false;
    end
end
 
RegisterPlayerEvent(18, ChatSystem);
RegisterPlayerEvent(4, function(_, player) RCD[player:GetGUIDLow()] = 0; end);