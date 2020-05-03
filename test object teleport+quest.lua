local GobId = 100000

--[[
local function OnGossipHello(event, player, object)
	local qs = player:GetQuestStatus(400000)
    if (player:GetMapId() == 550 and (player:GetQuestStatus(400000) == 6) )  then 
    player:GossipMenuAddItem(0, "Телепортация к ласту", 0, 1, false, "Вас точно телепортировать?") -- icon, text, sender, intid, use code (true/false), prompt text, how much gold (amount)
	player:GossipSendMenu(1, object)
	end
	if(player:GetQuestStatus(400000) == 0) then -- квест вообще не взят
	player:SendBroadcastMessage("|ccc33FFFF[Teleporter]: Выполните задание что бы открыть телепортер.")
	player:GossipAddQuests(object)
    player:GossipSendMenu(1, object)
	end
	if
	(player:GetQuestStatus(400000) == 1) then -- Квест выпонен но не сдан	
	player:SendBroadcastMessage("|ccc33FFFF[Teleporter]: Закончите задание что бы открыть функцию телепортации.")
	player:GossipAddQuests(object)
    player:GossipSendMenu(1, object, MenuId)
	end
end --]]


local function OnGossipHello(event, player, object)

	if (player:GetMapId() == 550 and (player:GetQuestStatus(400001) == 6) )  then 
    player:GossipClearMenu() -- required for player gossip
    player:GossipMenuAddItem(0, "Телепортация к ласту", 0, 1, false, "Вас точно телепортировать?") -- icon, text, sender, intid, use code (true/false), prompt text, how much gold (amount)
	player:GossipSendMenu(100002, object) -- число 100002 это номер текста который выводит gossip из таблицы npc_text 
	end
	if (player:GetQuestStatus(400001) == 0) then -- квест вообще не взят
	player:SendBroadcastMessage("|ccc33FFFF[Teleporter]: Выполните задание что бы открыть телепортер.")
	player:GossipAddQuests(object)
    player:GossipSendMenu(100000, object)
	end
	if (player:GetQuestStatus(400001) == 1 or player:GetQuestStatus(400001) == 3) then -- Квест выпонен но не сдан	
	player:SendBroadcastMessage("|ccc33FFFF[Teleporter]: Закончите задание что бы открыть функцию телепортации.")
	player:GossipAddQuests(object)
    player:GossipSendMenu(100001, object)
	end

end

local function OnGossipSelect(event, player, object, sender, intid, code, menuid)
    if (intid == 1) then -- Телепортация
        player:Teleport(550, 276.392517, -0.683873, -2.389385, 3.056772)
    end
end





RegisterGameObjectGossipEvent(GobId, 1, OnGossipHello)
RegisterGameObjectGossipEvent(GobId, 2, OnGossipSelect)