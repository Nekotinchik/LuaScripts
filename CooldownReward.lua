--24 hour reward
if (intid) == 800 then

playerguid = player:GetGUIDLow()
totaltime = os.time()
local a = CharDBQuery("SELECT reward_24_hour FROM characters where `guid`='"..playerguid.."'");
local time1 = a:GetUInt32(0)
local cooldown = 86400  --24 hour cooldown
local c = totaltime - time1
local f = (cooldown - c)


  local seconds = f

    hours = string.format("%02.f", math.floor(seconds/3600));
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
    time = hours..":"..mins..":"..secs
 


            
 

if (c >= cooldown) or (time1 == 0) then
player:AddItem(17)
player:SendBroadcastMessage("Good job")
CharDBQuery("update `characters` set `reward_24_hour`='"..totaltime.."' where `guid`='"..playerguid.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: Need wait "..hours.." hours "..mins.." minutes "..secs.." seconds")
player:GossipComplete()
end
end



-- 5 hour reward
if (intid) == 3 then
playerguid = player:GetGUIDLow()
totaltime = player:GetTotalPlayedTime();
local a = CharDBQuery("SELECT reward_5_hour FROM characters where `guid`='"..playerguid.."'");
local time1 = a:GetUInt32(0)
local b = CharDBQuery("SELECT totaltime FROM characters where `guid`='"..playerguid.."'");
local time2 = b:GetUInt32(0)
local cooldown = 18000  --5 hour cooldown
local c = totaltime - time1
local f = cooldown - c

  local seconds = f

    hours = string.format("%02.f", math.floor(seconds/3600));
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
    time = hours..":"..mins..":"..secs


if (c >= cooldown) or (time1 == 0) then
player:AddItem(17)
player:SendBroadcastMessage("Good job")
CharDBQuery("update `characters` set `reward_5_hour`='"..totaltime.."' where `guid`='"..playerguid.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: Need wait "..hours.." hours "..mins.." minutes "..secs.." seconds")
end
end
