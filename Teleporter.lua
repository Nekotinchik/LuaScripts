--[[
	This script is made By Ased

]]

local item30day = 21558
      item15day = 21559
	  item7day = 21557
	  item1day = 21561
	  


function OnGossipHello(event, player, item)
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(7, "|ccc993366[ Server News ]", 0, 1)
player:GossipMenuAddItem(7, "|ccc993366[ Test ]", 0, 1000)
player:GossipMenuAddItem(6, "|ccc0000FF[ Main Cities ]", 0, 2)
player:GossipMenuAddItem(9, "|cccFF0000[ Task Area ]", 0, 3)
player:GossipMenuAddItem(2, "|ccc009933[ Instance - Bosses ]", 0, 4)
player:GossipMenuAddItem(2, "|ccc0000FF[ Item Upgrade (Easy Mode) ]", 0, 5)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena ]", 0, 6)
player:GossipMenuAddItem(2, "|ccc009933[ Level up Zone ]", 0, 7)
player:GossipMenuAddItem(9, "|cccFF0000[ Duel Zone ]", 0, 201)
player:GossipMenuAddItem(9, "|cccFF0000[ World Boss ]", 0, 9)
player:GossipMenuAddItem(3, "|ccc000099[ Player Tools ]", 0, 10)
player:GossipMenuAddItem(8, "|cccC71585[ VIP - VotePoint Panel ]", 0, 223)
player:GossipMenuAddItem(6, "[ Gifts - Rewards (Daily) ]", 0, 281)
player:GossipMenuAddItem(4, "|ccc00746F[ Reset Instance ]", 0, 11)
player:GossipMenuAddItem(4, "|ccc00746F[ Hunter pet level ]", 0, 1000)
player:GossipSendMenu(1, item)
end
end

function OnSelect(event, player, item, sender, intid, code)
if(intid == 29) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(7, "|ccc993366[ Server News]", 0, 1)
player:GossipMenuAddItem(7, "|ccc993366[ Test ]", 0, 1000)
player:GossipMenuAddItem(6, "|ccc0000FF[ Main Cities ]", 0, 2)
player:GossipMenuAddItem(9, "|cccFF0000[ Task Area ]", 0, 3)
player:GossipMenuAddItem(2, "|ccc009933[ Instance - Bosses ]", 0, 4)
player:GossipMenuAddItem(2, "|ccc0000FF[ Item Upgrade (Easy Mode) ]", 0, 5)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena ]", 0, 6)
player:GossipMenuAddItem(2, "|ccc009933[ Level up Zone ]", 0, 7)
player:GossipMenuAddItem(9, "|cccFF0000[ Duel Zone ]", 0, 201)
player:GossipMenuAddItem(9, "|cccFF0000[ World Boss ]", 0, 9)
player:GossipMenuAddItem(3, "|ccc000099[ Player Tools ]", 0, 10)
player:GossipMenuAddItem(8, "|cccC71585[ VIP - VotePoint Panel ]", 0, 223)
player:GossipMenuAddItem(6, "[ Gifts - Rewards (Daily) ]", 0, 281)
player:GossipMenuAddItem(4, "|ccc00746F[ Reset Instance ]", 0, 11)
player:GossipMenuAddItem(4, "|ccc00746F[ Hunter pet level ]", 0, 1000)
player:GossipSendMenu(1, item, 1)
end
end


accountId = player:GetAccountId()
local Q = AuthDBQuery("SELECT VP FROM account where `id`='"..accountId.."'");
local VP = Q:GetUInt32(0)
local R = AuthDBQuery("SELECT VIP FROM account where `id`='"..accountId.."'");
local VIP = R:GetUInt32(0)
local T = AuthDBQuery("SELECT DP FROM account where `id`='"..accountId.."'");
local DP = T:GetUInt32(0)
local DG = 100020


--hunter pet test
if(intid == 1000) then

unit:SetLevel(100)
end

--Server News
if(intid == 1) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: |ccc33FF33Go to our website & read rules & news.")
player:GossipComplete()
end

--Main Cities

if(intid == 2) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|cccFF0000[ Task Area ]", 0, 12)
-- Player fractions 1 = Alliance
if(player:GetTeam() == 1) then
else
player:GossipMenuAddItem(1, "|ccc3333FF[Alliance] Darnassus", 0, 13)
player:GossipMenuAddItem(1, "|ccc3333FF[Alliance] Exodar", 0, 14)
player:GossipMenuAddItem(1, "|ccc3333FF[Alliance] Ironforge", 0, 15)
player:GossipMenuAddItem(1, "|ccc3333FF[Alliance] Stormwind", 0, 16)
end
-- Player fractions 0 = Horde
if(player:GetTeam() == 0) then
else
player:GossipMenuAddItem(1, "|cccFF0000[Horde] Orgrimmar", 0, 17)
player:GossipMenuAddItem(1, "|cccFF0000[Horde] Silvermoon", 0, 18)
player:GossipMenuAddItem(1, "|cccFF0000[Horde] Thunder Bluff", 0, 19)
player:GossipMenuAddItem(1, "|cccFF0000[Horde] Undercity", 0, 20)
end
player:GossipMenuAddItem(6, "|ccc9933CC[Neutral] Dalaran", 0, 21)
player:GossipMenuAddItem(6, "|ccc9933CC[Neutral] Shattrath City", 0, 22)
player:GossipMenuAddItem(9, "[Neutral] Booty Bay", 0, 23)
player:GossipMenuAddItem(9, "[Neutral] Everlook", 0, 24)
player:GossipMenuAddItem(9, "[Neutral] Gadegetzan", 0, 25)
player:GossipMenuAddItem(9, "[Neutral] Mudsprocket", 0, 26)
player:GossipMenuAddItem(9, "[Neutral] Rathet", 0, 27)
player:GossipMenuAddItem(9, "[Neutral] Isle of Quel'Danas", 0, 28)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 29)
player:GossipSendMenu(1, item, 2)
end
end

-- Task Area 
if(intid == 3) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|cccFF0000[ Task Area (PVE) ]", 0, 12)
player:GossipMenuAddItem(9, "|cccFF0000[ Task Area (PVP) ]", 0, 31)
player:GossipMenuAddItem(9, "|cccFF0000[ Task Area (PVE NEW) ]", 0, 900)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 29)
player:GossipSendMenu(1, item, 3)
end
end

if(intid == 900) then
player:Teleport(1, 103.836098, 1218.259644, 161.921204, 0.205760)
player:CastSpell(player, 9175)
player:GossipComplete()
end

-- Instance - Bosses
if(intid == 4) or (intid == 40) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "|ccc0000FF[ Official Instances ]", 0, 32)
player:GossipMenuAddItem(2, "|cccFF0000[ Our Instances I ]", 0, 33)
player:GossipMenuAddItem(2, "|cccFF0000[ Our Instances II ]", 0, 34)
player:GossipMenuAddItem(2, "|cccFF0000[ Our Instances III ]", 0, 35)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 29)
player:GossipSendMenu(1, item, 4)
end
end

-- Instance - Bosses -> Official Instances
if(intid == 32) or (intid == 53) or (intid == 63) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "|cccFF0000[ Kalimdor ]", 0, 36)
player:GossipMenuAddItem(2, "|cccFF0000[ Eastern Kingdoms ]", 0, 37)
player:GossipMenuAddItem(2, "|ccc009933[ Outland ]", 0, 38)
player:GossipMenuAddItem(2, "|ccc0000FF[ Northrend ]", 0, 39)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 40)
player:GossipSendMenu(1, item, 32)
end
end

-- Instance - Bosses -> Official Instances -> Kalimdor
if(intid == 36) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Blackfathom Deeps ]", 0, 41)
player:GossipMenuAddItem(2, "[ Caverns of Time ]", 0, 42)
player:GossipMenuAddItem(2, "[ Dire Maul ]", 0, 43)
player:GossipMenuAddItem(2, "[ Maraudon ]", 0, 44)
player:GossipMenuAddItem(2, "[ Onyxia's Lair ]", 0, 45)
player:GossipMenuAddItem(2, "[ Ragefire Chasm ]", 0, 46)
player:GossipMenuAddItem(2, "[ Razorfen Downs ]", 0, 47)
player:GossipMenuAddItem(2, "[ Razorfen Kraul ]", 0, 48)
player:GossipMenuAddItem(2, "[ Ruins of Ahn'Qiraj ]", 0, 49)
player:GossipMenuAddItem(2, "[ Temple of Ahn'Qiraj ]", 0, 50)
player:GossipMenuAddItem(2, "[ Walling Caverns ]", 0, 51)
player:GossipMenuAddItem(2, "[ Zul'Farrak ]", 0, 52)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 53)
player:GossipSendMenu(1, item, 36)
end
end

-- Instance - Bosses -> Official Instances -> Eastern Kingdoms
if(intid == 37) or (intid == 73) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|cccFF0000[ Molten Core ]", 0, 54)
player:GossipMenuAddItem(9, "|cccFF0000[ Isle of Quel'Danas ]", 0, 55)
player:GossipMenuAddItem(2, "[ Blackrock Depths ]", 0, 56)
player:GossipMenuAddItem(2, "[ Blackrock Spire ]", 0, 57)
player:GossipMenuAddItem(2, "[ Blackwing Lair ]", 0, 58)
player:GossipMenuAddItem(2, "[ Deadmines ]", 0, 59)
player:GossipMenuAddItem(2, "[ Gnomeregan ]", 0, 60)
player:GossipMenuAddItem(2, "[ Karazhan ]", 0, 61)
player:GossipMenuAddItem(0, "|ccc993366[Next ->]", 0, 62)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 63)
player:GossipSendMenu(1, item, 37)
end
end

-- Instance - Bosses -> Official Instances -> Eastern Kingdoms 2
if(intid == 62)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Scarlet Monastery ]", 0, 64)
player:GossipMenuAddItem(2, "[ Scholomance ]", 0, 65)
player:GossipMenuAddItem(2, "[ Shadowfang Keep ]", 0, 66)
player:GossipMenuAddItem(2, "[ Stratholme ]", 0, 67)
player:GossipMenuAddItem(2, "[ Sunken Temple ]", 0, 68)
player:GossipMenuAddItem(2, "[ The Stockade ]", 0, 69)
player:GossipMenuAddItem(2, "[ Uldaman ]", 0, 70)
player:GossipMenuAddItem(2, "[ Zul'Aman ]", 0, 71)
player:GossipMenuAddItem(2, "[ Zul'Gurub ]", 0, 72)
player:GossipMenuAddItem(2, "|ccc993366[<- Back]", 0, 73)
player:GossipSendMenu(1, item, 62)
end
end

-- Instance - Bosses -> Official Instances -> Outland
if(intid == 38)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|cccFF0000[ Black Temple ]", 0, 74)
player:GossipMenuAddItem(2, "[ Auchindoun ]", 0, 75)
player:GossipMenuAddItem(2, "[ Coilfang Reservoir ]", 0, 76)
player:GossipMenuAddItem(2, "[ Gruul's Lair ]", 0, 77)
player:GossipMenuAddItem(2, "[ Hellfire Citadel ]", 0, 78)
player:GossipMenuAddItem(2, "[ Tempest Keep ]", 0, 79)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 63)
player:GossipSendMenu(1, item, 38)
end
end

-- Instance - Bosses -> Official Instances -> Northrend
if(intid == 39)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Ahn'Kahet ]", 0, 80)
player:GossipMenuAddItem(2, "[ Azjol-Nerub ]", 0, 81)
player:GossipMenuAddItem(2, "[ Dark'Tharon Keep ]", 0, 82)
player:GossipMenuAddItem(2, "[ Gun'Drak ]", 0, 83)
player:GossipMenuAddItem(2, "[ Icecrown Citadel ]", 0, 84)
player:GossipMenuAddItem(2, "[ Naxxramas ]", 0, 85)
player:GossipMenuAddItem(2, "[ The Nexus ]", 0, 86)
player:GossipMenuAddItem(2, "[ The Obsidian Sanctum ]", 0, 87)
player:GossipMenuAddItem(2, "[ Ulduar ]", 0, 88)
player:GossipMenuAddItem(2, "[ Violet Hold ]", 0, 89)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 4)
player:GossipSendMenu(1, item, 39)
end
end

-- Instance - Bosses -> Our Instances I 
if(intid == 33)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Snowman's ]", 0, 90)
player:GossipMenuAddItem(2, "[ Emerald Forest ]", 0, 91)
player:GossipMenuAddItem(2, "[ The Verdant Fields ]", 0, 92)
player:GossipMenuAddItem(2, "[ The Deadmines ]", 0, 93)
player:GossipMenuAddItem(2, "[ Desert Eagle ]", 0, 94)
player:GossipMenuAddItem(2, "[ Gruul's Lair ]", 0, 95)
player:GossipMenuAddItem(2, "[ Olympic Square ]", 0, 96)
player:GossipMenuAddItem(2, "[ Sunwell Plateau ]", 0, 97)
player:GossipMenuAddItem(9, "|cccFF0000[ Kingdom of Tigers ]", 0, 98)
player:GossipMenuAddItem(2, "[ Dustwallow ]", 0, 99)
player:GossipMenuAddItem(2, "[ Dead city ]", 0, 100)
player:GossipMenuAddItem(2, "[ The Barrens ]", 0, 101)
player:GossipMenuAddItem(9, "|cccFF0000[ Fight for Flag ]", 0, 102)
player:GossipMenuAddItem(9, "|cccFF0000[ Fight in Black Temple ]", 0, 103)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 4)
player:GossipSendMenu(1, item, 33)
end
end

-- Instance - Bosses -> Our Instances I -> Kingdom of Tigers  
if(intid == 98)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Greenland Kingdom of Tigers ]", 0, 104)
player:GossipMenuAddItem(2, "[ Last Kingdom of Tigers ]", 0, 105)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 33)
player:GossipSendMenu(1, item, 98)
end
end

-- Instance - Bosses -> Our Instances I -> Fight for Flag  
if(intid == 102)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
if(player:GetTeam() == 0) then
else
player:GossipMenuAddItem(2, "|cccFF0000[ Fight for Flag ]", 0, 106)
end
if(player:GetTeam() == 1) then
else
player:GossipMenuAddItem(2, "|ccc3333FF[ Fight for Flag ]", 0, 107)
end
player:GossipMenuAddItem(2, "[ Fight for Glory ]", 0, 108)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 33)
player:GossipSendMenu(1, item, 102)
end
end

-- Instance - Bosses -> Our Instances I -> Fight in Black Temple
if(intid == 103) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Normal Black Temple ]", 0, 109)
player:GossipMenuAddItem(2, "[ Demon Hunters ]", 0, 110)
player:GossipMenuAddItem(2, "[ Clean the Black Temple ]", 0, 111)
player:GossipMenuAddItem(2, "[ Illidari War - Disable ]", 0, 112)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 33)
player:GossipSendMenu(1, item, 103)
end
end

-- Instance - Bosses -> Our Instances II
if(intid == 34) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Kael'thas Sunstrider ]", 0, 113)
player:GossipMenuAddItem(2, "[ Illidan Stormrage ]", 0, 114)
player:GossipMenuAddItem(2, "[ Crystal's of North ]", 0, 115)
player:GossipMenuAddItem(2, "[ Dragon's in Ice Land ]", 0, 116)
player:GossipMenuAddItem(2, "[ Balargrade Fortress ]", 0, 117)
player:GossipMenuAddItem(2, "[ Crystalsong Forest ]", 0, 118)
player:GossipMenuAddItem(2, "[ Defend of Hyjal ]", 0, 119)
player:GossipMenuAddItem(2, "[ Frozen Statue ]", 0, 120)
player:GossipMenuAddItem(9, "[ Queen of Naga ]", 0, 121)
player:GossipMenuAddItem(2, "[ Dark Gateway ]", 0, 122)
player:GossipMenuAddItem(2, "[ Kings of Lake ]", 0, 123)
player:GossipMenuAddItem(2, "[ Old Worgen ]", 0, 124)
player:GossipMenuAddItem(9, "[ Angry Penguins ]", 0, 125)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 4)
player:GossipSendMenu(1, item, 34)
end
end

-- Instance - Bosses -> Our Instances III
if(intid == 35) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Court of the Highborne ]", 0, 126)
player:GossipMenuAddItem(2, "[ Desolace ]", 0, 127)
player:GossipMenuAddItem(2, "[ Fight for Sunwell ]", 0, 128)
player:GossipMenuAddItem(2, "[ Amazon Rainforest ]", 0, 129)
player:GossipMenuAddItem(2, "[ Magtheridon's Lair ]", 0, 130)
player:GossipMenuAddItem(2, "[ Oshu'gun ]", 0, 131)
player:GossipMenuAddItem(2, "[ Tempest Keep ]", 0, 132)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 4)
player:GossipSendMenu(1, item, 35)
end
end

-- Item Upgrade (Easy Mode)
if(intid == 5) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Weapons ]", 0, 133)
player:GossipMenuAddItem(9, "|ccc0000FF[ Gears ]", 0, 134)
player:GossipMenuAddItem(9, "[ Miscellaneous/Relics ]", 0, 135)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 29)
player:GossipSendMenu(1, item, 5)
end
end

-- Item Upgrade (Easy Mode) -> Weapons 
if(intid == 133) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Upgrade 1 ]", 0, 136)
player:GossipMenuAddItem(9, "|ccc993366[ Upgrade 2 ]", 0, 137)
player:GossipMenuAddItem(9, "|ccc993366[ Upgrade 3 ]", 0, 138)
player:GossipMenuAddItem(9, "|ccc993366[ Upgrade 4 ]", 0, 139)
player:GossipMenuAddItem(9, "|ccc993366[ Upgrade 5 ]", 0, 140)
player:GossipMenuAddItem(9, "|ccc993366[ Upgrade 6 ]", 0, 141)
player:GossipMenuAddItem(9, "|ccc993366[ Upgrade 7 ]", 0, 142)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 5)
player:GossipSendMenu(1, item, 133)
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 1
if(intid == 136) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 143)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 136)
player:GossipMenuAddItem(9, "[ Emerald Forest ]", 0, 91)
player:GossipMenuAddItem(9, "[ The Verdant Fields ]", 0, 92)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 136)
player:GossipMenuAddItem(9, "[ Black Temple ]", 0, 74)
player:GossipMenuAddItem(9, "[ Molten Core ]", 0, 54)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 133)
player:GossipSendMenu(1, item, 136)
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 2
if(intid == 137) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 144)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 137)
player:GossipMenuAddItem(9, "[ Emerald Forest ]", 0, 91)
player:GossipMenuAddItem(9, "[ The Verdant Fields ]", 0, 92)
player:GossipMenuAddItem(9, "[ Dustwallow ]", 0, 99)
player:GossipMenuAddItem(9, "[ Dead city ]", 0, 100)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 133)
player:GossipSendMenu(1, item, 137)
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 3
if(intid == 138) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 145)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 138)
player:GossipMenuAddItem(9, "[ Balargrade Fortress ]", 0, 117)
player:GossipMenuAddItem(9, "[ Crystal's of North ]", 0, 115)
player:GossipMenuAddItem(9, "[ Clean the Black Temple ]", 0, 111)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 133)
player:GossipSendMenu(1, item, 138)
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 4
if(intid == 139) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 146)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 139)
player:GossipMenuAddItem(9, "[ Angry Penguins ]", 0, 125)
player:GossipMenuAddItem(9, "[ Dark Gateway ]", 0, 122)
player:GossipMenuAddItem(9, "[ Kings of Lake ]", 0, 123)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 133)
player:GossipSendMenu(1, item, 138)
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 5
if(intid == 140) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 147)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 140)
player:GossipMenuAddItem(9, "[ Fight for Sunwell ]", 0, 128)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 133)
player:GossipSendMenu(1, item, 139)
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 6
if(intid == 141) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 148)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 141)
player:GossipMenuAddItem(9, "[ Oshu'gun ]", 0, 131)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 133)
player:GossipSendMenu(1, item, 141)
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 7
if(intid == 142) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 149)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 142)
player:GossipMenuAddItem(9, "[ Tempest Keep ]", 0, 132)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 133)
player:GossipSendMenu(1, item, 142)
end
end

-- Item Upgrade (Easy Mode) -> Gears 
if(intid == 134) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 1 ]", 0, 150)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 2 ]", 0, 151)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 3 ]", 0, 152)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 4 ]", 0, 153)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 5 ]", 0, 154)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 6 ]", 0, 155)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 7 ]", 0, 156)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 8 ]", 0, 157)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 9 ]", 0, 158)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 10 ]", 0, 159)
player:GossipMenuAddItem(0, "|ccc993366[ Next ->]", 0, 160)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 5)
player:GossipSendMenu(1, item, 134)
end
end

-- Item Upgrade (Easy Mode) -> Gears 2
if(intid == 160) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 11 ]", 0, 161)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 12 ]", 0, 162)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 13 ]", 0, 163)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 14 ]", 0, 164)
player:GossipMenuAddItem(9, "|ccc0000FF[ Upgrade 15 ]", 0, 165)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 160)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 1
if(intid == 150) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 166)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 150)
player:GossipMenuAddItem(9, "[ Emerald Forest ]", 0, 91)
player:GossipMenuAddItem(9, "[ The Verdant Fields ]", 0, 92)
player:GossipMenuAddItem(9, "[ The Deadmines ]", 0, 93)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 150)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 2
if(intid == 151) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 167)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 151)
player:GossipMenuAddItem(9, "[ Emerald Forest ]", 0, 91)
player:GossipMenuAddItem(9, "[ The Verdant Fields ]", 0, 92)
player:GossipMenuAddItem(9, "[ The Deadmines ]", 0, 93)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 151)
player:GossipMenuAddItem(2, "[ Sunwell Plateau ]", 0, 97)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 151)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 3
if(intid == 152) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 168)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 152)
player:GossipMenuAddItem(9, "[ Dustwallow ]", 0, 99)
player:GossipMenuAddItem(9, "[ Dead city ]", 0, 100)
player:GossipMenuAddItem(9, "[ The Barrens ]", 0, 101)
player:GossipMenuAddItem(2, "|cccFF0000[ Kingdom of Tigers]", 0, 169)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 152)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 3 -> Kingdom of Tigers
if(intid == 169) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Greenland Kingdom of Tigers ]", 0, 104)
player:GossipMenuAddItem(2, "[ Last Kingdom of Tigers ]", 0, 105)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 152)
player:GossipSendMenu(1, item, 169)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 4
if(intid == 153) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 170)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 153)
player:GossipMenuAddItem(9, "[ Dustwallow ]", 0, 99)
player:GossipMenuAddItem(9, "[ Dead city ]", 0, 100)
player:GossipMenuAddItem(9, "[ The Barrens ]", 0, 101)
player:GossipMenuAddItem(2, "|cccFF0000[ Kingdom of Tigers]", 0, 171)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 153)
player:GossipMenuAddItem(9, "|cccFF0000[ Fight for Flag ]", 0, 172)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 153)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 4 -> Kingdom of Tigers
if(intid == 171) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Greenland Kingdom of Tigers ]", 0, 104)
player:GossipMenuAddItem(2, "[ Last Kingdom of Tigers ]", 0, 105)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 153)
player:GossipSendMenu(1, item, 171)
end
end
-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 4 -> Fight for Flag
if(intid == 172)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
if(player:GetTeam() == 0) then
else
player:GossipMenuAddItem(2, "|cccFF0000[ Fight for Flag ]", 0, 106)
end
if(player:GetTeam() == 1) then
else
player:GossipMenuAddItem(2, "|ccc3333FF[ Fight for Flag ]", 0, 107)
end
player:GossipMenuAddItem(2, "[ Fight for Glory ]", 0, 108)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 153)
player:GossipSendMenu(1, item, 172)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 5
if(intid == 154) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 173)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 154)
player:GossipMenuAddItem(9, "[ Dustwallow ]", 0, 99)
player:GossipMenuAddItem(9, "[ Dead city ]", 0, 100)
player:GossipMenuAddItem(9, "[ The Barrens ]", 0, 101)
player:GossipMenuAddItem(2, "|cccFF0000[ Kingdom of Tigers]", 0, 174)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 154)
player:GossipMenuAddItem(9, "|cccFF0000[ Fight for Flag ]", 0, 175)
player:GossipMenuAddItem(9, "[ Demon Hunter ]", 0, 110)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 154)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 5 -> Kingdom of Tigers
if(intid == 174) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Greenland Kingdom of Tigers ]", 0, 104)
player:GossipMenuAddItem(2, "[ Last Kingdom of Tigers ]", 0, 105)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 154)
player:GossipSendMenu(1, item, 174)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 5 -> Fight for Flag
if(intid == 175)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
if(player:GetTeam() == 0) then
else
player:GossipMenuAddItem(2, "|cccFF0000[ Fight for Flag ]", 0, 106)
end
if(player:GetTeam() == 1) then
else
player:GossipMenuAddItem(2, "|ccc3333FF[ Fight for Flag ]", 0, 107)
end
player:GossipMenuAddItem(2, "[ Fight for Glory ]", 0, 108)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 154)
player:GossipSendMenu(1, item, 175)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 6
if(intid == 155) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 176)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 155)
player:GossipMenuAddItem(9, "[ Dustwallow ]", 0, 99)
player:GossipMenuAddItem(9, "[ Dead city ]", 0, 100)
player:GossipMenuAddItem(9, "[ The Barrens ]", 0, 101)
player:GossipMenuAddItem(2, "|cccFF0000[ Kingdom of Tigers]", 0, 177)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 155)
player:GossipMenuAddItem(9, "|cccFF0000[ Fight for Flag ]", 0, 178)
player:GossipMenuAddItem(9, "[ Demon Hunter ]", 0, 110)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 155)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 6 -> Kingdom of Tigers
if(intid == 177) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Greenland Kingdom of Tigers ]", 0, 104)
player:GossipMenuAddItem(2, "[ Last Kingdom of Tigers ]", 0, 105)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 155)
player:GossipSendMenu(1, item, 177)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 6 -> Fight for Flag
if(intid == 178)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
if(player:GetTeam() == 0) then
else
player:GossipMenuAddItem(2, "|cccFF0000[ Fight for Flag ]", 0, 106)
end
if(player:GetTeam() == 1) then
else
player:GossipMenuAddItem(2, "|ccc3333FF[ Fight for Flag ]", 0, 107)
end
player:GossipMenuAddItem(2, "[ Fight for Glory ]", 0, 108)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 155)
player:GossipSendMenu(1, item, 178)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 7
if(intid == 156) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 179)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 156)
player:GossipMenuAddItem(9, "[ Balargrade Fortress ]", 0, 117)
player:GossipMenuAddItem(9, "[ Dragon's in Ice Land ]", 0, 116)
player:GossipMenuAddItem(9, "[ Clean the Black Temple ]", 0, 111)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 156)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 8
if(intid == 157) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 180)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 157)
player:GossipMenuAddItem(2, "[ Crystalsong Forest ]", 0, 118)
player:GossipMenuAddItem(2, "[ Defend of Hyjal ]", 0, 119)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 157)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 9
if(intid == 158) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 181)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 158)
player:GossipMenuAddItem(2, "[ Dark Gateway ]", 0, 122)
player:GossipMenuAddItem(2, "[ Kings of Lake ]", 0, 123)
player:GossipMenuAddItem(2, "[ Old Worgen ]", 0, 124)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 158)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 10
if(intid == 159) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 182)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 159)
player:GossipMenuAddItem(2, "[ Court of the Highborne ]", 0, 126)
player:GossipMenuAddItem(2, "[ Desolace ]", 0, 127)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 134)
player:GossipSendMenu(1, item, 159)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 11
if(intid == 161) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 183)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 161)
player:GossipMenuAddItem(2, "[ Amazon Rainforest ]", 0, 129)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 160)
player:GossipSendMenu(1, item, 161)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 12
if(intid == 162) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 184)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 162)
player:GossipMenuAddItem(2, "[ Magtheridon's Lair ]", 0, 130)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 160)
player:GossipSendMenu(1, item, 162)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 13
if(intid == 163) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 185)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 163)
player:GossipMenuAddItem(2, "[ Tempest Keep ]", 0, 132)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 160)
player:GossipSendMenu(1, item, 163)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 14
if(intid == 164) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 186)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 164)
player:GossipMenuAddItem(2, "[ Tempest Keep ]", 0, 132)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 160)
player:GossipSendMenu(1, item, 164)
end
end

-- Item Upgrade (Easy Mode) -> Gears -> Upgrade 15
if(intid == 165) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 187)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 165)
player:GossipMenuAddItem(2, "[ Tempest Keep ]", 0, 132)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 160)
player:GossipSendMenu(1, item, 165)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics
if(intid == 135) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "[ Upgrade 1 ]", 0, 188)
player:GossipMenuAddItem(9, "[ Upgrade 2 ]", 0, 189)
player:GossipMenuAddItem(9, "[ Upgrade 3 ]", 0, 190)
player:GossipMenuAddItem(9, "[ Upgrade 4 ]", 0, 191)
player:GossipMenuAddItem(9, "[ Upgrade 5 ]", 0, 192)
player:GossipMenuAddItem(9, "[ Upgrade 6 ]", 0, 193)
player:GossipMenuAddItem(9, "[ Upgrade 7 ]", 0, 194)
player:GossipMenuAddItem(9, "[ Upgrade 8 ]", 0, 195)
player:GossipMenuAddItem(0, "[<- Back]", 0, 5)
player:GossipSendMenu(1, item, 135)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 1
if(intid == 188) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 196)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 188)
player:GossipMenuAddItem(9, "|cccFF0000[ Kingdom of Tigers ]", 0, 197)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 135)
player:GossipSendMenu(1, item, 188)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 1 -> Kingdom of Tigers
if(intid == 197) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Greenland Kingdom of Tigers ]", 0, 104)
player:GossipMenuAddItem(2, "[ Last Kingdom of Tigers ]", 0, 105)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 188)
player:GossipSendMenu(1, item, 197)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 2
if(intid == 189) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 198)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 189)
player:GossipMenuAddItem(2, "[ Desert Eagle ]", 0, 94)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 189)
player:GossipMenuAddItem(2, "[ Emerald Forest ]", 0, 91)
player:GossipMenuAddItem(2, "[ The Verdant Fields ]", 0, 92)
player:GossipMenuAddItem(2, "[ The Deadmines ]", 0, 93)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 189)
player:GossipMenuAddItem(9, "|cccFF0000[ Kingdom of Tigers ]", 0, 199)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena ]", 0, 200)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 135)
player:GossipSendMenu(1, item, 189)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 2 -> Kingdom of Tigers
if(intid == 199) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Greenland Kingdom of Tigers ]", 0, 104)
player:GossipMenuAddItem(2, "[ Last Kingdom of Tigers ]", 0, 105)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 189)
player:GossipSendMenu(1, item, 199)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 2 -> Arena
if(intid == 200) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 1 ]", 0, 201)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 2 ]", 0, 202)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 3 ]", 0, 203)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 4 ]", 0, 204)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 189)
player:GossipSendMenu(1, item, 200)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 3
if(intid == 190) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 205)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 190)
player:GossipMenuAddItem(2, "[ Dustwallow ]", 0, 99)
player:GossipMenuAddItem(2, "[ Dead city ]", 0, 100)
player:GossipMenuAddItem(2, "[ The Barrens ]", 0, 101)
player:GossipMenuAddItem(2, "[ Demon Hunters ]", 0, 110)
player:GossipMenuAddItem(9, "|cccFF0000[ Kingdom of Tigers ]", 0, 206)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 190)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena ]", 0, 207)
player:GossipMenuAddItem(9, "|cccFF0000[ Fight for Flag ]", 0, 208)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 135)
player:GossipSendMenu(1, item, 190)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 2 -> Kingdom of Tigers
if(intid == 206) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(2, "[ Greenland Kingdom of Tigers ]", 0, 104)
player:GossipMenuAddItem(2, "[ Last Kingdom of Tigers ]", 0, 105)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 190)
player:GossipSendMenu(1, item, 206)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 2 -> Arena
if(intid == 207) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 1 ]", 0, 201)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 2 ]", 0, 202)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 3 ]", 0, 203)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 4 ]", 0, 204)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 190)
player:GossipSendMenu(1, item, 207)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 2 -> Fight for Flag
if(intid == 208)  then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
if(player:GetTeam() == 0) then
else
player:GossipMenuAddItem(2, "|cccFF0000[ Fight for Flag ]", 0, 106)
end
if(player:GetTeam() == 1) then
else
player:GossipMenuAddItem(2, "|ccc3333FF[ Fight for Flag ]", 0, 107)
end
player:GossipMenuAddItem(2, "[ Fight for Glory ]", 0, 108)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 190)
player:GossipSendMenu(1, item, 208)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 4
if(intid == 191) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 209)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 191)
player:GossipMenuAddItem(2, "[ Kael'thas Sunstrider ]", 0, 113)
player:GossipMenuAddItem(2, "[ Illidan Stormrage ]", 0, 114)
player:GossipMenuAddItem(2, "[ Balargrade Fortress ]", 0, 117)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 135)
player:GossipSendMenu(1, item, 191)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 5
if(intid == 192) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 210)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 192)
player:GossipMenuAddItem(2, "[ Crystalsong Forest ]", 0, 118)
player:GossipMenuAddItem(2, "[ Balargrade Fortress ]", 0, 117)
player:GossipMenuAddItem(2, "[ Clean the Black Temple ]", 0, 111)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 135)
player:GossipSendMenu(1, item, 192)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 6
if(intid == 193) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 211)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 193)
player:GossipMenuAddItem(2, "[ Kings of Lake ]", 0, 123)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 193)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena ]", 0, 212)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 135)
player:GossipSendMenu(1, item, 193)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 6 -> Arena
if(intid == 212) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 1 ]", 0, 201)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 2 ]", 0, 202)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 3 ]", 0, 203)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 4 ]", 0, 204)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 193)
player:GossipSendMenu(1, item, 212)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 7
if(intid == 194) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 213)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 194)
player:GossipMenuAddItem(2, "[ Fight for Sunwell ]", 0, 128)
player:GossipMenuAddItem(2, "[ Amazon Rainforest ]", 0, 129)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 135)
player:GossipSendMenu(1, item, 194)
end
end

-- Item Upgrade (Easy Mode) -> Miscellaneous/Relics -> Upgrade 8
if(intid == 195) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Quests ]", 0, 214)
player:GossipMenuAddItem(9, "[ ------------------ ]", 0, 195)
player:GossipMenuAddItem(2, "[ Tempest Keep ]", 0, 132)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 135)
player:GossipSendMenu(1, item, 195)
end
end

-- Arena
if(intid == 6) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 1 ]", 0, 201)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 2 ]", 0, 202)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 3 ]", 0, 203)
player:GossipMenuAddItem(9, "|cccFF0000[ Arena 4 ]", 0, 204)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 29)
player:GossipSendMenu(1, item, 6)
end
end

-- World Boss
if(intid == 9) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(9, "|ccc993366[ Titan Lord ]", 0, 215)
player:GossipMenuAddItem(9, "|ccc993366[ Archimonde ]", 0, 216)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 29)
player:GossipSendMenu(1, item, 9)
end
end

-- Player Tools
if(intid == 10) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:GossipMenuAddItem(4, "|ccc00746F[ Reset Instance ]", 0, 11)
--player:GossipMenuAddItem(3, "[ Max My Skill ]", 0, 217)
player:GossipMenuAddItem(3, "[ Reset Talents ]", 0, 219)
player:GossipMenuAddItem(3, "[ Repair Items]", 0, 220)
player:GossipMenuAddItem(3, "[ Bank ]", 0, 221)
player:GossipMenuAddItem(3, "[ Mail ]", 0, 222)
player:GossipMenuAddItem(3, "|cccFF0000[ Remove Resurrection Sickness ]", 0, 218)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 29)
player:GossipSendMenu(1, item, 10)
end
end

-- VIP - VotePoint Panel

if(intid == 223) or (intid == 2000)  then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: \n |ccc33FF33 >>> Your VIP Rank :|cccFF00FF "..VIP.."|ccc33FF33 <<< \n |ccc33FF33 >>> Your Vote Points(VP) :|cccFF00FF "..VP.."|ccc33FF33 <<< \n |ccc33FF33 >>> Your Donor Points(DP) :|cccFF00FF "..DP.."|ccc33FF33 <<<")
player:GossipMenuAddItem(3, "|cccFF0000[ VIP RANK 2 ] (VIP 2)", 0, 224)
--player:GossipMenuAddItem(3, "[ Exchange mats (Account) ] (VIP)", 0, 225)
player:GossipMenuAddItem(3, "[ Convert Account to VIP 1 ] (VP : 450)", 0, 226)
--player:GossipMenuAddItem(6, "[ VIP BOX ](VIP or VP : 15)", 0, 227)
player:GossipMenuAddItem(3, "[ Dual Weapon - 2x1H ] (VIP or VP : 60)", 0, 228)
player:GossipMenuAddItem(3, "[ Buff ](VIP or VP : 2)", 0, 229)
--player:GossipMenuAddItem(2, "[ Speed ](VIP)", 0, 230)
player:GossipMenuAddItem(8, "[ Change Model ]", 0, 231)
player:GossipMenuAddItem(3, "[ Spells ]", 0, 232)
--player:GossipMenuAddItem(3, "[ VIP Instance ]", 0, 233)
player:GossipMenuAddItem(3, "[ Level up to 100 ](VIP or VP : 10)", 0, 234)
player:GossipMenuAddItem(3, "------- DONOR GEM -------", 0, 2000)
player:GossipMenuAddItem(3, "[ Daily Donor GEM x10 ] (VIP)", 0, 235)
player:GossipMenuAddItem(3, "[ Donor GEM x5 ](VP : 5)", 0, 236)
player:GossipMenuAddItem(3, "[ Get Donor GEM's ](Buy)", 0, 237)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 29)
player:GossipSendMenu(1, item, 223)
end

-- [ VIP RANK 2 ] (VIP 2)

if(intid == 224) then
player:GossipMenuAddItem(3, "[ Buff ] (VIP 2)", 0, 238)
--player:GossipMenuAddItem(6, "[ VIP 2 Instance ] (VIP 2)", 0, 239)
--player:GossipMenuAddItem(9, "[ Learn Speed Spell ](VIP 2 + 50 DGEM)", 0, 240)
player:GossipMenuAddItem(3, "[ Titan's Grip - 2x2H ](VIP 2 + 50 DGEM)", 0, 241)
player:GossipMenuAddItem(3, "[ Full Talant ](VIP 2 + 50 DGEM)", 0, 242)
player:GossipMenuAddItem(3, "[ UPGRADE VIP 1 TO 2 ](VIP 1 + 500 VP)", 0, 243)
player:GossipMenuAddItem(3, "------------------", 0, 26)
player:GossipMenuAddItem(3, "[ Change Name ](VIP 2 + 50 DGEM)", 0, 244)
player:GossipMenuAddItem(3, "[ Change Race ](VIP 2 + 50 DGEM)", 0, 245)
player:GossipMenuAddItem(3, "[ Change Faction ](VIP 2 + 50 DGEM)", 0, 246)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 223)
player:GossipSendMenu(1, item, 224)
end

--[ Change Model ]
if(intid == 231) then
player:GossipMenuAddItem(3, "|ccc006400[ Lich King ](VIP OR VP : 5)", 0, 247)
player:GossipMenuAddItem(3, "|ccc006400[ Illidan ](VIP OR VP : 5)", 0, 248)
player:GossipMenuAddItem(3, "|ccc006400[ King Varian ](VIP OR VP : 5)", 0, 249)
player:GossipMenuAddItem(3, "|ccc006400[ Lady Sylvanas ](VIP OR VP : 5)", 0, 250)
player:GossipMenuAddItem(3, "|ccc006400[ Lady Jaina ](VIP OR VP : 5)", 0, 251)
player:GossipMenuAddItem(3, "|ccc006400[ Thrall ](VIP OR VP : 5)", 0, 252)
player:GossipMenuAddItem(3, "|ccc006400[ Rexxar ](VIP OR VP : 5)", 0, 253)
player:GossipMenuAddItem(3, "|ccc006400[ Alexstrasza ](VIP OR VP : 5)", 0, 254)
player:GossipMenuAddItem(3, "|ccc006400[ Worgen ](VIP OR VP : 5)", 0, 255)
player:GossipMenuAddItem(3, "|ccc006400[ Goblin ](VIP OR VP : 5)", 0, 256)
player:GossipMenuAddItem(4, "|cccFF0000[ Change Size 50% ](VIP or VP : 1)", 0, 257)
player:GossipMenuAddItem(4, "|cccFF0000[ Demorph & Restore Size ]", 0, 258)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 223)
player:GossipSendMenu(1, item, 2)
end

--[ Spells ] part 1
if(intid == 232) then
player:GossipMenuAddItem(4, "|cccFF0000[ Remove All VIP Spells ]", 0, 259)
player:GossipMenuAddItem(3, "|ccc006400[ Summer Flower ]", 0, 260)
if(player:GetTeam() == 1) then -- Player fractions 1 = Alliance
else
player:GossipMenuAddItem(3, "|ccc3333FF[ Allience Flag ]", 0, 261)
end
if(player:GetTeam() == 0) then -- Player fractions 0 = Horde
else
player:GossipMenuAddItem(3, "|cccFF0000[ Horde Flag ]", 0, 262)
end
player:GossipMenuAddItem(3, "|ccc006400[ Path of Cenarius ](VIP or VP : 1)", 0, 263)
player:GossipMenuAddItem(3, "|ccc006400[ Path of Illidan ](VIP or VP : 1)", 0, 264)
player:GossipMenuAddItem(3, "|ccc006400[ Love is In Air ](VIP or VP : 1)", 0, 265)
player:GossipMenuAddItem(3, "|ccc006400[ Red Portal ](VIP or VP : 5)", 0, 266)
player:GossipMenuAddItem(3, "|ccc006400[ Blue Portal ](VIP or VP : 5)", 0, 267)
player:GossipMenuAddItem(3, "|ccc006400[ Green Portal ](VIP or VP : 5)", 0, 268)
player:GossipMenuAddItem(3, "|ccc006400[ Yellow Portal ](VIP or VP : 5)", 0, 269)
player:GossipMenuAddItem(3, "|ccc006400[ Purple Portal ](VIP or VP : 5)", 0, 270)
player:GossipMenuAddItem(0, "|ccc993366[ Next ->]", 0, 271)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 223)
player:GossipSendMenu(1, item, 2)
end

--[ Spells ] part 2
if(intid == 271) then
player:GossipMenuAddItem(3, "|ccc006400[ Blue Banish ](VIP or VP : 5)", 0, 272)
player:GossipMenuAddItem(3, "|ccc006400[ Red Banish ](VIP or VP : 5)", 0, 273)
player:GossipMenuAddItem(3, "|ccc006400[ Yellow Banish ](VIP or VP : 5)", 0, 274)
player:GossipMenuAddItem(3, "|ccc006400[ Spirit Particles Green ](VIP or VP : 5)", 0, 275)
--player:GossipMenuAddItem(3, "|ccc006400[ Beam Red ](VIP or VP : 5)", 0, 276)
--player:GossipMenuAddItem(3, "|ccc006400[ Beam Blue ](VIP or VP : 5)", 0, 277)
player:GossipMenuAddItem(3, "|ccc006400[ Oil Coat ](VIP or VP : 10)", 0, 278)
player:GossipMenuAddItem(3, "|ccc006400[ Anveena ](VIP or VP : 10)", 0, 279)
player:GossipMenuAddItem(3, "|ccc006400[ Dark fire shield ](VIP or VP : 10)", 0, 280)
player:GossipMenuAddItem(3, "|ccc993366[<- Back]", 0, 232)
player:GossipSendMenu(1, item, 2)
end

--[ Gifts - Rewards (Daily) ]
if(intid == 281) then
player:GossipMenuAddItem(3, "|cccFF0000[ Daily Gift ]", 0, 282)
player:GossipMenuAddItem(3, "|cccFF0000[ Every 5 Hours play gift ]", 0, 283)
--player:GossipMenuAddItem(3, "|cccFF0000[ Every 65 Duel win gift ]", 0, 284)
--player:GossipMenuAddItem(3, "|cccFF0000[ Every 65 Kills gift ]", 0, 285)
--player:GossipMenuAddItem(3, "|cccFF0000[ Every friends gift ]", 0, 286)
player:GossipMenuAddItem(3, "|ccc993366[<- Back]", 0, 29)
player:GossipSendMenu(1, item, 2)
end


--[[
-- Morph
if(intid == 225) then
player:GossipMenuAddItem(8, "[ Transformacion 1 ]", 0, 228)
player:GossipMenuAddItem(8, "[ Transformacion 2 ]", 0, 229)
player:GossipMenuAddItem(8, "[ Change Size ]", 0, 242)
player:GossipMenuAddItem(8, "[ Demorph & Restore Size ]", 0, 243)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 223)
player:GossipSendMenu(1, item, 225)
end

-- Transformacion 1

if(intid == 228) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else
player:GossipMenuAddItem(8, "[ |cff005D5DSylvanas ]", 0, 230)
player:GossipMenuAddItem(8, "[ |cff005D5DTyrande ]", 0, 231)
player:GossipMenuAddItem(8, "[ |cff005D5DMalfurion ]", 0, 232)
player:GossipMenuAddItem(8, "[ |cff005D5DCupidon ]", 0, 233)
player:GossipMenuAddItem(8, "[ |cff005D5DMedivh ]", 0, 234)
player:GossipMenuAddItem(8, "[ |cff005D5DWizzard ]", 0, 235)
player:GossipMenuAddItem(8, "[ |cff005D5DMummy ]", 0, 236)
player:GossipMenuAddItem(8, "[ |cff005D5DMaiev ]", 0, 237)
player:GossipMenuAddItem(8, "[ |cff005D5DJaina ]", 0, 238)
player:GossipMenuAddItem(8, "[ |cff005D5DMorph-Rexxar ]", 0, 239)
player:GossipMenuAddItem(8, "[ |cff005D5DMorph-Kael'Talas ]", 0, 240)
player:GossipMenuAddItem(8, "[ |cff005D5DDemon'Form ]", 0, 241)
player:GossipMenuAddItem(0, "[ |ccc993366[<- Back]", 0, 225)
player:GossipSendMenu(1, item, 228)
end
end

-- Transformacion 1

if(intid == 229) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else
player:GossipMenuAddItem(8, "[ High Nethermancer Zerevor ]", 0, 244)
player:GossipMenuAddItem(8, "[ Lady Malande ]", 0, 245)
player:GossipMenuAddItem(8, "[ Rage Winterchill ]", 0, 246)
player:GossipMenuAddItem(8, "[ Anetheron ]", 0, 247)
player:GossipMenuAddItem(8, "[ Kaz'rogal ]", 0, 248)
player:GossipMenuAddItem(8, "[ Azgalor ]", 0, 249)
player:GossipMenuAddItem(8, "[ Hydross the Unstable ]", 0, 250)
player:GossipMenuAddItem(8, "[ Lurker Below ]", 0, 251)
player:GossipMenuAddItem(8, "[ Leotharas the Blind ]", 0, 252)
player:GossipMenuAddItem(0, "|ccc993366[<- Back]", 0, 225)
player:GossipSendMenu(1, item, 229)
end
end
--]]

-- Task Area PVE
if(intid == 12) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, -248.403, 939.289, 84.3798, 1.55782)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end



-- Task Area PVP
if(intid == 31) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 3944.452881, -3767.908203, 158.252350, 6.084591)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Darnassus
if(intid == 13) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, 9949.559570, 2284.209961, 1341.394287, 1.627286)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Exodar
if(intid == 14) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(530, -3965.699951, -11653.599609, -138.843994, 0.852154)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Ironforge
if(intid == 15) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -4918.879883, -940.406006, 501.563995, 5.423470)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Stormwind
if(intid == 16) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -8829.450195, 626.165222, 93.978813, 3.833897)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Orgrimmar
if(intid == 17) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, 1533.579468, -4418.092773, 12.336556, 6.175542)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Silvermoon
if(intid == 18) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 9487.690430, -7279.200195, 14.286600, 6.164780)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Thunder Bluff
if(intid == 19) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -1277.369995, 124.804001, 131.287003, 5.222740)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Undercity
if(intid == 20) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 1584.069946, 241.987000, -52.153400, 0.049647)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Dalaran
if(intid == 21) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 5804.149902, 624.770996, 647.767029, 1.640000)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Shattrath City
if(intid == 22) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, -1851.353882, 5400.875977, -12.428000, 1.808724)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Booty Bay
if(intid == 23) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -14438.114258, 471.286041, 15.338450, 0.571359)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Everlook
if(intid == 24) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, 6725.689941, -4619.439941, 720.908997, 4.668020)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Gadegetzan
if(intid == 25) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -7177.149902, -3785.340088, 8.369810, 6.102370)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Mudsprocket
if(intid == 26) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -4573.790039, -3173.149902, 34.087700, 3.123100)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Rathet
if(intid == 27) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -952.951599, -3745.909424, 5.624103, 4.175926)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Isle of Quel'Danas
if(intid == 28) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 12947.400391, -6893.310059, 5.683980, 3.091540)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Blackfathom Deeps
if(intid == 41) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, 4249.990234, 740.101990, -25.670530, 1.340620)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Caverns of Time
if(intid == 42) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -8174.657227, -4731.429688, 33.841358, 4.973137)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Dire Maul
if(intid == 43) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -3962.207275, 1130.786377, 161.048538, 6.276886)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Maraudon
if(intid == 44) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -1422.459351, 2918.398682, 136.134689, 1.663978)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Onyxia's Lair
if(intid == 45) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -4707.232422, -3727.32081, 54.671791, 3.762882)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Ragefire Chasm
if(intid == 46) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(1, 1811.780029, -4410.500000, -18.470400, 5.201650)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Razorfen Downs
if(intid == 47) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(1, -4657.299805, -2519.350098, 81.052902, 4.548080)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Razorfen Kraul
if(intid == 48) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(1, -4471.690918, -1681.182373, 80.496506, 1.178675)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Ruins of Ahn'Qiraj
if(intid == 49) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(1, -8409.820313, 1499.060059, 27.717899, 2.518680)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Temple of Ahn'Qiraj
if(intid == 50) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -8240.089844, 1991.319946, 129.072006, 0.941603)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Walling Caverns
if(intid == 51) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -740.059021, -2214.229980, 16.137400, 2.568243)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Zul'Farrak
if(intid == 52) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -6801.189941, -2893.020020, 9.003880, 0.158639)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Molten Core
if(intid == 54) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(230, 1120.509888, -458.718597, -102.587318, 3.543414)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Isle of Quel'Danas
if(intid == 55) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 12947.400391, -6893.310059, 5.683980, 3.091540)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Blackrock Depths
if(intid == 56) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -7180.837402, -921.166565, 165.762833, 4.962928)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Blackrock Spire
if(intid == 57) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -7525.969727, -1227.428711, 285.732483, 5.162419)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Blackwing Lair
if(intid == 58) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(229, 168.955078, -474.783203, 116.841133, 0.012649)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Deadmines
if(intid == 59) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(0, -11208.299805, 1672.520020, 24.660000, 1.541481)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Gnomeregan
if(intid == 60) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(0, -5163.310059, 925.787109, 257.179504, 1.479877)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Karazhan
if(intid == 61) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -11118.900391, -2010.329956, 47.081902, 0.649895)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Scarlet Monastery
if(intid == 64) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 2872.600098, -764.398010, 160.332870, 5.057350)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Scholomance
if(intid == 65) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 1269.640015, -2556.209961, 93.608803, 0.620623)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Shadowfang Keep
if(intid == 66) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -234.675003, 1561.630005, 76.892097, 1.240310)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Stratholme
if(intid == 67) then
if (player:IsInCombat() == true) then
                                 
player:GossipComplete()
else 
player:Teleport(0, 3352.919922, -3379.030029, 144.781998, 6.259780)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Sunken Temple
if(intid == 68) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -10177.900391, -3994.899902, -111.251862, 6.018850)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- The Stockade
if(intid == 69) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -8771.280273, 841.118530, 90.546112, 0.637747)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Uldaman
if(intid == 70) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -6071.370117, -2955.159912, 209.781998, 0.015708)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Zul'Aman
if(intid == 71) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 6850.496094, -7989.523926, 189.496567, 4.728113)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Zul'Gurub
if(intid == 72) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -11916.329102, -1213.508911, 92.286797, 4.704529)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Black Temple
if(intid == 74) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, -3648.737549, 316.534515, 36.705620, 3.003311)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Auchindoun
if(intid == 75) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, -3324.489990, 4943.450195, -101.238998, 4.639010)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Coilfang Reservoir
if(intid == 76) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 735.065979, 6883.450195, -66.291298, 5.891720)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Gruul's Lair
if(intid == 77) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 3530.060059, 5104.0880078, 4.900733, 5.511170)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Hellfire Citadel
if(intid == 78) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, -390.863007, 3130.639893, 3.985788, 0.218692)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Tempest Keep
if(intid == 79) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 3092.075195, 1424.215698, 191.398575, 4.619884)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Ahn'Kahet
if(intid == 80) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 3641.840088, 2032.939941, 2.470000, 4.256052)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Azjol-Nerub
if(intid == 81) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 3680.212891, 2165.632324, 35.830566, 2.406438)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Dark'Tharon Keep
if(intid == 82) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 4774.600098, -2032.920044, 229.145142, 1.590000)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Gun'Drak
if(intid == 83) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 6829.589844, -4525.520020, 442.067993, 3.106690)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Icecrown Citadel
if(intid == 84) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 5873.819824, 2110.979980, 636.010986, 3.552300)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Naxxramas
if(intid == 85) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 3668.719971, -1262.459961, 243.621994, 4.785000)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- The Nexus
if(intid == 86) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 3781.810059, 6953.649902, 104.820000, 0.467432)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- The Obsidian Sanctum
if(intid == 87) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 3557.235107, 275.412628, -115.964691, 3.220780)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Ulduar
if(intid == 88) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(571, 9049.370117, -1282.349976, 1060.189941, 5.839500)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Violet Hold
if(intid == 89) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 5696.729980, 507.399994, 652.969971, 4.030000)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Snowman's
if(intid == 90) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -4536.921387, -1640.542603, 503.492462, 3.105752)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Emerald Forest
if(intid == 91) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(169, 2740.424072, -3320.807373, 102.922958, 3.329003)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- The Verdant Fields
if(intid == 92) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(169, -2128.120117, -1005.89015, 133.269974, 0.500000)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- The Deadmines
if(intid == 93) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(36, -1900.249634, 489.758972, 4.897117, 2.638943)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Desert Eagle
if(intid == 94) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(1, -8487.125977, 1555.548218, 34.115845, 4.023612)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Gruul's Lair
if(intid == 95) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(530, 3530.060059, 5104.0880078, 4.900733, 5.511170)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Olympic Square
if(intid == 96) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -7933.125488, 1221.404053, 127.339447, 5.620684)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Sunwell Plateau
if(intid == 97) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(530, 12574.099609, -6774.810059, 16.021400, 3.137880)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Dustwallow
if(intid == 99) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(1, -5251.464355, -3316.320313, 89.617538, 4.271361)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Dead city
if(intid == 100) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(560, 1138.477417, -205.723755, 73.282593, 3.167510)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- The Barrens
if(intid == 101) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -485.272308, -1010.845276, 191.220154, 2.730795)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Greenland Kingdom of Tigers
if(intid == 104) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(0, -11916.096680, -1287.950684, 86.074371, 4.689215)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Last Kingdom of Tigers
if(intid == 105) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -6673.522461, -2888.658447, 12.986328, 4.054240)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Fight for Flag (for Horde)
if(intid == 106) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:Teleport(543, -821.018921, 1221.593140, 87.037361, 3.350386)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Fight for Flag (for Allaince)
if(intid == 107) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(543, -1757.360474, 1183.015015, 106.732956, 0.475828)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Fight for Glory
if(intid == 108) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 2401.696777, 5781.528320, 161.791687, 4.093249)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Normal Black Temple
if(intid == 109) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, -3648.737549, 316.534515, 36.705620, 3.003311)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Demon Hunter
if(intid == 110) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(564, 421.921051, 1288.720093, 126.896149, 4.779936)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Clean the Black Temple
if(intid == 111) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(564, 995.930115, 1305.405762, 126.921860, 4.647998)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Illidari War - Disable
if(intid == 112) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(564, 493.418488, 1607.815063, 71.101707, 5.602236)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Kael'thas Sunstrider
if(intid == 113) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 2933.457764, 4113.812500, 163.879807, 1.948755)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Illidan Stormrage
if(intid == 114) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, -3657.214844, -131.166443, 238.736496, 6.260272)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Crystal's of North
if(intid == 115) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 5739.369141, 5455.978516, 204.174210, 1.101862)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Dragon's in Ice Land
if(intid == 116) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 4094.265381, 7359.219238, 730.945190, 3.677355)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Balargrade Fortress
if(intid == 117) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 7058.162109, 4259.111816, 677.951843, 4.530961)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Crystalsong Forest
if(intid == 118) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 5261.814453, 156.582779, 192.343094, 6.0185590)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Defend of Hyjal
if(intid == 119) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(534, 5031.598633, -1747.111694, 1323.894531, 2.313397)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Frozen Statue
if(intid == 120) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 7688.470703, -3237.176025, 870.895691, 6.134805)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Queen of Naga
if(intid == 121) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 1523.290283, 5843.952148, 5.296920, 3.782238)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Dark Gateway
if(intid == 122) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(309, -11941.439453, -2563.583008, -42.625202, 3.473808)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Kings of Lake 
if(intid == 123) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 5415.263184, 4921.037109, -193.493835, 4.989575)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Old Worgen
if(intid == 124) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(580, 2593.111084, 711.171875, 4.964682, 3.165156)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Angry Penguins
if(intid == 125) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(571, 2407.841797, 4552.335449, 56.497490, 4.943042)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Court of the Highborne
if(intid == 126) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(429, -79.769897, 396.326904, 30.120106, 6.248628)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Desolace
if(intid == 127) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -1065.731323, 2920.124023, 180.743378, 3.421976)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Fight for Sunwell
if(intid == 128) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(580, 1216.344727, 629.727295, 35.973145, 3.076443)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Amazon Rainforest
if(intid == 129) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -12813.816406, -1465.758423, 124.595711, 2.991568)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Magtheridon's Lair
if(intid == 130) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(544, 190.035004, 3.384580, 69.141106, 3.138554)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Oshu'gun
if(intid == 131) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, -2550.587158, 8570.330078, 188.688858, 0.888322)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Tempest Keep
if(intid == 132) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 3092.075195, 1424.215698, 191.398575, 4.619884)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Arena 1
if(intid == 201) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, -13229.929688, 225.319717, 33.876457, 1.059875)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Arena 2
if(intid == 202) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, -2059.466064, 6681.493164, 13.938608, 5.221356)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Arena 3
if(intid == 203) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(530, 2793.747070, 5918.325684, 5.253096, 1.060476)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Arena 4
if(intid == 204) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -3761.600830, 1127.874390, 133.138153, 4.685496)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- --Level up Zone
if(intid == 7) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -978.928894, -56.008522, 27.746517, 6.204994)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Titan Lord
if(intid == 215) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(1, -1065.731323, 2920.124023, 180.743378, 3.421976)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Archimonde
if(intid == 216) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else   
player:Teleport(530, -3408.230469, 1543.002563, 48.475937, 5.993527)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Reset Instanse
if(intid == 11) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:UnbindAllInstances()
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: All Instances has been reseted.") 
player:GossipComplete()
end
end

-- Max My Skill
if(intid == 217) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:AdvanceSkill (43, 500)
player:AdvanceSkill (44, 500)
player:AdvanceSkill (45, 500)
player:AdvanceSkill (46, 500)
player:AdvanceSkill (54, 500)
player:AdvanceSkill (55, 500)  
player:AdvanceSkill (136, 500)
player:AdvanceSkill (160, 500)
player:AdvanceSkill (162, 500)
player:AdvanceSkill (172, 500)
player:AdvanceSkill (173, 500)
player:AdvanceSkill (176, 500)
player:AdvanceSkill (95, 500)
player:AdvanceSkill (226, 500)
player:AdvanceSkill (228, 500)
player:AdvanceSkill (229, 500)
player:AdvanceSkill (473, 500)
player:GossipComplete()
end
end

-- Remove Resurrection Sickness
if(intid == 218) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
if(player:HasAura(15007) == true) then
player:RemoveAura(15007)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: Resurrection Sickness has removed.")
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You don't need remove Resurrection Sickness.")
player:GossipComplete()
end
end
end

-- Reset Talents
if (intid == 219) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:ResetTalents(true)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: Your Talants has reset.")
player:GossipComplete()
end
end
-- Repair Itens
if (intid == 220) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:DurabilityRepairAll(false)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: Your Items repaired.")
player:GossipComplete()
end
end



-- Bank 
if (intid == 221) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:SendShowBank(player)
player:GossipComplete()
end
end


-- mail 
if (intid == 222) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!")
player:GossipComplete()
else 
player:SendShowMailBox()
player:GossipComplete()
end
end

--[[
-- Buff me!
if (intid == 224) then 
player:CastSpell(player, 50837)
player:CastSpell(player, 23769)
player:CastSpell(player, 23766)
player:CastSpell(player, 23738)
player:CastSpell(player, 23737)
player:CastSpell(player, 23736)
player:CastSpell(player, 23735)
player:AddAura(25898, player)
player:GossipComplete()
end

--transformacion 1

if (intid == 230) then 
player:SetDisplayId(11657)
player:GossipComplete()
end

if (intid == 231) then 
player:SetDisplayId(7274)
player:GossipComplete()
end

if (intid == 232) then 
player:SetDisplayId(15399)
player:GossipComplete()
end

if (intid == 233) then 
player:SetDisplayId(15990)
player:GossipComplete()
end

if (intid == 234) then 
player:SetDisplayId(18718)
player:GossipComplete()
end

if (intid == 235) then 
player:SetDisplayId(22837)
player:GossipComplete()
end

if (intid == 236) then 
player:SetDisplayId(20557)
player:GossipComplete()
end

if (intid == 237) then 
player:SetDisplayId(20628)
player:GossipComplete()
end

if (intid == 238) then 
player:SetDisplayId(17369)
player:GossipComplete()
end

if (intid == 239) then 
player:SetDisplayId(20918)
player:GossipComplete()
end

if (intid == 240) then 
player:SetDisplayId(20023)
player:GossipComplete()
end

if (intid == 241) then 
player:SetDisplayId(21134)
player:GossipComplete()
end

--transformacion 2

if (intid == 244) then 
player:SetDisplayId(21417)
player:SetScale(0.5)
player:GossipComplete()
end
if (intid == 245) then 
player:SetDisplayId(21419)
player:SetScale(0.5)
player:GossipComplete()
end
if (intid == 246) then 
player:SetDisplayId(17444)
player:SetScale(0.4)
player:GossipComplete()
end
if (intid == 247) then 
player:SetDisplayId(21069)
player:SetScale(0.4)
player:GossipComplete()
end
if (intid == 248) then 
player:SetDisplayId(17886)
player:SetScale(0.3)
player:GossipComplete()
end
if (intid == 249) then 
player:SetDisplayId(18526)
player:SetScale(0.3)
player:GossipComplete()
end
if (intid == 250) then 
player:SetDisplayId(20162)
player:SetScale(0.3)
player:GossipComplete()
end
if (intid == 251) then 
player:SetDisplayId(20216)
player:SetScale(0.5)
player:GossipComplete()
end
if (intid == 252) then 
player:SetDisplayId(20514)
player:SetScale(0.5)
player:GossipComplete()
end

-- Full talant
if (intid == 253) then 
player:SetFreeTalentPoints(300) 
player:GossipComplete()
end


-- Change Size
if (intid == 242) then 
player:SetScale(0.5)
player:GossipComplete()
end

-- Demorph & Restore Size
if (intid == 258) then 
player:DeMorph()
player:SetScale(1)
player:GossipComplete()
end



--Dual Weild
if (intid == 226) then 
if (player:HasSpell(674) == false) then 
player:LearnSpell(674)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You already know this ability.")
player:GossipComplete()
end
end


--Level up 100
if (intid == 227) then
if (player:GetLevel() == 80) then --CHANGE TO YOU LEVEL MAX
player:SetLevel(100)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You up level!")
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You have Level Max.")
player:GossipComplete()
end
end
--]]
--[ Buff ] (VIP 2)
if (intid == 238) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP 2!") 
player:GossipComplete()
end
end

--[ Titan's Grip - 2x2H ](VIP 2 + 50 DGEM)
if (intid == 241) then
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

--[ Full Talant ](VIP 2 + 50 DGEM)
if (intid == 242) then
if (VIP == 2) and (player:HasItem(DG, 50)) then
player:SetFreeTalentPoints(300)
player:RemoveItem( 100020, 50 )
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You got 300 talented points") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP 2 or you do not have enough Donor Gem!") 
player:GossipComplete()
end
end

--[ UPGRADE VIP 1 TO 2 ](VIP 1 + 500 VP)
if (intid == 243) then
change = 1
changevp = 500
if (VIP == 2) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You have now VIP 2") 
player:GossipComplete()
else
if (VIP == 1) and (VP >= 500) then    		
AuthDBQuery("update `account` set `VIP`=`VIP`+'"..change.."' where `id` = '"..accountId.."'");
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: Great job, now you are VIP 2, thanks for your support :)") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You do not have enough VP points.")
player:GossipComplete()
end
end
end

--[ Change Name ](VIP 2 + 50 DGEM)
if (intid == 244) then
if (VIP == 2) and (player:HasItem(DG, 50)) then
player:SetAtLoginFlag(1)
player:RemoveItem( 100020, 50 )
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: Successfully re-login") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP 2 or you do not have enough Donor Gem!") 
player:GossipComplete()
end
end

--[ Change Race ](VIP 2 + 50 DGEM)
if (intid == 245) then
if (VIP == 2) and (player:HasItem(DG, 50)) then
player:SetAtLoginFlag(128)
player:RemoveItem( 100020, 50 )
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: Successfully re-login") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP 2 or you do not have enough Donor Gem!") 
player:GossipComplete()
end
end

--[ Change Faction ](VIP 2 + 50 DGEM)
if (intid == 246) then
if (VIP == 2) and (player:HasItem(DG, 50)) then
player:SetAtLoginFlag(64)
player:RemoveItem( 100020, 50 )
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: Successfully re-login") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP 2 or you do not have enough Donor Gem!") 
player:GossipComplete()
end
end

--[ Convert Account to VIP 1 ] (VP : 450)
if (intid == 226) then
local 
accountId = player:GetAccountId()
change = 1
changevp = 450
if (VIP >= 1) then    		
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You already have VIP 1 or more.")
player:GossipComplete()
elseif (VP >= 450) then
AuthDBQuery("update `account` set `VIP`=`VIP`+'"..change.."' where `id` = '"..accountId.."'");
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: Great job, now you are VIP 1, thanks for your support :)") 
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You do not have enough VP points.")
player:GossipComplete()
end
end

--[ Dual Weapon - 2x1H ] (VIP or VP : 60)
if (intid == 228) then 
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
if (intid == 229) then 
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


--[ Remove All VIP Spells ]
if(intid == 259) then
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

--[ Summer Flower ]
if(intid == 260) then
player:AddAura(45417, player)
player:GossipComplete()
end


--[ Allience Flag ]
if(intid == 261) then
player:AddAura(32609, player)
player:GossipComplete()
end

--[ Horde Flag ]
if(intid == 262) then
player:AddAura(32610, player)
player:GossipComplete()
end

--[ Path of Cenarius ](VIP or VP : 1)

if(intid == 263) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Path of Illidan ](VIP or VP : 1)
if(intid == 264) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Love is In Air ](VIP or VP : 1)
if(intid == 265) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Red Portal ](VIP or VP : 5)
if(intid == 266) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Blue Portal ](VIP or VP : 5)
if(intid == 267) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Green Portal ](VIP or VP : 5)
if(intid == 268) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Yellow Portal ](VIP or VP : 5)
if(intid == 269) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Purple Portal ](VIP or VP : 5)
if(intid == 270) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Blue Banish ](VIP or VP : 5)
if(intid == 272) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Red Banish ](VIP or VP : 5)
if(intid == 273) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Yellow Banish ](VIP or VP : 5)
if(intid == 274) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Spirit Particles Green ](VIP or VP : 5)
if(intid == 275) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end


--[ Oil Coat ](VIP or VP : 10)
if(intid == 278) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Anveena ](VIP or VP : 10)
if(intid == 279) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Dark fire shield ](VIP or VP : 10)
if(intid == 280) then
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!") 
player:GossipComplete()
end
end
end

--[ Level up to 100 ](VIP or VP : 10)
if (intid == 234) then
changevp = 10
if (player:GetLevel() == 100) then --CHANGE TO YOU LEVEL MAX
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are 100")
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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end
end


--[ Daily Donor GEM x10 ] (VIP)

if (intid == 235) then

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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: not VIP")
player:GossipComplete()
else
if (c >= cooldown) or (time1 == 0) then
player:AddItem(DG, 10)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33:Good job.")
CharDBQuery("update `characters` set `donor_gem_reward`='"..totaltime.."' where `guid`='"..playerguid.."'");
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: Need wait "..hours.." hours "..mins.." minutes "..secs.." seconds")
player:GossipComplete()
end
end
end

--[ Donor GEM x5 ](VP : 5)
if (intid == 236) then
changevp = 5
if (VP >=5 ) then
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:AddItem(DG, 5)
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You do not have enough Vote Points!")
player:GossipComplete()
end
end

--[ Get Donor GEM's Bought ](Buy)
if (intid == 237) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: You must buy from website.")
player:GossipComplete()
end


--[ Daily Gift ]

if (intid == 282) then

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
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: Geat job, Check your bag :)")
CharDBQuery("update `characters` set `reward_24_hour`='"..totaltime.."' where `guid`='"..playerguid.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: Your gift is not ready, need wait ("..hours.." hours "..mins.." minutes "..secs.." seconds)")
player:GossipComplete()
end
end




--[ Every 5 Hours play gift ]
if (intid == 283) then
playerguid = player:GetGUIDLow()
totaltime = player:GetTotalPlayedTime();
local a = CharDBQuery("SELECT reward_5_hour FROM characters where `guid`='"..playerguid.."'");
local time1 = a:GetUInt32(0)
local b = CharDBQuery("SELECT totaltime FROM characters where `guid`='"..playerguid.."'");
local time2 = b:GetUInt32(0)
local cooldown = 18000  --10 sec cooldown
local c = totaltime - time1
local f = (cooldown - c)


  local seconds = f

    hours = string.format("%02.f", math.floor(seconds/3600));
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
    time = hours..":"..mins..":"..secs

 
 name = player:GetName() 
num = math.random(0,5)

if (c >= cooldown) and (num == 1) then
player:SendBroadcastMessage(name.. " rolls 1 (1-5)") 
player:AddItem(17202, 1)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: Geat job, Check your bag :)")
CharDBQuery("update `characters` set `reward_5_hour`='"..time1.."' + 18000 where `guid`='"..playerguid.."'");
player:GossipComplete()
elseif (c >= cooldown) and (num == 2) then
player:SendBroadcastMessage(name.. " rolls 2 (1-5)") 
player:AddItem(17202, 2)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: Geat job, Check your bag :)")
CharDBQuery("update `characters` set `reward_5_hour`='"..time1.."' + 18000 where `guid`='"..playerguid.."'");
player:GossipComplete()
elseif (c >= cooldown) and (num == 3) then
player:SendBroadcastMessage(name.. " rolls 3 (1-5)") 
player:AddItem(17202, 3)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: Geat job, Check your bag :)")
CharDBQuery("update `characters` set `reward_5_hour`='"..time1.."' + 18000 where `guid`='"..playerguid.."'");
player:GossipComplete()
elseif (c >= cooldown) and (num == 4) then
player:SendBroadcastMessage(name.. " rolls 4 (1-5)") 
player:AddItem(17202, 4)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: Geat job, Check your bag :)")
CharDBQuery("update `characters` set `reward_5_hour`='"..time1.."' + 18000 where `guid`='"..playerguid.."'");
player:GossipComplete()
elseif (c >= cooldown) and (num == 5) then
player:SendBroadcastMessage(name.. " rolls 5 (1-5)") 
player:AddItem(17202, 5)
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: Geat job, Check your bag :)")
CharDBQuery("update `characters` set `reward_5_hour`='"..time1.."' + 18000 where `guid`='"..playerguid.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]|ccc33FF33: You need "..hours.." hours "..mins.." minutes "..secs.." seconds playing. Call me later!")
player:GossipComplete()
end
end

-- Lich King
if (intid == 247) then
local changevp = 5
if (VIP >= 1) then
player:SetDisplayId(27481)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(27481)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end

--Illidan
if (intid == 248) then
local changevp = 5
if (VIP >= 1) then
player:SetDisplayId(21322)
player:SetScale(0.2)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(21322)
player:SetScale(0.3)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end


-- King Varian
if (intid == 249) then
local changevp = 5
if (VIP >= 1) then
player:SetDisplayId(29589)
player:SetScale(0.7)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(29589)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end

--Lady Sylvanas
if (intid == 250) then
local changevp = 5
if (VIP >= 1) then
player:SetScale(1)
player:SetDisplayId(30776)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(30776)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end


--Lady Jaina
if (intid == 251) then
local changevp = 5
if (VIP >= 1) then
player:SetScale(1)
player:SetDisplayId(30865)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(30865)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end

--Thrall
if (intid == 252) then
local changevp = 5
if (VIP >= 1) then
player:SetScale(1)
player:SetDisplayId(27744)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(27744)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end

--Rexxar
if (intid == 253) then
local changevp = 5
if (VIP >= 1) then
player:SetScale(1)
player:SetDisplayId(20918)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(20918)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end


--Alexstrasza
if (intid == 254) then
local changevp = 5
if (VIP >= 1) then
player:SetScale(1)
player:SetDisplayId(28227)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(28227)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end

--Worgen
if (intid == 255) then
local changevp = 5
if (VIP >= 1) then
player:SetDisplayId(657)
player:SetScale(2)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(657)
player:SetScale(2)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end

--Goblin
if (intid == 256) then
local changevp = 5
if (VIP >= 1) then
player:SetScale(1)
player:SetDisplayId(7112)
player:GossipComplete()
else
if (VP >= 5) then
player:SetDisplayId(7112)
AuthDBQuery("update `account` set `vp`=`vp`-'"..changevp.."' where `id` = '"..accountId.."'");
player:GossipComplete()
else
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are not VIP or you do not have enough Vote Points!")
player:GossipComplete()
end
end
end

-- Change Size
if (intid == 257) then 
player:SetScale(0.5)
player:GossipComplete()
end
 

 -- Demorph & Restore Size
if (intid == 258) then 
player:DeMorph()
player:SetScale(1)
player:GossipComplete()
end




-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 1
if(intid == 143) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 1609.619263, -5768.510742, 116.108986, 2.028844)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end


-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 2
if(intid == 144) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 1567.557007, -5708.314941, 121.836052, 5.959767)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 3
if(intid == 145) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 1684.245483, -5807.795898, 116.029762, 5.566281)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 4
if(intid == 146) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 1675.748169, -5871.208984, 116.168030, 3.587081)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 5
if(intid == 147) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 2060.525879, -5899.747070, 105.315155, 1.832506)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end

-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 6
if(intid == 148) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 1971.435059, -5943.253418, 101.671341, 1.404464)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end



-- Item Upgrade (Easy Mode) -> Weapons -> Upgrade 7
if(intid == 149) then
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("|ccc33FFFF[Teleporter Stone]: You are in combat!") 
player:GossipComplete()
else 
player:Teleport(0, 2191.853516, -5756.379395, 101.868095, 0.976418)
player:CastSpell(player, 9175)
player:GossipComplete()
end
end
--[[
local roll = {
[1] = 1,
[2] = 2,
[3] = 3,
[4] = 4,
[5] = 5
}
name = player:GetName() 
num = math.random(0,5)
if(intid == 1000) then
if (num == 1) then
player:SendBroadcastMessage(name.. " rolls 1 (1-5)") 
player:AddItem(17202, 1)
elseif (num == 2) then
player:SendBroadcastMessage(name.. " rolls 2 (1-5)") 
player:AddItem(17202, 2)
elseif (num == 3) then
player:SendBroadcastMessage(name.. " rolls 3 (1-5)") 
player:AddItem(17202, 3)
elseif (num == 4) then
player:SendBroadcastMessage(name.. " rolls 4 (1-5)") 
player:AddItem(17202, 4)
elseif (num == 5) then
player:SendBroadcastMessage(name.. " rolls 5 (1-5)") 
player:AddItem(17202, 5)
end
end
--]]



end



RegisterItemGossipEvent(100003,1,OnGossipHello)
RegisterItemGossipEvent(100003,2,OnSelect)
