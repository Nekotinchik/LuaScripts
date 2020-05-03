function OnGossipHello(event, player, item)
player:GossipMenuAddItem(6, "VIP - VotePoint Panel", 0, 2)
player:GossipMenuAddItem(6, "5 hour", 0, 3)
player:GossipMenuAddItem(6, "24 hour", 0, 800)
player:GossipMenuAddItem(6, "test", 0, 900)
player:GossipMenuAddItem(4, "[ VIP SYSTEM ]", 0, 223)
player:GossipSendMenu(1, item)
end


function OnSelect(event, player, item, sender, intid, code)
if(intid == 999) then
player:GossipMenuAddItem(6, "VIP - VotePoint Panel", 0, 2)
player:GossipMenuAddItem(6, "5 hour", 0, 3)
player:GossipMenuAddItem(6, "24 hour", 0, 800)
player:GossipMenuAddItem(6, "test", 0, 900)
player:GossipMenuAddItem(4, "[ VIP SYSTEM ]", 0, 223)
player:GossipSendMenu(1, item, 1)
end


-- TEST 2
if (intid == 900) then
totaltime = os.time()
D = AuthDBQuery("SELECT MAX(starttime) FROM uptime");
local uptime = D:GetUInt32(0)
local c = totaltime - uptime
local seconds = c

    hours = string.format("%2.f", math.floor(seconds/3600));
    mins = string.format("%2.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%2.f", math.floor(seconds - hours*3600 - mins *60));
    time = hours..":"..mins..":"..secs

player:SendBroadcastMessage("|ccc006400[Server Uptime]|ccc00FF00 "..hours.." Hour(s) "..mins.." Minute(s) "..secs.." Second(s).")
end

--[[
--TEST
if (intid == 900) then
totaltime = os.time()
D = AuthDBQuery("SELECT starttime FROM uptime");
local uptime = D:GetUInt32(0)
local c = totaltime - uptime

  local seconds = c

    hours = string.format("%02.f", math.floor(seconds/3600));
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
    time = hours..":"..mins..":"..secs

player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: Server Uptime "..hours.." hours "..mins.." minutes "..secs.." seconds")
end
--]]


accountId = player:GetAccountId()
local Q = AuthDBQuery("SELECT VP FROM account where `id`='"..accountId.."'");
local VP = Q:GetUInt32(0)
local R = AuthDBQuery("SELECT VIP FROM account where `id`='"..accountId.."'");
local VIP = R:GetUInt32(0)
local T = AuthDBQuery("SELECT DP FROM account where `id`='"..accountId.."'");
local DP = T:GetUInt32(0)
local DG = 100020



if (intid == 32) then
change = 1
changevp = 500
if (VIP == 2) then
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You have now VIP 2") 
player:GossipComplete()
else
if (VIP == 1) and (VP >= 500) then    		
AuthDBQuery("update `account` set `VIP`=`VIP`+'"..change.."' where `id` = '"..accountId.."'");
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Great job, now you are VIP 2, thanks for your support :)") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You do not have enough VP points.")
player:GossipComplete()
end
end
end

--[ Daily Donor GEM x10 ] (VIP)

if (intid) == 10 then

playerguid = player:GetGUIDLow()
totaltime = os.time()
local a = CharDBQuery("SELECT donor_gem_reward FROM characters where `guid`='"..playerguid.."'");
local time1 = a:GetUInt32(0)
local cooldown = 86400  --24 hour cooldown
local c = totaltime - time1
local f = (cooldown - c)


  local seconds = f

    hours = string.format("%02.f", math.floor(seconds/3600));
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
    time = hours..":"..mins..":"..secs
 
if (VIP < 1) then
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: not VIP")
player:GossipComplete()
else
if (c >= cooldown) or (time1 == 0) then
player:AddItem(DG, 10)
player:SendBroadcastMessage("Good job")
CharDBQuery("update `characters` set `donor_gem_reward`='"..totaltime.."' where `guid`='"..playerguid.."'");
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: Need wait "..hours.." hours "..mins.." minutes "..secs.." seconds")
player:GossipComplete()
end
end
end




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
local cooldown = 18000  --10 sec cooldown
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




--[[
if (intid == 1) then
local 


hour = player:GetTotalPlayedTime();
change = 5000
name = player:GetName()
time = math.floor((5000-hour)/60)

if (player:GetTotalPlayedTime(5000) == true) then
CharDBQuery("update `characters` set `totaltime`=`totaltime`-'"..change.."' where `name` = '"..name.."'");
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Great job, check your bag :)") 
player:AddItem(17)
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You need "..time.." minutes playing. Call me later!") 
player:GossipComplete()
end
end




--[[
if (intid == 223) then
if Cooldowns1[player:GetName()] and ( os.difftime( os.time(), Cooldowns1[player:GetName()] ) < 60*NUM_MINUTES ) then
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: Need wait "..(math.floor(( NUM_MINUTES1 - (os.difftime( os.time(), Cooldowns1[player:GetName()] ) / 60)  )/60)).." hours.")	
return;
player:GossipComplete()
end
Cooldowns1[player:GetName()] = os.time();
player:AddItem(17)	
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: Great job, Check your bag :).")		
end

if (intid == 3) then
if Cooldowns[player:GetName()] and ( os.difftime( os.time(), Cooldowns[player:GetName()] ) < 60*NUM_MINUTES ) then
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: Need wait "..(math.floor( NUM_MINUTES - (os.difftime( os.time(), Cooldowns[player:GetName()] ) / 60)  )).."minutes.")	
player:GossipComplete()
return;

end
Cooldowns[player:GetName()] = os.time();
player:AddItem(17)	
player:GossipComplete()
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: Great job, Check your bag :).")		
end
--]]





if(intid == 2) or (intid == 2000) or (intid == 25) then
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: You VIP Rank : "..VIP.." - Your Vote Points(VP) : "..VP.." - Your Donor Points(DP) : "..DP.."")
player:GossipMenuAddItem(3, "|cccFF0000[ VIP RANK 2 ] (VIP 2)", 0, 26)
--player:GossipMenuAddItem(3, "[ Exchange mats (Account) ] (VIP)", 0, 26)
player:GossipMenuAddItem(3, "[ Convert Account to VIP 1 ] (VP : 450)", 0, 4)
--player:GossipMenuAddItem(6, "[ VIP BOX ](VIP or VP : 15)", 0, 26)
player:GossipMenuAddItem(3, "[ Dual Weapon - 2x1H ] (VIP or VP : 60)", 0, 5)
player:GossipMenuAddItem(3, "[ Buff ](VIP or VP : 2)", 0, 6)
--player:GossipMenuAddItem(2, "[ Speed ](VIP)", 0, 26)
player:GossipMenuAddItem(8, "[ Change Model ]", 0, 7)
player:GossipMenuAddItem(3, "[ Spells ]", 0, 8)
player:GossipMenuAddItem(3, "[ VIP Instance ]", 0, 9)
player:GossipMenuAddItem(3, "[ Level up to 100 ](VIP or VP : 10)", 0, 59)
player:GossipMenuAddItem(3, "------- DONOR GEM -------", 0, 2000)
player:GossipMenuAddItem(3, "[ Daily Donor GEM x10 ] (VIP)", 0, 10)
player:GossipMenuAddItem(3, "[ Donor GEM x5 ](VP : 5)", 0, 11)
player:GossipMenuAddItem(3, "[ Get Donor GEM's Bought ](Buy)", 0, 12)
player:GossipSendMenu(1, item, 2)
end

--[ Donor GEM x5 ](VP : 5)
if (intid == 11) then
changevp = 5
if (VP >=5 ) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddItem(DG, 5)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You do not have enough Vote Points!")
player:GossipComplete()
end
end


--[ Get Donor GEM's Bought ](Buy)
if (intid == 12) then
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]|ccc33FF33: You must buy from website.")
player:GossipComplete()
end


--[ Level up to 100 ](VIP or VP : 10)
if (intid == 59) then
changevp = 10
if (player:GetLevel() == 100) then --CHANGE TO YOU LEVEL MAX
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are 100")
player:GossipComplete()
else
if (VIP >= 1)  then
player:SetLevel(100)
player:GossipComplete()
else
if (VP >= 10) then
player:SetLevel(100)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end
end


--[ Change Model ]
if(intid == 7) then
player:GossipMenuAddItem(3, "|ccc006400[ Lich King ](VP : 5)", 0, 13)
player:GossipMenuAddItem(3, "|ccc006400[ Illidan ](VP : 5)", 0, 14)
player:GossipMenuAddItem(3, "|ccc006400[ King Varian ](VP : 5)", 0, 15)
player:GossipMenuAddItem(3, "|ccc006400[ Lady Sylvanas ](VP : 5)", 0, 16)
player:GossipMenuAddItem(3, "|ccc006400[ Lady Jaina ](VP : 5)", 0, 17)
player:GossipMenuAddItem(3, "|ccc006400[ Thrall ](VP : 5)", 0, 18)
player:GossipMenuAddItem(3, "|ccc006400[ Rexxar ](VP : 5)", 0, 19)
player:GossipMenuAddItem(3, "|ccc006400[ Alexstrasza ](VP : 5)", 0, 20)
player:GossipMenuAddItem(3, "|ccc006400[ Worgen ](VP : 5)", 0, 21)
player:GossipMenuAddItem(3, "|ccc006400[ Goblin ](VP : 5)", 0, 22)
player:GossipMenuAddItem(4, "|cccFF0000[ Change Size 50% ](VIP or VP : 1)", 0, 23)
player:GossipMenuAddItem(4, "|cccFF0000[ Demorph & Restore Size ]", 0, 24)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 25)
player:GossipSendMenu(1, item, 2)
end

--[ VIP RANK 2 ] (VIP 2)
if(intid == 26) then
player:GossipMenuAddItem(3, "[ Buff ] (VIP 2)", 0, 27)
--player:GossipMenuAddItem(6, "[ VIP 2 Instance ] (VIP 2)", 0, 28)
--player:GossipMenuAddItem(9, "[ Learn Speed Spell ](VIP 2 + 50 DGEM)", 0, 29)
player:GossipMenuAddItem(3, "[ Titan's Grip - 2x2H ](VIP 2 + 50 DGEM)", 0, 30)
player:GossipMenuAddItem(3, "[ Full Talant ](VIP 2 + 50 DGEM)", 0, 31)
player:GossipMenuAddItem(3, "[ UPGRADE VIP 1 TO 2 ](VIP 1 + 500 VP)", 0, 32)
player:GossipMenuAddItem(3, "------------------", 0, 26)
player:GossipMenuAddItem(3, "[ Change Name ](VIP 2 + 50 DGEM)", 0, 34)
player:GossipMenuAddItem(3, "[ Change Race ](VIP 2 + 50 DGEM)", 0, 35)
player:GossipMenuAddItem(3, "[ Change Faction ](VIP 2 + 50 DGEM)", 0, 36)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 25)
player:GossipSendMenu(1, item, 2)
end

--[ Buff ] (VIP 2)
if (intid == 27) then
if (VIP == 2) then
player:CastSpell(player, 50837)
player:CastSpell(player, 23769)
player:CastSpell(player, 23766)
player:CastSpell(player, 23738)
player:CastSpell(player, 23737)
player:CastSpell(player, 23736)
player:CastSpell(player, 23735)
player:AddAura(25898, player)
player:AddAura(26393, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP 2!") 
player:GossipComplete()
end
end

--[ Spells ] part 1
if(intid == 8) then
player:GossipMenuAddItem(4, "|cccFF0000[ Remove All VIP Spells ]", 0, 37)
player:GossipMenuAddItem(3, "|ccc006400[ Summer Flower ]", 0, 38)
if(player:GetTeam() == 1) then -- Player fractions 1 = Alliance
else
player:GossipMenuAddItem(3, "|ccc3333FF[ Allience Flag ]", 0, 39)
end
if(player:GetTeam() == 0) then -- Player fractions 0 = Horde
else
player:GossipMenuAddItem(3, "|cccFF0000[ Horde Flag ]", 0, 40)
end
player:GossipMenuAddItem(3, "|ccc006400[ Path of Cenarius ](VIP or VP : 1)", 0, 41)
player:GossipMenuAddItem(3, "|ccc006400[ Path of Illidan ](VIP or VP : 1)", 0, 42)
player:GossipMenuAddItem(3, "|ccc006400[ Love is In Air ](VIP or VP : 1)", 0, 43)
player:GossipMenuAddItem(3, "|ccc006400[ Red Portal ](VIP or VP : 5)", 0, 44)
player:GossipMenuAddItem(3, "|ccc006400[ Blue Portal ](VIP or VP : 5)", 0, 45)
player:GossipMenuAddItem(3, "|ccc006400[ Green Portal ](VIP or VP : 5)", 0, 46)
player:GossipMenuAddItem(3, "|ccc006400[ Yellow Portal ](VIP or VP : 5)", 0, 47)
player:GossipMenuAddItem(3, "|ccc006400[ Purple Portal ](VIP or VP : 5)", 0, 48)
player:GossipMenuAddItem(0, "|ccc993366[ Next ->]", 0, 49)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 25)
player:GossipSendMenu(1, item, 2)
end

--[ Red Portal ](VIP or VP : 5)
if(intid == 44) then
changevp = 5
if (VIP >= 1) then
player:AddAura(33338, player)
player:GossipComplete()
else
if (VP >= 5) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(33338, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Blue Portal ](VIP or VP : 5)
if(intid == 45) then
changevp = 5
if (VIP >= 1) then
player:AddAura(33340, player)
player:GossipComplete()
else
if (VP >= 5) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(33340, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Green Portal ](VIP or VP : 5)
if(intid == 46) then
changevp = 5
if (VIP >= 1) then
player:AddAura(33339, player)
player:GossipComplete()
else
if (VP >= 5) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(33339, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Yellow Portal ](VIP or VP : 5)
if(intid == 47) then
changevp = 5
if (VIP >= 1) then
player:AddAura(33341, player)
player:GossipComplete()
else
if (VP >= 5) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(33341, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Purple Portal ](VIP or VP : 5)
if(intid == 48) then
changevp = 5
if (VIP >= 1) then
player:AddAura(33342, player)
player:GossipComplete()
else
if (VP >= 5) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(33342, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end


--[ Summer Flower ]
if(intid == 38) then
player:AddAura(45417, player)
player:GossipComplete()
end

--[ Allience Flag ]
if(intid == 39) then
player:AddAura(32609, player)
player:GossipComplete()
end

--[ Horde Flag ]
if(intid == 40) then
player:AddAura(32610, player)
player:GossipComplete()
end

--[ Path of Cenarius ](VIP or VP : 1)

if(intid == 41) then
changevp = 1
if (VIP >= 1) then
player:AddAura(65745, player)
player:GossipComplete()
else
if (VP >= 1) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(65745, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Love is In Air ](VIP or VP : 1)
if(intid == 43) then
changevp = 1
if (VIP >= 1) then
player:AddAura(27741, player)
player:GossipComplete()
else
if (VP >= 1) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(27741, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Path of Illidan ](VIP or VP : 1)
if(intid == 42) then
changevp = 1
if (VIP >= 1) then
player:AddAura(50247, player)
player:GossipComplete()
else
if (VP >= 1) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(50247, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Spells ] part 2
if(intid == 49) then
player:GossipMenuAddItem(3, "|ccc006400[ Blue Banish ](VIP or VP : 5)", 0, 50)
player:GossipMenuAddItem(3, "|ccc006400[ Red Banish ](VIP or VP : 5)", 0, 51)
player:GossipMenuAddItem(3, "|ccc006400[ Yellow Banish ](VIP or VP : 5)", 0, 52)
player:GossipMenuAddItem(3, "|ccc006400[ Spirit Particles Green ](VIP or VP : 5)", 0, 58)
--player:GossipMenuAddItem(3, "|ccc006400[ Beam Red ](VIP or VP : 5)", 0, 53)
--player:GossipMenuAddItem(3, "|ccc006400[ Beam Blue ](VIP or VP : 5)", 0, 54)
player:GossipMenuAddItem(3, "|ccc006400[ Oil Coat ](VIP or VP : 10)", 0, 55)
player:GossipMenuAddItem(3, "|ccc006400[ Anveena ](VIP or VP : 10)", 0, 56)
player:GossipMenuAddItem(3, "|ccc006400[ Dark fire shield ](VIP or VP : 10)", 0, 57)
player:GossipMenuAddItem(3, "|ccc993366[<- Back]", 0, 8)
player:GossipSendMenu(1, item, 2)
end

--[ Blue Banish ](VIP or VP : 5)
if(intid == 50) then
changevp = 5
if (VIP >= 1) then
player:AddAura(33344, player)
player:GossipComplete()
else
if (VP >= 5) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(33344, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Red Banish ](VIP or VP : 5)
if(intid == 51) then
changevp = 5
if (VIP >= 1) then
player:AddAura(33343, player)
player:GossipComplete()
else
if (VP >= 5) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(33343, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Yellow Banish ](VIP or VP : 5)
if(intid == 52) then
changevp = 5
if (VIP >= 1) then
player:AddAura(33345, player)
player:GossipComplete()
else
if (VP >= 5) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(33345, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Oil Coat ](VIP or VP : 10)
if(intid == 55) then
changevp = 10
if (VIP >= 1) then
player:AddAura(45948, player)
player:GossipComplete()
else
if (VP >= 10) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(45948, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Anveena ](VIP or VP : 10)
if(intid == 56) then
changevp = 10
if (VIP >= 1) then
player:AddAura(46367, player)
player:GossipComplete()
else
if (VP >= 10) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(46367, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Dark fire shield ](VIP or VP : 10)
if(intid == 57) then
changevp = 10
if (VIP >= 1) then
player:AddAura(46804, player)
player:GossipComplete()
else
if (VP >= 10) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(46804, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Spirit Particles Green ](VIP or VP : 5)
if(intid == 58) then
changevp = 5
if (VIP >= 1) then
player:AddAura(18951, player)
player:GossipComplete()
else
if (VP >= 5) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddAura(18951, player)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Remove All VIP Spells ]
if(intid == 37) then
player:RemoveAura(45417)
player:RemoveAura(32609)
player:RemoveAura(32610)
player:RemoveAura(65745)
player:RemoveAura(50247)
player:RemoveAura(27741)
player:RemoveAura(33338)
player:RemoveAura(33339)
player:RemoveAura(33340)
player:RemoveAura(33341)
player:RemoveAura(33342)
player:RemoveAura(33344)
player:RemoveAura(33343)
player:RemoveAura(33345)
player:RemoveAura(45948)
player:RemoveAura(46367)
player:RemoveAura(46804)
player:RemoveAura(18951)
player:GossipComplete()
end

--[ Change Name ](VIP 2 + 50 DGEM)
if (intid == 34) then
if (VIP == 2) and (player:HasItem(DG, 50)) then
player:SetAtLoginFlag(1)
player:RemoveItem( 100020, 50 )
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Successfully re-login") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP 2 or you do not have enough Donor Gem!") 
player:GossipComplete()
end
end

--[ Change Race ](VIP 2 + 50 DGEM)
if (intid == 35) then
if (VIP == 2) and (player:HasItem(DG, 50)) then
player:SetAtLoginFlag(128)
player:RemoveItem( 100020, 50 )
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Successfully re-login") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP 2 or you do not have enough Donor Gem!") 
player:GossipComplete()
end
end

--[ Change Faction ](VIP 2 + 50 DGEM)
if (intid == 36) then
if (VIP == 2) and (player:HasItem(DG, 50)) then
player:SetAtLoginFlag(64)
player:RemoveItem( 100020, 50 )
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Successfully re-login") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP 2 or you do not have enough Donor Gem!") 
player:GossipComplete()
end
end

--[ Full Talant ](VIP 2 + 50 DGEM)
if (intid == 31) then
if (VIP == 2) and (player:HasItem(DG, 50)) then
player:SetFreeTalentPoints(300)
player:RemoveItem( 100020, 50 )
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You got 300 talented points") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You are not VIP 2 or you do not have enough Donor Gem!") 
player:GossipComplete()
end
end


--[ Titan's Grip - 2x2H ](VIP 2 + 50 DGEM)
if (intid == 30) then
if player:HasSpell(50483) then 
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You already know this ability.")
player:GossipComplete()
else
if (VIP > 1) and (player:HasItem(DG, 50)) then
player:LearnSpell(50483)
player:RemoveItem( 100020, 50 )
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You learned Titan's Grip!")
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP 2 or you do not have enough Donor Gem!")
player:GossipComplete()
end
end
end

--[ UPGRADE VIP 1 TO 2 ](VIP 1 + 500 VP)
if (intid == 32) then
change = 1
changevp = 500
if (VIP == 2) then
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You have now VIP 2") 
player:GossipComplete()
else
if (VIP == 1) and (VP >= 500) then    		
AuthDBQuery("update `account` set `VIP`=`VIP`+'"..change.."' where `id` = '"..accountId.."'");
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Great job, now you are VIP 2, thanks for your support :)") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You do not have enough VP points.")
player:GossipComplete()
end
end
end

--[ Convert Account to VIP 1 ] (DP : 450)
if (intid == 4) then
local 
accountId = player:GetAccountId()
change = 1
changevp = 450
if (VIP == 1) then    		
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You have VIP 1 status")
player:GossipComplete()
elseif (VP >= 450) then
AuthDBQuery("update `account` set `VIP`=`VIP`+'"..change.."' where `id` = '"..accountId.."'");
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Great job, now you are VIP 1, thanks for your support :)") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You do not have enough VP points.")
player:GossipComplete()
end
end

--[ Dual Weapon - 2x1H ] (VIP or VP : 60)
if (intid == 5) then 
local changevp = 60
if player:HasSpell(674) then 
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You already know this ability.")
player:GossipComplete()
else
if (VIP >= 1) then
player:LearnSpell(674)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You learned Dual Weapon!")
player:GossipComplete()
else
if (VP >= 60) then
player:LearnSpell(674)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You learned Dual Weapon!")
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end
end

--[ Buff ](VIP or VP : 2) 
if (intid == 6) then 
local changevp = 2
if (VIP >= 1) then
player:CastSpell(player, 23769)
player:CastSpell(player, 23766)
player:CastSpell(player, 23738)
player:CastSpell(player, 23737)
player:CastSpell(player, 23736)
player:CastSpell(player, 23735)
player:GossipComplete()
else
if (VP >= 2) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:CastSpell(player, 23769)
player:CastSpell(player, 23766)
player:CastSpell(player, 23738)
player:CastSpell(player, 23737)
player:CastSpell(player, 23736)
player:CastSpell(player, 23735)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end


--[[ Рабочая функция на 100%
if (intid == 4) then
local 
accountId = player:GetAccountId()
changevip = 1
changevp = 450
local Q = AuthDBQuery("SELECT VIP FROM account where `id`='"..accountId.."'");
local VIP = Q:GetUInt32(0)
if (VIP == 1) then    		
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You have VIP 1 status")
player:GossipComplete()
else
if ((VP and VP > 449) == true) then
AuthDBQuery("update `account` set `VIP`=`VIP`+'"..changevip.."' where `id` = '"..accountId.."'");
local R = AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
local VP = R:GetUInt32(0)
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Great job, now you are VIP 1, thanks for your support :)") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You do not have enough VP points.")
player:GossipComplete()
end
end
end
--]]

--[[ Рабочая функция на 100%
if (intid == 5) then
local 
accountId = player:GetAccountId()
change = 1
changevp = 450
local Q = AuthDBQuery("SELECT VIP FROM account where `id`='"..accountId.."'");
local VIP = Q:GetUInt32(0)
local R = AuthDBQuery("SELECT VP FROM account where `id`='"..accountId.."'");
local VP = R:GetUInt32(0)
if (VIP == 1) then    		
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You have VIP 1 status")
player:GossipComplete()
elseif (VP >= 450) then
AuthDBQuery("update `account` set `VIP`=`VIP`+'"..change.."' where `id` = '"..accountId.."'");
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Great job, now you are VIP 1, thanks for your support :)") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You do not have enough VP points.")
player:GossipComplete()
end
end
--]]

end
RegisterItemGossipEvent(200001,1,OnGossipHello)
RegisterItemGossipEvent(200001,2,OnSelect)
--[[
if (intid == 1) then
local 


hour = player:GetTotalPlayedTime();
change = 5000
name = player:GetName()
time = math.floor((5000-hour)/60)

if (player:GetTotalPlayedTime(5000) == true) then
CharDBQuery("update `characters` set `totaltime`=`totaltime`-'"..change.."' where `name` = '"..name.."'");
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: Great job, check your bag :)") 
player:AddItem(17)
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You need "..time.." minutes playing. Call me later!") 
player:GossipComplete()
end
end

if (intid == 2) then
local 
accountId = player:GetAccountId()
local Q = AuthDBQuery("SELECT vp FROM account_data where `id`='"..accountId.."'");
local vp = Q:GetUInt32(0)
if (vp > 1) then      		
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You have "..vp.." VP point!") 
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: idi naxyu") 
end
end

if (intid == 4) then
local 
accountId = player:GetAccountId()
results = AuthDBQuery("SELECT vp FROM account_data where `id`='"..accountId.."'");

player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You have "..results.." VP point!") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: У тебя нехватает VP очков") 
player:GossipComplete()
end


accountName = player:GetAccountId()
if (intid == 3) then


player:SendBroadcastMessage("|ccc33FFFF[Reward Stone]: You need "..player:GetAccountId().." minutes playing. Call me later!") 
player:AddItem(17)


end
--]]



